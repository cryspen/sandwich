module Protobuf.Descriptor
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let discriminant_CType_CORD: isize = isz 1

let discriminant_CType_STRING: isize = isz 0

type t_CType =
  | CType_STRING : t_CType
  | CType_CORD : t_CType
  | CType_STRING_PIECE : t_CType

let discriminant_CType_STRING_PIECE: isize = isz 2

val t_CType_cast_to_repr (x: t_CType) : Prims.Pure isize Prims.l_True (fun _ -> Prims.l_True)

let discriminant_IdempotencyLevel_IDEMPOTENCY_UNKNOWN: isize = isz 0

let discriminant_IdempotencyLevel_IDEMPOTENT: isize = isz 2

type t_IdempotencyLevel =
  | IdempotencyLevel_IDEMPOTENCY_UNKNOWN : t_IdempotencyLevel
  | IdempotencyLevel_NO_SIDE_EFFECTS : t_IdempotencyLevel
  | IdempotencyLevel_IDEMPOTENT : t_IdempotencyLevel

let discriminant_IdempotencyLevel_NO_SIDE_EFFECTS: isize = isz 1

val t_IdempotencyLevel_cast_to_repr (x: t_IdempotencyLevel)
    : Prims.Pure isize Prims.l_True (fun _ -> Prims.l_True)

let discriminant_JSType_JS_NORMAL: isize = isz 0

let discriminant_JSType_JS_NUMBER: isize = isz 2

type t_JSType =
  | JSType_JS_NORMAL : t_JSType
  | JSType_JS_STRING : t_JSType
  | JSType_JS_NUMBER : t_JSType

let discriminant_JSType_JS_STRING: isize = isz 1

val t_JSType_cast_to_repr (x: t_JSType) : Prims.Pure isize Prims.l_True (fun _ -> Prims.l_True)

let discriminant_Label_LABEL_OPTIONAL: isize = isz 1

let discriminant_Label_LABEL_REPEATED: isize = isz 3

type t_Label =
  | Label_LABEL_OPTIONAL : t_Label
  | Label_LABEL_REQUIRED : t_Label
  | Label_LABEL_REPEATED : t_Label

let discriminant_Label_LABEL_REQUIRED: isize = isz 2

val t_Label_cast_to_repr (x: t_Label) : Prims.Pure isize Prims.l_True (fun _ -> Prims.l_True)

let discriminant_OptimizeMode_CODE_SIZE: isize = isz 2

let discriminant_OptimizeMode_LITE_RUNTIME: isize = isz 3

type t_OptimizeMode =
  | OptimizeMode_SPEED : t_OptimizeMode
  | OptimizeMode_CODE_SIZE : t_OptimizeMode
  | OptimizeMode_LITE_RUNTIME : t_OptimizeMode

let discriminant_OptimizeMode_SPEED: isize = isz 1

val t_OptimizeMode_cast_to_repr (x: t_OptimizeMode)
    : Prims.Pure isize Prims.l_True (fun _ -> Prims.l_True)

let discriminant_Type_TYPE_BOOL: isize = isz 8

let discriminant_Type_TYPE_BYTES: isize = isz 12

let discriminant_Type_TYPE_DOUBLE: isize = isz 1

let discriminant_Type_TYPE_ENUM: isize = isz 14

let discriminant_Type_TYPE_FIXED32: isize = isz 7

let discriminant_Type_TYPE_FIXED64: isize = isz 6

let discriminant_Type_TYPE_FLOAT: isize = isz 2

let discriminant_Type_TYPE_GROUP: isize = isz 10

let discriminant_Type_TYPE_INT32: isize = isz 5

let discriminant_Type_TYPE_INT64: isize = isz 3

let discriminant_Type_TYPE_MESSAGE: isize = isz 11

let discriminant_Type_TYPE_SFIXED32: isize = isz 15

let discriminant_Type_TYPE_SFIXED64: isize = isz 16

let discriminant_Type_TYPE_SINT32: isize = isz 17

let discriminant_Type_TYPE_SINT64: isize = isz 18

let discriminant_Type_TYPE_STRING: isize = isz 9

let discriminant_Type_TYPE_UINT32: isize = isz 13

