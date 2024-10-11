module Sandwich.Implementation.Openssl3.Tunnel.Ssl
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Sandwich.Error in
  let open Sandwich.Error.Code in
  let open Sandwich.Implementation.Openssl3.Error in
  let open Sandwich.Implementation.Openssl3.Tunnel.X509_verify_param in
  let open Sandwich.Tunnel in
  let open Sandwich.Tunnel.Tls in
  let open Sandwich_proto.Tunnel in
  ()

/// Index in the SSL user data (`SSL_get_ex_data`/`SSL_set_ex_data`) where
/// the pointer to the tunnel security requirements is stored.
let v_SSL_EX_DATA_TUNNEL_SECURITY_REQUIREMENTS_INDEX: i32 = 1l

/// Wrapper of the OpenSSL SSL object.
type t_Ssl = | Ssl : Core.Ptr.Non_null.t_NonNull Openssl3.t_ssl_st -> t_Ssl

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl: Core.Fmt.t_Debug t_Ssl =
  {
    f_fmt_pre = (fun (self: t_Ssl) (f: Core.Fmt.t_Formatter) -> true);
    f_fmt_post
    =
    (fun
        (self: t_Ssl)
        (f: Core.Fmt.t_Formatter)
        (out1: (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error))
        ->
        true);
    f_fmt
    =
    fun (self: t_Ssl) (f: Core.Fmt.t_Formatter) ->
      let tmp0, out:(Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error) =
        Core.Fmt.impl_7__write_fmt f
          (Core.Fmt.impl_2__new_v1 (sz 2)
              (sz 1)
              (let list = ["OpenSSL3SSLObject("; ")"] in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                Rust_primitives.Hax.array_of_list 2 list)
              (let list =
                  [
                    Core.Fmt.Rt.impl_1__new_pointer #(Core.Ptr.Non_null.t_NonNull Openssl3.t_ssl_st)
                      self._0
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
      let hax_temp_output:Core.Result.t_Result Prims.unit Core.Fmt.t_Error = out in
      f, hax_temp_output
      <:
      (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error)
  }

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_1: Core.Convert.t_From t_Ssl (Core.Ptr.Non_null.t_NonNull Openssl3.t_ssl_st) =
  {
    f_from_pre = (fun (ssl: Core.Ptr.Non_null.t_NonNull Openssl3.t_ssl_st) -> true);
    f_from_post = (fun (ssl: Core.Ptr.Non_null.t_NonNull Openssl3.t_ssl_st) (out: t_Ssl) -> true);
    f_from = fun (ssl: Core.Ptr.Non_null.t_NonNull Openssl3.t_ssl_st) -> Ssl ssl <: t_Ssl
  }

/// Returns a pointer to the BIO currently attached to the SSL object.
val impl__Ssl__get_attached_bio (self: t_Ssl)
    : Prims.Pure (Core.Option.t_Option (Core.Ptr.Non_null.t_NonNull Openssl3.t_bio_st))
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Returns a pointer to some extra data from a SSL object.
val impl__Ssl__get_extra_data_ptr
      (#v_T #impl_765196419_: Type0)
      {| i2: Core.Convert.t_Into impl_765196419_ i32 |}
      (self: t_Ssl)
      (extra_data_index: impl_765196419_)
    : Prims.Pure (Core.Option.t_Option (Core.Ptr.Non_null.t_NonNull v_T))
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Returns a reference to some extra data from a SSL object.
val impl__Ssl__get_extra_data_ref
      (#v_T #impl_765196419_: Type0)
      {| i5: Core.Convert.t_Into impl_765196419_ i32 |}
      (self: t_Ssl)
      (extra_data_index: impl_765196419_)
    : Prims.Pure (Core.Option.t_Option v_T) Prims.l_True (fun _ -> Prims.l_True)

/// Returns the last recorded error.
val impl__Ssl__get_last_recorded_error
      (#impl_765196419_: Type0)
      {| i7: Core.Convert.t_Into impl_765196419_ i32 |}
      (self: t_Ssl)
      (ret: impl_765196419_)
    : Prims.Pure (Core.Result.t_Result Sandwich.Implementation.Openssl3.Error.t_SslError i32)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Returns the error that occurred during the record stage.
/// The record stage is the stage when `SSL_read` and `SSL_write`
/// are called.
val impl__Ssl__get_error_from_record_stage (self: t_Ssl) (err: i32)
    : Prims.Pure Sandwich_proto.Tunnel.t_RecordError Prims.l_True (fun _ -> Prims.l_True)

/// Returns the state of the SSL tunnel.
val impl__Ssl__get_state (self: t_Ssl)
    : Prims.Pure Sandwich_proto.Tunnel.t_HandshakeState Prims.l_True (fun _ -> Prims.l_True)

/// Checks if the tunnel is in a shutdown state.
val impl__Ssl__is_shutdown (self: t_Ssl) : Prims.Pure bool Prims.l_True (fun _ -> Prims.l_True)

/// Returns the tunnel security requirements from a SSL object.
val impl__Ssl__get_tunnel_security_requirements (self: t_Ssl)
    : Prims.Pure (Core.Option.t_Option Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Creates a new Sandwich BIO and attach it to the SSL object.
val impl__Ssl__create_and_attach_bio (self: t_Ssl)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Handles an SSL error of type `SSL_ERROR_SSL`.
val impl__Ssl__handle_ssl_error_ssl (self: t_Ssl)
    : Prims.Pure
      (Core.Result.t_Result Sandwich_proto.Tunnel.t_HandshakeState Sandwich.Error.t_Error &
        Core.Option.t_Option Sandwich_proto.Tunnel.t_State) Prims.l_True (fun _ -> Prims.l_True)

/// Performs the handshake.
val impl__Ssl__do_handshake (self: t_Ssl)
    : Prims.Pure
      (Core.Result.t_Result Sandwich_proto.Tunnel.t_HandshakeState Sandwich.Error.t_Error &
        Core.Option.t_Option Sandwich_proto.Tunnel.t_State) Prims.l_True (fun _ -> Prims.l_True)

/// Sets the server name indication (SNI).
val impl__Ssl__set_server_name_indication
      (#impl_488124255_: Type0)
      {| i9: Core.Convert.t_AsRef impl_488124255_ string |}
      (self: t_Ssl)
      (sni: impl_488124255_)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Verifies the tunnel configuration against the security requirements that come
/// from the context.
val verify_tunnel_verifier
      (tunnel_verifier: Core.Option.t_Option Sandwich_api_proto.Verifiers.t_TunnelVerifier)
      (security_requirements: Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Sets the required Subject Alternative Names (SAN) specified in the [`pb_api::TunnelVerifier`]
/// object.
val impl__Ssl__set_subject_alternative_names
      (self: t_Ssl)
      (tunnel_verifier: Core.Option.t_Option Sandwich_api_proto.Verifiers.t_TunnelVerifier)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Closes the tunnel.
val impl__Ssl__close (self: t_Ssl)
    : Prims.Pure
      (Core.Result.t_Result Prims.unit
          (Sandwich.Tunnel.t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Reads some data and writes it to a buffer.
val impl__Ssl__read (self: t_Ssl) (buffer: t_Slice u8)
    : Prims.Pure
      (t_Slice u8 &
        Core.Result.t_Result usize
          (Sandwich.Tunnel.t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Write some data.
val impl__Ssl__write (self: t_Ssl) (buffer: t_Slice u8)
    : Prims.Pure
      (Core.Result.t_Result usize
          (Sandwich.Tunnel.t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))
      Prims.l_True
      (fun _ -> Prims.l_True)

/// A tunnel, wrapper around a SSL object.
type t_Tunnel = {
  f__ssl_ctx:Sandwich.Implementation.Openssl3.Tunnel.Context.t_Context;
  f_ssl:Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_st;
  f_security_requirements:Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements;
  f_io:Sandwich.Tunnel.Io.t_BoxedIO;
  f_state:Sandwich_proto.Tunnel.t_State
}

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_3: Core.Fmt.t_Debug t_Tunnel =
  {
    f_fmt_pre = (fun (self: t_Tunnel) (f: Core.Fmt.t_Formatter) -> true);
    f_fmt_post
    =
    (fun
        (self: t_Tunnel)
        (f: Core.Fmt.t_Formatter)
        (out1: (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error))
        ->
        true);
    f_fmt
    =
    fun (self: t_Tunnel) (f: Core.Fmt.t_Formatter) ->
      let tmp0, out:(Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error) =
        Core.Fmt.impl_7__write_fmt f
          (Core.Fmt.impl_2__new_v1 (sz 2)
              (sz 1)
              (let list = ["OpenSSL3Tunnel(ssl: "; ")"] in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                Rust_primitives.Hax.array_of_list 2 list)
              (let list =
                  [
                    Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
                      "core::fmt::rt::impl_1__new_pointer::<\n        lifetime!(something),\n        raw_pointer!(),\n    >(\n        &(deref(\n            &(core::ptr::non_null::impl_3__as_ptr::<\n                openssl3::t_ssl_st,\n            >(\n                sandwich::support::pimpl::impl_2__as_nonnull::<\n                    lifetime!(something),\n                    openssl3::t_ssl_st,\n                >(\n                    &(proj_sandwich::implementation::openssl3::tunnel::ssl::f_ssl(\n                        deref(self),\n                    )),\n                ),\n            )),\n        )),\n    )"

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
      let hax_temp_output:Core.Result.t_Result Prims.unit Core.Fmt.t_Error = out in
      f, hax_temp_output
      <:
      (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error)
  }

/// Attaches the security requirements structure to the `SSL` object
/// through `ex_data`.
val impl_6__attach_security_requirements (self: Core.Pin.t_Pin t_Tunnel)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Attaches itself to the current BIO.
val impl_6__attach_to_bio (self: Core.Pin.t_Pin t_Tunnel)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

val impl_6__handshake (self: t_Tunnel)
    : Prims.Pure
      (t_Tunnel &
        Core.Result.t_Result
          (Sandwich.Tunnel.t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_HandshakeState)
          Sandwich.Error.t_Error) Prims.l_True (fun _ -> Prims.l_True)

val impl_6__state (self: t_Tunnel)
    : Prims.Pure (Sandwich.Tunnel.t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_State)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Updates the state of the tunnel.
/// This method must be called after any read or write operation.
val impl_6__update_state (self: t_Tunnel) : Prims.Pure t_Tunnel Prims.l_True (fun _ -> Prims.l_True)

val impl_6__close (self: t_Tunnel)
    : Prims.Pure
      (t_Tunnel &
        Core.Result.t_Result Prims.unit
          (Sandwich.Tunnel.t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))
      Prims.l_True
      (fun _ -> Prims.l_True)

val impl_6__read (self: t_Tunnel) (buf: t_Slice u8)
    : Prims.Pure
      (t_Slice u8 &
        (t_Tunnel &
          Core.Result.t_Result usize
            (Sandwich.Tunnel.t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError)))
      Prims.l_True
      (fun _ -> Prims.l_True)

val impl_6__write (self: t_Tunnel) (buf: t_Slice u8)
    : Prims.Pure
      (t_Tunnel &
        Core.Result.t_Result usize
          (Sandwich.Tunnel.t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Tunnel builder.
/// This is a convenient aggregate of useful values to build a tunnel.
type t_TunnelBuilder = {
  f_ssl_ctx:Sandwich.Implementation.Openssl3.Tunnel.Context.t_Context;
  f_io:Sandwich.Tunnel.Io.t_BoxedIO;
  f_configuration:Sandwich_api_proto.Tunnel.t_TunnelConfiguration
}

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_4: Core.Fmt.t_Debug t_TunnelBuilder =
  {
    f_fmt_pre = (fun (self: t_TunnelBuilder) (f: Core.Fmt.t_Formatter) -> true);
    f_fmt_post
    =
    (fun
        (self: t_TunnelBuilder)
        (f: Core.Fmt.t_Formatter)
        (out1: (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error))
        ->
        true);
    f_fmt
    =
    fun (self: t_TunnelBuilder) (f: Core.Fmt.t_Formatter) ->
      let tmp0, out:(Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error) =
        Core.Fmt.impl_7__write_fmt f
          (Core.Fmt.impl_2__new_const (sz 1)
              (let list = ["OpenSSL3TunnelBuilder"] in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                Rust_primitives.Hax.array_of_list 1 list)
            <:
            Core.Fmt.t_Arguments)
      in
      let f:Core.Fmt.t_Formatter = tmp0 in
      let hax_temp_output:Core.Result.t_Result Prims.unit Core.Fmt.t_Error = out in
      f, hax_temp_output
      <:
      (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error)
  }

/// Prepares a tunnel structure.
val impl_5__prepare_ssl (self: t_TunnelBuilder)
    : Prims.Pure
      (Core.Result.t_Result (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_st)
          Sandwich.Error.t_Error) Prims.l_True (fun _ -> Prims.l_True)

/// Builds a tunnel.
val impl_5__build (self: t_TunnelBuilder)
    : Prims.Pure
      (Core.Result.t_Result (Core.Pin.t_Pin (Alloc.Boxed.t_Box t_Tunnel Alloc.Alloc.t_Global))
          (Sandwich.Error.t_Error & Sandwich.Tunnel.Io.t_BoxedIO))
      Prims.l_True
      (fun _ -> Prims.l_True)
