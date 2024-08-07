module Protobuf.Enum_or_unknown
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Protobuf.Enums in
  ()

let impl__enum_value
      (#v_E: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()] i1: Protobuf.Enums.t_Enum v_E)
      (self: t_EnumOrUnknown v_E)
     =
  Core.Option.impl__ok_or #v_E
    #i32
    (Protobuf.Enums.f_from_i32 #v_E #FStar.Tactics.Typeclasses.solve self.f_value
      <:
      Core.Option.t_Option v_E)
    self.f_value

let impl__enum_value_or_default
      (#v_E: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()] i2: Protobuf.Enums.t_Enum v_E)
      (self: t_EnumOrUnknown v_E)
     =
  Core.Result.impl__unwrap_or_default #v_E
    #i32
    (impl__enum_value #v_E self <: Core.Result.t_Result v_E i32)
