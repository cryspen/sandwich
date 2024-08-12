module Sandwich_api_proto.Verifiers.Base
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

