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

/// Instantiates an [`X509VerifyParam`] from an SSL context.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_2:Core.Convert.t_TryFrom t_X509VerifyParam
  (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_ctx_st)

[@@ FStar.Tactics.Typeclasses.tcinstance]
assume
val impl_2': Core.Convert.t_TryFrom t_X509VerifyParam
  (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_ctx_st)

let impl_2 = impl_2'

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