type t_Type =
  | Type_TYPE_DOUBLE : t_Type
  | Type_TYPE_FLOAT : t_Type
  | Type_TYPE_INT64 : t_Type
  | Type_TYPE_UINT64 : t_Type
  | Type_TYPE_INT32 : t_Type
  | Type_TYPE_FIXED64 : t_Type
  | Type_TYPE_FIXED32 : t_Type
  | Type_TYPE_BOOL : t_Type
  | Type_TYPE_STRING : t_Type
  | Type_TYPE_GROUP : t_Type
  | Type_TYPE_MESSAGE : t_Type
  | Type_TYPE_BYTES : t_Type
  | Type_TYPE_UINT32 : t_Type
  | Type_TYPE_ENUM : t_Type
  | Type_TYPE_SFIXED32 : t_Type
  | Type_TYPE_SFIXED64 : t_Type
  | Type_TYPE_SINT32 : t_Type
  | Type_TYPE_SINT64 : t_Type

let discriminant_Type_TYPE_UINT64: isize = isz 4

val t_Type_cast_to_repr (x: t_Type) : Prims.Pure isize Prims.l_True (fun _ -> Prims.l_True)

type t_EnumReservedRange = {
  f_start:Core.Option.t_Option i32;
  f_end:Core.Option.t_Option i32;
  f_special_fields:Protobuf.Special.t_SpecialFields
}

type t_Location = {
  f_path:Alloc.Vec.t_Vec i32 Alloc.Alloc.t_Global;
  f_span:Alloc.Vec.t_Vec i32 Alloc.Alloc.t_Global;
  f_leading_comments:Core.Option.t_Option Alloc.String.t_String;
  f_trailing_comments:Core.Option.t_Option Alloc.String.t_String;
  f_leading_detached_comments:Alloc.Vec.t_Vec Alloc.String.t_String Alloc.Alloc.t_Global;
  f_special_fields:Protobuf.Special.t_SpecialFields
}

type t_NamePart = {
  f_name_part:Core.Option.t_Option Alloc.String.t_String;
  f_is_extension:Core.Option.t_Option bool;
  f_special_fields:Protobuf.Special.t_SpecialFields
}

type t_ReservedRange = {
  f_start:Core.Option.t_Option i32;
  f_end:Core.Option.t_Option i32;
  f_special_fields:Protobuf.Special.t_SpecialFields
}

type t_SourceCodeInfo = {
  f_location:Alloc.Vec.t_Vec t_Location Alloc.Alloc.t_Global;
  f_special_fields:Protobuf.Special.t_SpecialFields
}

type t_UninterpretedOption = {
  f_name:Alloc.Vec.t_Vec t_NamePart Alloc.Alloc.t_Global;
  f_identifier_value:Core.Option.t_Option Alloc.String.t_String;
  f_positive_int_value:Core.Option.t_Option u64;
  f_negative_int_value:Core.Option.t_Option i64;
  f_double_value:Core.Option.t_Option Prims.unit;
  f_string_value:Core.Option.t_Option (Alloc.Vec.t_Vec u8 Alloc.Alloc.t_Global);
  f_aggregate_value:Core.Option.t_Option Alloc.String.t_String;
  f_special_fields:Protobuf.Special.t_SpecialFields
}

type t_EnumOptions = {
  f_allow_alias:Core.Option.t_Option bool;
  f_deprecated:Core.Option.t_Option bool;
  f_uninterpreted_option:Alloc.Vec.t_Vec t_UninterpretedOption Alloc.Alloc.t_Global;
  f_special_fields:Protobuf.Special.t_SpecialFields
}

type t_EnumValueOptions = {
  f_deprecated:Core.Option.t_Option bool;
  f_uninterpreted_option:Alloc.Vec.t_Vec t_UninterpretedOption Alloc.Alloc.t_Global;
  f_special_fields:Protobuf.Special.t_SpecialFields
}

type t_ExtensionRangeOptions = {
  f_uninterpreted_option:Alloc.Vec.t_Vec t_UninterpretedOption Alloc.Alloc.t_Global;
  f_special_fields:Protobuf.Special.t_SpecialFields
}

type t_FieldOptions = {
  f_ctype:Core.Option.t_Option (Protobuf.Enum_or_unknown.t_EnumOrUnknown t_CType);
  f_packed:Core.Option.t_Option bool;
  f_jstype:Core.Option.t_Option (Protobuf.Enum_or_unknown.t_EnumOrUnknown t_JSType);
  f_lazy:Core.Option.t_Option bool;
  f_deprecated:Core.Option.t_Option bool;
  f_weak:Core.Option.t_Option bool;
  f_uninterpreted_option:Alloc.Vec.t_Vec t_UninterpretedOption Alloc.Alloc.t_Global;
  f_special_fields:Protobuf.Special.t_SpecialFields
}

