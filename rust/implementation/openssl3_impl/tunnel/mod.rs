// Copyright (c) SandboxAQ. All rights reserved.
// SPDX-License-Identifier: AGPL-3.0-only

//! Tunnel implementation using OpenSSL 3 and oqs-provider.

// use bio_method::BIO_METHOD;
use verify_callback::verify_callback;
use x509_verify_param::X509VerifyParam;
use crate::support::Pimpl;
use crate::ossl3::NativeSsl;
use crate::ossl3::NativeSslCtx;
use crate::tunnel::tls;
use crate::tunnel::BoxedIO;
use crate::tunnel::Mode;
use crate::ossl3::LibCtx;

mod bio_method;
mod context;
mod ssl;
mod verify_callback;
mod x509_verify_param;

/// A tunnel, wrapper around a SSL object.
pub struct Tunnel<'a> {
    /// Parent SSL_CTX object.
    pub(crate) _ssl_ctx: &'a Context<'a>,

    /// SSL object.
    pub(crate) ssl: Pimpl<'a, NativeSsl>,

    /// Security requirements from the verifiers.
    pub(crate) security_requirements: tls::TunnelSecurityRequirements,

    /// IO interface.
    pub(crate) io: BoxedIO,

    /// state.
    pub(crate) state: pb::State,
}

/// Tunnel context.
pub struct Context<'a> {
    /// Library context parent.
    _lib_ctx: &'a LibCtx<'a>,

    /// `SSL_CTX` object.
    ssl_ctx: Pimpl<'a, NativeSslCtx>,

    /// Security requirements from the verifiers.
    security_requirements: tls::TunnelSecurityRequirements,

    /// Execution mode.
    mode: Mode,
}

// ######### Inlining ssl.rs ############ ///

// Copyright (c) SandboxAQ. All rights reserved.
// SPDX-License-Identifier: AGPL-3.0-only

// Wrapper around the SSL object for OpenSSL 3 tunnels.

use std::ffi::{c_int, c_void, CString};
use std::pin::Pin;
use std::ptr::NonNull;

use crate::tunnel::tls::VerifierSanitizer;
use crate::Result;

use crate::ossl3::{Error, ErrorLibrary, SslError};

use crate::ossl3::NativeBio;

/// Index in the SSL user data (`SSL_get_ex_data`/`SSL_set_ex_data`) where
/// the pointer to the tunnel security requirements is stored.
const SSL_EX_DATA_TUNNEL_SECURITY_REQUIREMENTS_INDEX: c_int = 1;

/// Wrapper of the OpenSSL SSL object.
pub(super) struct Ssl(NonNull<NativeSsl>);

impl std::fmt::Debug for Ssl {
    fn fmt(&self, f: &mut std::fmt::Formatter) -> std::fmt::Result {
        write!(f, "OpenSSL3SSLObject({:p})", self.0)
    }
}

impl From<NonNull<NativeSsl>> for Ssl {
    fn from(ssl: NonNull<NativeSsl>) -> Self {
        Self(ssl)
    }
}

impl Ssl {
    /// Returns a pointer to some extra data from a SSL object.
    fn get_extra_data_ptr<T>(&self, extra_data_index: impl Into<c_int>) -> Option<NonNull<T>> {
        NonNull::new(
            unsafe { openssl3::SSL_get_ex_data(self.0.as_ptr(), extra_data_index.into()) }
                .cast::<T>(),
        )
    }

    /// Returns a reference to some extra data from a SSL object.
    fn get_extra_data_ref<'a, T>(&self, extra_data_index: impl Into<c_int>) -> Option<&'a T> {
        self.get_extra_data_ptr::<T>(extra_data_index)
            .map(|ptr| unsafe { ptr.as_ref() })
    }

    /// Returns the last recorded error.
    fn get_last_recorded_error(
        &self,
        ret: impl Into<c_int>,
    ) -> std::result::Result<SslError, c_int> {
        let err = unsafe { openssl3::SSL_get_error(self.0.as_ref(), ret.into()) };
        SslError::try_from(err).map_err(|_| err)
    }

    /// Returns the tunnel security requirements from a SSL object.
    pub(super) fn get_tunnel_security_requirements<'a>(
        &self,
    ) -> Option<&'a tls::TunnelSecurityRequirements> {
        self.get_extra_data_ref::<tls::TunnelSecurityRequirements>(
            SSL_EX_DATA_TUNNEL_SECURITY_REQUIREMENTS_INDEX,
        )
    }

    /// Sets the required Subject Alternative Names (SAN) specified in the [`pb_api::TunnelVerifier`]
    /// object.
    fn set_subject_alternative_names(
        &self,
        tunnel_verifier: Option<&pb_api::TunnelVerifier>,
    ) -> Result<()> {
        let Some(pb_api::verifiers::tunnel_verifier::Verifier::SanVerifier(san_verifier)) =
            tunnel_verifier.and_then(|tv| tv.verifier.as_ref())
        else {
            return Ok(());
        };
        let x509_verify_param = X509VerifyParam::try_from(self.0)?;
        for san in san_verifier.alt_names.iter() {
            let Some(san) = san.san.as_ref() else {
                return Err((pb::TunnelError::TUNNELERROR_VERIFIER, "empty SANMatcher").into());
            };
            x509_verify_param.add_san(san)?;
        }
        Ok(())
    }

    /// Sets the server name indication (SNI).
    fn set_server_name_indication(&self, sni: impl AsRef<str>) -> Result<()> {
        let sni = sni.as_ref();
        if sni.is_empty() {
            return Ok(());
        }
        let cstring = CString::new(sni).map_err(|e| {
            (
                pb::SystemError::SYSTEMERROR_MEMORY,
                format!("failed to create a c-string for the SNI '{sni}': {e}"),
            )
        })?;
        // `SSL_set_tlsext_host_name` is a C macro.
        if unsafe {
            openssl3::SSL_ctrl(
                self.0.as_ptr(),
                openssl3::SSL_CTRL_SET_TLSEXT_HOSTNAME as c_int,
                openssl3::TLSEXT_NAMETYPE_host_name as i64,
                cstring.as_ptr().cast::<c_void>().cast_mut(),
            )
        } == 1
        {
            Ok(())
        } else {
            Err((
                pb::TunnelError::TUNNELERROR_VERIFIER,
                format!("failed to set the SNI to '{sni}': {}", crate::ossl3::errstr()),
            )
                .into())
        }
    }

    /// Creates a new Sandwich BIO and attach it to the SSL object.
    fn create_and_attach_bio(&self) -> Result<()> {
        let bio = crate::ossl3::new_BIO(BIO_METHOD)?;
        let ptr = bio.as_nonnull().as_ptr();
        unsafe {
            openssl3::BIO_set_init(ptr, 1);
            openssl3::SSL_set_bio(self.0.as_ptr(), ptr, ptr);
        }
        let _ = bio.into_raw();
        Ok(())
    }

    /// Returns a pointer to the BIO currently attached to the SSL object.
    fn get_attached_bio(&self) -> Option<NonNull<NativeBio>> {
        NonNull::new(unsafe { openssl3::SSL_get_rbio(self.0.as_ptr()) })
    }

    /// Returns the state of the SSL tunnel.
    fn get_state(&self) -> pb::HandshakeState {
        if unsafe { openssl3::SSL_get_state(self.0.as_ptr()) }
            == openssl3::OSSL_HANDSHAKE_STATE_TLS_ST_OK
        {
            pb::HandshakeState::HANDSHAKESTATE_DONE
        } else {
            pb::HandshakeState::HANDSHAKESTATE_IN_PROGRESS
        }
    }

    /// Checks if the tunnel is in a shutdown state.
    fn is_shutdown(&self) -> bool {
        let shutdown_state = unsafe { openssl3::SSL_get_shutdown(self.0.as_ptr()) } as u32;
        (shutdown_state & (openssl3::SSL_SENT_SHUTDOWN | openssl3::SSL_RECEIVED_SHUTDOWN)) != 0
    }

    /// Performs the handshake.
    fn do_handshake(&self) -> (Result<pb::HandshakeState>, Option<pb::State>) {
        let handshake_error = unsafe { openssl3::SSL_do_handshake(self.0.as_ptr()) };

        if handshake_error == 1 {
            return (
                Ok(pb::HandshakeState::HANDSHAKESTATE_DONE),
                Some(pb::State::STATE_HANDSHAKE_DONE),
            );
        }
        let ssl_error = match self.get_last_recorded_error(handshake_error) {
            Ok(ssl_error) => ssl_error,
            Err(error_code) => {
                return (
                    Err((
                        pb::HandshakeError::HANDSHAKEERROR_UNKNOWN_ERROR,
                        format!(
                            "unexpected `SSL_ERROR_SSL` (code {error_code}) from OpenSSL: {}",
                            crate::ossl3::errstr()
                        ),
                    )
                        .into()),
                    None,
                );
            }
        };

        match ssl_error {
            SslError::WantRead => (
                Ok(pb::HandshakeState::HANDSHAKESTATE_WANT_READ),
                Some(pb::State::STATE_HANDSHAKE_IN_PROGRESS),
            ),
            SslError::WantWrite => (
                Ok(pb::HandshakeState::HANDSHAKESTATE_WANT_WRITE),
                Some(pb::State::STATE_HANDSHAKE_IN_PROGRESS),
            ),
            SslError::ZeroReturn => (
                Ok(pb::HandshakeState::HANDSHAKESTATE_IN_PROGRESS),
                Some(pb::State::STATE_HANDSHAKE_IN_PROGRESS),
            ),
            SslError::WantAccept | SslError::WantConnect => (
                Ok(pb::HandshakeState::HANDSHAKESTATE_IN_PROGRESS),
                Some(pb::State::STATE_NOT_CONNECTED),
            ),
            SslError::Ssl => self.handle_ssl_error_ssl(),
            _ => (
                Err((
                    pb::HandshakeError::HANDSHAKEERROR_UNKNOWN_ERROR,
                    format!(
                        "unexpected SSL error from OpenSSL: {ssl_error:?} ({})",
                        crate::ossl3::errstr()
                    ),
                )
                    .into()),
                None,
            ),
        }
    }

    /// Reads some data and writes it to a buffer.
    fn read(&self, buffer: &mut [u8]) -> crate::tunnel::RecordResult<usize> {
        let buf_len: i32 = buffer
            .len()
            .try_into()
            .map_err(|_| pb::RecordError::RECORDERROR_TOO_BIG)?;

        let err =
            unsafe { openssl3::SSL_read(self.0.as_ptr(), buffer.as_mut_ptr().cast(), buf_len) };
        if err > 0 {
            return Ok(err as usize);
        }
        Err(self.get_error_from_record_stage(err).into())
    }

    /// Write some data.
    fn write(&self, buffer: &[u8]) -> crate::tunnel::RecordResult<usize> {
        let buf_len: i32 = buffer
            .len()
            .try_into()
            .map_err(|_| pb::RecordError::RECORDERROR_TOO_BIG)?;

        let err = unsafe { openssl3::SSL_write(self.0.as_ptr(), buffer.as_ptr().cast(), buf_len) };
        if err > 0 {
            return Ok(err as usize);
        }
        Err(self.get_error_from_record_stage(err).into())
    }

    /// Returns the error that occurred during the record stage.
    ///
    /// The record stage is the stage when `SSL_read` and `SSL_write`
    /// are called.
    fn get_error_from_record_stage(&self, err: c_int) -> pb::RecordError {
        let Ok(ssl_error) = self.get_last_recorded_error(err) else {
            return pb::RecordError::RECORDERROR_UNKNOWN;
        };
        if (ssl_error == SslError::Syscall) && (err == 0) {
            return pb::RecordError::RECORDERROR_CLOSED;
        }
        ssl_error.into()
    }

    /// Closes the tunnel.
    fn close(&self) -> crate::tunnel::RecordResult<()> {
        unsafe { openssl3::SSL_shutdown(self.0.as_ptr()) };
        Ok(())
    }

    /// Handles an SSL error of type `SSL_ERROR_SSL`.
    fn handle_ssl_error_ssl(&self) -> (Result<pb::HandshakeState>, Option<pb::State>) {
        let error = Error::from(crate::ossl3::peek_last_error());

        if error.library() != ErrorLibrary::Ssl {
            return (
                Err((
                    pb::HandshakeError::HANDSHAKEERROR_UNKNOWN_ERROR,
                    format!(
                        "unexpected error from OpenSSL: {error:?} ({})",
                        crate::ossl3::errstr()
                    ),
                )
                    .into()),
                None,
            );
        }
        match error.reason() {
            openssl3::SSL_R_UNSUPPORTED_PROTOCOL => {
                return (
                    Err((
                        pb::HandshakeError::HANDSHAKEERROR_UNSUPPORTED_PROTOCOL,
                        format!(
                            "unsupported TLS protocol. error: {error:?} ({})",
                            crate::ossl3::errstr()
                        ),
                    )
                        .into()),
                    None,
                );
            }
            openssl3::SSL_R_NO_SHARED_CIPHER => {
                return (
                    Err((
                        pb::HandshakeError::HANDSHAKEERROR_NO_SHARED_CIPHER,
                        format!("no shared cipher. error: {error:?} ({})", crate::ossl3::errstr()),
                    )
                        .into()),
                    None,
                );
            }
            openssl3::SSL_R_NO_SUITABLE_KEY_SHARE => {
                return (
                    Err((
                        pb::HandshakeError::HANDSHAKEERROR_NO_SUITABLE_KEY_SHARE,
                        format!(
                            "no suitable key share found. error: {error:?} ({})",
                            crate::ossl3::errstr()
                        ),
                    )
                        .into()),
                    None,
                );
            }
            openssl3::SSL_R_CERTIFICATE_VERIFY_FAILED => {}
            _ => {
                return (
                    Err((
                        pb::HandshakeError::HANDSHAKEERROR_UNKNOWN_ERROR,
                        format!(
                            "unexpected SSL error from OpenSSL: {error:?} ({})",
                            crate::ossl3::errstr()
                        ),
                    )
                        .into()),
                    None,
                );
            }
        }

        let verify_result = unsafe { openssl3::SSL_get_verify_result(self.0.as_ptr()) } as u32;
        let err: crate::Error = match verify_result {
            openssl3::X509_V_ERR_CERT_HAS_EXPIRED => {
                pb::HandshakeError::HANDSHAKEERROR_CERTIFICATE_EXPIRED.into()
            }
            openssl3::X509_V_ERR_CERT_REVOKED => {
                pb::HandshakeError::HANDSHAKEERROR_CERTIFICATE_REVOKED.into()
            }
            openssl3::X509_V_ERR_CERT_SIGNATURE_FAILURE => {
                pb::HandshakeError::HANDSHAKEERROR_CERTIFICATE_SIGNATURE_VERIFICATION_FAILED.into()
            }
            openssl3::X509_V_ERR_CA_CERT_MISSING_KEY_USAGE => {
                pb::HandshakeError::HANDSHAKEERROR_CERTIFICATE_VERIFICATION_FAILED.into()
            }
            openssl3::X509_V_ERR_HOSTNAME_MISMATCH => (
                pb::HandshakeError::HANDSHAKEERROR_INVALID_SERVER_NAME,
                "hostname mismatches",
            )
                .into(),
            openssl3::X509_V_ERR_EMAIL_MISMATCH => (
                pb::HandshakeError::HANDSHAKEERROR_INVALID_SERVER_NAME,
                "email mismatches",
            )
                .into(),
            openssl3::X509_V_ERR_IP_ADDRESS_MISMATCH => (
                pb::HandshakeError::HANDSHAKEERROR_INVALID_SERVER_NAME,
                "ip address mismatches",
            )
                .into(),
            openssl3::X509_V_ERR_CERT_CHAIN_TOO_LONG => {
                pb::HandshakeError::HANDSHAKEERROR_DEPTH_EXCEEDED.into()
            }
            openssl3::X509_V_ERR_CERT_NOT_YET_VALID
            | openssl3::X509_V_ERR_CERT_UNTRUSTED
            | openssl3::X509_V_ERR_CERT_REJECTED => (
                pb::HandshakeError::HANDSHAKEERROR_INVALID_CERTIFICATE,
                "certificate not yet valid, untrusted or rejected",
            )
                .into(),
            _ => (
                pb::HandshakeError::HANDSHAKEERROR_UNKNOWN_ERROR,
                format!(
                    "verification failed: verify code is {verify_result}, error: {}",
                    crate::ossl3::errstr()
                ),
            )
                .into(),
        };
        (Err(err), None)
    }
}

