// Copyright (c) SandboxAQ. All rights reserved.
// SPDX-License-Identifier: AGPL-3.0-only

//! Sandwich OpenSSL 3 implementation module.

extern crate openssl3;

use sandwich_proto as pb;

use std::ffi::c_char;
use std::ptr::NonNull;

use crate::support::Pimpl;

mod error;
mod support;
#[cfg(feature = "tunnel")]
pub(crate) mod tunnel;

#[cfg(test)]
pub(crate) mod certificate_chain;
#[cfg(test)]
pub(crate) use certificate_chain::CertificateChainBuilder;

/// The default provider name.
const DEFAULT_PROVIDER_NAME: &[u8; 8] = b"default\x00";

#[hax_lib::exclude]
/// Pointer to the default provider name.
const DEFAULT_PROVIDER_NAME_PTR: *const c_char = (DEFAULT_PROVIDER_NAME as *const u8).cast();

/// The oqs-provider provider name.
const OQS_PROVIDER_NAME: &[u8; 12] = b"oqsprovider\x00";

#[hax_lib::exclude]
/// Pointer to the oqs-provider provider name.
const OQS_PROVIDER_NAME_PTR: *const c_char = (OQS_PROVIDER_NAME as *const u8).cast();

/// A wrapper around an `OSSL_PROVIDER`.
struct Provider<'a>(Pimpl<'a, openssl3::OSSL_PROVIDER>);

#[hax_lib::exclude]
impl std::fmt::Debug for Provider<'_> {
    fn fmt(&self, f: &mut std::fmt::Formatter) -> std::fmt::Result {
        write!(f, "Provider({:p}", self.0.as_nonnull().as_ptr())
    }
}

/// A convenient builder for providers.
#[hax_lib::exclude]
struct ProviderBuilder {
    /// Name of the provider, C format.
    name: Option<*const c_char>,

    /// Library context.
    lib_ctx: Option<NonNull<openssl3::OSSL_LIB_CTX>>,
}

impl Default for ProviderBuilder {
    fn default() -> Self {
        Self::new()
    }
}

impl ProviderBuilder {
    /// Initializes a builder.
    fn new() -> Self {
        Self {
            name: None,
            lib_ctx: None,
        }
    }

    /// Sets the name.
    fn name(self, name: *const c_char) -> Self {
        Self {
            name: Some(name),
            ..self
        }
    }

    /// Sets the library context.
    fn lib_ctx(self, lib_ctx: NonNull<openssl3::OSSL_LIB_CTX>) -> Self {
        Self {
            lib_ctx: Some(lib_ctx),
            ..self
        }
    }

    /// Builds the provider.
    fn build<'a>(self) -> crate::Result<Provider<'a>> {
        let Some(name) = self.name else {
            return Err((
                pb::SystemError::SYSTEMERROR_BACKEND,
                "missing name for provider",
            )
                .into());
        };
        let Some(lib_ctx) = self.lib_ctx else {
            return Err((
                pb::SystemError::SYSTEMERROR_BACKEND,
                "missing library context for provider",
            )
                .into());
        };
        let provider = unsafe {
            Pimpl::new(openssl3::OSSL_PROVIDER_load(lib_ctx.as_ptr(), name), |x| {
                openssl3::OSSL_PROVIDER_unload(x);
            })
        }
        .ok_or_else(|| {
            (
                pb::SystemError::SYSTEMERROR_BACKEND,
                format!("failed to load provider: {}", crate::ossl3::errstr()),
            )
        })?;

        Ok(Provider(provider))
    }
}

/// An `OSSL_LIB_CTX` object wrapped in a `Pimpl`.
pub(crate) struct LibCtx<'a> {
    /// The OQS provider.
    _oqs_provider: Provider<'a>,

    /// The default provilder.
    _default_provider: Provider<'a>,

    /// The library context.
    lib_ctx: Pimpl<'a, openssl3::OSSL_LIB_CTX>,
}

