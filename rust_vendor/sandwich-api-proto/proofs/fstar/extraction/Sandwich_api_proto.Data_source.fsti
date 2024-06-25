module Sandwich_api_proto.Data_source
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

type t_DataSource = {
  f_specifier:Core.Option.t_Option (*Sandwich_api_proto.Data_source.Data_source.t_Specifier*) unit;
  f_special_fields:Protobuf.Special.t_SpecialFields
}

type t_ASN1DataSource = {
  f_data:Protobuf.Message_field.t_MessageField t_DataSource;
  f_format:Protobuf.Enum_or_unknown.t_EnumOrUnknown
  Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat;
  f_special_fields:Protobuf.Special.t_SpecialFields
}