/// Verifies the tunnel configuration against the security requirements that come
/// from the context.
fn verify_tunnel_verifier(
    tunnel_verifier: Option<&pb_api::TunnelVerifier>,
    security_requirements: &tls::TunnelSecurityRequirements,
) -> Result<()> {
    let Some(tunnel_verifier) = tunnel_verifier else {
        return Err((pb::TunnelError::TUNNELERROR_VERIFIER, "empty verifier").into());
    };

    security_requirements.run_sanitizer_checks(tunnel_verifier)
}

impl std::fmt::Debug for Tunnel<'_> {
    fn fmt(&self, f: &mut std::fmt::Formatter) -> std::fmt::Result {
        write!(
            f,
            "OpenSSL3Tunnel(ssl: {:p})",
            self.ssl.as_nonnull().as_ptr()
        )
    }
}

/// Tunnel builder.
/// This is a convenient aggregate of useful values to build a tunnel.
pub(crate) struct TunnelBuilder<'a> {
    /// Parent SSL_CTX object.
    pub(crate) ssl_ctx: &'a Context<'a>,

    /// The IO interface.
    pub(crate) io: BoxedIO,

    /// The tunnel-time configuration.
    pub(crate) configuration: pb_api::TunnelConfiguration,
}

/// Tunnel builder result.
type TunnelBuilderResult<'a> =
    std::result::Result<Pin<Box<Tunnel<'a>>>, (crate::Error, BoxedIO)>;

impl std::fmt::Debug for TunnelBuilder<'_> {
    fn fmt(&self, f: &mut std::fmt::Formatter) -> std::fmt::Result {
        write!(f, "OpenSSL3TunnelBuilder")
    }
}

impl<'a> TunnelBuilder<'a> {
    /// Prepares a tunnel structure.
    fn prepare_ssl(&self) -> Result<Pimpl<'a, NativeSsl>> {
        let tunnel_verifier = self.configuration.verifier.as_ref();
        let security_requirements = self.ssl_ctx.security_requirements();
        verify_tunnel_verifier(tunnel_verifier, security_requirements)?;

        let ssl = self.ssl_ctx.new_ssl()?;
        let ssl_wrapped = Ssl(ssl.as_nonnull());
        ssl_wrapped.set_subject_alternative_names(tunnel_verifier)?;
        ssl_wrapped.set_server_name_indication(&self.configuration.server_name_indication)?;
        ssl_wrapped.create_and_attach_bio()?;
        Ok(ssl)
    }

    /// Builds a tunnel.
    pub(crate) fn build(self) -> TunnelBuilderResult<'a> {
        let ssl = match self.prepare_ssl() {
            Ok(ssl) => ssl,
            Err(e) => {
                return Err((e, self.io));
            }
        };
        let tun = Box::pin(Tunnel {
            _ssl_ctx: self.ssl_ctx,
            ssl,
            io: self.io,
            security_requirements: self.ssl_ctx.security_requirements().clone(),
            state: pb::State::STATE_NOT_CONNECTED,
        });
        if let Err(e) = tun.as_ref().attach_security_requirements() {
            return Err((e, unsafe { Pin::into_inner_unchecked(tun) }.io));
        }
        if let Err(e) = tun.as_ref().attach_to_bio() {
            return Err((e, unsafe { Pin::into_inner_unchecked(tun) }.io));
        }
        Ok(tun)
    }
}

impl<'a> Tunnel<'a> {
    /// Attaches the security requirements structure to the `SSL` object
    /// through `ex_data`.
    fn attach_security_requirements(self: Pin<&Self>) -> Result<()> {
        if unsafe {
            openssl3::SSL_set_ex_data(
                self.ssl.as_nonnull().as_ptr(),
                SSL_EX_DATA_TUNNEL_SECURITY_REQUIREMENTS_INDEX,
                (&self.security_requirements as *const tls::TunnelSecurityRequirements
                    as *const c_void)
                    .cast_mut(),
            )
        } == 1
        {
            Ok(())
        } else {
            Err((
                pb::SystemError::SYSTEMERROR_BACKEND,
                format!("`SSL_set_ex_data` failed: {}", crate::ossl3::errstr()),
            )
                .into())
        }
    }

    /// Attaches itself to the current BIO.
    fn attach_to_bio(self: Pin<&Self>) -> Result<()> {
        let bio = Ssl(self.ssl.as_nonnull()).get_attached_bio().ok_or((
            pb::SystemError::SYSTEMERROR_BACKEND,
            "no BIO attached to the current SSL object",
        ))?;
        unsafe {
            openssl3::BIO_set_data(
                bio.as_ptr(),
                (self.get_ref() as *const Self as *const c_void).cast_mut(),
            )
        };
        Ok(())
    }

    /// Updates the state of the tunnel.
    /// This method must be called after any read or write operation.
    fn update_state(&mut self) {
        if Ssl(self.ssl.as_nonnull()).is_shutdown() {
            self.state = pb::State::STATE_DISCONNECTED;
        }
    }

    pub(crate) fn state(&self) -> crate::tunnel::State {
        self.state.into()
    }

