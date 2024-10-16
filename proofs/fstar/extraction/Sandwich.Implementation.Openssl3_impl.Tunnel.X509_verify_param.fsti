module Sandwich.Implementation.Openssl3_impl.Tunnel.X509_verify_param
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Sandwich.Error in
  let open Sandwich.Error.Code in
  let open Sandwich_api_proto.Verifiers.Sanmatcher in
  ()

/// Wrapper around the X509_VERIFY_PARAM object.
type t_X509VerifyParam =
  | X509VerifyParam :
      Core.Ptr.Non_null.t_NonNull Openssl3.t_X509_VERIFY_PARAM_st ->
      Core.Marker.t_PhantomData Openssl3.t_X509_VERIFY_PARAM_st
    -> t_X509VerifyParam

/// Sets the depth for the certificate chain validation.
val impl_3__set_certificate_chain_validation_depth
      (#impl_765196419_: Type0)
      {| i1: Core.Convert.t_Into impl_765196419_ i32 |}
      (self: t_X509VerifyParam)
      (depth: impl_765196419_)
    : Prims.Pure Prims.unit Prims.l_True (fun _ -> Prims.l_True)

/// Updates the depth for the certificate validation using the
/// `X509Verifier` configuration object.
val impl_3__update_certificate_chain_validation_depth_from_x509_verifier
      (self: t_X509VerifyParam)
      (x509_verifier: Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
    : Prims.Pure Prims.unit Prims.l_True (fun _ -> Prims.l_True)

/// Enable a flag.
/// This function calls `X509_VERIFY_PARAM_set_flags` to enable a flag.
/// Even if the function's name is `set_flags`, it actually does a OR
/// between the existing flags and the given flag.
val impl_3__enable_flag
      (#impl_101696938_: Type0)
      {| i3: Core.Convert.t_Into impl_101696938_ u64 |}
      (self: t_X509VerifyParam)
      (flag: impl_101696938_)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Enables CRL checking for the entire chain of certificates.
val impl_3__enable_crl_check_for_all_certificates (self: t_X509VerifyParam)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Enables the strict verification for X509.
val impl_3__enable_strict_x509_verification (self: t_X509VerifyParam)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Enables the trusted first feature.
/// When enabled, certificate authority certificates stored in the certificate
/// store (X509_STORE) will be used first during the certificate chain
/// validation.
val impl_3__enable_trusted_first_from_trust_store (self: t_X509VerifyParam)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Applies the default parameters.
/// This function sets the following default values:
///  - Maximum depth for certificate chain validation
val impl_3__set_default_parameters (self: t_X509VerifyParam)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

val impl_3__add_san__create_cstring
      (#impl_488124255_: Type0)
      {| i1: Core.Convert.t_AsRef impl_488124255_ string |}
      (value: impl_488124255_)
    : Prims.Pure (Core.Result.t_Result Alloc.Ffi.C_str.t_CString Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Adds a Subject Alternative Name (SAN).
val impl_3__add_san (self: t_X509VerifyParam) (san: Sandwich_api_proto.Verifiers.Sanmatcher.t_San)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

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
    fun (ssl_ctx: Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_ctx_st) ->
      match
        Core.Option.impl__ok_or #(Core.Ptr.Non_null.t_NonNull Openssl3.t_X509_VERIFY_PARAM_st)
          #(Sandwich_proto.Errors.t_SystemError & string)
          (Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
              "rust_primitives::hax::failure(\"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\"core::ptr::non_null::impl_3__new\")::<openssl3::t_X509_VERIFY_PARAM_st>(rust_primitives::hax::failure(\"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\"unsafe {\\n        openssl3::foreign_mod_3335::v_SSL_CTX_get0_param(\\n            core::ptr::non_null::impl_3__as_ptr::<\\n                openssl3::t_ssl_ctx_st,\\n            >(\\n                sandwich::support::pimpl::impl_2__as_nonnull::<\\n                    lifetime!(something),\\n                    openssl3::t_ssl_ctx_st,\\n                >(&(deref(ssl_ctx))),\\n            ),\\n        )\\n    }\"))"

            <:
            Core.Option.t_Option (Core.Ptr.Non_null.t_NonNull Openssl3.t_X509_VERIFY_PARAM_st))
          ((Sandwich_proto.Errors.SystemError_SYSTEMERROR_MEMORY
              <:
              Sandwich_proto.Errors.t_SystemError),
            "no X509_VERIFY_PARAM attached to the given SSL context"
            <:
            (Sandwich_proto.Errors.t_SystemError & string))
      with
      | Core.Result.Result_Ok ptr ->
        Core.Result.Result_Ok
        (X509VerifyParam ptr
            (Core.Marker.PhantomData <: Core.Marker.t_PhantomData Openssl3.t_X509_VERIFY_PARAM_st)
          <:
          t_X509VerifyParam)
        <:
        Core.Result.t_Result t_X509VerifyParam Sandwich.Error.t_Error
      | Core.Result.Result_Err err ->
        Core.Result.Result_Err (Core.Convert.f_from #FStar.Tactics.Typeclasses.solve err)
        <:
        Core.Result.t_Result t_X509VerifyParam Sandwich.Error.t_Error
  }

/// Instantiates an [`X509VerifyParam`] from an SSL object.
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_1: Core.Convert.t_TryFrom t_X509VerifyParam (Core.Ptr.Non_null.t_NonNull Openssl3.t_ssl_st) =
  {
    f_Error = Sandwich.Error.t_Error;
    f_try_from_pre = (fun (ssl: Core.Ptr.Non_null.t_NonNull Openssl3.t_ssl_st) -> true);
    f_try_from_post
    =
    (fun
        (ssl: Core.Ptr.Non_null.t_NonNull Openssl3.t_ssl_st)
        (out: Core.Result.t_Result t_X509VerifyParam Sandwich.Error.t_Error)
        ->
        true);
    f_try_from
    =
    fun (ssl: Core.Ptr.Non_null.t_NonNull Openssl3.t_ssl_st) ->
      match
        Core.Option.impl__ok_or #(Core.Ptr.Non_null.t_NonNull Openssl3.t_X509_VERIFY_PARAM_st)
          #(Sandwich_proto.Errors.t_SystemError & string)
          (Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
              "rust_primitives::hax::failure(\"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\"core::ptr::non_null::impl_3__new\")::<openssl3::t_X509_VERIFY_PARAM_st>(rust_primitives::hax::failure(\"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\"unsafe {\\n        openssl3::foreign_mod_3336::v_SSL_get0_param(\\n            core::ptr::non_null::impl_3__as_ptr::<openssl3::t_ssl_st>(ssl),\\n        )\\n    }\"))"

            <:
            Core.Option.t_Option (Core.Ptr.Non_null.t_NonNull Openssl3.t_X509_VERIFY_PARAM_st))
          ((Sandwich_proto.Errors.SystemError_SYSTEMERROR_MEMORY
              <:
              Sandwich_proto.Errors.t_SystemError),
            "no X509_VERIFY_PARAM attached to the given SSL object"
            <:
            (Sandwich_proto.Errors.t_SystemError & string))
      with
      | Core.Result.Result_Ok ptr ->
        Core.Result.Result_Ok
        (X509VerifyParam ptr
            (Core.Marker.PhantomData <: Core.Marker.t_PhantomData Openssl3.t_X509_VERIFY_PARAM_st)
          <:
          t_X509VerifyParam)
        <:
        Core.Result.t_Result t_X509VerifyParam Sandwich.Error.t_Error
      | Core.Result.Result_Err err ->
        Core.Result.Result_Err (Core.Convert.f_from #FStar.Tactics.Typeclasses.solve err)
        <:
        Core.Result.t_Result t_X509VerifyParam Sandwich.Error.t_Error
  }

/// Instantiates an [`X509VerifyParam`] from an SSL object.
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_2: Core.Convert.t_TryFrom t_X509VerifyParam
  (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_st) =
  {
    f_Error = Sandwich.Error.t_Error;
    f_try_from_pre = (fun (ssl: Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_st) -> true);
    f_try_from_post
    =
    (fun
        (ssl: Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_st)
        (out: Core.Result.t_Result t_X509VerifyParam Sandwich.Error.t_Error)
        ->
        true);
    f_try_from
    =
    fun (ssl: Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_st) ->
      Core.Convert.f_try_from #t_X509VerifyParam
        #(Core.Ptr.Non_null.t_NonNull Openssl3.t_ssl_st)
        #FStar.Tactics.Typeclasses.solve
        (Sandwich.Support.Pimpl.impl_2__as_nonnull #Openssl3.t_ssl_st ssl
          <:
          Core.Ptr.Non_null.t_NonNull Openssl3.t_ssl_st)
  }
