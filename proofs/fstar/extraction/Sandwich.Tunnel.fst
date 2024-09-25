module Sandwich.Tunnel
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Protobuf.Enums in
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