    pub(crate) fn handshake(mut self) -> (Self, Result<crate::tunnel::HandshakeState>) {
        if self.state == pb::State::STATE_HANDSHAKE_DONE {
            return (self, Ok(pb::HandshakeState::HANDSHAKESTATE_DONE.into()));
        }

        let ssl_wrapped = Ssl(self.ssl.as_nonnull());

        let state = ssl_wrapped.get_state();
        if state == pb::HandshakeState::HANDSHAKESTATE_DONE {
            self.state = pb::State::STATE_HANDSHAKE_DONE;
            return (self, Ok(state.into()));
        }

        let (handshake_state, tunnel_state) = ssl_wrapped.do_handshake();
        if let Some(tunnel_state) = tunnel_state {
            self.state = tunnel_state;
        }
        (self, handshake_state.map(crate::tunnel::HandshakeState::from))
    }

    pub(crate) fn read(mut self, buf: &mut [u8]) -> (Self, crate::tunnel::RecordResult<usize>) {
        let result = Ssl(self.ssl.as_nonnull()).read(buf);
        self.update_state();
        if self.state == pb::State::STATE_DISCONNECTED {
            (self, Err(pb::RecordError::RECORDERROR_CLOSED.into()))
        } else {
            (self, result)
        }
    }

    pub(crate) fn write(mut self, buf: &[u8]) -> (Self, crate::tunnel::RecordResult<usize>) {
        let result = Ssl(self.ssl.as_nonnull()).write(buf);
        self.update_state();
        if self.state == pb::State::STATE_DISCONNECTED {
            (self, Err(pb::RecordError::RECORDERROR_CLOSED.into()))
        } else {
            (self, result)
        }
    }

    #[cfg(feature = "tracer")]
    pub(crate) fn add_tracer(self, _tracer: crate::support::tracing::SandwichTracer) -> Self {
        unimplemented!("tracing is not supported with OpenSSL 3");
    }

    pub(crate) fn close(mut self) -> (Self, crate::tunnel::RecordResult<()>) {
        if self.state == pb::State::STATE_DISCONNECTED {
            return (self, Ok(()));
        }
        let result = Ssl(self.ssl.as_nonnull()).close();
        self.update_state();
        if self.state == pb::State::STATE_DISCONNECTED {
            (self, Ok(()))
        } else {
            (self, result)
        }
    }
}

#[cfg(test)]
mod test {
    use super::*;

    /// Tests [`verify_tunnel_verifier`].
    #[test]
    fn test_verify_tunnel_verifier() {
        let security_requirements = tls::TunnelSecurityRequirements {
            allow_expired_certificate: false,
        };
        let tunnel_verifier = protobuf::text_format::parse_from_str(
            r#"
                san_verifier <
                    alt_names <
                        dns: "example.com"
                    >
                    alt_names <
                        email: "user@example.com"
                    >
                    alt_names <
                        ip_address: "127.0.0.1"
                    >
                >
            "#,
        )
        .unwrap();

        let result = verify_tunnel_verifier(Some(&tunnel_verifier), &security_requirements);

        result.expect("`verify_tunnel_verifier` failed");
    }

    /// Tests [`verify_tunnel_verifier`] with no specified verifier.
    #[test]
    fn test_verify_tunnel_verifier_none() {
        let security_requirements = tls::TunnelSecurityRequirements {
            allow_expired_certificate: false,
        };
        let tunnel_verifier = protobuf::text_format::parse_from_str("").unwrap();

        let result = verify_tunnel_verifier(Some(&tunnel_verifier), &security_requirements);

        result.expect_err("`verify_tunnel_verifier` succeed");
    }

    /// Tests [`verify_tunnel_verifier`] with an empty verifier.
    #[test]
    fn test_verify_tunnel_verifier_empty() {
        let security_requirements = tls::TunnelSecurityRequirements {
            allow_expired_certificate: false,
        };
        let tunnel_verifier = protobuf::text_format::parse_from_str("empty_verifier<>").unwrap();

        let result = verify_tunnel_verifier(Some(&tunnel_verifier), &security_requirements);

        result.expect("`verify_tunnel_verifier` failed");
    }
}

// ######### Inlining context.rs ############ ///
// Copyright (c) SandboxAQ. All rights reserved.
// SPDX-License-Identifier: AGPL-3.0-only

// Tunnel implementation usiong OpenSSL 3 and oqs-provider.

use std::borrow::Borrow;
use std::ptr;

use crate::tunnel::tls::{TlsVersion, VerifyMode};

use crate::ossl3::{NativePrivateKey, NativeX509Certificate};

impl std::fmt::Debug for Context<'_> {
    fn fmt(&self, f: &mut std::fmt::Formatter) -> std::fmt::Result {
        write!(f, "OpenSSL3Context(mode={mode:?})", mode = self.mode)
    }
}

impl Borrow<tls::TunnelSecurityRequirements> for Context<'_> {
    fn borrow(&self) -> &tls::TunnelSecurityRequirements {
        &self.security_requirements
    }
}

/// Instantiates a new SSL context (`SSL_CTX`).
fn new_ssl_context<'a, 'b>(lib_ctx: &'a LibCtx<'static>, mode: Mode) -> Result<Pimpl<'b, NativeSslCtx>>
where
    'a: 'b,
{
    unsafe {
        Pimpl::new(
            openssl3::SSL_CTX_new_ex(
                lib_ctx.as_nonnull().as_ptr(),
                ptr::null(),
                match mode {
                    Mode::Client => openssl3::TLS_client_method(),
                    Mode::Server => openssl3::TLS_server_method(),
                },
            ),
            |ptr| openssl3::SSL_CTX_free(ptr),
        )
    }
    .ok_or_else(|| {
        (
            pb::SystemError::SYSTEMERROR_MEMORY,
            "failed to instantiate a new `SSL_CTX`",
        )
            .into()
    })
}

/// Converts a [`TlsVersion`] into the corresponding OpenSSL symbol.
impl From<TlsVersion> for i64 {
    fn from(tls_version: TlsVersion) -> Self {
        match tls_version {
            TlsVersion::Tls12 => openssl3::TLS1_2_VERSION,
            TlsVersion::Tls13 => openssl3::TLS1_3_VERSION,
        }
        .into()
    }
}

/// Convenient wrapper around a `SSL_CTX`.
struct SslContext(NonNull<NativeSslCtx>);

impl std::fmt::Debug for SslContext {
    fn fmt(&self, f: &mut std::fmt::Formatter) -> std::fmt::Result {
        write!(f, "SslContext({:p})", self.0.as_ptr())
    }
}

impl SslContext {
    /// Disables session caching on a SSL context.
    fn disable_session_cache_mode(&self) {
        // `SSL_CTX_set_session_cache_mode` is a C macro.
        unsafe {
            openssl3::SSL_CTX_ctrl(
                self.0.as_ptr(),
                openssl3::SSL_CTRL_SET_SESS_CACHE_MODE as i32,
                openssl3::SSL_SESS_CACHE_OFF.into(),
                ptr::null_mut(),
            )
        };
    }

    /// Defines the minimum TLS version to use.
    fn set_minimum_tls_version(&self, version: TlsVersion) -> Result<()> {
        // `SSL_CTX_set_min_proto_version` is a C macro.
        if unsafe {
            openssl3::SSL_CTX_ctrl(
                self.0.as_ptr(),
                openssl3::SSL_CTRL_SET_MIN_PROTO_VERSION as i32,
                version.into(),
                ptr::null_mut(),
            )
        } == 1
        {
            Ok(())
        } else {
            Err((
                pb::TLSConfigurationError::TLSCONFIGURATIONERROR_UNSUPPORTED_PROTOCOL_VERSION,
                format!(
                    "failed to set the minimum TLS version: {}",
                    crate::ossl3::errstr()
                ),
            )
                .into())
        }
    }

    /// Defines the maximum TLS version to use.
    fn set_maximum_tls_version(&self, version: TlsVersion) -> Result<()> {
        // `SSL_CTX_set_max_proto_version` is a C macro.
        if unsafe {
            openssl3::SSL_CTX_ctrl(
                self.0.as_ptr(),
                openssl3::SSL_CTRL_SET_MAX_PROTO_VERSION as i32,
                version.into(),
                ptr::null_mut(),
            )
        } == 1
        {
            Ok(())
        } else {
            Err((
                pb::TLSConfigurationError::TLSCONFIGURATIONERROR_UNSUPPORTED_PROTOCOL_VERSION,
                format!(
                    "failed to set the maximum TLS version: {}",
                    crate::ossl3::errstr()
                ),
            )
                .into())
        }
    }

    /// Sets the minimum and the maximum TLS versions to use.
    fn set_min_and_max_tls_version(&self, tls_options: &pb_api::TLSOptions) -> Result<()> {
        let (min_version, max_version) =
            tls::support::tls_options_get_min_max_tls_version(tls_options);
        self.set_minimum_tls_version(min_version)?;
        self.set_maximum_tls_version(max_version)
    }

    /// Initializes the trusted certificate store.
    fn initialize_trusted_cert_store(&self) -> Result<()> {
        let x509_store = NonNull::new(unsafe { openssl3::X509_STORE_new() }).ok_or((
            pb::SystemError::SYSTEMERROR_MEMORY,
            "failed to instantiate an X509_STORE",
        ))?;

        unsafe {
            openssl3::SSL_CTX_set_cert_store(self.0.as_ptr(), x509_store.as_ptr());
        }

        Ok(())
    }

    /// Sets the trust parameter on the verification parameters object, depending
    /// on the execution mode.
    fn set_trust(&self, mode: Mode) -> Result<()> {
        if unsafe {
            openssl3::SSL_CTX_set_trust(
                self.0.as_ptr(),
                match mode {
                    Mode::Client => openssl3::X509_TRUST_SSL_CLIENT,
                    Mode::Server => openssl3::X509_TRUST_SSL_SERVER,
                } as c_int,
            )
        } == 1
        {
            Ok(())
        } else {
            Err((
                pb::SystemError::SYSTEMERROR_BACKEND,
                format!("failed to set the trust parameter: {}", crate::ossl3::errstr()),
            )
                .into())
        }
    }

    /// Sets the `SSL_MODE_RELEASE_BUFFERS` option.
    ///
    /// See <https://www.openssl.org/docs/man3.2/man3/SSL_CTX_set_mode.html#SSL_MODE_RELEASE_BUFFERS>
    /// for more information.
    fn set_mode_release_buffers(&self) {
        // `SSL_CTX_set_mode` is a C macro.
        unsafe {
            openssl3::SSL_CTX_ctrl(
                self.0.as_ptr(),
                openssl3::SSL_CTRL_MODE as c_int,
                openssl3::SSL_MODE_RELEASE_BUFFERS.into(),
                ptr::null_mut(),
            )
        };
    }

