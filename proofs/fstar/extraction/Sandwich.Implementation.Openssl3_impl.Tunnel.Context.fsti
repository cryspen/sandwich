module Sandwich.Implementation.Openssl3_impl.Tunnel.Context
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

/// Convenient wrapper around a `SSL_CTX`.
/// Convenient wrapper around a `SSL_CTX`.
/// Disables session caching on a SSL context.
/// Sets the `SSL_MODE_RELEASE_BUFFERS` option.
/// See <https://www.openssl.org/docs/man3.2/man3/SSL_CTX_set_mode.html#SSL_MODE_RELEASE_BUFFERS>
/// for more information.
/// Converts a [`TlsVersion`] into the corresponding OpenSSL symbol.
/// Tunnel context.
/// Tunnel context.
/// Tunnel context.
/// Tunnel context.
/// Tunnel context.
/// Returns the security requirements of the context.
/// Sets the verification mode.
/// If a `X509Verifier` structure is present in the protobuf configuration,
/// then `SSL_VERIFY_PEER` is used in client mode, and `SSL_VERIFY_PEER | SSL_VERIFY_FAIL_IF_NO_PEER_CERT`
/// is used in server mode.
/// Determines the verify mode depending on the mode and the existence of a
/// X509Verifier structure in the protobuf configuration.
/// Appends a certificate to the certificate chain the peer is going to expose
/// to remote.
/// This function takes a [`Pimpl`] as input since [`SSL_CTX_add_extra_chain_cert`]
/// takes the ownership of the `X509` object.
/// Loads the OpenSSL system-default trust anchors into context store.
/// Initializes the trusted certificate store.
/// Sets supported application protocols (ALPN).
/// Sets the certificate to use when the remote peer requests an authentication.
/// This is used in server mode and in client mode when mTLS is enabled.
/// Sets the list of available ciphers using the default list provided
/// by OpenSSL.
/// This function is only useful for TLS 1.2.
/// Sets the list of available ciphersuites using the default list provided
/// by OpenSSL.
/// This function is only useful for TLS 1.3.
/// Sets the default parameters for a SSL context.
/// Sets the KEs to an SSL context.
/// Defines the maximum TLS version to use.
/// Defines the minimum TLS version to use.
/// Sets the minimum and the maximum TLS versions to use.
/// Sets the private key to use when the remote peer is requesting an authentication.
/// This is used in server mode and in clinet mode when mTLS is enabled.
/// This method also checks the consistency between the provided certificate
/// and the private key.
/// The certificate is provided using [`SslContext::set_certificate`].
/// Sets the trust parameter on the verification parameters object, depending
/// on the execution mode.
/// Instantiates a new SSL context (`SSL_CTX`).
/// Instantiates a new SSL object from an SSL context.
/// `Pimpl` is passed here instead of the regular `NonNull` to enforce the lifetime
/// of the resulting SSL object.
/// Instantiates a new SSL object.
/// Sets the list of available ciphers.
/// This function is only used for TLS 1.2.
/// Names will be converted to OpenSSL names using `OPENSSL_cipher_name`.
/// Configures TLS 1.2.
/// Sets the list of available ciphersuites for TLS 1.3.
/// Configures TLS 1.3.
/// Creates a new tunnel.
/// Imports the trusted certificates from the protobuf configuration to the
/// OpenSSL SSL context.
/// Sets the X.509 identity to use.
/// If the client sets an X.509 identity, then it will expect a client
/// certificate request from the server, in order to establish a mutual
/// TLS tunnel (mTLS).
/// Instantiates a new [`Context`] from a [protobuf configuration](`pb_api::Configuration`)
/// and a top-level context.
