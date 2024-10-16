module Sandwich.Implementation.Openssl3_impl
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

/// Sets the library context.
/// Initializes a builder.
/// Support for OpenSSL 3 errors.
/// OpenSSL 3 support module.
/// Tunnel implementation using OpenSSL 3 and oqs-provider.
/// The default provider name.
/// Pointer to the default provider name.
/// The oqs-provider provider name.
/// Pointer to the oqs-provider provider name.
/// A wrapper around an `OSSL_PROVIDER`.
/// A wrapper around an `OSSL_PROVIDER`.
/// An `OSSL_LIB_CTX` object wrapped in a `Pimpl`.
/// An `OSSL_LIB_CTX` object wrapped in a `Pimpl`.
/// An `OSSL_LIB_CTX` object wrapped in a `Pimpl`.
/// An `OSSL_LIB_CTX` object wrapped in a `Pimpl`.
/// Returns a pointer to the top-level library context.
/// Builds the provider.
/// Instantiates a new top-level library context.