    /// Sets the default parameters for a SSL context.
    fn set_default_parameters(&self) -> Result<()> {
        const DISABLED: c_int = 0;

        unsafe {
            openssl3::SSL_CTX_set_quiet_shutdown(self.0.as_ptr(), DISABLED);
        }

        self.disable_session_cache_mode();
        self.set_mode_release_buffers();
        self.initialize_trusted_cert_store()
    }

    /// Sets the list of available ciphers.
    /// This function is only used for TLS 1.2.
    /// Names will be converted to OpenSSL names using `OPENSSL_cipher_name`.
    fn set_cipher_list<S>(&self, ciphers: impl IntoIterator<Item = S>) -> Result<()>
    where
        S: AsRef<str>,
    {
        let ciphersuites = tls::support::build_ciphersuites_list(
            ciphers.into_iter().filter_map(crate::ossl3::cipher_name),
            "!+@-",
        )?;
        let cstr = CString::new(ciphersuites).map_err(|e| {
            (
                pb::SystemError::SYSTEMERROR_MEMORY,
                format!("failed to build a `CString`: {e}"),
            )
        })?;
        if unsafe { openssl3::SSL_CTX_set_cipher_list(self.0.as_ptr(), cstr.as_ptr()) } == 1 {
            Ok(())
        } else {
            Err((
                pb::TLSConfigurationError::TLSCONFIGURATIONERROR_UNSUPPORTED_CIPHERSUITE,
                format!("failed to set the cipher list: {}", crate::ossl3::errstr()),
            )
                .into())
        }
    }

    /// Sets the list of available ciphers using the default list provided
    /// by OpenSSL.
    /// This function is only useful for TLS 1.2.
    fn set_default_cipher_list(&self) -> Result<()> {
        let cstr =
            NonNull::new(unsafe { openssl3::OSSL_default_cipher_list() }.cast_mut()).ok_or((
                pb::SystemError::SYSTEMERROR_BACKEND,
                "`OSSL_default_cipher_list` returned NULL",
            ))?;
        if unsafe { openssl3::SSL_CTX_set_cipher_list(self.0.as_ptr(), cstr.as_ptr()) } == 1 {
            Ok(())
        } else {
            Err((
                pb::TLSConfigurationError::TLSCONFIGURATIONERROR_UNSUPPORTED_CIPHERSUITE,
                format!("failed to set the cipher list: {}", crate::ossl3::errstr()),
            )
                .into())
        }
    }

    /// Sets the list of available ciphersuites for TLS 1.3.
    fn set_ciphersuites<S>(&self, ciphers: impl IntoIterator<Item = S>) -> Result<()>
    where
        S: AsRef<str>,
    {
        let control_string = tls::support::build_ciphersuites_list(ciphers, "!+@-")?;

        let cstr = CString::new(control_string).map_err(|e| {
            (
                pb::SystemError::SYSTEMERROR_MEMORY,
                format!("failed to build a `CString`: {e}"),
            )
        })?;
        if unsafe { openssl3::SSL_CTX_set_ciphersuites(self.0.as_ptr(), cstr.as_ptr()) } == 1 {
            Ok(())
        } else {
            Err((
                pb::TLSConfigurationError::TLSCONFIGURATIONERROR_UNSUPPORTED_CIPHERSUITE,
                format!("failed to set the ciphersuites: {}", crate::ossl3::errstr()),
            )
                .into())
        }
    }

    /// Sets the list of available ciphersuites using the default list provided
    /// by OpenSSL.
    /// This function is only useful for TLS 1.3.
    fn set_default_ciphersuites(&self) -> Result<()> {
        let cstr = NonNull::new(unsafe { openssl3::OSSL_default_ciphersuites() }.cast_mut())
            .ok_or((
                pb::SystemError::SYSTEMERROR_BACKEND,
                "`OSSL_default_ciphersuites` returned NULL",
            ))?;
        if unsafe { openssl3::SSL_CTX_set_ciphersuites(self.0.as_ptr(), cstr.as_ptr()) } == 1 {
            Ok(())
        } else {
            Err((
                pb::TLSConfigurationError::TLSCONFIGURATIONERROR_UNSUPPORTED_CIPHERSUITE,
                format!("failed to set the ciphersuites: {}", crate::ossl3::errstr()),
            )
                .into())
        }
    }

    /// Configures TLS 1.2.
    fn configure_tls12(&self, tls12_config: Option<&pb_api::TLSv12Config>) -> Result<()> {
        let Some(config) = tls12_config else {
            return Ok(());
        };
        if config.ciphersuite.is_empty() {
            self.set_default_cipher_list()?;
        } else {
            self.set_cipher_list(&config.ciphersuite)?;
        }

        Ok(())
    }

    /// Configures TLS 1.3.
    fn configure_tls13(&self, tls13_config: Option<&pb_api::TLSv13Config>) -> Result<()> {
        let Some(config) = tls13_config else {
            return Ok(());
        };

        self.set_kes(&config.ke)?;

        if config.ciphersuite.is_empty() {
            self.set_default_ciphersuites()?;
        } else {
            self.set_ciphersuites(&config.ciphersuite)?;
        }

        Ok(())
    }

    /// Sets the KEs to an SSL context.
    fn set_kes(&self, kes: &[impl AsRef<str>]) -> Result<()> {
        if kes.is_empty() {
            return Err((pb::KEMError::KEMERROR_INVALID, "no KE specified").into());
        }

        let list = CString::new(kes.iter().map(|s| s.as_ref()).collect::<Vec<_>>().join(":"))
            .map_err(|e| {
                (
                    pb::SystemError::SYSTEMERROR_MEMORY,
                    format!("failed to create the string list of KEs: {e}"),
                )
            })?;

        // `SSL_CTX_set1_groups_list` is a C macro.
        if unsafe {
            openssl3::SSL_CTX_ctrl(
                self.0.as_ptr(),
                openssl3::SSL_CTRL_SET_GROUPS_LIST as i32,
                0,
                list.as_ptr().cast_mut().cast(),
            )
        } == 1
        {
            Ok(())
        } else {
            Err((pb::KEMError::KEMERROR_INVALID, crate::ossl3::errstr()).into())
        }
    }

    /// Sets supported application protocols (ALPN).
    fn set_alpn_protocols<S>(&self, protocols: impl IntoIterator<Item = S>) -> Result<()>
    where
        S: AsRef<str>,
    {
        let mut protos = String::new();
        for proto in protocols.into_iter() {
            let proto = proto.as_ref();
            let x: u8 = proto.len().try_into().map_err(|_| {
                (
                    pb::ALPNError::ALPNERROR_LENGTH_ERROR,
                    "ALPN length overflow",
                )
            })?;
            if x == 0 {
                return Err((
                    pb::ALPNError::ALPNERROR_LENGTH_ERROR,
                    "ALPN length erro: empty",
                )
                    .into());
            }
            if proto.contains(0x00_u8 as char) {
                return Err((
                    pb::ALPNError::ALPNERROR_INVALID_STRING,
                    "string cannot contain null bytes",
                )
                    .into());
            }
            protos.push(x as char);
            protos.push_str(proto);
        }

        let len: u32 = protos.len().try_into().map_err(|_| {
            (
                pb::SystemError::SYSTEMERROR_INTEGER_OVERFLOW,
                "protos string is too large",
            )
        })?;
        let cstr = CString::new(protos.as_bytes()).map_err(|e| {
            (
                pb::SystemError::SYSTEMERROR_MEMORY,
                format!("failed to create a CString: {e}"),
            )
        })?;
        if unsafe { openssl3::SSL_CTX_set_alpn_protos(self.0.as_ptr(), cstr.as_ptr().cast(), len) }
            == 0
        {
            Ok(())
        } else {
            Err(pb::ALPNError::ALPNERROR_INVALID_STRING.into())
        }
    }

    /// Sets the certificate to use when the remote peer requests an authentication.
    /// This is used in server mode and in client mode when mTLS is enabled.
    fn set_certificate(&self, certificate: NonNull<NativeX509Certificate>) -> Result<()> {
        if unsafe { openssl3::SSL_CTX_use_certificate(self.0.as_ptr(), certificate.as_ptr()) } == 1
        {
            Ok(())
        } else {
            Err((
                pb::CertificateError::CERTIFICATEERROR_UNSUPPORTED,
                format!(
                    "failed to use certificate for authentication: {}",
                    crate::ossl3::errstr()
                ),
            )
                .into())
        }
    }

    /// Sets the private key to use when the remote peer is requesting an authentication.
    /// This is used in server mode and in clinet mode when mTLS is enabled.
    ///
    /// This method also checks the consistency between the provided certificate
    /// and the private key.
    /// The certificate is provided using [`SslContext::set_certificate`].
    fn set_private_key(&self, private_key: NonNull<NativePrivateKey>) -> Result<()> {
        if unsafe { openssl3::SSL_CTX_use_PrivateKey(self.0.as_ptr(), private_key.as_ptr()) } != 1 {
            return Err((
                pb::PrivateKeyError::PRIVATEKEYERROR_UNSUPPORTED,
                format!(
                    "failed to use private key for authentication: {}",
                    crate::ossl3::errstr()
                ),
            )
                .into());
        };

        if unsafe { openssl3::SSL_CTX_check_private_key(self.0.as_ptr()) } == 1 {
            Ok(())
        } else {
            Err((pb::TLSConfigurationError::TLSCONFIGURATIONERROR_PRIVATE_KEY_INCONSISTENT_WITH_CERTIFICATE,
                format!("private key does not match certificate: {}", crate::ossl3::errstr())).into())
        }
    }

    /// Appends a certificate to the certificate chain the peer is going to expose
    /// to remote.
    ///
    /// This function takes a [`Pimpl`] as input since [`SSL_CTX_add_extra_chain_cert`]
    /// takes the ownership of the `X509` object.
    fn add_extra_chain_cert<'a, 'b>(
        &self,
        extra_certificate: Pimpl<'b, NativeX509Certificate>,
    ) -> Result<()>
    where
        'a: 'b,
    {
        // `SSL_CTX_add_extra_chain_cert` is a C macro.
        if unsafe {
            openssl3::SSL_CTX_ctrl(
                self.0.as_ptr(),
                openssl3::SSL_CTRL_EXTRA_CHAIN_CERT as c_int,
                0,
                extra_certificate.as_nonnull().as_ptr().cast(),
            )
        } == 1
        {
            // [`SSL_CTX_add_extra_chain_cert`] takes the ownership of the given
            // `X509` object.
            extra_certificate.into_raw();
            Ok(())
        } else {
            Err((
                pb::CertificateError::CERTIFICATEERROR_UNSUPPORTED,
                format!(
                    "failed to add an extra certificate to the certificate chain: {}",
                    crate::ossl3::errstr()
                ),
            )
                .into())
        }
    }

