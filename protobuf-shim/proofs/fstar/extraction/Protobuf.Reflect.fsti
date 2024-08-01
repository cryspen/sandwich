module Protobuf.Reflect
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

type t_NullValue = | NullValue_NULL_VALUE : t_NullValue

let discriminant_NullValue_NULL_VALUE: isize = isz 0

val t_NullValue_cast_to_repr (x: t_NullValue)
    : Prims.Pure isize Prims.l_True (fun _ -> Prims.l_True)

type t_EnumDescriptor = { f__hax_placeholder:Prims.unit }

type t_EnumValueDescriptor = { f__hax_placeholder:Prims.unit }

type t_MessageDescriptor = { f__hax_placeholder:Prims.unit }

type t_OneofDescriptor = { f__hax_placeholder:Prims.unit }

type t_SpecialFields = { f__hax_placeholder:Prims.unit }

type t_Value = {
  f_kind:Core.Option.t_Option t_Kind;
  f_special_fields:t_SpecialFields
}


type t_Struct = {
  f_fields:Std.Collections.Hash.Map.t_HashMap Alloc.String.t_String
    t_Value
    Std.Hash.Random.t_RandomState;
  f_special_fields:t_SpecialFields
}

type t_Kind =
  | Kind_NullValue : Protobuf.Enum_or_unknown.t_EnumOrUnknown t_NullValue -> t_Kind
  | Kind_NumberValue : u64 -> t_Kind
  | Kind_StringValue : Alloc.String.t_String -> t_Kind
  | Kind_BoolValue : bool -> t_Kind
  | Kind_StructValue : t_Struct -> t_Kind
  | Kind_ListValue : t_ListValue -> t_Kind

type t_ListValue = {
  f_values:Alloc.Vec.t_Vec t_Value Alloc.Alloc.t_Global;
  f_special_fields:t_SpecialFields
}