impl<'a> LibCtx<'a> {
    /// Instantiates a new top-level library context.
    pub(crate) fn try_new() -> crate::Result<Self> {
        let libctx = unsafe {
            Pimpl::new(openssl3::OSSL_LIB_CTX_new(), |ptr| {
                openssl3::OSSL_LIB_CTX_free(ptr);
            })
        }
        .ok_or((
            pb::SystemError::SYSTEMERROR_MEMORY,
            "failed to create an OSSL_LIB_CTX",
        ))?;

        let default_provider = ProviderBuilder::new()
            .name(DEFAULT_PROVIDER_NAME_PTR)
            .lib_ctx(libctx.as_nonnull())
            .build()?;

        #[cfg(debug_assertions)]
        {
            std::env::set_var("OQSPROV", "1");
        }
        if unsafe {
            openssl3::OSSL_PROVIDER_add_builtin(
                libctx.as_nonnull().as_ptr(),
                OQS_PROVIDER_NAME_PTR,
                Some(openssl3::oqs_provider_init),
            )
        } != 1
        {
            return Err((
                pb::SystemError::SYSTEMERROR_MEMORY,
                format!("failed to add the oqsprovider: {}", crate::ossl3::errstr()),
            )
                .into());
        }
        let oqs_provider = ProviderBuilder::new()
            .name(OQS_PROVIDER_NAME_PTR)
            .lib_ctx(libctx.as_nonnull())
            .build()?;

        #[cfg(debug_assertions)]
        {
            let name =
                unsafe { openssl3::OSSL_PROVIDER_get0_name(oqs_provider.0.as_nonnull().as_ptr()) };
            if name.is_null() {
                return Err((
                    pb::SystemError::SYSTEMERROR_MEMORY,
                    "provider's name is null",
                )
                    .into());
            }
            let name = unsafe { std::ffi::CStr::from_ptr(name) };
            if name.to_str() != Ok("oqsprovider") {
                return Err((
                    pb::SystemError::SYSTEMERROR_MEMORY,
                    format!("provider's name does not match 'oqsprovider': got {name:?}"),
                )
                    .into());
            }
            if unsafe { openssl3::OSSL_PROVIDER_self_test(oqs_provider.0.as_nonnull().as_ptr()) }
                != 1
            {
                return Err((
                    pb::SystemError::SYSTEMERROR_MEMORY,
                    "provider's self-test failed",
                )
                    .into());
            }
        }

        Ok(Self {
            lib_ctx: libctx,
            _default_provider: default_provider,
            _oqs_provider: oqs_provider,
        })
    }

    /// Returns a pointer to the top-level library context.
    pub(crate) fn as_nonnull(&self) -> NonNull<openssl3::OSSL_LIB_CTX> {
        self.lib_ctx.as_nonnull()
    }
}

pub(crate) use openssl3::{
    BIO as NativeBio, EVP_PKEY as NativePrivateKey, SSL as NativeSsl, SSL_CTX as NativeSslCtx,
    X509 as NativeX509Certificate, X509_STORE_CTX as NativeX509StoreCtx,
    X509_VERIFY_PARAM as NativeX509VerifyParam,
};

use std::ffi::{c_int, c_ulong, CStr, CString};
use std::ptr::{self};


/// Returns the last error.
pub(crate) fn peek_last_error() -> c_ulong {
    unsafe { openssl3::ERR_peek_last_error() }
}

/// Returns the library where a given error occurred.
///
/// This function reproduces the `ERR_GET_LIB` method from OpenSSL, which
/// is a static function in header (thus not understandable by bindgen).
pub(crate) fn err_get_lib(err: c_ulong) -> c_int {
    ((err >> openssl3::ERR_LIB_OFFSET) & (openssl3::ERR_LIB_MASK as c_ulong)) as c_int
}

/// Returns the reason of why a given error occurred.
///
/// This function reproduces the `ERR_GET_REASON` method from OpenSSL, which
/// is a static function in header (thus not understandable by bindgen).
pub(crate) fn err_get_reason(err: c_ulong) -> c_int {
    (err & (openssl3::ERR_REASON_MASK as c_ulong)) as c_int
}