    /// Sets the X.509 identity to use.
    /// If the client sets an X.509 identity, then it will expect a client
    /// certificate request from the server, in order to establish a mutual
    /// TLS tunnel (mTLS).
    fn set_identity(
        &self,
        lib_ctx: &LibCtx<'_>,
        identity: Option<&pb_api::X509Identity>,
    ) -> Result<()> {
        let Some(identity) = identity else {
            return Ok(());
        };
        let (certificate_chain_format, data_source) = identity
            .certificate
            .as_ref()
            .ok_or(pb::CertificateError::CERTIFICATEERROR_MALFORMED.into())
            .and_then(tls::support::configuration_read_certificate)
            .map_err(|e| e >> pb::TLSConfigurationError::TLSCONFIGURATIONERROR_INVALID)?;
        let cert_chain_bio = crate::ossl3::BIO_from_buffer(&data_source)?;
        let leaf_certificate = crate::ossl3::X509_from_BIO(
            lib_ctx,
            cert_chain_bio.as_nonnull(),
            certificate_chain_format,
        )?;
        self.set_certificate(leaf_certificate.as_nonnull())?;

        let (format, data_source) = identity
            .private_key
            .as_ref()
            .ok_or(pb::PrivateKeyError::PRIVATEKEYERROR_MALFORMED.into())
            .and_then(tls::support::configuration_read_private_key)
            .map_err(|e| e >> pb::TLSConfigurationError::TLSCONFIGURATIONERROR_INVALID)?;
        let bio = crate::ossl3::BIO_from_buffer(&data_source)?;
        let private_key = crate::ossl3::EVP_PKEY_from_BIO(lib_ctx, bio.as_nonnull(), format)?;
        self.set_private_key(private_key.as_nonnull())?;

        while !crate::ossl3::is_BIO_eof(cert_chain_bio.as_nonnull()) {
            let certificate_in_chain = crate::ossl3::X509_from_BIO(
                lib_ctx,
                cert_chain_bio.as_nonnull(),
                certificate_chain_format,
            )?;
            self.add_extra_chain_cert(certificate_in_chain)?;
        }

        Ok(())
    }

    /// Imports the trusted certificates from the protobuf configuration to the
    /// OpenSSL SSL context.
    fn fill_certificate_trust_store(
        &self,
        lib_ctx: &LibCtx<'_>,
        x509_verifier: Option<&pb_api::X509Verifier>,
    ) -> Result<()> {
        let Some(x509_verifier) = x509_verifier else {
            return Ok(());
        };

        let store = NonNull::new(unsafe { openssl3::SSL_CTX_get_cert_store(self.0.as_ptr()) })
            .ok_or((
                pb::SystemError::SYSTEMERROR_MEMORY,
                "SSL_CTX does not have a certificate store",
            ))?;

        for certificate in x509_verifier.trusted_cas.iter() {
            let (format, data_source) = tls::support::configuration_read_certificate(certificate)?;
            let bio = crate::ossl3::BIO_from_buffer(&data_source)?;

            while !crate::ossl3::is_BIO_eof(bio.as_nonnull()) {
                let x509 = crate::ossl3::X509_from_BIO(lib_ctx, bio.as_nonnull(), format)?;
                unsafe {
                    openssl3::X509_STORE_add_cert(store.as_ptr(), x509.as_nonnull().as_ptr())
                };
            }
        }

        Ok(())
    }

    /// Loads the OpenSSL system-default trust anchors into context store.
    fn fill_certificate_trust_store_with_default_cas(
        &self,
        x509_verifier: Option<&pb_api::X509Verifier>,
    ) -> Result<()> {
        let Some(x509) = x509_verifier else {
            return Ok(());
        };

        if x509.load_cas_from_default_verify_path
            && unsafe { openssl3::SSL_CTX_set_default_verify_paths(self.0.as_ptr()) } != 1
        {
            return Err((
                    pb::CertificateError::CERTIFICATEERROR_UNKNOWN,
                    format!(
                        "CAfile and CApath are NULL or the processing at one of the locations specified failed: {}",
                        crate::ossl3::errstr()
                    ),
                    )
                    .into());
        }
        Ok(())
    }
    /// Sets the verification mode.
    ///
    /// If a `X509Verifier` structure is present in the protobuf configuration,
    /// then `SSL_VERIFY_PEER` is used in client mode, and `SSL_VERIFY_PEER | SSL_VERIFY_FAIL_IF_NO_PEER_CERT`
    /// is used in server mode.
    fn set_verify_mode(&self, verify_mode: VerifyMode) {
        let flag = match verify_mode {
            VerifyMode::None => openssl3::SSL_VERIFY_NONE,
            VerifyMode::Peer => openssl3::SSL_VERIFY_PEER,
            VerifyMode::Mutual => {
                openssl3::SSL_VERIFY_PEER | openssl3::SSL_VERIFY_FAIL_IF_NO_PEER_CERT
            }
        };
        unsafe {
            openssl3::SSL_CTX_set_verify(self.0.as_ptr(), flag as i32, Some(verify_callback));
        }
    }
}

/// Instantiates a new SSL object from an SSL context.
///
/// `Pimpl` is passed here instead of the regular `NonNull` to enforce the lifetime
/// of the resulting SSL object.
fn ssl_context_new_ssl<'a, 'b>(
    ssl_context: &Pimpl<'a, NativeSslCtx>,
) -> Result<Pimpl<'b, NativeSsl>>
where
    'a: 'b,
{
    unsafe {
        Pimpl::new(openssl3::SSL_new(ssl_context.as_nonnull().as_ptr()), |x| {
            openssl3::SSL_free(x)
        })
    }
    .ok_or_else(|| {
        (
            pb::SystemError::SYSTEMERROR_MEMORY,
            format!("failed to instantiate a new SSL: {}", crate::ossl3::errstr()),
        )
            .into()
    })
}

/// Determines the verify mode depending on the mode and the existence of a
/// X509Verifier structure in the protobuf configuration.
fn get_verify_mode_from_mode_and_x509_verifier(
    mode: Mode,
    x509_verifier: Option<&pb_api::X509Verifier>,
) -> VerifyMode {
    if x509_verifier.is_none() {
        VerifyMode::None
    } else if mode == Mode::Client {
        VerifyMode::Peer
    } else {
        VerifyMode::Mutual
    }
}

/// A boxed and pinned tunnel.
pub(crate) type PinnedTunnel<'a> = Pin<Box<Tunnel<'a>>>;

impl<'a> Context<'a> {
    /// Instantiates a new [`Context`] from a [protobuf configuration](`pb_api::Configuration`)
    /// and a top-level context.
    pub(crate) fn try_from<'b>(
        lib_ctx: &'a LibCtx<'static>,
        configuration: &pb_api::Configuration,
    ) -> Result<Self>
    where
        'b: 'a,
    {
        let (mode, tls_options) = tls::support::configuration_get_mode_and_options(configuration)?;
        let ssl_ctx = new_ssl_context(lib_ctx, mode)?;
        let ssl_ctx_wrapped = SslContext(ssl_ctx.as_nonnull());

        ssl_ctx_wrapped.set_default_parameters()?;
        ssl_ctx_wrapped.set_trust(mode)?;
        ssl_ctx_wrapped.set_min_and_max_tls_version(tls_options)?;
        ssl_ctx_wrapped.configure_tls12(tls_options.tls12.as_ref())?;
        ssl_ctx_wrapped.configure_tls13(tls_options.tls13.as_ref())?;
        ssl_ctx_wrapped.set_alpn_protocols(tls_options.alpn_protocols.iter())?;

        let x509_verify_param = X509VerifyParam::try_from(&ssl_ctx)?;
        x509_verify_param.set_default_parameters()?;

        let x509_verifier = tls::support::tls_options_get_x509_verifier(tls_options)
            .and_then(tls::support::x509_verifier_verify_emptiness)?;
        x509_verify_param
            .update_certificate_chain_validation_depth_from_x509_verifier(x509_verifier);

        ssl_ctx_wrapped.set_identity(lib_ctx, tls_options.identity.as_ref())?;
        ssl_ctx_wrapped.fill_certificate_trust_store(lib_ctx, x509_verifier)?;
        ssl_ctx_wrapped.fill_certificate_trust_store_with_default_cas(x509_verifier)?;

        let verify_mode = get_verify_mode_from_mode_and_x509_verifier(mode, x509_verifier);
        ssl_ctx_wrapped.set_verify_mode(verify_mode);

        let security_requirements = x509_verifier
            .map(tls::TunnelSecurityRequirements::from)
            .unwrap_or_default();

        Ok(Self {
            _lib_ctx: lib_ctx,
            mode,
            security_requirements,
            ssl_ctx,
        })
    }

    /// Instantiates a new SSL object.
    pub(crate) fn new_ssl<'b>(&self) -> Result<Pimpl<'b, NativeSsl>>
    where
        'a: 'b,
    {
        let ssl = ssl_context_new_ssl(&self.ssl_ctx)?;
        match self.mode {
            Mode::Client => unsafe { openssl3::SSL_set_connect_state(ssl.as_nonnull().as_ptr()) },
            Mode::Server => unsafe { openssl3::SSL_set_accept_state(ssl.as_nonnull().as_ptr()) },
        };
        Ok(ssl)
    }

    /// Returns the security requirements of the context.
    pub(crate) fn security_requirements(&self) -> &tls::TunnelSecurityRequirements {
        self.borrow()
    }

    /// Creates a new tunnel.
    pub(crate) fn new_tunnel(
        &self,
        io: BoxedIO,
        configuration: pb_api::TunnelConfiguration,
    ) -> std::result::Result<PinnedTunnel<'_>, (crate::Error, BoxedIO)> {
        TunnelBuilder {
            ssl_ctx: self,
            io,
            configuration,
        }
        .build()
    }
}

#[cfg(test)]
mod test {
    use super::*;

    /// Returns the maximum depth for certificate chain validation.
    fn ssl_context_get_verify_depth(ssl_ctx: NonNull<NativeSslCtx>) -> i32 {
        unsafe { openssl3::SSL_CTX_get_verify_depth(ssl_ctx.as_ptr()) }
    }

    /// Tests [`new_ssl_context`] in client mode.
    #[test]
    fn test_new_ssl_context_client() {
        let ctx = crate::Context::default();

        new_ssl_context(&ctx, Mode::Client).unwrap();
    }

    /// Tests [`new_ssl_context`] in server mode.
    #[test]
    fn test_new_ssl_context_server() {
        let ctx = crate::Context::default();

        new_ssl_context(&ctx, Mode::Server).unwrap();
    }

