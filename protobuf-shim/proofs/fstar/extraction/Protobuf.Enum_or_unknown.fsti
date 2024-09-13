module Protobuf.Enum_or_unknown
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Protobuf.Enums in
  ()

let impl___HAX_PLACEHOLDER
      (#v_E: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()] i1: Core.Clone.t_Clone v_E)
    : Prims.unit = () <: Prims.unit

type t_EnumOrUnknown (v_E: Type0) {| i1: Core.Clone.t_Clone v_E |} = {
  f_value:i32;
  f_phantom:Core.Marker.t_PhantomData v_E
}

val impl_1__enum_value
      (#v_E: Type0)
      {| i1: Protobuf.Enums.t_Enum v_E |}
      {| i2: Core.Clone.t_Clone v_E |}
      (self: t_EnumOrUnknown v_E)
    : Prims.Pure (Core.Result.t_Result v_E i32) Prims.l_True (fun _ -> Prims.l_True)

val impl_1__enum_value_or_default
      (#v_E: Type0)
      {| i3: Protobuf.Enums.t_Enum v_E |}
      {| i3: Core.Clone.t_Clone v_E |}
      (self: t_EnumOrUnknown v_E)
    : Prims.Pure v_E Prims.l_True (fun _ -> Prims.l_True)
