module Openssl3
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let v_BIO_FLAGS_READ: u32 = Rust_primitives.Hax.dropped_body

let v_BIO_FLAGS_RWS: u32 = Rust_primitives.Hax.dropped_body

let v_BIO_FLAGS_SHOULD_RETRY: u32 = Rust_primitives.Hax.dropped_body

let v_BIO_FLAGS_WRITE: u32 = Rust_primitives.Hax.dropped_body

let v_BIO_TYPE_SOCKET: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_ASN1: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_ASYNC: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_BIO: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_BN: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_BUF: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_CMP: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_CMS: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_COMP: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_CONF: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_CRMF: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_CRYPTO: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_CT: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_DH: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_DSA: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_DSO: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_EC: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_ECDH: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_ECDSA: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_ENGINE: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_ESS: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_EVP: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_FIPS: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_HMAC: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_HTTP: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_KDF: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_MASK: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_NONE: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_OBJ: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_OCSP: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_OFFSET: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_OSSL_DECODER: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_OSSL_ENCODER: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_OSSL_STORE: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_PEM: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_PKCS12: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_PKCS7: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_PROP: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_PROV: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_RAND: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_RSA: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_SM2: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_SSL: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_SYS: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_TS: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_UI: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_USER: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_X509: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_LIB_X509V3: u32 = Rust_primitives.Hax.dropped_body

let v_ERR_REASON_MASK: u32 = Rust_primitives.Hax.dropped_body

let v_OSSL_HANDSHAKE_STATE_TLS_ST_OK: u32 = Rust_primitives.Hax.dropped_body

let v_SSL_ERROR_NONE: u32 = Rust_primitives.Hax.dropped_body

let v_SSL_ERROR_SSL: u32 = Rust_primitives.Hax.dropped_body

let v_SSL_ERROR_SYSCALL: u32 = Rust_primitives.Hax.dropped_body

let v_SSL_ERROR_WANT_ACCEPT: u32 = Rust_primitives.Hax.dropped_body

let v_SSL_ERROR_WANT_ASYNC: u32 = Rust_primitives.Hax.dropped_body

let v_SSL_ERROR_WANT_ASYNC_JOB: u32 = Rust_primitives.Hax.dropped_body

let v_SSL_ERROR_WANT_CLIENT_HELLO_CB: u32 = Rust_primitives.Hax.dropped_body

let v_SSL_ERROR_WANT_CONNECT: u32 = Rust_primitives.Hax.dropped_body

let v_SSL_ERROR_WANT_READ: u32 = Rust_primitives.Hax.dropped_body

let v_SSL_ERROR_WANT_RETRY_VERIFY: u32 = Rust_primitives.Hax.dropped_body

let v_SSL_ERROR_WANT_WRITE: u32 = Rust_primitives.Hax.dropped_body

let v_SSL_ERROR_WANT_X509_LOOKUP: u32 = Rust_primitives.Hax.dropped_body

let v_SSL_ERROR_ZERO_RETURN: u32 = Rust_primitives.Hax.dropped_body

let v_SSL_RECEIVED_SHUTDOWN: u32 = Rust_primitives.Hax.dropped_body

let v_SSL_R_PROTOCOL_IS_SHUTDOWN: u32 = Rust_primitives.Hax.dropped_body

let v_SSL_SENT_SHUTDOWN: u32 = Rust_primitives.Hax.dropped_body

let v_SSL_VERIFY_FAIL_IF_NO_PEER_CERT: u32 = Rust_primitives.Hax.dropped_body

let v_SSL_VERIFY_NONE: u32 = Rust_primitives.Hax.dropped_body

let v_SSL_VERIFY_PEER: u32 = Rust_primitives.Hax.dropped_body

let v_TLS1_2_VERSION: u32 = Rust_primitives.Hax.dropped_body

let v_TLS1_3_VERSION: u32 = Rust_primitives.Hax.dropped_body

let v_X509_V_ERR_CERT_HAS_EXPIRED: u32 = Rust_primitives.Hax.dropped_body

let v_X509_V_FLAG_CRL_CHECK_ALL: u32 = Rust_primitives.Hax.dropped_body

let v_X509_V_FLAG_TRUSTED_FIRST: u32 = Rust_primitives.Hax.dropped_body

let v_X509_V_FLAG_X509_STRICT: u32 = Rust_primitives.Hax.dropped_body

let v_X509_V_OK: u32 = Rust_primitives.Hax.dropped_body

type t_X509_VERIFY_PARAM_st = { f__unused:t_Array u8 (sz 0) }

type t_bio_method_st = { f__unused:t_Array u8 (sz 0) }

type t_bio_st = { f__unused:t_Array u8 (sz 0) }

type t_evp_pkey_st = { f__unused:t_Array u8 (sz 0) }

type t_ossl_lib_ctx_st = { f__unused:t_Array u8 (sz 0) }

type t_ossl_provider_st = { f__unused:t_Array u8 (sz 0) }

type t_ssl_ctx_st = { f__unused:t_Array u8 (sz 0) }

type t_ssl_st = { f__unused:t_Array u8 (sz 0) }

type t_x509_st = { f__unused:t_Array u8 (sz 0) }

type t_x509_store_ctx_st = { f__unused:t_Array u8 (sz 0) }

type t_x509_store_st = { f__unused:t_Array u8 (sz 0) }
