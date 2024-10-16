module Sandwich.Tunnel
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

/// Defines [`Context`] trait.
/// ## [`Context`] trait
/// [`Context`] trait is the entrypoint for Sandwich. It is created
/// from a protobuf configuration (see `proto/api/v1`).
/// A [`Context`] is tied to a specific underlying implementation and a
/// protocol. From it, developers may spawn tunnels (see [`Tunnel`].
/// Any objects derived from a [`Context`] will use its configuration.
/// This module provides the definition of I/O interfaces specific to the
/// tunnel API.
/// I/O interfaces for tunnels are regular I/O interfaces with the addition
/// of the `set_state` method which allows the I/O interfaces to know the state
/// of the tunnel it is attached to.
/// TLS module.
/// Structure for states and errors based on protobuf definitions.
/// Structure for states and errors based on protobuf definitions.
/// Structure for states and errors based on protobuf definitions.
/// Implements [`std::cmp::PartialEq`] with Enum for [`ProtoStateErrorBase`].
/// Implements [`std::fmt::Debug`] for [`ProtoStateErrorBase`].
/// Converts a [`ProtoStateErrorBase`] to a [`crate::Error`].
/// Converts an enum value to a [`ProtoStateErrorBase`].
/// Converts an enum value and a [`crate::Error`] to a [`ProtoStateErrorBase`].
/// Returns true if an error occurred.
/// Returns the enum value.
/// Implements [`std::fmt::Display`] for [`HandshakeError`].
/// Implements [`std::fmt::Display`] for [`HandshakeState`].
/// Implements [`std::fmt::Display`] for [`RecordError`].
/// Implements [`std::fmt::Display`] for [`State`].
/// A tunnel.
/// A tunnel.
/// Closes the tunnel.
/// Returns the state of the tunnel.
/// Performs the handshake.
/// Depending on the return value, this method may need to be called
/// more than once.
/// Reads data from the tunnel.
/// Writes data to the tunnel.
