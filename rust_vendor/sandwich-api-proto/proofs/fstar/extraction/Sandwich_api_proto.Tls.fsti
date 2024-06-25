module Sandwich_api_proto.Tls
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

type t_TLSv12Config = {
  f_ciphersuite:Alloc.Vec.t_Vec Alloc.String.t_String Alloc.Alloc.t_Global;
  f_special_fields:Protobuf.Special.t_SpecialFields
}

type t_TLSv13Config = {
  f_compliance:Protobuf.Message_field.t_MessageField Sandwich_api_proto.Compliance.t_Compliance;
  f_ke:Alloc.Vec.t_Vec Alloc.String.t_String Alloc.Alloc.t_Global;
  f_ciphersuite:Alloc.Vec.t_Vec Alloc.String.t_String Alloc.Alloc.t_Global;
  f_special_fields:Protobuf.Special.t_SpecialFields
}

type t_TLSOptions = {
  f_tls12:Protobuf.Message_field.t_MessageField t_TLSv12Config;
  f_tls13:Protobuf.Message_field.t_MessageField t_TLSv13Config;
  f_identity:Protobuf.Message_field.t_MessageField t_X509Identity;
  f_alpn_protocols:Alloc.Vec.t_Vec Alloc.String.t_String Alloc.Alloc.t_Global;
  f_peer_verifier:Core.Option.t_Option Sandwich_api_proto.Tls.Tlsoptions.t_Peer_verifier;
  f_special_fields:Protobuf.Special.t_SpecialFields
}

type t_TLSClientOptions = {
  f_common_options:Protobuf.Message_field.t_MessageField t_TLSOptions;
  f_special_fields:Protobuf.Special.t_SpecialFields
}

type t_TLSServerOptions = {
  f_common_options:Protobuf.Message_field.t_MessageField t_TLSOptions;
  f_special_fields:Protobuf.Special.t_SpecialFields
}
