module Sandwich_api_proto.Verifiers
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

include Sandwich_api_proto.Verifiers.Base
include Sandwich_api_proto.Verifiers.Tunnel_verifier

type t_X509Verifier = {
  f_trusted_cas:Alloc.Vec.t_Vec Sandwich_api_proto.Certificate.t_Certificate Alloc.Alloc.t_Global;
  f_allow_expired_certificate:bool;
  f_max_verify_depth:u32;
  f_load_cas_from_default_verify_path:bool;
  f_special_fields:Protobuf.Special.t_SpecialFields
}