type t_FileOptions = {
  f_java_package:Core.Option.t_Option Alloc.String.t_String;
  f_java_outer_classname:Core.Option.t_Option Alloc.String.t_String;
  f_java_multiple_files:Core.Option.t_Option bool;
  f_java_generate_equals_and_hash:Core.Option.t_Option bool;
  f_java_string_check_utf8:Core.Option.t_Option bool;
  f_optimize_for:Core.Option.t_Option (Protobuf.Enum_or_unknown.t_EnumOrUnknown t_OptimizeMode);
  f_go_package:Core.Option.t_Option Alloc.String.t_String;
  f_cc_generic_services:Core.Option.t_Option bool;
  f_java_generic_services:Core.Option.t_Option bool;
  f_py_generic_services:Core.Option.t_Option bool;
  f_php_generic_services:Core.Option.t_Option bool;
  f_deprecated:Core.Option.t_Option bool;
  f_cc_enable_arenas:Core.Option.t_Option bool;
  f_objc_class_prefix:Core.Option.t_Option Alloc.String.t_String;
  f_csharp_namespace:Core.Option.t_Option Alloc.String.t_String;
  f_swift_prefix:Core.Option.t_Option Alloc.String.t_String;
  f_php_class_prefix:Core.Option.t_Option Alloc.String.t_String;
  f_php_namespace:Core.Option.t_Option Alloc.String.t_String;
  f_php_metadata_namespace:Core.Option.t_Option Alloc.String.t_String;
  f_ruby_package:Core.Option.t_Option Alloc.String.t_String;
  f_uninterpreted_option:Alloc.Vec.t_Vec t_UninterpretedOption Alloc.Alloc.t_Global;
  f_special_fields:Protobuf.Special.t_SpecialFields
}

type t_MessageOptions = {
  f_message_set_wire_format:Core.Option.t_Option bool;
  f_no_standard_descriptor_accessor:Core.Option.t_Option bool;
  f_deprecated:Core.Option.t_Option bool;
  f_map_entry:Core.Option.t_Option bool;
  f_uninterpreted_option:Alloc.Vec.t_Vec t_UninterpretedOption Alloc.Alloc.t_Global;
  f_special_fields:Protobuf.Special.t_SpecialFields
}

type t_MethodOptions = {
  f_deprecated:Core.Option.t_Option bool;
  f_idempotency_level:Core.Option.t_Option
  (Protobuf.Enum_or_unknown.t_EnumOrUnknown t_IdempotencyLevel);
  f_uninterpreted_option:Alloc.Vec.t_Vec t_UninterpretedOption Alloc.Alloc.t_Global;
  f_special_fields:Protobuf.Special.t_SpecialFields
}

type t_OneofOptions = {
  f_uninterpreted_option:Alloc.Vec.t_Vec t_UninterpretedOption Alloc.Alloc.t_Global;
  f_special_fields:Protobuf.Special.t_SpecialFields
}

type t_ServiceOptions = {
  f_deprecated:Core.Option.t_Option bool;
  f_uninterpreted_option:Alloc.Vec.t_Vec t_UninterpretedOption Alloc.Alloc.t_Global;
  f_special_fields:Protobuf.Special.t_SpecialFields
}

type t_EnumValueDescriptorProto = {
  f_name:Core.Option.t_Option Alloc.String.t_String;
  f_number:Core.Option.t_Option i32;
  f_options:Protobuf.Message_field.t_MessageField t_EnumValueOptions;
  f_special_fields:Protobuf.Special.t_SpecialFields
}

type t_ExtensionRange = {
  f_start:Core.Option.t_Option i32;
  f_end:Core.Option.t_Option i32;
  f_options:Protobuf.Message_field.t_MessageField t_ExtensionRangeOptions;
  f_special_fields:Protobuf.Special.t_SpecialFields
}

type t_FieldDescriptorProto = {
  f_name:Core.Option.t_Option Alloc.String.t_String;
  f_number:Core.Option.t_Option i32;
  f_label:Core.Option.t_Option (Protobuf.Enum_or_unknown.t_EnumOrUnknown t_Label);
  f_type___:Core.Option.t_Option (Protobuf.Enum_or_unknown.t_EnumOrUnknown t_Type);
  f_type_name:Core.Option.t_Option Alloc.String.t_String;
  f_extendee:Core.Option.t_Option Alloc.String.t_String;
  f_default_value:Core.Option.t_Option Alloc.String.t_String;
  f_oneof_index:Core.Option.t_Option i32;
  f_json_name:Core.Option.t_Option Alloc.String.t_String;
  f_options:Protobuf.Message_field.t_MessageField t_FieldOptions;
  f_proto3_optional:Core.Option.t_Option bool;
  f_special_fields:Protobuf.Special.t_SpecialFields
}

