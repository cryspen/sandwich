module Sandwich.Tunnel.Tls
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

/// Security requirements to enforce on TLS tunnels.
/// These requirements are described by the verifiers that comes with the
/// `TLSOptions` configuration message.
type t_TunnelSecurityRequirements = { f_allow_expired_certificate:bool }

/// Instantiates a [`TunnelSecurityRequirements`].
let impl__TunnelSecurityRequirements__new (_: Prims.unit) : t_TunnelSecurityRequirements =
  { f_allow_expired_certificate = false } <: t_TunnelSecurityRequirements

/// Implements [`Default`] for [`TunnelSecurityRequirements`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_1: Core.Default.t_Default t_TunnelSecurityRequirements =
  {
    f_default_pre = (fun (_: Prims.unit) -> true);
    f_default_post = (fun (_: Prims.unit) (out: t_TunnelSecurityRequirements) -> true);
    f_default = fun (_: Prims.unit) -> impl__TunnelSecurityRequirements__new ()
  }

/// Verify mode.
type t_VerifyMode =
  | VerifyMode_None : t_VerifyMode
  | VerifyMode_Peer : t_VerifyMode
  | VerifyMode_Mutual : t_VerifyMode

/// Instantiates a [`TunnelSecurityRequirements`] from a [`pb_api::X509Verifier`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl: Core.Convert.t_From t_TunnelSecurityRequirements
  Sandwich_api_proto.Verifiers.t_X509Verifier =
  {
    f_from_pre = (fun (x509_verifier: Sandwich_api_proto.Verifiers.t_X509Verifier) -> true);
    f_from_post
    =
    (fun
        (x509_verifier: Sandwich_api_proto.Verifiers.t_X509Verifier)
        (out: t_TunnelSecurityRequirements)
        ->
        true);
    f_from
    =
    fun (x509_verifier: Sandwich_api_proto.Verifiers.t_X509Verifier) ->
      {
        f_allow_expired_certificate
        =
        x509_verifier.Sandwich_api_proto.Verifiers.f_allow_expired_certificate
      }
      <:
      t_TunnelSecurityRequirements
  }
