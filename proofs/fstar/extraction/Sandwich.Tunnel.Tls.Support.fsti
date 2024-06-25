module Sandwich.Tunnel.Tls.Support
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Sandwich.Error in
  let open Sandwich.Error.Code in
  let open Sandwich.Support.Data_source in
  ()

/// Returns the minimum and the maximum TLS versions depending on a given TLS config.
val tls_options_get_min_max_tls_version (tls_options: Sandwich_api_proto.Tls.t_TLSOptions)
    : Prims.Pure (Sandwich.Tunnel.Tls.t_TlsVersion & Sandwich.Tunnel.Tls.t_TlsVersion)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Reads the content of a certificate as described in a protobuf message.
val configuration_read_certificate (cert: Sandwich_api_proto.Certificate.t_Certificate)
    : Prims.Pure
      (Core.Result.t_Result
          (Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat &
            Sandwich.Support.Data_source.t_DataSource) Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Reads the content of a private key as described in a protobuf message.
val configuration_read_private_key (private_key: Sandwich_api_proto.Private_key.t_PrivateKey)
    : Prims.Pure
      (Core.Result.t_Result
          (Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat &
            Sandwich.Support.Data_source.t_DataSource) Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Returns the execution mode (Client or Server) and the tls options (`TLSOptions`).
val configuration_get_mode_and_options
      (configuration: Sandwich_api_proto.Configuration.t_Configuration)
    : Prims.Pure
      (Core.Result.t_Result (Sandwich.Tunnel.Context.t_Mode & Sandwich_api_proto.Tls.t_TLSOptions)
          Sandwich.Error.t_Error) Prims.l_True (fun _ -> Prims.l_True)

/// Returns the X.509 verifier if exists.
/// If no X.509 verifier is found, and `EmptyVerifier` isn't specified, then
/// it's an error.
val tls_options_get_x509_verifier (tls_options: Sandwich_api_proto.Tls.t_TLSOptions)
    : Prims.Pure
      (Core.Result.t_Result (Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
          Sandwich.Error.t_Error) Prims.l_True (fun _ -> Prims.l_True)

/// Verifies that a X.509 verifier isn't empty.
val x509_verifier_verify_emptiness
      (x509_verifier: Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
    : Prims.Pure
      (Core.Result.t_Result (Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
          Sandwich.Error.t_Error) Prims.l_True (fun _ -> Prims.l_True)

/// Builds a ciphersuite string from a list of ciphers.
val build_ciphersuites_list
      (#v_S #impl_995885649_: Type0)
      {| i2: Core.Convert.t_AsRef v_S string |}
      {| i3: Core.Iter.Traits.Collect.t_IntoIterator impl_995885649_ |}
      (ciphers: impl_995885649_)
      (invalid_chars: string)
    : Prims.Pure (Core.Result.t_Result Alloc.String.t_String Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)
