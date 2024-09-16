module Protobuf.Reflect.Enums
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let impl__EnumDescriptor__hax_new (_: Prims.unit) =
  { f__hax_placeholder = () <: Prims.unit } <: t_EnumDescriptor

let impl__EnumDescriptor__new (#v_T: Type0) (file_descriptor: v_T) (index: usize) =
  { f__hax_placeholder = () <: Prims.unit } <: t_EnumDescriptor

let impl__EnumDescriptor__value_by_index (self: t_EnumDescriptor) (index: usize) =
  { Protobuf.Reflect.f__hax_placeholder = () <: Prims.unit }
  <:
  Protobuf.Reflect.t_EnumValueDescriptor
