module Sandwich.Tunnel.Tls.Support
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

/// Returns the minimum and the maximum TLS versions depending on a given TLS config.
/// Builds a ciphersuite string from a list of ciphers.
/// Returns the execution mode (Client or Server) and the tls options (`TLSOptions`).
/// Returns the X.509 verifier if exists.
/// If no X.509 verifier is found, and `EmptyVerifier` isn't specified, then
/// it's an error.
/// Verifies that a X.509 verifier isn't empty.
/// Reads the content of a certificate as described in a protobuf message.
/// Reads the content of a private key as described in a protobuf message.
