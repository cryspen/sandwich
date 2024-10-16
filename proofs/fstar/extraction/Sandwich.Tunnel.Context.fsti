module Sandwich.Tunnel.Context
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

/// Mode for a [`Context`].
/// A [`Context`] is either a context for client-side applications or
/// server-side applications.
/// Mode for a [`Context`].
/// A [`Context`] is either a context for client-side applications or
/// server-side applications.
/// Mode for a [`Context`].
/// A [`Context`] is either a context for client-side applications or
/// server-side applications.
/// A Sandwich context.
/// A Sandwich context.
/// Creates a new tunnel from an I/O interface. See [`IO`] from [`crate::io`] module.
/// The I/O interface must outlive the tunnel, as the tunnel makes use
/// of it to send and receive data.
/// If an error occured, the IO interface is returned to the user.
/// Instantiates a [`Context`] from a protobuf configuration message.
/// # Examples
/// ## Constructs a configuration in Rust.
/// ```
/// use sandwich_api_proto as pb_api;
/// // Instantiates a top-level context.
/// let sw = sandwich::Context;
/// // Creates a protobuf configuration
/// let mut configuration = pb_api::Configuration::new();
/// // Sets the implementation to be used by Sandwich. Here it's OpenSSL 1.1.1
/// // with liboqs.
/// configuration.set_impl(pb_api::Implementation::IMPL_OPENSSL1_1_1_OQS);
/// // Sets the client or server configuration according to the implementation
/// // and the protocol.
/// // …
/// // Creates the Sandwich context that will make use of the supplied
/// // configuration.
/// match sandwich::context::try_from(&sw, &configuration) {
///     Err(e) => eprintln!("Failed to instantiate a Sandwich context: {}", e),
///     Ok(context) => {
///         // Do something with `context`.
///     }
/// };
/// ```