/// Returns a string containing the error strings for all errors that
/// OpenSSL 3 has recorded.
/// This function clears the error queue.
pub(crate) fn errstr() -> String {
    const DEFAULT_BUFFER_LEN: usize = 256;

    let Some(bio) = (unsafe {
        Pimpl::new(openssl3::BIO_new(openssl3::BIO_s_mem()), |x| {
            openssl3::BIO_free_all(x)
        })
    }) else {
        return "unknown error (BIO unavailable)".into();
    };

    unsafe {
        openssl3::ERR_print_errors(bio.as_nonnull().as_ptr());
    }

    let mut buffer = vec![0u8; DEFAULT_BUFFER_LEN];

    let mut buffer_ptr = buffer.as_mut_ptr();
    let mut size = 0;
    loop {
        let mut readbytes = 0usize;
        let ret = unsafe {
            openssl3::BIO_read_ex(
                bio.as_nonnull().as_ptr(),
                buffer_ptr.cast(),
                DEFAULT_BUFFER_LEN,
                &mut readbytes as *mut _,
            )
        };
        if ret == 0 {
            break;
        }
        if readbytes == 0 {
            break;
        }
        size += readbytes;
        if readbytes < DEFAULT_BUFFER_LEN {
            break;
        }
        let current_position = buffer.len();
        let Some(new_size) = current_position.checked_add(DEFAULT_BUFFER_LEN) else {
            break;
        };
        buffer.resize(new_size, 0u8);
        buffer_ptr = unsafe { buffer.as_mut_ptr().add(current_position) };
    }
    buffer.resize(size, 0u8);

    if let Some(first_null_byte) = buffer.iter().position(|x| *x == 0u8) {
        if first_null_byte == 0 {
            return "no additional information".to_string();
        }
        buffer.resize(first_null_byte, 0u8);
    } else if buffer.is_empty() {
        return "no additional information".to_string();
    }

    String::from_utf8(buffer).unwrap_or_else(|_| "unknown error (not UTF-8)".into())
}

/// Creates a new `BIO` object with a specific method.
#[allow(non_snake_case)]
pub(crate) fn new_BIO(
    bio_meth: NonNull<openssl3::BIO_METHOD>,
) -> crate::Result<Pimpl<'static, NativeBio>> {
    unsafe {
        Pimpl::new(openssl3::BIO_new(bio_meth.as_ptr()), |bio| {
            openssl3::BIO_free_all(bio)
        })
    }
    .ok_or_else(|| {
        (
            pb::SystemError::SYSTEMERROR_MEMORY,
            "failed to create a new BIO object",
        )
            .into()
    })
}

/// Creates a `BIO` object from a immutable buffer.
#[allow(non_snake_case)]
pub(crate) fn BIO_from_buffer<'a>(buffer: impl AsRef<[u8]> + 'a) -> crate::Result<Pimpl<'a, NativeBio>> {
    let buffer = buffer.as_ref();
    let size: i32 = buffer.len().try_into().map_err(|e| {
        (
            pb::SystemError::SYSTEMERROR_INTEGER_OVERFLOW,
            format!("cannot create a BIO object: {e}"),
        )
    })?;
    unsafe {
        Pimpl::new(
            openssl3::BIO_new_mem_buf(buffer.as_ptr().cast(), size),
            |x| openssl3::BIO_free_all(x),
        )
    }
    .ok_or_else(|| {
        (
            pb::SystemError::SYSTEMERROR_MEMORY,
            "cannot allocate a new BIO object",
        )
            .into()
    })
}

