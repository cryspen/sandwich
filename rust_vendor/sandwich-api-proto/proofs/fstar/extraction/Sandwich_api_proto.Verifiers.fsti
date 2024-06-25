module Sandwich_api_proto.Verifiers
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul


type t_EmptyVerifier = { f_special_fields:Protobuf.Special.t_SpecialFields }

type t_SANMatcher = {
  f_san:Core.Option.t_Option Sandwich_api_proto.Verifiers.Sanmatcher.t_San;
  f_special_fields:Protobuf.Special.t_SpecialFields
}

type t_SANVerifier = {
  f_alt_names:Alloc.Vec.t_Vec t_SANMatcher Alloc.Alloc.t_Global;
  f_special_fields:Protobuf.Special.t_SpecialFields
}

val t_TunnelVerifier: Type0
// type t_TunnelVerifier = {
//   f_verifier:Core.Option.t_Option Sandwich_api_proto.Verifiers.Tunnel_verifier.t_Verifier;
//   f_special_fields:Protobuf.Special.t_SpecialFields
// }

type t_X509Verifier = {
  f_trusted_cas:Alloc.Vec.t_Vec Sandwich_api_proto.Certificate.t_Certificate Alloc.Alloc.t_Global;
  f_allow_expired_certificate:bool;
  f_max_verify_depth:u32;
  f_load_cas_from_default_verify_path:bool;
  f_special_fields:Protobuf.Special.t_SpecialFields
}
