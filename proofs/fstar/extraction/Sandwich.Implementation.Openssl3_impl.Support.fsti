module Sandwich.Implementation.Openssl3_impl.Support
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

/// Returns the cipher name in the OpenSSL format.
/// Returns the library where a given error occurred.
/// This function reproduces the `ERR_GET_LIB` method from OpenSSL, which
/// is a static function in header (thus not understandable by bindgen).
/// Returns the reason of why a given error occurred.
/// This function reproduces the `ERR_GET_REASON` method from OpenSSL, which
/// is a static function in header (thus not understandable by bindgen).
/// Tells if a BIO has reached EOF.
/// Returns the last error.
/// Returns a string containing the error strings for all errors that
/// OpenSSL 3 has recorded.
/// This function clears the error queue.
/// Creates a `BIO` object from a immutable buffer.
/// Reads a private key (`EVP_PKEY` object) from a `BIO` object.
/// Reads a certificate (`X509` object) from a `BIO` object.
/// Creates a new `BIO` object with a specific method.