type t_MethodDescriptorProto = {
  f_name:Core.Option.t_Option Alloc.String.t_String;
  f_input_type:Core.Option.t_Option Alloc.String.t_String;
  f_output_type:Core.Option.t_Option Alloc.String.t_String;
  f_options:Protobuf.Message_field.t_MessageField t_MethodOptions;
  f_client_streaming:Core.Option.t_Option bool;
  f_server_streaming:Core.Option.t_Option bool;
  f_special_fields:Protobuf.Special.t_SpecialFields
}

type t_OneofDescriptorProto = {
  f_name:Core.Option.t_Option Alloc.String.t_String;
  f_options:Protobuf.Message_field.t_MessageField t_OneofOptions;
  f_special_fields:Protobuf.Special.t_SpecialFields
}

type t_EnumDescriptorProto = {
  f_name:Core.Option.t_Option Alloc.String.t_String;
  f_value:Alloc.Vec.t_Vec t_EnumValueDescriptorProto Alloc.Alloc.t_Global;
  f_options:Protobuf.Message_field.t_MessageField t_EnumOptions;
  f_reserved_range:Alloc.Vec.t_Vec t_EnumReservedRange Alloc.Alloc.t_Global;
  f_reserved_name:Alloc.Vec.t_Vec Alloc.String.t_String Alloc.Alloc.t_Global;
  f_special_fields:Protobuf.Special.t_SpecialFields
}

type t_ServiceDescriptorProto = {
  f_name:Core.Option.t_Option Alloc.String.t_String;
  f_method:Alloc.Vec.t_Vec t_MethodDescriptorProto Alloc.Alloc.t_Global;
  f_options:Protobuf.Message_field.t_MessageField t_ServiceOptions;
  f_special_fields:Protobuf.Special.t_SpecialFields
}

type t_DescriptorProto = {
  f_name:Core.Option.t_Option Alloc.String.t_String;
  f_field:Alloc.Vec.t_Vec t_FieldDescriptorProto Alloc.Alloc.t_Global;
  f_extension:Alloc.Vec.t_Vec t_FieldDescriptorProto Alloc.Alloc.t_Global;
  f_nested_type:Alloc.Vec.t_Vec t_DescriptorProto Alloc.Alloc.t_Global;
  f_enum_type:Alloc.Vec.t_Vec t_EnumDescriptorProto Alloc.Alloc.t_Global;
  f_extension_range:Alloc.Vec.t_Vec t_ExtensionRange Alloc.Alloc.t_Global;
  f_oneof_decl:Alloc.Vec.t_Vec t_OneofDescriptorProto Alloc.Alloc.t_Global;
  f_options:Protobuf.Message_field.t_MessageField t_MessageOptions;
  f_reserved_range:Alloc.Vec.t_Vec t_ReservedRange Alloc.Alloc.t_Global;
  f_reserved_name:Alloc.Vec.t_Vec Alloc.String.t_String Alloc.Alloc.t_Global;
  f_special_fields:Protobuf.Special.t_SpecialFields
}

type t_FileDescriptorProto = {
  f_name:Core.Option.t_Option Alloc.String.t_String;
  f_package:Core.Option.t_Option Alloc.String.t_String;
  f_dependency:Alloc.Vec.t_Vec Alloc.String.t_String Alloc.Alloc.t_Global;
  f_public_dependency:Alloc.Vec.t_Vec i32 Alloc.Alloc.t_Global;
  f_weak_dependency:Alloc.Vec.t_Vec i32 Alloc.Alloc.t_Global;
  f_message_type:Alloc.Vec.t_Vec t_DescriptorProto Alloc.Alloc.t_Global;
  f_enum_type:Alloc.Vec.t_Vec t_EnumDescriptorProto Alloc.Alloc.t_Global;
  f_service:Alloc.Vec.t_Vec t_ServiceDescriptorProto Alloc.Alloc.t_Global;
  f_extension:Alloc.Vec.t_Vec t_FieldDescriptorProto Alloc.Alloc.t_Global;
  f_options:Protobuf.Message_field.t_MessageField t_FileOptions;
  f_source_code_info:Protobuf.Message_field.t_MessageField t_SourceCodeInfo;
  f_syntax:Core.Option.t_Option Alloc.String.t_String;
  f_special_fields:Protobuf.Special.t_SpecialFields
}
