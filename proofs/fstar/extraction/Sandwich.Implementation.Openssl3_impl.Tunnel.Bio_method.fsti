module Sandwich.Implementation.Openssl3_impl.Tunnel.Bio_method
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

/// A wrapper around a BIO.
/// A wrapper around a BIO.
/// Clears flags.
/// Clears the BIO retry flag.
/// Declares the BIO as closed.
/// Sets flags.
/// Sets the 'retry read' flag.
/// Sets the 'retry write' flag.
/// Returns the SSL object attached to the BIO.
/// Reflects an IO error in the BIO flags.
/// When an IO interface raises an error, this function sets the appropriate
/// flags to the BIO state depending on the error.
/// Returns the tunnel attached to the BIO.
/// Synchronizes the SSL state with the tunnel state.
/// Flushes data.
/// Reads data from the BIO.
/// Writes data to the BIO.
/// Static BIO method.