/// Reads a certificate (`X509` object) from a `BIO` object.
#[allow(non_snake_case)]
pub(crate) fn X509_from_BIO<'a, 'b>(
    lib_ctx: &'_ LibCtx<'a>,
    bio: NonNull<NativeBio>,
    format: pb_api::ASN1EncodingFormat,
) -> crate::Result<Pimpl<'b, openssl3::X509>>
where
    'a: 'b,
{
    let x509 =
        NonNull::new(unsafe { openssl3::X509_new_ex(lib_ctx.as_nonnull().as_ptr(), ptr::null()) })
            .ok_or((
                pb::SystemError::SYSTEMERROR_MEMORY,
                "failed to allocate a new `X509` object",
            ))?;

    let mut inplace_ptr = x509.as_ptr();
    let ptr = match format {
        pb_api::ASN1EncodingFormat::ENCODING_FORMAT_PEM => {
            NonNull::new(unsafe {
                openssl3::PEM_read_bio_X509(bio.as_ptr(), &mut inplace_ptr, None, ptr::null_mut())
            })
            .ok_or_else(|| {
                unsafe { openssl3::X509_free(inplace_ptr) };
                (
                    pb::CertificateError::CERTIFICATEERROR_MALFORMED,
                    format!("failed to read the certificate: {}", errstr()),
                )
            })?;
            inplace_ptr
        }
        pb_api::ASN1EncodingFormat::ENCODING_FORMAT_DER => {
            NonNull::new(unsafe { openssl3::d2i_X509_bio(bio.as_ptr(), &mut inplace_ptr) })
                .ok_or_else(|| {
                    unsafe { openssl3::X509_free(inplace_ptr) };
                    (
                        pb::CertificateError::CERTIFICATEERROR_MALFORMED,
                        format!("failed to read the certificate: {}", errstr()),
                    )
                })?;
            inplace_ptr
        }
    };
    Ok(unsafe { Pimpl::new_unchecked(ptr, |x| openssl3::X509_free(x)) })
}

/// Reads a private key (`EVP_PKEY` object) from a `BIO` object.
#[allow(non_snake_case)]
pub(crate) fn EVP_PKEY_from_BIO<'a, 'b>(
    lib_ctx: &'_ LibCtx<'a>,
    bio: NonNull<NativeBio>,
    format: pb_api::ASN1EncodingFormat,
) -> crate::Result<Pimpl<'b, openssl3::EVP_PKEY>>
where
    'a: 'b,
{
    unsafe {
        Pimpl::new(
            match format {
                pb_api::ASN1EncodingFormat::ENCODING_FORMAT_PEM => {
                    openssl3::PEM_read_bio_PrivateKey_ex(
                        bio.as_ptr(),
                        ptr::null_mut(),
                        None,
                        ptr::null_mut(),
                        lib_ctx.as_nonnull().as_ptr(),
                        ptr::null(),
                    )
                }
                pb_api::ASN1EncodingFormat::ENCODING_FORMAT_DER => openssl3::d2i_PrivateKey_ex_bio(
                    bio.as_ptr(),
                    ptr::null_mut(),
                    lib_ctx.as_nonnull().as_ptr(),
                    ptr::null(),
                ),
            },
            |x| openssl3::EVP_PKEY_free(x),
        )
    }
    .ok_or_else(|| {
        (
            pb::PrivateKeyError::PRIVATEKEYERROR_MALFORMED,
            format!("failed to read the private key: {}", errstr()),
        )
            .into()
    })
}

/// Tells if a BIO has reached EOF.
#[allow(non_snake_case)]
pub(crate) fn is_BIO_eof(bio: NonNull<NativeBio>) -> bool {
    // `BIO_eof` is a C macro.
    (unsafe {
        openssl3::BIO_ctrl(
            bio.as_ptr(),
            openssl3::BIO_CTRL_EOF as c_int,
            0,
            ptr::null_mut(),
        )
    }) == 1
}

/// Returns the cipher name in the OpenSSL format.
pub(crate) fn cipher_name(name: impl AsRef<str>) -> Option<&'static str> {
    let cstr = CString::new(name.as_ref().to_string()).ok()?;
    NonNull::new(unsafe { openssl3::OPENSSL_cipher_name(cstr.as_ptr()) }.cast_mut())
        .and_then(|nn| unsafe { CStr::from_ptr(nn.as_ptr()) }.to_str().ok())
}

macro_rules! gen_enum_from_openssl {
    ( $name:ident, $doc:expr, $( ($sym:ident, $value:ident)$(,)? )* ) => {
        #[derive(Debug, PartialEq, Eq, Copy, Clone)]
        #[doc=$doc]
        #[allow(dead_code)]
        #[repr(isize)]
        pub(crate) enum $name {
            $(
                $sym = ::openssl3::$value as isize,
            )*
        }

        impl TryFrom<::std::ffi::c_int> for $name {
            type Error = ();

            fn try_from(err: ::std::ffi::c_int) -> Result<Self, Self::Error> {
                #[allow(unreachable_patterns)]
                match err as u32 {
                    $(
                        openssl3::$value => Ok(Self::$sym),
                    )*
                        _ => Err(())
                }
            }
        }
    };
}

