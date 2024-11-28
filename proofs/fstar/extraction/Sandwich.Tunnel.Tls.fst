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

/// Security requirements to enforce on TLS tunnels.
/// These requirements are described by the verifiers that comes with the
/// `TLSOptions` configuration message.
type t_TunnelSecurityRequirements = { f_allow_expired_certificate:bool }

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
      if
        Alloc.Vec.impl_1__is_empty #Sandwich_api_proto.Verifiers.t_SANMatcher
          #Alloc.Alloc.t_Global
          verifier.Sandwich_api_proto.Verifiers.f_alt_names
      then
        Core.Result.Result_Err
        (Core.Convert.f_into #(Sandwich_proto.Errors.t_TunnelError & string)
            #Sandwich.Error.t_Error
            #FStar.Tactics.Typeclasses.solve
            ((Sandwich_proto.Errors.TunnelError_TUNNELERROR_VERIFIER
                <:
                Sandwich_proto.Errors.t_TunnelError),
              "SAN list in SANVerifier is empty"
              <:
              (Sandwich_proto.Errors.t_TunnelError & string)))
        <:
        Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
      else
        let has_email:bool = false in
        let has_ip:bool = false in
        let result:Core.Result.t_Result Prims.unit Sandwich.Error.t_Error =
          Core.Result.Result_Ok (() <: Prims.unit)
          <:
          Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
        in
        let has_email, has_ip, result:(bool & bool &
          Core.Result.t_Result Prims.unit Sandwich.Error.t_Error) =
          Rust_primitives.Hax.Folds.fold_enumerated_slice (Core.Ops.Deref.f_deref #(Alloc.Vec.t_Vec
                    Sandwich_api_proto.Verifiers.t_SANMatcher Alloc.Alloc.t_Global)
                #FStar.Tactics.Typeclasses.solve
                verifier.Sandwich_api_proto.Verifiers.f_alt_names
              <:
              t_Slice Sandwich_api_proto.Verifiers.t_SANMatcher)
            (fun temp_0_ temp_1_ ->
                let has_email, has_ip, result:(bool & bool &
                  Core.Result.t_Result Prims.unit Sandwich.Error.t_Error) =
                  temp_0_
                in
                let _:usize = temp_1_ in
                true)
            (has_email, has_ip, result
              <:
              (bool & bool & Core.Result.t_Result Prims.unit Sandwich.Error.t_Error))
            (fun temp_0_ temp_1_ ->
                let has_email, has_ip, result:(bool & bool &
                  Core.Result.t_Result Prims.unit Sandwich.Error.t_Error) =
                  temp_0_
                in
                let i, san:(usize & Sandwich_api_proto.Verifiers.t_SANMatcher) = temp_1_ in
                if Core.Result.impl__is_ok #Prims.unit #Sandwich.Error.t_Error result <: bool
                then
                  let has_email, has_ip, result:(bool & bool &
                    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error) =
                    match
                      Core.Option.impl__as_ref #Sandwich_api_proto.Verifiers.Sanmatcher.t_San
                        san.Sandwich_api_proto.Verifiers.f_san
                    with
                    | Core.Option.Option_Some (Sandwich_api_proto.Verifiers.Sanmatcher.San_Dns _) ->
                      has_email, has_ip, result
                      <:
                      (bool & bool & Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
                    | Core.Option.Option_Some (Sandwich_api_proto.Verifiers.Sanmatcher.San_Email _) ->
                      if has_email
                      then
                        has_email,
                        has_ip,
                        (Core.Result.Result_Err
                          (Core.Convert.f_into #(Sandwich_proto.Errors.t_TunnelError & string)
                              #Sandwich.Error.t_Error
                              #FStar.Tactics.Typeclasses.solve
                              ((Sandwich_proto.Errors.TunnelError_TUNNELERROR_VERIFIER
                                  <:
                                  Sandwich_proto.Errors.t_TunnelError),
                                "cannot have multiple email addresses as SANs"
                                <:
                                (Sandwich_proto.Errors.t_TunnelError & string)))
                          <:
                          Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
                        <:
                        (bool & bool & Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
                      else
                        true, has_ip, result
                        <:
                        (bool & bool & Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
                    | Core.Option.Option_Some
                      (Sandwich_api_proto.Verifiers.Sanmatcher.San_IpAddress _) ->
                      if has_ip
                      then
                        has_email,
                        has_ip,
                        (Core.Result.Result_Err
                          (Core.Convert.f_into #(Sandwich_proto.Errors.t_TunnelError & string)
                              #Sandwich.Error.t_Error
                              #FStar.Tactics.Typeclasses.solve
                              ((Sandwich_proto.Errors.TunnelError_TUNNELERROR_VERIFIER
                                  <:
                                  Sandwich_proto.Errors.t_TunnelError),
                                "cannot have multiple IP addresses as SANs"
                                <:
                                (Sandwich_proto.Errors.t_TunnelError & string)))
                          <:
                          Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
                        <:
                        (bool & bool & Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
                      else
                        has_email, true, result
                        <:
                        (bool & bool & Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
                    | Core.Option.Option_Some t ->
                      let res:Alloc.String.t_String =
                        Alloc.Fmt.format (Core.Fmt.impl_2__new_v1 (sz 2)
                              (sz 2)
                              (let list = ["unsupported SAN type '"; "' at position "] in
                                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                                Rust_primitives.Hax.array_of_list 2 list)
                              (let list =
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
                                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                                Rust_primitives.Hax.array_of_list 2 list)
                            <:
                            Core.Fmt.t_Arguments)
                      in
                      has_email,
                      has_ip,
                      (Core.Result.Result_Err
                        (Core.Convert.f_into #(Sandwich_proto.Errors.t_TunnelError &
                              Alloc.String.t_String)
                            #Sandwich.Error.t_Error
                            #FStar.Tactics.Typeclasses.solve
                            ((Sandwich_proto.Errors.TunnelError_TUNNELERROR_VERIFIER
                                <:
                                Sandwich_proto.Errors.t_TunnelError),
                              (Core.Hint.must_use #Alloc.String.t_String res
                                <:
                                Alloc.String.t_String)
                              <:
                              (Sandwich_proto.Errors.t_TunnelError & Alloc.String.t_String)))
                        <:
                        Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
                      <:
                      (bool & bool & Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
                    | Core.Option.Option_None  ->
                      let res:Alloc.String.t_String =
                        Alloc.Fmt.format (Core.Fmt.impl_2__new_v1 (sz 1)
                              (sz 1)
                              (let list = ["empty SANMatcher at position "] in
                                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                                Rust_primitives.Hax.array_of_list 1 list)
                              (let list =
                                  [
                                    Core.Fmt.Rt.impl_1__new_display #usize i
                                    <:
                                    Core.Fmt.Rt.t_Argument
                                  ]
                                in
                                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                                Rust_primitives.Hax.array_of_list 1 list)
                            <:
                            Core.Fmt.t_Arguments)
                      in
                      has_email,
                      has_ip,
                      (Core.Result.Result_Err
                        (Core.Convert.f_into #(Sandwich_proto.Errors.t_TunnelError &
                              Alloc.String.t_String)
                            #Sandwich.Error.t_Error
                            #FStar.Tactics.Typeclasses.solve
                            ((Sandwich_proto.Errors.TunnelError_TUNNELERROR_VERIFIER
                                <:
                                Sandwich_proto.Errors.t_TunnelError),
                              (Core.Hint.must_use #Alloc.String.t_String res
                                <:
                                Alloc.String.t_String)
                              <:
                              (Sandwich_proto.Errors.t_TunnelError & Alloc.String.t_String)))
                        <:
                        Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
                      <:
                      (bool & bool & Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
                  in
                  has_email, has_ip, result
                  <:
                  (bool & bool & Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
                else
                  has_email, has_ip, result
                  <:
                  (bool & bool & Core.Result.t_Result Prims.unit Sandwich.Error.t_Error))
        in
        result
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
          #FStar.Tactics.Typeclasses.solve
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
            #FStar.Tactics.Typeclasses.solve
            ((Sandwich_proto.Errors.TunnelError_TUNNELERROR_VERIFIER
                <:
                Sandwich_proto.Errors.t_TunnelError),
              "tunnel verifier must specify a verifier"
              <:
              (Sandwich_proto.Errors.t_TunnelError & string)))
        <:
        Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
  }
