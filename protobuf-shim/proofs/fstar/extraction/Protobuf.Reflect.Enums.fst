module Protobuf.Reflect.Enums
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let impl__EnumDescriptor__new (#v_T: Type0) (file_descriptor: v_T) (index: usize) =
  { f__hax_placeholder = () <: Prims.unit } <: t_EnumDescriptor
