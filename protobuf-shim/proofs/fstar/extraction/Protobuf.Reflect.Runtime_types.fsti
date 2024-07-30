module Protobuf.Reflect.Runtime_types
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

type t_RuntimeType =
  | RuntimeType_I32 : t_RuntimeType
  | RuntimeType_I64 : t_RuntimeType
  | RuntimeType_U32 : t_RuntimeType
  | RuntimeType_U64 : t_RuntimeType
  | RuntimeType_F32 : t_RuntimeType
  | RuntimeType_F64 : t_RuntimeType
  | RuntimeType_Bool : t_RuntimeType
  | RuntimeType_String : t_RuntimeType
  | RuntimeType_VecU8 : t_RuntimeType
  | RuntimeType_Enum : Protobuf.Reflect.t_EnumDescriptor -> t_RuntimeType
  | RuntimeType_Message : Protobuf.Reflect.t_MessageDescriptor -> t_RuntimeType
