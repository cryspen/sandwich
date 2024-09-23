module Sandwich.Tunnel.Context
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Sandwich.Error in
  let open Sandwich.Error.Code in
  let open Sandwich.Implementation.Openssl3_impl.Tunnel.Context in
  ()

/// Mode for a [`Context`].
/// A [`Context`] is either a context for client-side applications or
/// server-side applications.
type t_Mode =
  | Mode_Client : t_Mode
  | Mode_Server : t_Mode

val t_Mode_cast_to_repr (x: t_Mode) : Prims.Pure isize Prims.l_True (fun _ -> Prims.l_True)

/// A Sandwich context.
type t_Context =
  | Context_OpenSSL3 : Sandwich.Implementation.Openssl3_impl.Tunnel.t_Context -> t_Context

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl: Core.Fmt.t_Debug t_Context =
  {
    f_fmt_pre = (fun (self: t_Context) (f: Core.Fmt.t_Formatter) -> true);
    f_fmt_post
    =
    (fun
        (self: t_Context)
        (f: Core.Fmt.t_Formatter)
        (out1: (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error))
        ->
        true);
    f_fmt
    =
    fun (self: t_Context) (f: Core.Fmt.t_Formatter) ->
      let f, hax_temp_output:(Core.Fmt.t_Formatter &
        Core.Result.t_Result Prims.unit Core.Fmt.t_Error) =
        match self with
        | (Context_OpenSSL3 c: t_Context) ->
          let tmp0, out:(Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error) =
            Core.Fmt.impl_7__write_fmt f
              (Core.Fmt.impl_2__new_v1 (sz 2)
                  (sz 1)
                  (let list = ["Context(OpenSSL3("; "))"] in
                    FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                    Rust_primitives.Hax.array_of_list 2 list)
                  (let list =
                      [
                        Core.Fmt.Rt.impl_1__new_debug #Sandwich.Implementation.Openssl3_impl.Tunnel.t_Context
                          c
                        <:
                        Core.Fmt.Rt.t_Argument
                      ]
                    in
                    FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                    Rust_primitives.Hax.array_of_list 1 list)
                <:
                Core.Fmt.t_Arguments)
          in
          let f:Core.Fmt.t_Formatter = tmp0 in
          f, out <: (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error)
      in
      f, hax_temp_output
      <:
      (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error)
  }

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
val impl_1__try_from
      (context: Sandwich.t_Context)
      (configuration: Sandwich_api_proto.Configuration.t_Configuration)
    : Prims.Pure (Core.Result.t_Result t_Context Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Creates a new tunnel from an I/O interface. See [`IO`] from [`crate::io`] module.
/// The I/O interface must outlive the tunnel, as the tunnel makes use
/// of it to send and receive data.
/// If an error occured, the IO interface is returned to the user.
val impl_1__new_tunnel
      (self: t_Context)
      (io: Sandwich.Tunnel.Io.t_BoxedIO)
      (configuration: Sandwich_api_proto.Tunnel.t_TunnelConfiguration)
    : Prims.Pure
      (Core.Result.t_Result Sandwich.Tunnel.t_Tunnel
          (Sandwich.Error.t_Error & Sandwich.Tunnel.Io.t_BoxedIO))
      Prims.l_True
      (fun _ -> Prims.l_True)
