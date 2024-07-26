module Protobuf.Enum_full
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Protobuf.Enums in
  ()

class t_EnumFull (#v_Self: Type0) = {
  [@@@ FStar.Tactics.Typeclasses.no_method]_super_14911585333008767414:Protobuf.Enums.t_Enum #v_Self;
  f_descriptor_pre:v_Self -> bool;
  f_descriptor_post:v_Self -> Protobuf.Reflect.t_EnumValueDescriptor -> bool;
  f_descriptor:x0: v_Self
    -> Prims.Pure Protobuf.Reflect.t_EnumValueDescriptor
        (f_descriptor_pre x0)
        (fun result -> f_descriptor_post x0 result);
  f_enum_descriptor_pre:Prims.unit -> bool;
  f_enum_descriptor_post:Prims.unit -> Protobuf.Reflect.t_EnumDescriptor -> bool;
  f_enum_descriptor:x0: Prims.unit
    -> Prims.Pure Protobuf.Reflect.t_EnumDescriptor
        (f_enum_descriptor_pre x0)
        (fun result -> f_enum_descriptor_post x0 result)
}