gen_enum_from_openssl!(
    ErrorLibrary,
    "Library where an error can occur",
    (None, ERR_LIB_NONE),
    (Sys, ERR_LIB_SYS),
    (Bn, ERR_LIB_BN),
    (Rsa, ERR_LIB_RSA),
    (Dh, ERR_LIB_DH),
    (Evp, ERR_LIB_EVP),
    (Buf, ERR_LIB_BUF),
    (Obj, ERR_LIB_OBJ),
    (Pem, ERR_LIB_PEM),
    (Dsa, ERR_LIB_DSA),
    (X509, ERR_LIB_X509),
    (Asn1, ERR_LIB_ASN1),
    (Conf, ERR_LIB_CONF),
    (Crypto, ERR_LIB_CRYPTO),
    (Ec, ERR_LIB_EC),
    (Ssl, ERR_LIB_SSL),
    (Bio, ERR_LIB_BIO),
    (Pkcs7, ERR_LIB_PKCS7),
    (X509v3, ERR_LIB_X509V3),
    (Pkcs12, ERR_LIB_PKCS12),
    (Rand, ERR_LIB_RAND),
    (Dso, ERR_LIB_DSO),
    (Engine, ERR_LIB_ENGINE),
    (Ocsp, ERR_LIB_OCSP),
    (Ui, ERR_LIB_UI),
    (Comp, ERR_LIB_COMP),
    (Ecdsa, ERR_LIB_ECDSA),
    (Ecdh, ERR_LIB_ECDH),
    (OsslStore, ERR_LIB_OSSL_STORE),
    (Fips, ERR_LIB_FIPS),
    (Cms, ERR_LIB_CMS),
    (Ts, ERR_LIB_TS),
    (Hmac, ERR_LIB_HMAC),
    (Ct, ERR_LIB_CT),
    (Async, ERR_LIB_ASYNC),
    (Kdf, ERR_LIB_KDF),
    (Sm2, ERR_LIB_SM2),
    (Ess, ERR_LIB_ESS),
    (Prop, ERR_LIB_PROP),
    (Crmf, ERR_LIB_CRMF),
    (Prov, ERR_LIB_PROV),
    (Cmp, ERR_LIB_CMP),
    (OsslEncoder, ERR_LIB_OSSL_ENCODER),
    (OsslDecoder, ERR_LIB_OSSL_DECODER),
    (Http, ERR_LIB_HTTP),
    (User, ERR_LIB_USER),
);

/// An OpenSSL error.
pub(crate) struct Error {
    /// The library where the error has occurred.
    library: ErrorLibrary,

    /// The reason.
    reason: c_int,
}

impl std::fmt::Debug for Error {
    fn fmt(&self, f: &mut std::fmt::Formatter) -> std::fmt::Result {
        write!(
            f,
            "OpenSSL3Error(lib={:?}, reason={})",
            self.library, self.reason
        )
    }
}

impl From<c_ulong> for Error {
    fn from(err: c_ulong) -> Self {
        Self {
            library: crate::ossl3::err_get_lib(err)
                .try_into()
                .unwrap_or(ErrorLibrary::None),
            reason: crate::ossl3::err_get_reason(err),
        }
    }
}

impl Error {
    /// Returns the library where the error has occurred.
    pub(crate) fn library(&self) -> ErrorLibrary {
        self.library
    }

    /// Returns the reason of the error.
    pub(crate) fn reason(&self) -> u32 {
        self.reason as u32
    }
}

gen_enum_from_openssl!(
    SslError,
    "SSL error",
    (None, SSL_ERROR_NONE),
    (Ssl, SSL_ERROR_SSL),
    (WantRead, SSL_ERROR_WANT_READ),
    (WantWrite, SSL_ERROR_WANT_WRITE),
    (WantX509Lookup, SSL_ERROR_WANT_X509_LOOKUP),
    (Syscall, SSL_ERROR_SYSCALL),
    (ZeroReturn, SSL_ERROR_ZERO_RETURN),
    (WantConnect, SSL_ERROR_WANT_CONNECT),
    (WantAccept, SSL_ERROR_WANT_ACCEPT),
    (WantAsync, SSL_ERROR_WANT_ASYNC),
    (WantAsyncJob, SSL_ERROR_WANT_ASYNC_JOB),
    (WantClientHelloCb, SSL_ERROR_WANT_CLIENT_HELLO_CB),
    (WantRetryVerify, SSL_ERROR_WANT_RETRY_VERIFY),
);

