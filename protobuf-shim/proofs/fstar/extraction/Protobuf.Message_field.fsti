module Protobuf.Message_field
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

type t_MessageField (v_T: Type0) {| i1: Core.Clone.t_Clone v_T |} =
  | MessageField : Core.Option.t_Option (Alloc.Boxed.t_Box v_T Alloc.Alloc.t_Global)
    -> t_MessageField v_T

val impl__as_ref (#v_T: Type0) {| i1: Core.Clone.t_Clone v_T |} (self: t_MessageField v_T)
    : Prims.Pure (Core.Option.t_Option v_T) Prims.l_True (fun _ -> Prims.l_True)

val impl__is_some (#v_T: Type0) {| i2: Core.Clone.t_Clone v_T |} (self: t_MessageField v_T)
    : Prims.Pure bool Prims.l_True (fun _ -> Prims.l_True)
