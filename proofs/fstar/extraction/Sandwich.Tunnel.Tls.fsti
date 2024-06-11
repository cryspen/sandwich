module Sandwich.Tunnel.Tls
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

/// Supported TLS Protocol versions.
type t_TlsVersion =
  | TlsVersion_Tls12 : t_TlsVersion
  | TlsVersion_Tls13 : t_TlsVersion

val t_TlsVersion_cast_to_repr (x: t_TlsVersion)
    : Prims.Pure isize Prims.l_True (fun _ -> Prims.l_True)

/// Verify mode.
type t_VerifyMode =
  | VerifyMode_None : t_VerifyMode
  | VerifyMode_Peer : t_VerifyMode
  | VerifyMode_Mutual : t_VerifyMode

val t_VerifyMode_cast_to_repr (x: t_VerifyMode)
    : Prims.Pure isize Prims.l_True (fun _ -> Prims.l_True)

/// Default maximum depth for the certificate chain verification.
let v_DEFAULT_MAXIMUM_VERIFY_CERT_CHAIN_DEPTH: u32 = 100ul

/// Default supported TLS 1.2 ciphersuites.
let v_DEFAULT_TLS12_CIPHERSUITES: t_Array string (sz 8) =
  let list =
    [
      "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384";
      "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256";
      "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384";
      "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256";
      "TLS_RSA_WITH_AES_256_GCM_SHA384";
      "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256";
      "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256";
      "TLS_RSA_WITH_AES_128_GCM_SHA256"
    ]
  in
  FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 8);
  Rust_primitives.Hax.array_of_list 8 list

/// Default supported TLS 1.3 ciphersuites.
let v_DEFAULT_TLS13_CIPHERSUITES: t_Array string (sz 3) =
  let list = ["TLS_CHACHA20_POLY1305_SHA256"; "TLS_AES_256_GCM_SHA384"; "TLS_AES_128_GCM_SHA256"] in
  FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 3);
  Rust_primitives.Hax.array_of_list 3 list

/// Retrieves the configuration for TLS 1.3, if exists.
val get_tls13_config (cfg: Sandwich_api_proto.Configuration.t_Configuration)
    : Prims.Pure (Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSv13Config)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Security requirements to enforce on TLS tunnels.
/// These requirements are described by the verifiers that comes with the
/// `TLSOptions` configuration message.
type t_TunnelSecurityRequirements = { f_allow_expired_certificate:bool }

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

/// Instantiates a [`TunnelSecurityRequirements`].
val impl__TunnelSecurityRequirements__new: Prims.unit
  -> Prims.Pure t_TunnelSecurityRequirements Prims.l_True (fun _ -> Prims.l_True)

/// Implements [`Default`] for [`TunnelSecurityRequirements`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_1: Core.Default.t_Default t_TunnelSecurityRequirements =
  {
    f_default_pre = (fun (_: Prims.unit) -> true);
    f_default_post = (fun (_: Prims.unit) (out: t_TunnelSecurityRequirements) -> true);
    f_default = fun (_: Prims.unit) -> impl__TunnelSecurityRequirements__new ()
  }

/// Assesses an error returned by a X.509 trusted store.
/// The error usually comes from the call to
/// <https://www.openssl.org/docs/man3.1/man3/X509_STORE_CTX_get_error.html>.
/// This function is used for the following implementations:
///   - OpenSSL 3.x
/// Because this function is an assessor, a `false` returned value means
/// that there is a security issue here.
val impl__TunnelSecurityRequirements__openssl3_assess_x509_store_error
      (self: t_TunnelSecurityRequirements)
      (error: i32)
    : Prims.Pure bool Prims.l_True (fun _ -> Prims.l_True)

/// A set of security requirements that can be updated with new requirements
/// described in a given verifier `V`.
/// A sanitizer check for security requirements described in a given verifier
/// `V`.
class t_VerifierSanitizer (v_Self: Type0) (v_V: Type0) = {
  f_run_sanitizer_checks_pre:v_Self -> v_V -> bool;
  f_run_sanitizer_checks_post:
      v_Self ->
      v_V ->
      Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
    -> bool;
  f_run_sanitizer_checks:x0: v_Self -> x1: v_V
    -> Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
        (f_run_sanitizer_checks_pre x0 x1)
        (fun result -> f_run_sanitizer_checks_post x0 x1 result)
}