    /// Tests [`SslContext::disable_session_cache_mode`].
    #[test]
    fn test_ssl_context_disable_session_cache_mode() {
        let ctx = crate::Context::default();
        let ssl_ctx = new_ssl_context(&ctx, Mode::Client).unwrap();
        let ssl_ctx_wrapped = SslContext(ssl_ctx.as_nonnull());
        ssl_ctx_wrapped.disable_session_cache_mode();

        let result = unsafe {
            // `SSL_CTX_get_session_cache_mode` is a C macro.
            openssl3::SSL_CTX_ctrl(
                ssl_ctx.as_nonnull().as_ptr(),
                openssl3::SSL_CTRL_GET_SESS_CACHE_MODE as i32,
                0,
                ptr::null_mut(),
            )
        };

        assert_eq!(result, openssl3::SSL_SESS_CACHE_OFF.into());
    }

    /// Tests [`SslContext::set_minimum_version`].
    #[test]
    fn test_ssl_context_set_minimum_version() {
        let ctx = crate::Context::default();
        let ssl_ctx = new_ssl_context(&ctx, Mode::Client).unwrap();
        let ssl_ctx_wrapped = SslContext(ssl_ctx.as_nonnull());
        let result = ssl_ctx_wrapped.set_minimum_tls_version(TlsVersion::Tls13);

        let min_proto = unsafe {
            // `SSL_CTX_get_min_proto_version` is a C macro.
            openssl3::SSL_CTX_ctrl(
                ssl_ctx.as_nonnull().as_ptr(),
                openssl3::SSL_CTRL_GET_MIN_PROTO_VERSION as i32,
                0,
                ptr::null_mut(),
            )
        };

        result.expect("fail to set minimum version for TLS protocol");
        assert_eq!(min_proto, openssl3::TLS1_3_VERSION.into());
    }

    /// Tests [`SslContext::initialize_trusted_cert_store`].
    #[test]
    fn test_ssl_context_initialize_trusted_cert_store() {
        let ctx = crate::Context::default();
        let ssl_ctx = new_ssl_context(&ctx, Mode::Client).unwrap();
        let ssl_ctx_wrapped = SslContext(ssl_ctx.as_nonnull());
        let result_init = ssl_ctx_wrapped.initialize_trusted_cert_store();

        let result = NonNull::new(unsafe {
            openssl3::SSL_CTX_get_cert_store(ssl_ctx.as_nonnull().as_ptr())
        });

        result_init.expect("`SslContext::initialize_trusted_cert_store` failed");
        result.expect("certificate store is NULL");
    }

    /// Tests [`SslContext::set_default_parameters`].
    #[test]
    fn test_ssl_context_set_default_parameters() {
        let ctx = crate::Context::default();
        let ssl_ctx = new_ssl_context(&ctx, Mode::Client).unwrap();
        let ssl_ctx_wrapped = SslContext(ssl_ctx.as_nonnull());

        let result = ssl_ctx_wrapped.set_default_parameters();

        result.expect("`SslContext::set_default_parameters` failed");
    }

    /// Tests [`SslContext::set_ciphersuites`].

    /// Tests [`SslContext::set_kes`].
    #[test]
    #[allow(non_snake_case)]
    fn test_ssl_context_set_KEs() {
        let ctx = crate::Context::default();
        let ssl_ctx = new_ssl_context(&ctx, Mode::Client).unwrap();
        let ssl_ctx_wrapped = SslContext(ssl_ctx.as_nonnull());

        let result = ssl_ctx_wrapped.set_kes(&["X25519", "kyber768"]);

        result.expect("`SslContext::set_kes` failed");
    }

    /// Tests [`SslContext::set_kes`] with invalid KE.
    #[test]
    #[allow(non_snake_case)]
    fn test_ssl_context_set_KEs_invalid() {
        let ctx = crate::Context::default();
        let ssl_ctx = new_ssl_context(&ctx, Mode::Client).unwrap();
        let ssl_ctx_wrapped = SslContext(ssl_ctx.as_nonnull());

        let result = ssl_ctx_wrapped.set_kes(&["X25519", "kyber1337"]);

        let err = result.expect_err("`SslContext::set_kes` succeed");
        let e = err.iter().next().unwrap();
        let msg = e.msg().unwrap();
        assert!(msg.contains("group 'kyber1337' cannot be set"));
    }

    /// Tests [`SslContext::set_kes`] with no KE.
    #[test]
    #[allow(non_snake_case)]
    fn test_ssl_context_set_KEs_empty() {
        let ctx = crate::Context::default();
        let ssl_ctx = new_ssl_context(&ctx, Mode::Client).unwrap();
        let ssl_ctx_wrapped = SslContext(ssl_ctx.as_nonnull());

        let empty: [&str; 0] = [];
        let result = ssl_ctx_wrapped.set_kes(&empty);

        let err = result.expect_err("`SslContext::set_kes` succeed");
        let e = err.iter().next().unwrap();
        let msg = e.msg().unwrap();
        assert!(msg.contains("no KE specified"));
    }

    /// Tests [`SslContext::set_alpn_protocols`].
    #[test]
    fn test_ssl_context_set_alpn_protocols() {
        let ctx = crate::Context::default();
        let ssl_ctx = new_ssl_context(&ctx, Mode::Client).unwrap();
        let ssl_ctx_wrapped = SslContext(ssl_ctx.as_nonnull());

        let result = ssl_ctx_wrapped.set_alpn_protocols(["http/1.1", "h2", "h3", "h2c"]);

        result.expect("`SslContext::set_alpn_protocols` failed");
    }

    /// Tests [`SslContext::set_alpn_protocols`] with a protocol containing a null byte.
    #[test]
    fn test_ssl_context_set_alpn_protocols_invalid_null_byte() {
        let ctx = crate::Context::default();
        let ssl_ctx = new_ssl_context(&ctx, Mode::Client).unwrap();
        let ssl_ctx_wrapped = SslContext(ssl_ctx.as_nonnull());

        let result = ssl_ctx_wrapped.set_alpn_protocols(["http/1.1", "h\x002"]);

        let err = result.expect_err("`SslContext::set_alpn_protocols` succeed");
        let e = err.iter().next().unwrap();
        let msg = e.msg().unwrap();
        assert!(msg.contains("string cannot contain null bytes"));
    }

    /// Tests [`SslContext::set_alpn_protocols`] with a protocol name of length > 255.
    #[test]
    fn test_ssl_context_set_alpn_protocols_invalid_too_long() {
        let ctx = crate::Context::default();
        let ssl_ctx = new_ssl_context(&ctx, Mode::Client).unwrap();
        let ssl_ctx_wrapped = SslContext(ssl_ctx.as_nonnull());

        let result = ssl_ctx_wrapped.set_alpn_protocols(["a".repeat(256)]);

        let err = result.expect_err("`SslContext::set_alpn_protocols` succeed");
        let e = err.iter().next().unwrap();
        let msg = e.msg().unwrap();
        assert!(msg.contains("ALPN length overflow"));
    }

    /// Tests [`SslContext::set_certificate`].
    #[test]
    fn test_ssl_context_set_certificate() {
        let ctx = crate::Context::default();
        let ssl_ctx = new_ssl_context(&ctx, Mode::Client).unwrap();
        let ssl_ctx_wrapped = SslContext(ssl_ctx.as_nonnull());
        let cert = crate::ossl3::test::get_certificate_from_testdata_file(
            ctx.borrow(),
            "testdata/falcon1024.cert.pem",
            pb_api::ASN1EncodingFormat::ENCODING_FORMAT_PEM,
        )
        .unwrap();

        let result = ssl_ctx_wrapped.set_certificate(cert.as_nonnull());

        result.expect("`SslContext::set_certificate` failed");
    }

    /// Tests [`SslContext::set_private_key`].
    #[test]
    fn test_ssl_context_set_private_key() {
        let ctx = crate::Context::default();
        let ssl_ctx = new_ssl_context(&ctx, Mode::Client).unwrap();
        let ssl_ctx_wrapped = SslContext(ssl_ctx.as_nonnull());
        let cert = crate::ossl3::test::get_certificate_from_testdata_file(
            ctx.borrow(),
            "testdata/falcon1024.cert.pem",
            pb_api::ASN1EncodingFormat::ENCODING_FORMAT_PEM,
        )
        .unwrap();
        ssl_ctx_wrapped.set_certificate(cert.as_nonnull()).unwrap();
        let private_key = crate::ossl3::test::get_private_key_from_testdata_file(
            ctx.borrow(),
            "testdata/falcon1024.key.pem",
            pb_api::ASN1EncodingFormat::ENCODING_FORMAT_PEM,
        )
        .unwrap();

        let result = ssl_ctx_wrapped.set_private_key(private_key.as_nonnull());

        result.expect("`SslContext::set_private_key` failed");
    }

    /// Tests [`SslContext::set_private_key`] with inconsistent (certificate, private_key).
    #[test]
    fn test_ssl_context_set_private_key_inconsistent() {
        let ctx = crate::Context::default();
        let ssl_ctx = new_ssl_context(&ctx, Mode::Client).unwrap();
        let ssl_ctx_wrapped = SslContext(ssl_ctx.as_nonnull());
        let cert = crate::ossl3::test::get_certificate_from_testdata_file(
            ctx.borrow(),
            "testdata/falcon1024.cert.pem",
            pb_api::ASN1EncodingFormat::ENCODING_FORMAT_PEM,
        )
        .unwrap();
        ssl_ctx_wrapped.set_certificate(cert.as_nonnull()).unwrap();
        let private_key = crate::ossl3::test::get_private_key_from_testdata_file(
            ctx.borrow(),
            "testdata/dilithium5.key.der",
            pb_api::ASN1EncodingFormat::ENCODING_FORMAT_DER,
        )
        .unwrap();

        let result = ssl_ctx_wrapped.set_private_key(private_key.as_nonnull());

        let err = result.expect_err("`SslContext::set_private_key` succeed");
        assert!(err.is(&errors!{pb::TLSConfigurationError::TLSCONFIGURATIONERROR_PRIVATE_KEY_INCONSISTENT_WITH_CERTIFICATE}));
    }

    /// Tests [`SslContext::add_extra_chain_cert`].
    #[test]
    fn test_ssl_context_add_extra_chain_cert() {
        let ctx = crate::Context::default();
        let ssl_ctx = new_ssl_context(&ctx, Mode::Client).unwrap();
        let ssl_ctx_wrapped = SslContext(ssl_ctx.as_nonnull());
        let cert = crate::ossl3::test::get_certificate_from_testdata_file(
            ctx.borrow(),
            "testdata/falcon1024.cert.pem",
            pb_api::ASN1EncodingFormat::ENCODING_FORMAT_PEM,
        )
        .unwrap();
        ssl_ctx_wrapped.set_certificate(cert.as_nonnull()).unwrap();

        let result = ssl_ctx_wrapped.add_extra_chain_cert(cert);

        result.expect("`SslContext::add_extra_chain_cert` failed");
    }

