module Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

/// Wrapper of the OpenSSL SSL object.
/// Wrapper of the OpenSSL SSL object.
/// Returns a pointer to the BIO currently attached to the SSL object.
/// Returns a pointer to some extra data from a SSL object.
/// Returns a reference to some extra data from a SSL object.
/// Checks if the tunnel is in a shutdown state.
/// Index in the SSL user data (`SSL_get_ex_data`/`SSL_set_ex_data`) where
/// the pointer to the tunnel security requirements is stored.
/// Returns the tunnel security requirements from a SSL object.
/// Sets the server name indication (SNI).
/// Verifies the tunnel configuration against the security requirements that come
/// from the context.
/// Returns the state of the SSL tunnel.
/// Closes the tunnel.
/// A tunnel, wrapper around a SSL object.
/// A tunnel, wrapper around a SSL object.
/// A tunnel, wrapper around a SSL object.
/// A tunnel, wrapper around a SSL object.
/// A tunnel, wrapper around a SSL object.
/// A tunnel, wrapper around a SSL object.
/// Attaches the security requirements structure to the `SSL` object
/// through `ex_data`.
/// Attaches itself to the current BIO.
/// Updates the state of the tunnel.
/// This method must be called after any read or write operation.
/// Tunnel builder.
/// This is a convenient aggregate of useful values to build a tunnel.
/// Tunnel builder.
/// This is a convenient aggregate of useful values to build a tunnel.
/// Tunnel builder.
/// This is a convenient aggregate of useful values to build a tunnel.
/// Tunnel builder.
/// This is a convenient aggregate of useful values to build a tunnel.
/// Creates a new Sandwich BIO and attach it to the SSL object.
/// Returns the last recorded error.
/// Returns the error that occurred during the record stage.
/// The record stage is the stage when `SSL_read` and `SSL_write`
/// are called.
/// Handles an SSL error of type `SSL_ERROR_SSL`.
/// Performs the handshake.
/// Reads some data and writes it to a buffer.
/// Write some data.
/// Sets the required Subject Alternative Names (SAN) specified in the [`pb_api::TunnelVerifier`]
/// object.
/// Prepares a tunnel structure.
/// Builds a tunnel.
