module Sandwich_api_proto.Verifiers.Tunnel_verifier

/// Hand-written model for a missing type

type t_Verifier =
  | Verifier_SanVerifier : Sandwich_api_proto.Verifiers.Base.t_SANVerifier -> t_Verifier
  | Verifier_EmptyVerifier : Sandwich_api_proto.Verifiers.Base.t_EmptyVerifier -> t_Verifier

type t_TunnelVerifier = {
  f_verifier:Core.Option.t_Option t_Verifier;
  f_special_fields:Protobuf.Special.t_SpecialFields
}


