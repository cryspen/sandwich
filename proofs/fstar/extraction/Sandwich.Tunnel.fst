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

let impl_5__is_err
      (#v_Enum: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()] i1: Protobuf.Enums.t_Enum v_Enum)
      (self: t_ProtoStateErrorBase v_Enum)
     = Core.Option.impl__is_some #Sandwich.Error.t_Error self._1

let impl_5__value
      (#v_Enum: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()] i2: Protobuf.Enums.t_Enum v_Enum)
      (self: t_ProtoStateErrorBase v_Enum)
     = self._0

let impl_12__rewrap
      (#v_Inner: Type0)
      (#v_Other: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()] i2: Core.Convert.t_From t_Tunnel v_Inner)
      (inner, other: (v_Inner & v_Other))
     =
  Core.Convert.f_into #v_Inner #t_Tunnel #FStar.Tactics.Typeclasses.solve inner, other
  <:
  (t_Tunnel & v_Other)

let impl_13__close (self: t_Tunnel) =
  match self with
  | (Tunnel_OpenSSL3 t: t_Tunnel) ->
    impl_12__rewrap #Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.t_Tunnel
      #(Core.Result.t_Result Prims.unit (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))
      (Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.impl_6__close (Core.Pin.impl_5__into_inner #(
                Alloc.Boxed.t_Box Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.t_Tunnel
                  Alloc.Alloc.t_Global)
              t
            <:
            Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.t_Tunnel)
        <:
        (Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.t_Tunnel &
          Core.Result.t_Result Prims.unit
            (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError)))

let impl_13__handshake (self: t_Tunnel) =
  match self with
  | (Tunnel_OpenSSL3 t: t_Tunnel) ->
    impl_12__rewrap #Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.t_Tunnel
      #(Core.Result.t_Result (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_HandshakeState)
          Sandwich.Error.t_Error)
      (Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.impl_6__handshake (Core.Pin.impl_5__into_inner
              #(Alloc.Boxed.t_Box Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.t_Tunnel
                  Alloc.Alloc.t_Global)
              t
            <:
            Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.t_Tunnel)
        <:
        (Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.t_Tunnel &
          Core.Result.t_Result (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_HandshakeState)
            Sandwich.Error.t_Error))

let impl_13__read (self: t_Tunnel) (buf: t_Slice u8) =
  let buf, hax_temp_output:(t_Slice u8 &
    (t_Tunnel &
      Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))) =
    match self with
    | (Tunnel_OpenSSL3 t: t_Tunnel) ->
      let tmp0, out:(t_Slice u8 &
        (Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.t_Tunnel &
          Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))) =
        Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.impl_6__read (Core.Pin.impl_5__into_inner #(
                Alloc.Boxed.t_Box Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.t_Tunnel
                  Alloc.Alloc.t_Global)
              t
            <:
            Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.t_Tunnel)
          buf
      in
      let buf:t_Slice u8 = tmp0 in
      buf,
      impl_12__rewrap #Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.t_Tunnel
        #(Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))
        out
      <:
      (t_Slice u8 &
        (t_Tunnel &
          Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError)))
  in
  buf, hax_temp_output
  <:
  (t_Slice u8 &
    (t_Tunnel &
      Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError)))

let impl_13__state (self: t_Tunnel) =
  match self with
  | (Tunnel_OpenSSL3 t: t_Tunnel) ->
    Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.impl_6__state (Core.Ops.Deref.f_deref #(Core.Pin.t_Pin
            (Alloc.Boxed.t_Box Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.t_Tunnel
                Alloc.Alloc.t_Global))
          #FStar.Tactics.Typeclasses.solve
          t
        <:
        Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.t_Tunnel)

let impl_13__write (self: t_Tunnel) (buf: t_Slice u8) =
  match self with
  | (Tunnel_OpenSSL3 t: t_Tunnel) ->
    impl_12__rewrap #Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.t_Tunnel
      #(Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))
      (Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.impl_6__write (Core.Pin.impl_5__into_inner #(
                Alloc.Boxed.t_Box Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.t_Tunnel
                  Alloc.Alloc.t_Global)
              t
            <:
            Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.t_Tunnel)
          buf
        <:
        (Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.t_Tunnel &
          Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError)))