impl From<SslError> for pb::RecordError {
    fn from(ssl_error: SslError) -> Self {
        match ssl_error {
            SslError::WantRead => Self::RECORDERROR_WANT_READ,
            SslError::WantWrite => Self::RECORDERROR_WANT_WRITE,
            SslError::ZeroReturn => Self::RECORDERROR_CLOSED,
            SslError::Syscall => match std::io::Error::last_os_error().raw_os_error() {
                // EPIPE
                Some(32) => Self::RECORDERROR_CLOSED,
                _ => Self::RECORDERROR_UNKNOWN,
            },
            SslError::Ssl => {
                let error = Error::from(crate::ossl3::peek_last_error());
                if error.library() == ErrorLibrary::Ssl
                    && error.reason() == openssl3::SSL_R_PROTOCOL_IS_SHUTDOWN
                {
                    Self::RECORDERROR_CLOSED
                } else {
                    Self::RECORDERROR_UNKNOWN
                }
            }
            _ => Self::RECORDERROR_UNKNOWN,
        }
    }
}


#[cfg(test)]
pub(crate) mod test {
    use std::ffi::{c_int, CString};

    use super::*;

    /// Flushes the current error stack.
    fn openssl_flush_error_stack() {
        let mut i = 20;
        while i != 0 {
            if unsafe { openssl3::ERR_get_error() } == 0 {
                break;
            }
            i -= 1;
        }
        assert_ne!(i, 0);
    }

    /// Creates a new OpenSSL error.
    fn openssl_new_error(lib: impl Into<c_int>, reason: impl Into<c_int>, msg: impl Into<String>) {
        let lib: c_int = lib.into();
        let reason: c_int = reason.into();
        let msg = CString::new(msg.into()).unwrap();

        unsafe {
            openssl3::ERR_new();
            openssl3::ERR_set_error(lib, reason, msg.as_ptr());
        }
    }

