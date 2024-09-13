module Protobuf.Descriptor
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let t_CType_cast_to_repr (x: t_CType) =
  match x with
  | CType_STRING  -> discriminant_CType_STRING
  | CType_CORD  -> discriminant_CType_CORD
  | CType_STRING_PIECE  -> discriminant_CType_STRING_PIECE

let t_IdempotencyLevel_cast_to_repr (x: t_IdempotencyLevel) =
  match x with
  | IdempotencyLevel_IDEMPOTENCY_UNKNOWN  -> discriminant_IdempotencyLevel_IDEMPOTENCY_UNKNOWN
  | IdempotencyLevel_NO_SIDE_EFFECTS  -> discriminant_IdempotencyLevel_NO_SIDE_EFFECTS
  | IdempotencyLevel_IDEMPOTENT  -> discriminant_IdempotencyLevel_IDEMPOTENT

let t_JSType_cast_to_repr (x: t_JSType) =
  match x with
  | JSType_JS_NORMAL  -> discriminant_JSType_JS_NORMAL
  | JSType_JS_STRING  -> discriminant_JSType_JS_STRING
  | JSType_JS_NUMBER  -> discriminant_JSType_JS_NUMBER

let t_Label_cast_to_repr (x: t_Label) =
  match x with
  | Label_LABEL_OPTIONAL  -> discriminant_Label_LABEL_OPTIONAL
  | Label_LABEL_REQUIRED  -> discriminant_Label_LABEL_REQUIRED
  | Label_LABEL_REPEATED  -> discriminant_Label_LABEL_REPEATED

let t_OptimizeMode_cast_to_repr (x: t_OptimizeMode) =
  match x with
  | OptimizeMode_SPEED  -> discriminant_OptimizeMode_SPEED
  | OptimizeMode_CODE_SIZE  -> discriminant_OptimizeMode_CODE_SIZE
  | OptimizeMode_LITE_RUNTIME  -> discriminant_OptimizeMode_LITE_RUNTIME

let t_Type_cast_to_repr (x: t_Type) =
  match x with
  | Type_TYPE_DOUBLE  -> discriminant_Type_TYPE_DOUBLE
  | Type_TYPE_FLOAT  -> discriminant_Type_TYPE_FLOAT
  | Type_TYPE_INT64  -> discriminant_Type_TYPE_INT64
  | Type_TYPE_UINT64  -> discriminant_Type_TYPE_UINT64
  | Type_TYPE_INT32  -> discriminant_Type_TYPE_INT32
  | Type_TYPE_FIXED64  -> discriminant_Type_TYPE_FIXED64
  | Type_TYPE_FIXED32  -> discriminant_Type_TYPE_FIXED32
  | Type_TYPE_BOOL  -> discriminant_Type_TYPE_BOOL
  | Type_TYPE_STRING  -> discriminant_Type_TYPE_STRING
  | Type_TYPE_GROUP  -> discriminant_Type_TYPE_GROUP
  | Type_TYPE_MESSAGE  -> discriminant_Type_TYPE_MESSAGE
  | Type_TYPE_BYTES  -> discriminant_Type_TYPE_BYTES
  | Type_TYPE_UINT32  -> discriminant_Type_TYPE_UINT32
  | Type_TYPE_ENUM  -> discriminant_Type_TYPE_ENUM
  | Type_TYPE_SFIXED32  -> discriminant_Type_TYPE_SFIXED32
  | Type_TYPE_SFIXED64  -> discriminant_Type_TYPE_SFIXED64
  | Type_TYPE_SINT32  -> discriminant_Type_TYPE_SINT32
  | Type_TYPE_SINT64  -> discriminant_Type_TYPE_SINT64
