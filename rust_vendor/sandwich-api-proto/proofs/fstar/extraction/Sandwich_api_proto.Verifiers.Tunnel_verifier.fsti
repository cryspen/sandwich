module Sandwich_api_proto.Verifiers.Tunnel_verifier

/// Hand-written model for a missing type

type t_Verifier =
  | Verifier_SanVerifier : Sandwich_api_proto.Verifiers.t_SANVerifier -> t_Verifier
  | Verifier_EmptyVerifier : Sandwich_api_proto.Verifiers.t_EmptyVerifier -> t_Verifier

