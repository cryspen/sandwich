module Sandwich_api_proto.Verifiers.Tunnel_verifier
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

type t_Verifier =
  | Verifier_SanVerifier : Sandwich_api_proto.Verifiers.t_SANVerifier -> t_Verifier
  | Verifier_EmptyVerifier : Sandwich_api_proto.Verifiers.t_EmptyVerifier -> t_Verifier