    /// Tests [`SslContext::set_identity`].
    #[test]
    fn test_ssl_context_set_identity() {
        let ctx = crate::Context::default();
        let ssl_ctx = new_ssl_context(&ctx, Mode::Client).unwrap();
        let ssl_ctx_wrapped = SslContext(ssl_ctx.as_nonnull());
        let identity = tls::support::test::create_x509_identity(
            "testdata/falcon1024.cert.pem",
            pb_api::ASN1EncodingFormat::ENCODING_FORMAT_PEM,
            "testdata/falcon1024.key.pem",
            pb_api::ASN1EncodingFormat::ENCODING_FORMAT_PEM,
        );

        let result = ssl_ctx_wrapped.set_identity(ctx.borrow(), Some(&identity));

        result.expect("`SslContext::set_identity` failed");
    }

    /// Tests [`SslContext::set_identity`] with inconsistent certificate/key.
    #[test]
    fn test_ssl_context_set_identity_inconsistent() {
        let ctx = crate::Context::default();
        let ssl_ctx = new_ssl_context(&ctx, Mode::Client).unwrap();
        let ssl_ctx_wrapped = SslContext(ssl_ctx.as_nonnull());
        let identity = tls::support::test::create_x509_identity(
            "testdata/falcon1024.cert.pem",
            pb_api::ASN1EncodingFormat::ENCODING_FORMAT_PEM,
            "testdata/dilithium5.key.der",
            pb_api::ASN1EncodingFormat::ENCODING_FORMAT_DER,
        );

        let result = ssl_ctx_wrapped.set_identity(ctx.borrow(), Some(&identity));

        let err = result.expect_err("`SslContext::set_identity` succeed");
        assert!(err.is(&errors!{pb::TLSConfigurationError::TLSCONFIGURATIONERROR_PRIVATE_KEY_INCONSISTENT_WITH_CERTIFICATE}));
    }

    /// Tests [`SslContext::fill_certificate_trust_store`].
    #[test]
    fn test_ssl_context_fill_certificate_trust_store() {
        let ctx = crate::Context::default();
        let ssl_ctx = new_ssl_context(&ctx, Mode::Client).unwrap();
        let ssl_ctx_wrapped = SslContext(ssl_ctx.as_nonnull());
        let x509_verifier = tls::support::test::create_x509_verifier(
            [(
                "testdata/etc_ssl_cert.pem",
                pb_api::ASN1EncodingFormat::ENCODING_FORMAT_PEM,
            )],
            false,
            4u32,
            false,
        );

        let result =
            ssl_ctx_wrapped.fill_certificate_trust_store(ctx.borrow(), Some(&x509_verifier));

        result.expect("`SslContext::fill_certificate_trust_store` failed");
    }

    /// Tests [`SslContext::fill_certificate_trust_store_with_default_cas`].
    #[test]
    fn test_ssl_context_fill_certificate_trust_store_with_default_cas() {
        let ctx = crate::Context::default();
        let ssl_ctx = new_ssl_context(&ctx, Mode::Client).unwrap();
        let ssl_ctx_wrapped = SslContext(ssl_ctx.as_nonnull());
        let x509_verifier = tls::support::test::create_x509_verifier(
            [("", pb_api::ASN1EncodingFormat::ENCODING_FORMAT_PEM)],
            false,
            0u32,
            true,
        );

        let result =
            ssl_ctx_wrapped.fill_certificate_trust_store_with_default_cas(Some(&x509_verifier));

        result.expect("`SslContext::fill_certificate_trust_store_with_default_ca` failed");
    }

    /// Tests [`SslContext::fill_certificate_trust_store`] with no X509Verifier.
    #[test]
    fn test_ssl_context_fill_certificate_trust_store_no_x509_verifier() {
        let ctx = crate::Context::default();
        let ssl_ctx = new_ssl_context(&ctx, Mode::Client).unwrap();
        let ssl_ctx_wrapped = SslContext(ssl_ctx.as_nonnull());

        let result = ssl_ctx_wrapped.fill_certificate_trust_store(ctx.borrow(), None);

        result.expect("`SslContext::fill_certificate_trust_store` failed");
    }

    /// Tests [`SslContext::fill_certificate_trust_store`] with an invalid
    /// certificate in the middle of the list.
    #[test]
    fn test_ssl_context_fill_certificate_trust_store_invalid() {
        let ctx = crate::Context::default();
        let ssl_ctx = new_ssl_context(&ctx, Mode::Client).unwrap();
        let ssl_ctx_wrapped = SslContext(ssl_ctx.as_nonnull());
        let x509_verifier = tls::support::test::create_x509_verifier(
            [(
                "testdata/etc_ssl_cert_invalid.pem",
                pb_api::ASN1EncodingFormat::ENCODING_FORMAT_PEM,
            )],
            false,
            4u32,
            false,
        );

        let result =
            ssl_ctx_wrapped.fill_certificate_trust_store(ctx.borrow(), Some(&x509_verifier));

        let err = result.expect_err("`SslContext::fill_certificate_trust_store` succeed");
        assert!(err.is(&errors! {pb::CertificateError::CERTIFICATEERROR_MALFORMED}));
    }

    /// Tests [`get_verify_mode_from_mode_and_x509_verifier`] in client mode
    /// with an X509 verifier.
    #[test]
    fn test_get_verify_mode_from_mode_and_x509_verifier_client() {
        let x509_verifier = tls::support::test::create_x509_verifier(
            [(
                "testdata/etc_ssl_cert.pem",
                pb_api::ASN1EncodingFormat::ENCODING_FORMAT_PEM,
            )],
            false,
            4u32,
            false,
        );

        let result =
            get_verify_mode_from_mode_and_x509_verifier(Mode::Client, Some(&x509_verifier));

        assert_eq!(result, VerifyMode::Peer);
    }

    /// Tests [`get_verify_mode_from_mode_and_x509_verifier`] in client mode
    /// with an no X509 verifier.
    #[test]
    fn test_get_verify_mode_from_mode_and_x509_verifier_client_no_verifier() {
        let result = get_verify_mode_from_mode_and_x509_verifier(Mode::Client, None);

        assert_eq!(result, VerifyMode::None);
    }

    /// Tests [`get_verify_mode_from_mode_and_x509_verifier`] in server mode
    /// with no X509 verifier.
    #[test]
    fn test_get_verify_mode_from_mode_and_x509_verifier_server_no_verifier() {
        let result = get_verify_mode_from_mode_and_x509_verifier(Mode::Server, None);

        assert_eq!(result, VerifyMode::None);
    }

    /// Tests [`get_verify_mode_from_mode_and_x509_verifier`] in server mode
    /// with an X509 verifier (mTLS).
    #[allow(non_snake_case)]
    #[test]
    fn test_get_verify_mode_from_mode_and_x509_verifier_server_mTLS() {
        let x509_verifier = tls::support::test::create_x509_verifier(
            [(
                "testdata/etc_ssl_cert.pem",
                pb_api::ASN1EncodingFormat::ENCODING_FORMAT_PEM,
            )],
            false,
            4u32,
            false,
        );

        let result =
            get_verify_mode_from_mode_and_x509_verifier(Mode::Server, Some(&x509_verifier));

        assert_eq!(result, VerifyMode::Mutual);
    }

    /// Tests [`ssl_context_new_ssl`].
    #[test]
    fn test_ssl_context_new_ssl() {
        let ctx = crate::Context::default();
        let ssl_ctx = new_ssl_context(&ctx, Mode::Client).unwrap();

        let result = ssl_context_new_ssl(&ssl_ctx);

        result.expect("`ssl_context_new_ssl` failed");
    }

    /// Tests [`TryFrom`] for [`Context`].
    #[test]
    fn test_context_try_from() {
        let ctx = crate::Context::default();
        let configuration =
            protobuf::text_format::parse_from_str::<pb_api::Configuration>(&format!(
                r#"
                impl: IMPL_OPENSSL3_OQS_PROVIDER
                client <
                    tls <
                        common_options <
                            tls13 <
                                ke: "X25519"
                                ke: "kyber768"
                            >
                            x509_verifier <
                                trusted_cas <
                                    static <
                                        data <
                                            filename: "{etc_ssl_cert_pem}"
                                        >
                                        format: ENCODING_FORMAT_PEM
                                    >
                                >
                                max_verify_depth: 42
                                load_cas_from_default_verify_path: false
                            >
                            identity <
                                certificate <
                                    static <
                                        data <
                                            filename: "{certificate_file}"
                                        >
                                        format: ENCODING_FORMAT_PEM
                                    >
                                >
                                private_key <
                                    static <
                                        data <
                                            filename: "{private_key_file}"
                                        >
                                        format: ENCODING_FORMAT_PEM
                                    >
                                >
                            >
                            alpn_protocols: "http/1.1"
                        >
                    >
                >
            "#,
                etc_ssl_cert_pem =
                    crate::test::resolve_runfile("testdata/etc_ssl_cert.pem"),
                certificate_file =
                    crate::test::resolve_runfile("testdata/falcon1024.cert.pem"),
                private_key_file =
                    crate::test::resolve_runfile("testdata/falcon1024.key.pem"),
            ))
            .unwrap();

        let result = Context::try_from(&ctx, &configuration);

        let context = result.expect("`try_from` failed");
        assert_eq!(
            ssl_context_get_verify_depth(context.ssl_ctx.as_nonnull()),
            42
        );
    }
}

// ######### Inlining bio_method.rs ############ ///

// Copyright (c) SandboxAQ. All rights reserved.
// SPDX-License-Identifier: AGPL-3.0-only

// Implementation of the Sandwich BIO method.

use std::ffi::c_char;

use crate::io::error::IntoIOError;

use crate::tunnel::IO;

use std::io::Read;
use std::io::Write;


/// A wrapper around a BIO.
struct Bio(NonNull<NativeBio>);

impl std::fmt::Debug for Bio {
    fn fmt(&self, f: &mut std::fmt::Formatter) -> std::fmt::Result {
        write!(f, "SandwichOpenSSL3BIO({:p})", self.0.as_ptr())
    }
}

impl Bio {
    /// Clears the BIO retry flag.
    fn clear_retry_flag(&self) {
        self.clear_flags((openssl3::BIO_FLAGS_RWS | openssl3::BIO_FLAGS_SHOULD_RETRY) as c_int);
    }

    /// Sets the 'retry read' flag.
    fn set_retry_read_flag(&self) {
        self.set_flags((openssl3::BIO_FLAGS_READ | openssl3::BIO_FLAGS_SHOULD_RETRY) as c_int);
    }

    /// Sets the 'retry write' flag.
    fn set_retry_write_flag(&self) {
        self.set_flags((openssl3::BIO_FLAGS_WRITE | openssl3::BIO_FLAGS_SHOULD_RETRY) as c_int);
    }

    /// Declares the BIO as closed.
    fn declare_closed(&self) {
        // `BIO_set_close` is a C macro.
        unsafe {
            openssl3::BIO_ctrl(
                self.0.as_ptr(),
                openssl3::BIO_CTRL_SET_CLOSE as c_int,
                1,
                ptr::null_mut(),
            )
        };
    }

