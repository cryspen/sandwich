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

/// A set of security requirements that can be updated with new requirements
/// described in a given verifier `V`.
/// A sanitizer check for security requirements described in a given verifier
/// `V`.
class t_VerifierSanitizer (v_Self: Type0) (v_V: Type0) = {
  f_run_sanitizer_checks_pre:v_Self -> v_V -> Type0;
  f_run_sanitizer_checks_post:
      v_Self ->
      v_V ->
      Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
    -> Type0;
  f_run_sanitizer_checks:x0: v_Self -> x1: v_V
    -> Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
        (f_run_sanitizer_checks_pre x0 x1)
        (fun result -> f_run_sanitizer_checks_post x0 x1 result)
}

assume
val run_sanitizer_checks':
    x: t_TunnelSecurityRequirements ->
    verifier: Sandwich_api_proto.Verifiers.t_TunnelVerifier
  -> Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let run_sanitizer_checks = run_sanitizer_checks'

/// Implements [`VerifierSanitizer`] for [`TunnelSecurityRequirements`]
/// with the [`pb_api::TunnelVerifier`] verifier.
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_3: t_VerifierSanitizer t_TunnelSecurityRequirements
  Sandwich_api_proto.Verifiers.t_TunnelVerifier =
  {
    f_run_sanitizer_checks_pre
    =
    (fun
        (self: t_TunnelSecurityRequirements)
        (verifier: Sandwich_api_proto.Verifiers.t_TunnelVerifier)
        ->
        true);
    f_run_sanitizer_checks_post
    =
    (fun
        (self: t_TunnelSecurityRequirements)
        (verifier: Sandwich_api_proto.Verifiers.t_TunnelVerifier)
        (out: Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
        ->
        true);
    f_run_sanitizer_checks
    =
    fun
      (self: t_TunnelSecurityRequirements)
      (verifier: Sandwich_api_proto.Verifiers.t_TunnelVerifier)
      ->
      run_sanitizer_checks self verifier
  }
