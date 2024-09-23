module Sandwich.Tunnel
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Protobuf.Enums in
  let open Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl in
  let open Sandwich_proto.Tunnel in
  ()

/// Structure for states and errors based on protobuf definitions.
type t_ProtoStateErrorBase (v_Enum: Type0) {| i1: Protobuf.Enums.t_Enum v_Enum |} =
  | ProtoStateErrorBase : v_Enum -> Core.Option.t_Option Sandwich.Error.t_Error
    -> t_ProtoStateErrorBase v_Enum

/// Implements [`std::cmp::PartialEq`] with Enum for [`ProtoStateErrorBase`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl
      (#v_Enum: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()] i1: Protobuf.Enums.t_Enum v_Enum)
    : Core.Cmp.t_PartialEq (t_ProtoStateErrorBase v_Enum) v_Enum =
  {
    f_eq_pre = (fun (self: t_ProtoStateErrorBase v_Enum) (other: v_Enum) -> true);
    f_eq_post = (fun (self: t_ProtoStateErrorBase v_Enum) (other: v_Enum) (out: bool) -> true);
    f_eq = fun (self: t_ProtoStateErrorBase v_Enum) (other: v_Enum) -> self._0 =. other
  }

/// Implements [`std::fmt::Debug`] for [`ProtoStateErrorBase`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_1
      (#v_Enum: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()] i1: Protobuf.Enums.t_Enum v_Enum)
      (#[FStar.Tactics.Typeclasses.tcresolve ()]
          i2:
          Core.Fmt.t_Display (t_ProtoStateErrorBase v_Enum))
    : Core.Fmt.t_Debug (t_ProtoStateErrorBase v_Enum) =
  {
    f_fmt_pre = (fun (self: t_ProtoStateErrorBase v_Enum) (f: Core.Fmt.t_Formatter) -> true);
    f_fmt_post
    =
    (fun
        (self: t_ProtoStateErrorBase v_Enum)
        (f: Core.Fmt.t_Formatter)
        (out1: (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error))
        ->
        true);
    f_fmt
    =
    fun (self: t_ProtoStateErrorBase v_Enum) (f: Core.Fmt.t_Formatter) ->
      let tmp0, out:(Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error) =
        Core.Fmt.impl_7__write_fmt f
          (Core.Fmt.impl_2__new_v1 (sz 3)
              (sz 2)
              (let list = [""; " (code "; ")"] in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 3);
                Rust_primitives.Hax.array_of_list 3 list)
              (let list =
                  [
                    Core.Fmt.Rt.impl_1__new_display #(t_ProtoStateErrorBase v_Enum) self
                    <:
                    Core.Fmt.Rt.t_Argument;
                    Core.Fmt.Rt.impl_1__new_display #i32
                      (Protobuf.Enums.f_value #v_Enum #FStar.Tactics.Typeclasses.solve self._0
                        <:
                        i32)
                    <:
                    Core.Fmt.Rt.t_Argument
                  ]
                in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                Rust_primitives.Hax.array_of_list 2 list)
            <:
            Core.Fmt.t_Arguments)
      in
      let f:Core.Fmt.t_Formatter = tmp0 in
      let hax_temp_output:Core.Result.t_Result Prims.unit Core.Fmt.t_Error = out in
      f, hax_temp_output
      <:
      (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error)
  }

/// Converts a [`ProtoStateErrorBase`] to a [`crate::Error`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_2
      (#v_Enum: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()] i1: Protobuf.Enums.t_Enum v_Enum)
    : Core.Convert.t_From Sandwich.Error.t_Error (t_ProtoStateErrorBase v_Enum) =
  {
    f_from_pre = (fun (e: t_ProtoStateErrorBase v_Enum) -> true);
    f_from_post = (fun (e: t_ProtoStateErrorBase v_Enum) (out: Sandwich.Error.t_Error) -> true);
    f_from
    =
    fun (e: t_ProtoStateErrorBase v_Enum) -> Core.Option.impl__unwrap #Sandwich.Error.t_Error e._1
  }

/// Converts an enum value to a [`ProtoStateErrorBase`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_3
      (#v_Enum: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()] i1: Protobuf.Enums.t_Enum v_Enum)
    : Core.Convert.t_From (t_ProtoStateErrorBase v_Enum) v_Enum =
  {
    f_from_pre = (fun (e: v_Enum) -> true);
    f_from_post = (fun (e: v_Enum) (out: t_ProtoStateErrorBase v_Enum) -> true);
    f_from
    =
    fun (e: v_Enum) ->
      ProtoStateErrorBase e (Core.Option.Option_None <: Core.Option.t_Option Sandwich.Error.t_Error)
      <:
      t_ProtoStateErrorBase v_Enum
  }

/// Converts an enum value and a [`crate::Error`] to a [`ProtoStateErrorBase`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_4
      (#v_Enum: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()] i1: Protobuf.Enums.t_Enum v_Enum)
    : Core.Convert.t_From (t_ProtoStateErrorBase v_Enum) (v_Enum & Sandwich.Error.t_Error) =
  {
    f_from_pre = (fun (p: (v_Enum & Sandwich.Error.t_Error)) -> true);
    f_from_post
    =
    (fun (p: (v_Enum & Sandwich.Error.t_Error)) (out: t_ProtoStateErrorBase v_Enum) -> true);
    f_from
    =
    fun (p: (v_Enum & Sandwich.Error.t_Error)) ->
      ProtoStateErrorBase p._1
        (Core.Option.Option_Some p._2 <: Core.Option.t_Option Sandwich.Error.t_Error)
      <:
      t_ProtoStateErrorBase v_Enum
  }

/// Returns true if an error occurred.
val impl_5__is_err
      (#v_Enum: Type0)
      {| i1: Protobuf.Enums.t_Enum v_Enum |}
      (self: t_ProtoStateErrorBase v_Enum)
    : Prims.Pure bool Prims.l_True (fun _ -> Prims.l_True)

/// Returns the enum value.
val impl_5__value
      (#v_Enum: Type0)
      {| i2: Protobuf.Enums.t_Enum v_Enum |}
      (self: t_ProtoStateErrorBase v_Enum)
    : Prims.Pure v_Enum Prims.l_True (fun _ -> Prims.l_True)

/// Implements [`std::fmt::Display`] for [`State`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_6: Core.Fmt.t_Display (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_State) =
  {
    f_fmt_pre
    =
    (fun (self: t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_State) (f: Core.Fmt.t_Formatter) ->
        true);
    f_fmt_post
    =
    (fun
        (self: t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_State)
        (f: Core.Fmt.t_Formatter)
        (out1: (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error))
        ->
        true);
    f_fmt
    =
    fun (self: t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_State) (f: Core.Fmt.t_Formatter) ->
      let tmp0, out:(Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error) =
        Core.Fmt.impl_7__write_fmt f
          (Core.Fmt.impl_2__new_v1 (sz 1)
              (sz 1)
              (let list = [""] in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                Rust_primitives.Hax.array_of_list 1 list)
              (let list =
                  [
                    Core.Fmt.Rt.impl_1__new_display #string
                      (match self._0 with
                        | Sandwich_proto.Tunnel.State_STATE_NOT_CONNECTED  -> "not connected"
                        | Sandwich_proto.Tunnel.State_STATE_CONNECTION_IN_PROGRESS  ->
                          "connection in progress"
                        | Sandwich_proto.Tunnel.State_STATE_HANDSHAKE_IN_PROGRESS  ->
                          "handshake in progress"
                        | Sandwich_proto.Tunnel.State_STATE_HANDSHAKE_DONE  -> "handshake done"
                        | Sandwich_proto.Tunnel.State_STATE_BEING_SHUTDOWN  -> "being shutdown"
                        | Sandwich_proto.Tunnel.State_STATE_DISCONNECTED  -> "disconnected"
                        | Sandwich_proto.Tunnel.State_STATE_ERROR  -> "error")
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

/// Implements [`std::fmt::Display`] for [`HandshakeState`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_7: Core.Fmt.t_Display (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_HandshakeState) =
  {
    f_fmt_pre
    =
    (fun
        (self: t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_HandshakeState)
        (f: Core.Fmt.t_Formatter)
        ->
        true);
    f_fmt_post
    =
    (fun
        (self: t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_HandshakeState)
        (f: Core.Fmt.t_Formatter)
        (out1: (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error))
        ->
        true);
    f_fmt
    =
    fun
      (self: t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_HandshakeState)
      (f: Core.Fmt.t_Formatter)
      ->
      let tmp0, out:(Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error) =
        Core.Fmt.impl_7__write_fmt f
          (Core.Fmt.impl_2__new_v1 (sz 1)
              (sz 1)
              (let list = [""] in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                Rust_primitives.Hax.array_of_list 1 list)
              (let list =
                  [
                    Core.Fmt.Rt.impl_1__new_display #string
                      (match self._0 with
                        | Sandwich_proto.Tunnel.HandshakeState_HANDSHAKESTATE_IN_PROGRESS  ->
                          "in progress"
                        | Sandwich_proto.Tunnel.HandshakeState_HANDSHAKESTATE_DONE  -> "done"
                        | Sandwich_proto.Tunnel.HandshakeState_HANDSHAKESTATE_WANT_READ  ->
                          "wants to read"
                        | Sandwich_proto.Tunnel.HandshakeState_HANDSHAKESTATE_WANT_WRITE  ->
                          "wants to write"
                        | Sandwich_proto.Tunnel.HandshakeState_HANDSHAKESTATE_ERROR  -> "error")
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

/// Implements [`std::fmt::Display`] for [`HandshakeError`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_8: Core.Fmt.t_Display (t_ProtoStateErrorBase Sandwich_proto.Errors.t_HandshakeError) =
  {
    f_fmt_pre
    =
    (fun
        (self: t_ProtoStateErrorBase Sandwich_proto.Errors.t_HandshakeError)
        (f: Core.Fmt.t_Formatter)
        ->
        true);
    f_fmt_post
    =
    (fun
        (self: t_ProtoStateErrorBase Sandwich_proto.Errors.t_HandshakeError)
        (f: Core.Fmt.t_Formatter)
        (out1: (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error))
        ->
        true);
    f_fmt
    =
    fun
      (self: t_ProtoStateErrorBase Sandwich_proto.Errors.t_HandshakeError)
      (f: Core.Fmt.t_Formatter)
      ->
      let tmp0, out:(Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error) =
        Core.Fmt.impl_7__write_fmt f
          (Core.Fmt.impl_2__new_v1 (sz 1)
              (sz 1)
              (let list = [""] in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                Rust_primitives.Hax.array_of_list 1 list)
              (let list =
                  [
                    Core.Fmt.Rt.impl_1__new_display #string
                      (match self._0 with
                        | Sandwich_proto.Errors.HandshakeError_HANDSHAKEERROR_INVALID_SERVER_NAME  ->
                          "invalid server name"
                        | Sandwich_proto.Errors.HandshakeError_HANDSHAKEERROR_CERTIFICATE_VERIFICATION_FAILED
                           ->
                          "certificate verification failed"
                        | Sandwich_proto.Errors.HandshakeError_HANDSHAKEERROR_CERTIFICATE_EXPIRED  ->
                          "certificate has expired"
                        | Sandwich_proto.Errors.HandshakeError_HANDSHAKEERROR_CERTIFICATE_REVOKED  ->
                          "certificate was revoked"
                        | Sandwich_proto.Errors.HandshakeError_HANDSHAKEERROR_INVALID_CERTIFICATE  ->
                          "invalid certificate"
                        | Sandwich_proto.Errors.HandshakeError_HANDSHAKEERROR_CERTIFICATE_SIGNATURE_VERIFICATION_FAILED
                           ->
                          "certificate signature verification failed"
                        | Sandwich_proto.Errors.HandshakeError_HANDSHAKEERROR_DEPTH_EXCEEDED  ->
                          "certificate chain too long or pathlen exceeded"
                        | Sandwich_proto.Errors.HandshakeError_HANDSHAKEERROR_UNSUPPORTED_PROTOCOL  ->
                          "unsupported protocol"
                        | Sandwich_proto.Errors.HandshakeError_HANDSHAKEERROR_NO_SHARED_CIPHER  ->
                          "no shared cipher"
                        | Sandwich_proto.Errors.HandshakeError_HANDSHAKEERROR_NO_SUITABLE_KEY_SHARE  ->
                          "no suitable key share"
                        | Sandwich_proto.Errors.HandshakeError_HANDSHAKEERROR_UNKNOWN_ERROR  ->
                          "unknown handshake error")
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

/// Implements [`std::fmt::Display`] for [`RecordError`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_9: Core.Fmt.t_Display (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError) =
  {
    f_fmt_pre
    =
    (fun
        (self: t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError)
        (f: Core.Fmt.t_Formatter)
        ->
        true);
    f_fmt_post
    =
    (fun
        (self: t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError)
        (f: Core.Fmt.t_Formatter)
        (out1: (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error))
        ->
        true);
    f_fmt
    =
    fun
      (self: t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError)
      (f: Core.Fmt.t_Formatter)
      ->
      let tmp0, out:(Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error) =
        Core.Fmt.impl_7__write_fmt f
          (Core.Fmt.impl_2__new_v1 (sz 1)
              (sz 1)
              (let list = [""] in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                Rust_primitives.Hax.array_of_list 1 list)
              (let list =
                  [
                    Core.Fmt.Rt.impl_1__new_display #string
                      (match self._0 with
                        | Sandwich_proto.Tunnel.RecordError_RECORDERROR_OK  -> "no error"
                        | Sandwich_proto.Tunnel.RecordError_RECORDERROR_WANT_READ  -> "want read"
                        | Sandwich_proto.Tunnel.RecordError_RECORDERROR_WANT_WRITE  -> "want write"
                        | Sandwich_proto.Tunnel.RecordError_RECORDERROR_BEING_SHUTDOWN  ->
                          "being shutdown"
                        | Sandwich_proto.Tunnel.RecordError_RECORDERROR_CLOSED  -> "closed"
                        | Sandwich_proto.Tunnel.RecordError_RECORDERROR_TOO_BIG  -> "too big"
                        | Sandwich_proto.Tunnel.RecordError_RECORDERROR_UNKNOWN  -> "unknown error")
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
let impl_10: Core.Error.t_Error (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError) =
  {
    _super_11603873402755071380 = FStar.Tactics.Typeclasses.solve;
    _super_7348497752681407507 = FStar.Tactics.Typeclasses.solve
  }

/// A tunnel.
type t_Tunnel =
  | Tunnel_OpenSSL3 :
      Core.Pin.t_Pin
        (Alloc.Boxed.t_Box Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.t_Tunnel
            Alloc.Alloc.t_Global)
    -> t_Tunnel

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_11: Core.Convert.t_From t_Tunnel Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.t_Tunnel =
  {
    f_from_pre = (fun (inner: Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.t_Tunnel) -> true);
    f_from_post
    =
    (fun (inner: Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.t_Tunnel) (out: t_Tunnel) -> true);
    f_from
    =
    fun (inner: Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.t_Tunnel) ->
      Tunnel_OpenSSL3
      (Alloc.Boxed.impl__pin #Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.t_Tunnel inner)
      <:
      t_Tunnel
  }

val impl_12__rewrap:
    #v_Inner: Type0 ->
    #v_Other: Type0 ->
    {| i2: Core.Convert.t_From t_Tunnel v_Inner |} ->
    (v_Inner & v_Other)
  -> Prims.Pure (t_Tunnel & v_Other) Prims.l_True (fun _ -> Prims.l_True)

/// Closes the tunnel.
val impl_13__close (self: t_Tunnel)
    : Prims.Pure
      (t_Tunnel &
        Core.Result.t_Result Prims.unit (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Performs the handshake.
/// Depending on the return value, this method may need to be called
/// more than once.
val impl_13__handshake (self: t_Tunnel)
    : Prims.Pure
      (t_Tunnel &
        Core.Result.t_Result (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_HandshakeState)
          Sandwich.Error.t_Error) Prims.l_True (fun _ -> Prims.l_True)

/// Reads data from the tunnel.
val impl_13__read (self: t_Tunnel) (buf: t_Slice u8)
    : Prims.Pure
      (t_Slice u8 &
        (t_Tunnel &
          Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError)))
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Returns the state of the tunnel.
val impl_13__state (self: t_Tunnel)
    : Prims.Pure (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_State)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Writes data to the tunnel.
val impl_13__write (self: t_Tunnel) (buf: t_Slice u8)
    : Prims.Pure
      (t_Tunnel &
        Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))
      Prims.l_True
      (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_14: Core.Fmt.t_Debug t_Tunnel =
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
      let f, hax_temp_output:(Core.Fmt.t_Formatter &
        Core.Result.t_Result Prims.unit Core.Fmt.t_Error) =
        match self with
        | (Tunnel_OpenSSL3 t: t_Tunnel) ->
          let tmp0, out:(Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error) =
            Core.Fmt.impl_7__write_fmt f
              (Core.Fmt.impl_2__new_v1 (sz 2)
                  (sz 1)
                  (let list = ["Tunnel(OpenSSL3("; "))"] in
                    FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                    Rust_primitives.Hax.array_of_list 2 list)
                  (let list =
                      [
                        Core.Fmt.Rt.impl_1__new_debug #(Core.Pin.t_Pin
                            (Alloc.Boxed.t_Box
                                Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.t_Tunnel
                                Alloc.Alloc.t_Global))
                          t
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

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_15: Std.Io.t_Read t_Tunnel =
  {
    f_read_pre = (fun (self: t_Tunnel) (buf: t_Slice u8) -> true);
    f_read_post
    =
    (fun
        (self: t_Tunnel)
        (buf: t_Slice u8)
        (out1: (t_Tunnel & t_Slice u8 & Core.Result.t_Result usize Std.Io.Error.t_Error))
        ->
        true);
    f_read
    =
    fun (self: t_Tunnel) (buf: t_Slice u8) ->
      let tmp0, tmp1, out:(t_Tunnel & t_Slice u8 & Core.Result.t_Result usize Std.Io.Error.t_Error)
      =
        Std.Io.f_read #t_Tunnel #FStar.Tactics.Typeclasses.solve self buf
      in
      let self:t_Tunnel = tmp0 in
      let buf:t_Slice u8 = tmp1 in
      let hax_temp_output:Core.Result.t_Result usize Std.Io.Error.t_Error =
        Core.Result.impl__map_err #usize
          #Std.Io.Error.t_Error
          #Std.Io.Error.t_Error
          out
          Core.Convert.From.from
      in
      self, buf, hax_temp_output
      <:
      (t_Tunnel & t_Slice u8 & Core.Result.t_Result usize Std.Io.Error.t_Error)
  }

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_16: Std.Io.t_Write t_Tunnel =
  {
    f_write_pre = (fun (self: t_Tunnel) (buf: t_Slice u8) -> true);
    f_write_post
    =
    (fun
        (self: t_Tunnel)
        (buf: t_Slice u8)
        (out1: (t_Tunnel & Core.Result.t_Result usize Std.Io.Error.t_Error))
        ->
        true);
    f_write
    =
    (fun (self: t_Tunnel) (buf: t_Slice u8) ->
        let tmp0, out:(t_Tunnel & Core.Result.t_Result usize Std.Io.Error.t_Error) =
          Std.Io.f_write #t_Tunnel #FStar.Tactics.Typeclasses.solve self buf
        in
        let self:t_Tunnel = tmp0 in
        let hax_temp_output:Core.Result.t_Result usize Std.Io.Error.t_Error =
          Core.Result.impl__map_err #usize
            #Std.Io.Error.t_Error
            #Std.Io.Error.t_Error
            out
            Core.Convert.From.from
        in
        self, hax_temp_output <: (t_Tunnel & Core.Result.t_Result usize Std.Io.Error.t_Error));
    f_flush_pre = (fun (self: t_Tunnel) -> true);
    f_flush_post
    =
    (fun
        (self: t_Tunnel)
        (out: (t_Tunnel & Core.Result.t_Result Prims.unit Std.Io.Error.t_Error))
        ->
        true);
    f_flush
    =
    fun (self: t_Tunnel) ->
      let hax_temp_output:Core.Result.t_Result Prims.unit Std.Io.Error.t_Error =
        Core.Result.Result_Ok (() <: Prims.unit)
        <:
        Core.Result.t_Result Prims.unit Std.Io.Error.t_Error
      in
      self, hax_temp_output <: (t_Tunnel & Core.Result.t_Result Prims.unit Std.Io.Error.t_Error)
  }