    /// Returns a certificate ([`NativeX509Certificate`]) that has been read
    /// from a file in the testdata directory.
    pub(crate) fn get_certificate_from_testdata_file<'a>(
        lib_ctx: &LibCtx<'a>,
        path: impl AsRef<str>,
        format: pb_api::ASN1EncodingFormat,
    ) -> crate::Result<Pimpl<'a, NativeX509Certificate>> {
        let path = crate::test::resolve_runfile(path.as_ref());
        let content = std::fs::read(path).unwrap();
        let bio = BIO_from_buffer(&content).unwrap();
        X509_from_BIO(lib_ctx, bio.as_nonnull(), format)
    }

    /// Returns a private key ([`NativePrivateKey`]) that has been read
    /// from a file in the testdata directory.
    pub(crate) fn get_private_key_from_testdata_file<'a>(
        lib_ctx: &LibCtx<'a>,
        path: impl AsRef<str>,
        format: pb_api::ASN1EncodingFormat,
    ) -> crate::Result<Pimpl<'a, NativePrivateKey>> {
        let path = crate::test::resolve_runfile(path.as_ref());
        let content = std::fs::read(path).unwrap();
        let bio = BIO_from_buffer(&content).unwrap();
        EVP_PKEY_from_BIO(lib_ctx, bio.as_nonnull(), format)
    }

    /// Tests [`errstr`].
    #[test]
    fn test_errstr() {
        openssl_flush_error_stack();
        openssl_new_error(1, 2, "this is an error");
        let result = errstr();

        assert!(
            result.contains("this is an error"),
            "error string from OpenSSL does not seem to match the pattern defined"
        );
    }

    /// Tests [`errstr`] with a string that matches the `DEFAULT_BUFFER_LEN`.
    #[test]
    fn test_errstr_default_len() {
        let _lib_ctx = LibCtx::try_new().unwrap();
        openssl_flush_error_stack();
        let msg = "A".to_string().repeat(201);
        openssl_new_error(1, 2, msg.clone());
        let result = errstr();

        assert!(
            result.contains(&format!("error:00800002:lib(1)::reason(2)::-1:{msg}")),
            "error string from OpenSSL does not seem to match the pattern defined"
        );
    }

    /// Tests [`BIO_from_buffer`].
    #[test]
    #[allow(non_snake_case)]
    fn test_BIO_from_buffer() {
        let buf_in = vec![42u8; 42];
        let bio = BIO_from_buffer(&buf_in).unwrap();
        let mut buf_out = vec![42u8; 42];
        let mut readbytes = 0usize;

        let result = unsafe {
            openssl3::BIO_read_ex(
                bio.as_nonnull().as_ptr(),
                buf_out.as_mut_ptr().cast(),
                buf_out.len(),
                &mut readbytes as *mut _,
            )
        };

        assert_eq!(
            (result, readbytes, &buf_in),
            (1, 42, &buf_out),
            "`BIO_read_ex` did not return the expected result"
        );
    }

    /// Tests [`BIO_from_buffer`] with empty BIO.
    #[test]
    #[allow(non_snake_case)]
    fn test_BIO_from_buffer_empty() {
        let buf_in = vec![0u8; 0];
        let bio = BIO_from_buffer(&buf_in).unwrap();
        let mut buf_out = vec![0u8; 42];
        let mut readbytes = 0usize;

        let ret = unsafe {
            openssl3::BIO_read_ex(
                bio.as_nonnull().as_ptr(),
                buf_out.as_mut_ptr().cast(),
                buf_out.len(),
                &mut readbytes as *mut _,
            )
        };

        assert_eq!(
            (ret, readbytes),
            (0, 0),
            "`BIO_read_ex` did not return 0 for an empty buffer"
        );
    }

    /// Tests [`X509_from_BIO`] with a PEM-encoded certificate.
    #[test]
    #[allow(non_snake_case)]
    fn test_X509_from_BIO_PEM() {
        let cert_path =
            crate::test::resolve_runfile("testdata/falcon1024.cert.pem");
        let data = std::fs::read(cert_path).unwrap();
        let bio = BIO_from_buffer(&data).unwrap();
        let lib_ctx = LibCtx::try_new().unwrap();

        let result = X509_from_BIO(
            &lib_ctx,
            bio.as_nonnull(),
            pb_api::ASN1EncodingFormat::ENCODING_FORMAT_PEM,
        );

        result.unwrap();
    }

    /// Tests [`X509_from_BIO`] with a DER-encoded certificate.
    #[test]
    #[allow(non_snake_case)]
    fn test_X509_from_BIO_DER() {
        let cert_path =
            crate::test::resolve_runfile("testdata/dilithium5.cert.der");
        let data = std::fs::read(cert_path).unwrap();
        let bio = BIO_from_buffer(&data).unwrap();
        let lib_ctx = LibCtx::try_new().unwrap();

        X509_from_BIO(
            &lib_ctx,
            bio.as_nonnull(),
            pb_api::ASN1EncodingFormat::ENCODING_FORMAT_DER,
        )
        .unwrap();
    }

    /// Tests [`X509_from_BIO`] with an invalid DER-encoded certificate.
    #[test]
    #[allow(non_snake_case)]
    fn test_X509_from_BIO_DER_invalid() {
        let cert_path =
            crate::test::resolve_runfile("testdata/cert_unknown_sig_alg.der");
        let data = std::fs::read(cert_path).unwrap();
        let bio = BIO_from_buffer(&data).unwrap();
        let lib_ctx = LibCtx::try_new().unwrap();

        let err = X509_from_BIO(
            &lib_ctx,
            bio.as_nonnull(),
            pb_api::ASN1EncodingFormat::ENCODING_FORMAT_PEM,
        );

        let err = err.unwrap_err();
        assert!(err.is(&errors! {pb::CertificateError::CERTIFICATEERROR_MALFORMED}));
    }

    /// Tests [`EVP_PKEY_from_BIO`] with a PEM-encoded private key.
    #[test]
    #[allow(non_snake_case)]
    fn test_EVP_PKEY_from_BIO_PEM() {
        let private_key_path =
            crate::test::resolve_runfile("testdata/dilithium5.key.pem");
        let data = std::fs::read(private_key_path).unwrap();
        let bio = BIO_from_buffer(&data).unwrap();
        let lib_ctx = LibCtx::try_new().unwrap();

        EVP_PKEY_from_BIO(
            &lib_ctx,
            bio.as_nonnull(),
            pb_api::ASN1EncodingFormat::ENCODING_FORMAT_PEM,
        )
        .unwrap();
    }

    /// Tests [`EVP_PKEY_from_BIO`] with a DER-encoded private key.
    #[test]
    #[allow(non_snake_case)]
    fn test_EVP_PKEY_from_BIO_DER() {
        let private_key_path =
            crate::test::resolve_runfile("testdata/dilithium5.key.der");
        let data = std::fs::read(private_key_path).unwrap();
        let bio = BIO_from_buffer(&data).unwrap();
        let lib_ctx = LibCtx::try_new().unwrap();

        EVP_PKEY_from_BIO(
            &lib_ctx,
            bio.as_nonnull(),
            pb_api::ASN1EncodingFormat::ENCODING_FORMAT_DER,
        )
        .unwrap();
    }

    /// Tests [`is_BIO_eof`].
    #[test]
    #[allow(non_snake_case)]
    fn test_is_BIO_eof() {
        let data = vec![42u8; 42];
        let bio = BIO_from_buffer(&data).unwrap();
        let mut buf_out = vec![42u8; 42];
        let mut readbytes = 0usize;
        let ret = unsafe {
            openssl3::BIO_read_ex(
                bio.as_nonnull().as_ptr(),
                buf_out.as_mut_ptr().cast(),
                buf_out.len(),
                &mut readbytes as *mut _,
            )
        };

        let result = is_BIO_eof(bio.as_nonnull());

        assert_eq!((ret, readbytes, result), (1, buf_out.len(), true));
    }

    /// Tests [`is_BIO_eof`] with a non-empty BIO.
    #[test]
    #[allow(non_snake_case)]
    fn test_is_BIO_eof_non_empty() {
        let data = vec![42u8; 42];
        let bio = BIO_from_buffer(&data).unwrap();
        let mut buf_out = vec![0u8; 42];
        let mut readbytes = 0usize;
        let ret = unsafe {
            openssl3::BIO_read_ex(
                bio.as_nonnull().as_ptr(),
                buf_out.as_mut_ptr().cast(),
                buf_out.len() - 1,
                &mut readbytes as *mut _,
            )
        };

        let result = is_BIO_eof(bio.as_nonnull());

        assert_eq!((ret, readbytes, result), (1, buf_out.len() - 1, false));
    }

    /// Tests [`is_BIO_eof`] with a non-empty BIO full of zeros.
    #[test]
    #[allow(non_snake_case)]
    fn test_is_BIO_eof_non_empty_zeros() {
        let data = vec![0u8; 42];
        let bio = BIO_from_buffer(&data).unwrap();
        let mut buf_out = vec![42u8; 42];
        let mut readbytes = 0usize;
        let ret = unsafe {
            openssl3::BIO_read_ex(
                bio.as_nonnull().as_ptr(),
                buf_out.as_mut_ptr().cast(),
                buf_out.len() - 1,
                &mut readbytes as *mut _,
            )
        };

        let result = is_BIO_eof(bio.as_nonnull());

        assert_eq!((ret, readbytes, result), (1, buf_out.len() - 1, false));
    }

    /// Tests [`LibCtx::try_new`].
    #[test]
    fn test_libctx_try_new() {
        LibCtx::try_new().unwrap();
    }

    /// Tests [`LibCtx::try_new`] with several competiting threads.
    #[test]
    fn test_libctx_try_new_threaded() {
        let mut handles = Vec::new();
        for _ in 0..32 {
            handles.push(std::thread::spawn(move || LibCtx::try_new().is_ok()));
        }

        for handle in handles {
            let res = handle.join().unwrap();
            assert!(res, "at least one constructor failed");
        }
    }
}
