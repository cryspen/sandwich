module Sandwich.Implementation.Openssl3_impl.Tunnel.X509_verify_param
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

/// Wrapper around the X509_VERIFY_PARAM object.
type t_X509VerifyParam =
  | X509VerifyParam :
      Core.Ptr.Non_null.t_NonNull Openssl3.t_X509_VERIFY_PARAM_st ->
      Core.Marker.t_PhantomData Openssl3.t_X509_VERIFY_PARAM_st
    -> t_X509VerifyParam

/// Updates the depth for the certificate validation using the
/// `X509Verifier` configuration object.
assume
val impl_4__update_certificate_chain_validation_depth_from_x509_verifier':
    self: t_X509VerifyParam ->
    x509_verifier: Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier
  -> Prims.unit

let impl_4__update_certificate_chain_validation_depth_from_x509_verifier =
  impl_4__update_certificate_chain_validation_depth_from_x509_verifier'

/// Applies the default parameters.
/// This function sets the following default values:
///  - Maximum depth for certificate chain validation
assume
val impl_4__set_default_parameters': self: t_X509VerifyParam
  -> Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let impl_4__set_default_parameters = impl_4__set_default_parameters'

assume
val try_from': ssl_ctx: Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_ctx_st
  -> Core.Result.t_Result t_X509VerifyParam Sandwich.Error.t_Error

let try_from = try_from'

/// Instantiates an [`X509VerifyParam`] from an SSL context.
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl: Core.Convert.t_TryFrom t_X509VerifyParam
  (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_ctx_st) =
  {
    f_Error = Sandwich.Error.t_Error;
    f_try_from_pre = (fun (ssl_ctx: Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_ctx_st) -> true);
    f_try_from_post
    =
    (fun
        (ssl_ctx: Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_ctx_st)
        (out: Core.Result.t_Result t_X509VerifyParam Sandwich.Error.t_Error)
        ->
        true);
    f_try_from
    =
    fun (ssl_ctx: Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_ctx_st) -> try_from ssl_ctx
  }