/// Implements [`VerifierSanitizer`] for [`TunnelSecurityRequirements`]
/// with the [`pb_api::SANVerifier`] verifier.
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_3: t_VerifierSanitizer t_TunnelSecurityRequirements
  Sandwich_api_proto.Verifiers.t_SANVerifier =
  {
    f_run_sanitizer_checks_pre
    =
    (fun
        (self: t_TunnelSecurityRequirements)
        (verifier: Sandwich_api_proto.Verifiers.t_SANVerifier)
        ->
        true);
    f_run_sanitizer_checks_post
    =
    (fun
        (self: t_TunnelSecurityRequirements)
        (verifier: Sandwich_api_proto.Verifiers.t_SANVerifier)
        (out: Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
        ->
        true);
    f_run_sanitizer_checks
    =
    fun
      (self: t_TunnelSecurityRequirements)
      (verifier: Sandwich_api_proto.Verifiers.t_SANVerifier)
      ->
      Rust_primitives.Hax.Control_flow_monad.Mexception.run (let! _:Prims.unit =
            if
              Alloc.Vec.impl_1__is_empty #Sandwich_api_proto.Verifiers.t_SANMatcher
                #Alloc.Alloc.t_Global
                verifier.Sandwich_api_proto.Verifiers.f_alt_names
            then
              let! hoist3:Rust_primitives.Hax.t_Never =
                Core.Ops.Control_flow.ControlFlow_Break
                (Core.Result.Result_Err
                  (Core.Convert.f_into #(Sandwich_proto.Errors.t_TunnelError & string)
                      #Sandwich.Error.t_Error
                      ((Sandwich_proto.Errors.TunnelError_TUNNELERROR_VERIFIER
                          <:
                          Sandwich_proto.Errors.t_TunnelError),
                        "SAN list in SANVerifier is empty"
                        <:
                        (Sandwich_proto.Errors.t_TunnelError & string)))
                  <:
                  Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
                <:
                Core.Ops.Control_flow.t_ControlFlow
                  (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
                  Rust_primitives.Hax.t_Never
              in
              Core.Ops.Control_flow.ControlFlow_Continue (Rust_primitives.Hax.never_to_any hoist3)
              <:
              Core.Ops.Control_flow.t_ControlFlow
                (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error) Prims.unit
            else
              Core.Ops.Control_flow.ControlFlow_Continue ()
              <:
              Core.Ops.Control_flow.t_ControlFlow
                (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error) Prims.unit
          in
          Core.Ops.Control_flow.ControlFlow_Continue
          (let has_email:bool = false in
            let has_ip:bool = false in
            let has_email, has_ip:(bool & bool) =
              Core.Iter.Traits.Iterator.f_fold (Core.Iter.Traits.Collect.f_into_iter #(Core.Iter.Adapters.Enumerate.t_Enumerate
                      (Core.Slice.Iter.t_Iter Sandwich_api_proto.Verifiers.t_SANMatcher))
                    (Core.Iter.Traits.Iterator.f_enumerate #(Core.Slice.Iter.t_Iter
                          Sandwich_api_proto.Verifiers.t_SANMatcher)
                        (Core.Slice.impl__iter #Sandwich_api_proto.Verifiers.t_SANMatcher
                            (Core.Ops.Deref.f_deref #(Alloc.Vec.t_Vec
                                    Sandwich_api_proto.Verifiers.t_SANMatcher Alloc.Alloc.t_Global)
                                verifier.Sandwich_api_proto.Verifiers.f_alt_names
                              <:
                              t_Slice Sandwich_api_proto.Verifiers.t_SANMatcher)
                          <:
                          Core.Slice.Iter.t_Iter Sandwich_api_proto.Verifiers.t_SANMatcher)
                      <:
                      Core.Iter.Adapters.Enumerate.t_Enumerate
                      (Core.Slice.Iter.t_Iter Sandwich_api_proto.Verifiers.t_SANMatcher))
                  <:
                  Core.Iter.Adapters.Enumerate.t_Enumerate
                  (Core.Slice.Iter.t_Iter Sandwich_api_proto.Verifiers.t_SANMatcher))
                (has_email, has_ip <: (bool & bool))
                (fun temp_0_ temp_1_ ->
                    let has_email, has_ip:(bool & bool) = temp_0_ in
                    let i, san:(usize & Sandwich_api_proto.Verifiers.t_SANMatcher) = temp_1_ in
                    let (has_email, has_ip), hoist4:((bool & bool) &
                      Core.Result.t_Result Prims.unit Sandwich.Error.Code.t_ErrorCode) =
                      match
                        Core.Option.impl__as_ref #Sandwich_api_proto.Verifiers.Sanmatcher.t_San
                          san.Sandwich_api_proto.Verifiers.f_san
                      with
                      | Core.Option.Option_Some (Sandwich_api_proto.Verifiers.Sanmatcher.San_Dns _) ->
                        (has_email, has_ip <: (bool & bool)),
                        (Core.Result.Result_Ok (() <: Prims.unit)
                          <:
                          Core.Result.t_Result Prims.unit Sandwich.Error.Code.t_ErrorCode)
                        <:
                        ((bool & bool) &
                          Core.Result.t_Result Prims.unit Sandwich.Error.Code.t_ErrorCode)
                      | Core.Option.Option_Some
                        (Sandwich_api_proto.Verifiers.Sanmatcher.San_Email _) ->
                        if has_email
                        then
                          (has_email, has_ip <: (bool & bool)),
                          (Core.Result.Result_Err
                            (Core.Convert.f_into #(Sandwich_proto.Errors.t_TunnelError & string)
                                #Sandwich.Error.Code.t_ErrorCode
                                ((Sandwich_proto.Errors.TunnelError_TUNNELERROR_VERIFIER
                                    <:
                                    Sandwich_proto.Errors.t_TunnelError),
                                  "cannot have multiple email addresses as SANs"
                                  <:
                                  (Sandwich_proto.Errors.t_TunnelError & string)))
                            <:
                            Core.Result.t_Result Prims.unit Sandwich.Error.Code.t_ErrorCode)
                          <:
                          ((bool & bool) &
                            Core.Result.t_Result Prims.unit Sandwich.Error.Code.t_ErrorCode)
                        else
                          let has_email:bool = true in
                          (has_email, has_ip <: (bool & bool)),
                          (Core.Result.Result_Ok (() <: Prims.unit)
                            <:
                            Core.Result.t_Result Prims.unit Sandwich.Error.Code.t_ErrorCode)
                          <:
                          ((bool & bool) &
                            Core.Result.t_Result Prims.unit Sandwich.Error.Code.t_ErrorCode)
                      | Core.Option.Option_Some
                        (Sandwich_api_proto.Verifiers.Sanmatcher.San_IpAddress _) ->
                        if has_ip
                        then
                          (has_email, has_ip <: (bool & bool)),
                          (Core.Result.Result_Err
                            (Core.Convert.f_into #(Sandwich_proto.Errors.t_TunnelError & string)
                                #Sandwich.Error.Code.t_ErrorCode
                                ((Sandwich_proto.Errors.TunnelError_TUNNELERROR_VERIFIER
                                    <:
                                    Sandwich_proto.Errors.t_TunnelError),
                                  "cannot have multiple IP addresses as SANs"
                                  <:
                                  (Sandwich_proto.Errors.t_TunnelError & string)))
                            <:
                            Core.Result.t_Result Prims.unit Sandwich.Error.Code.t_ErrorCode)
                          <:
                          ((bool & bool) &
                            Core.Result.t_Result Prims.unit Sandwich.Error.Code.t_ErrorCode)
                        else
                          let has_ip:bool = true in
                          (has_email, has_ip <: (bool & bool)),
                          (Core.Result.Result_Ok (() <: Prims.unit)
                            <:
                            Core.Result.t_Result Prims.unit Sandwich.Error.Code.t_ErrorCode)
                          <:
                          ((bool & bool) &
                            Core.Result.t_Result Prims.unit Sandwich.Error.Code.t_ErrorCode)
                      | Core.Option.Option_Some t ->
                        let res:Alloc.String.t_String =
                          Alloc.Fmt.format (Core.Fmt.impl_2__new_v1 (Rust_primitives.unsize (let
                                      list =
                                        ["unsupported SAN type '"; "' at position "]
                                      in
                                      FStar.Pervasives.assert_norm
                                      (Prims.eq2 (List.Tot.length list) 2);
                                      Rust_primitives.Hax.array_of_list 2 list)
                                  <:
                                  t_Slice string)
                                (Rust_primitives.unsize (let list =
                                        [
                                          Core.Fmt.Rt.impl_1__new_debug #Sandwich_api_proto.Verifiers.Sanmatcher.t_San
                                            t
                                          <:
                                          Core.Fmt.Rt.t_Argument;
                                          Core.Fmt.Rt.impl_1__new_display #usize i
                                          <:
                                          Core.Fmt.Rt.t_Argument
                                        ]
                                      in
                                      FStar.Pervasives.assert_norm
                                      (Prims.eq2 (List.Tot.length list) 2);
                                      Rust_primitives.Hax.array_of_list 2 list)
                                  <:
                                  t_Slice Core.Fmt.Rt.t_Argument)
                              <:
                              Core.Fmt.t_Arguments)
                        in
                        (has_email, has_ip <: (bool & bool)),
                        (Core.Result.Result_Err
                          (Core.Convert.f_into #(Sandwich_proto.Errors.t_TunnelError &
                                Alloc.String.t_String)
                              #Sandwich.Error.Code.t_ErrorCode
                              ((Sandwich_proto.Errors.TunnelError_TUNNELERROR_VERIFIER
                                  <:
                                  Sandwich_proto.Errors.t_TunnelError),
                                res
                                <:
                                (Sandwich_proto.Errors.t_TunnelError & Alloc.String.t_String)))
                          <:
                          Core.Result.t_Result Prims.unit Sandwich.Error.Code.t_ErrorCode)
                        <:
                        ((bool & bool) &
                          Core.Result.t_Result Prims.unit Sandwich.Error.Code.t_ErrorCode)
                      | Core.Option.Option_None  ->
                        let res:Alloc.String.t_String =
                          Alloc.Fmt.format (Core.Fmt.impl_2__new_v1 (Rust_primitives.unsize (let
                                      list =
                                        ["empty SANMatcher at position "]
                                      in
                                      FStar.Pervasives.assert_norm
                                      (Prims.eq2 (List.Tot.length list) 1);
                                      Rust_primitives.Hax.array_of_list 1 list)
                                  <:
                                  t_Slice string)
                                (Rust_primitives.unsize (let list =
                                        [
                                          Core.Fmt.Rt.impl_1__new_display #usize i
                                          <:
                                          Core.Fmt.Rt.t_Argument
                                        ]
                                      in
                                      FStar.Pervasives.assert_norm
                                      (Prims.eq2 (List.Tot.length list) 1);
                                      Rust_primitives.Hax.array_of_list 1 list)
                                  <:
                                  t_Slice Core.Fmt.Rt.t_Argument)
                              <:
                              Core.Fmt.t_Arguments)
                        in
                        (has_email, has_ip <: (bool & bool)),
                        (Core.Result.Result_Err
                          (Core.Convert.f_into #(Sandwich_proto.Errors.t_TunnelError &
                                Alloc.String.t_String)
                              #Sandwich.Error.Code.t_ErrorCode
                              ((Sandwich_proto.Errors.TunnelError_TUNNELERROR_VERIFIER
                                  <:
                                  Sandwich_proto.Errors.t_TunnelError),
                                res
                                <:
                                (Sandwich_proto.Errors.t_TunnelError & Alloc.String.t_String)))
                          <:
                          Core.Result.t_Result Prims.unit Sandwich.Error.Code.t_ErrorCode)
                        <:
                        ((bool & bool) &
                          Core.Result.t_Result Prims.unit Sandwich.Error.Code.t_ErrorCode)
                    in
                    match hoist4 with
                    | Core.Result.Result_Ok ok ->
                      Core.Ops.Control_flow.ControlFlow_Continue
                      (has_email, has_ip <: (bool & bool))
                      <:
                      Core.Ops.Control_flow.t_ControlFlow
                        (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error) (bool & bool)
                    | Core.Result.Result_Err err ->
                      let! _:Prims.unit =
                        Core.Ops.Control_flow.ControlFlow_Break
                        (Core.Result.Result_Err (Core.Convert.f_from err)
                          <:
                          Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
                        <:
                        Core.Ops.Control_flow.t_ControlFlow
                          (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error) Prims.unit
                      in
                      Core.Ops.Control_flow.ControlFlow_Continue
                      (has_email, has_ip <: (bool & bool))
                      <:
                      Core.Ops.Control_flow.t_ControlFlow
                        (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error) (bool & bool))
            in
            Core.Result.Result_Ok (() <: Prims.unit)
            <:
            Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
          <:
          Core.Ops.Control_flow.t_ControlFlow
            (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
            (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error))
  }

/// Implements [`VerifierSanitizer`] for [`TunnelSecurityRequirements`]
/// with the [`pb_api::TunnelVerifier`] verifier.
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_4: t_VerifierSanitizer t_TunnelSecurityRequirements
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
      match
        Core.Option.impl__as_ref #Sandwich_api_proto.Verifiers.Tunnel_verifier.t_Verifier
          verifier.Sandwich_api_proto.Verifiers.f_verifier
      with
      | Core.Option.Option_Some
        (Sandwich_api_proto.Verifiers.Tunnel_verifier.Verifier_SanVerifier san_verifier) ->
        f_run_sanitizer_checks #t_TunnelSecurityRequirements
          #Sandwich_api_proto.Verifiers.t_SANVerifier
          self
          san_verifier
      | Core.Option.Option_Some
        (Sandwich_api_proto.Verifiers.Tunnel_verifier.Verifier_EmptyVerifier _) ->
        Core.Result.Result_Ok (() <: Prims.unit)
        <:
        Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
      | Core.Option.Option_Some _ ->
        Rust_primitives.Hax.never_to_any (Core.Panicking.panic "internal error: entered unreachable code"

            <:
            Rust_primitives.Hax.t_Never)
      | Core.Option.Option_None  ->
        Core.Result.Result_Err
        (Core.Convert.f_into #(Sandwich_proto.Errors.t_TunnelError & string)
            #Sandwich.Error.t_Error
            ((Sandwich_proto.Errors.TunnelError_TUNNELERROR_VERIFIER
                <:
                Sandwich_proto.Errors.t_TunnelError),
              "tunnel verifier must specify a verifier"
              <:
              (Sandwich_proto.Errors.t_TunnelError & string)))
        <:
        Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
  }
