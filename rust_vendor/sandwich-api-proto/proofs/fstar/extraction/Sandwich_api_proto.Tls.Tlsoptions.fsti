module Sandwich_api_proto.Tls.Tlsoptions
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

type t_Peer_verifier =
  | Peer_verifier_X509Verifier : Sandwich_api_proto.Verifiers.t_X509Verifier -> t_Peer_verifier
  | Peer_verifier_EmptyVerifier : Sandwich_api_proto.Verifiers.t_EmptyVerifier -> t_Peer_verifier