    /// Clears flags.
    fn clear_flags(&self, flags: impl Into<c_int>) {
        unsafe { openssl3::BIO_clear_flags(self.0.as_ptr(), flags.into()) };
    }

    /// Sets flags.
    fn set_flags(&self, flags: impl Into<c_int>) {
        unsafe { openssl3::BIO_set_flags(self.0.as_ptr(), flags.into()) };
    }

    /// Returns the tunnel attached to the BIO.
    fn get_tunnel<'a>(&self) -> Option<&'a mut Tunnel<'a>> {
        NonNull::new(unsafe { openssl3::BIO_get_data(self.0.as_ptr()) }.cast::<Tunnel<'a>>())
            .map(|mut p| unsafe { p.as_mut() })
    }

    /// Returns the SSL object attached to the BIO.
    fn get_ssl(&self) -> std::result::Result<NonNull<NativeSsl>, pb::IOError> {
        let mut ssl = ptr::null_mut::<NativeSsl>();
        if unsafe {
            // `BIO_get_ssl` is a C macro.
            openssl3::BIO_ctrl(
                self.0.as_ptr(),
                openssl3::BIO_C_GET_SSL as c_int,
                0,
                (&mut ssl as *mut *mut NativeSsl).cast(),
            )
        } == 1
        {
            Ok(unsafe { NonNull::new_unchecked(ssl) })
        } else {
            Err(pb::IOError::IOERROR_SYSTEM_ERROR)
        }
    }

    /// Synchronizes the SSL state with the tunnel state.
    fn synchronize_states(&self, tun: &'_ mut Tunnel<'_>) {
        if tun.state != pb::State::STATE_HANDSHAKE_DONE {
            if let Ok(ssl) = self.get_ssl() {
                debug_assert!(ssl == tun.ssl.as_nonnull());
                if unsafe { openssl3::SSL_get_state(ssl.as_ptr()) }
                    == openssl3::OSSL_HANDSHAKE_STATE_TLS_ST_OK
                {
                    tun.state = pb::State::STATE_HANDSHAKE_DONE;
                }
            }
        }
    }

    /// Reads data from the BIO.
    fn read(&self, buffer: &mut [u8]) -> std::result::Result<usize, pb::IOError> {
        let tun = self.get_tunnel().ok_or(pb::IOError::IOERROR_SYSTEM_ERROR)?;
        self.synchronize_states(tun);
        tun.io.set_state(tun.state);
        tun.io.read(buffer).map_err(|e| e.into_io_error())
    }

    /// Writes data to the BIO.
    fn write(&self, buffer: &[u8]) -> std::result::Result<usize, pb::IOError> {
        let tun = self.get_tunnel().ok_or(pb::IOError::IOERROR_SYSTEM_ERROR)?;
        self.synchronize_states(tun);
        tun.io.set_state(tun.state);
        tun.io.write(buffer).map_err(|e| e.into_io_error())
    }

    /// Flushes data.
    fn flush(&self) -> std::result::Result<(), pb::IOError> {
        let tun = self.get_tunnel().ok_or(pb::IOError::IOERROR_SYSTEM_ERROR)?;
        (tun.io).flush().map_err(|e| e.into_io_error())
    }
}

/// Reflects an IO error in the BIO flags.
///
/// When an IO interface raises an error, this function sets the appropriate
/// flags to the BIO state depending on the error.
fn bio_reflect_io_error(
    error: pb::IOError,
    on_retry: impl FnOnce() -> c_int,
    on_close: impl FnOnce() -> c_int,
    default_return_value: impl Into<c_int>,
) -> c_int {
    match error {
        pb::IOError::IOERROR_IN_PROGRESS | pb::IOError::IOERROR_WOULD_BLOCK => on_retry(),
        pb::IOError::IOERROR_CLOSED | pb::IOError::IOERROR_REFUSED => on_close(),
        _ => default_return_value.into(),
    }
}

/// BIO write callback.
unsafe extern "C" fn bio_write(
    bio: *mut NativeBio,
    data: *const c_char,
    len: usize,
    written: *mut usize,
) -> c_int {
    let bio = Bio(NonNull::new_unchecked(bio));
    bio.clear_retry_flag();
    match bio.write(std::slice::from_raw_parts(data.cast(), len)) {
        Ok(n) => {
            *written = n;
            1
        }
        Err(e) => bio_reflect_io_error(
            e,
            || {
                bio.set_retry_write_flag();
                -1
            },
            || {
                bio.declare_closed();
                -1
            },
            -1,
        ),
    }
}

/// BIO read callback.
unsafe extern "C" fn bio_read(
    bio: *mut NativeBio,
    data: *mut c_char,
    len: usize,
    written: *mut usize,
) -> c_int {
    let bio = Bio(NonNull::new_unchecked(bio));
    bio.clear_retry_flag();
    match bio.read(std::slice::from_raw_parts_mut(data.cast(), len)) {
        Ok(n) => {
            *written = n;
            1
        }
        Err(e) => bio_reflect_io_error(
            e,
            || {
                bio.set_retry_read_flag();
                -1
            },
            || {
                bio.declare_closed();
                -1
            },
            -1,
        ),
    }
}

/// BIO control callback.
unsafe extern "C" fn bio_ctrl(
    bio: *mut NativeBio,
    cmd: c_int,
    larg: i64,
    _pargs: *mut c_void,
) -> i64 {
    match cmd as u32 {
        openssl3::BIO_CTRL_SET_CLOSE => {
            openssl3::BIO_set_shutdown(bio, larg as i32);
            1
        }
        openssl3::BIO_CTRL_GET_CLOSE => openssl3::BIO_get_shutdown(bio) as i64,
        openssl3::BIO_CTRL_FLUSH => {
            if Bio(NonNull::new_unchecked(bio)).flush().is_err() {
                0
            } else {
                1
            }
        }
        _ => 0,
    }
}

/// BIO create callback (never used).
unsafe extern "C" fn bio_create(_bio: *mut openssl3::bio_st) -> c_int {
    1
}

/// BIO destroy callback (never used).
unsafe extern "C" fn bio_destroy(_bio: *mut NativeBio) -> c_int {
    1
}

/// Static BIO method.
pub(super) const BIO_METH_OBJECT: openssl3::bio_method_st = openssl3::bio_method_st {
    type_: openssl3::BIO_TYPE_SOCKET as i32,
    name: ptr::null_mut(),
    bwrite: Some(bio_write),
    bwrite_old: None,
    bread: Some(bio_read),
    bread_old: None,
    bputs: None,
    bgets: None,
    ctrl: Some(bio_ctrl),
    create: Some(bio_create),
    destroy: Some(bio_destroy),
    callback_ctrl: None,
    brecvmmsg: None,
    bsendmmsg: None,
};

pub(super) const BIO_METHOD: NonNull<openssl3::BIO_METHOD> =
    unsafe { NonNull::new_unchecked((&BIO_METH_OBJECT as *const openssl3::BIO_METHOD).cast_mut()) };

#[cfg(test)]
mod test {
    use super::*;
    use crate::support::Pimpl;

    /// Creates a new BIO.
    fn new_bio(meth: Option<NonNull<openssl3::BIO_METHOD>>) -> Pimpl<'static, NativeBio> {
        unsafe {
            Pimpl::new(
                openssl3::BIO_new(
                    meth.map(|p| p.as_ptr().cast_const())
                        .unwrap_or(openssl3::BIO_s_mem()),
                ),
                |x| openssl3::BIO_free_all(x),
            )
        }
        .unwrap()
    }

    /// Returns a couple of bool that indicates if the read and write flags
    /// are respectively set.
    fn get_read_write_flags(bio: NonNull<NativeBio>) -> (bool, bool) {
        (
            unsafe {
                // `BIO_should_read` is a C macro: `BIO_test_flags(ptr, BIO_FLAGS_READ)`.
                openssl3::BIO_test_flags(bio.as_ptr(), openssl3::BIO_FLAGS_READ as c_int)
            } == openssl3::BIO_FLAGS_READ as c_int,
            unsafe {
                // `BIO_should_write` is a C macro: `BIO_test_flags(ptr, BIO_FLAGS_WRITE)`
                openssl3::BIO_test_flags(bio.as_ptr(), openssl3::BIO_FLAGS_WRITE as c_int)
            } == openssl3::BIO_FLAGS_WRITE as c_int,
        )
    }

    /// Declares a BIO as open (opposite to close).
    fn set_open(bio: NonNull<NativeBio>) {
        unsafe {
            // `BIO_set_close` is a C macro.
            openssl3::BIO_ctrl(
                bio.as_ptr(),
                openssl3::BIO_CTRL_SET_CLOSE as c_int,
                0,
                ptr::null_mut(),
            )
        };
    }

    /// Returns the closed state of a BIO.
    fn get_close_state(bio: NonNull<NativeBio>) -> bool {
        (unsafe {
            // `BIO_get_close` is a C macro.
            openssl3::BIO_ctrl(
                bio.as_ptr(),
                openssl3::BIO_CTRL_GET_CLOSE as c_int,
                0,
                ptr::null_mut(),
            )
        }) == 1
    }

    /// Tests [`Bio::clear_retry_flag`].
    #[test]
    fn test_clear_retry_flag() {
        let bio = new_bio(None);
        let bio_wrapped = Bio(bio.as_nonnull());
        bio_wrapped.set_retry_read_flag();
        bio_wrapped.set_retry_write_flag();
        let flags_before = get_read_write_flags(bio.as_nonnull());
        bio_wrapped.clear_retry_flag();

        let result = get_read_write_flags(bio.as_nonnull());

        assert_eq!((flags_before, result), ((true, true), (false, false)));
    }

    /// Tests [`Bio::set_retry_read_flag`].
    #[test]
    fn test_set_retry_read_flag() {
        let bio = new_bio(None);
        let bio_wrapped = Bio(bio.as_nonnull());
        bio_wrapped.set_retry_read_flag();

        let result = get_read_write_flags(bio.as_nonnull());

        assert_eq!(result, (true, false));
    }

    /// Tests [`Bio::set_retry_read_flag`].
    #[test]
    fn test_set_retry_write_flag() {
        let bio = new_bio(None);
        let bio_wrapped = Bio(bio.as_nonnull());
        bio_wrapped.set_retry_write_flag();

        let result = get_read_write_flags(bio.as_nonnull());

        assert_eq!(result, (false, true));
    }

    /// Tests [`Bio::declare_closed`].
    #[test]
    fn test_declare_closed() {
        let bio = new_bio(None);
        set_open(bio.as_nonnull());
        let close_before = get_close_state(bio.as_nonnull());
        let bio_wrapped = Bio(bio.as_nonnull());
        bio_wrapped.declare_closed();

        let result = get_close_state(bio.as_nonnull());

        assert_eq!((close_before, result), (false, true));
    }
}
