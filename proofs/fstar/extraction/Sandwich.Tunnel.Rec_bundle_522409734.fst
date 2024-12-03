module Sandwich.Tunnel.Rec_bundle_522409734
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Sandwich.Error in
  let open Sandwich.Error.Code in
  let open Sandwich.Implementation.Openssl3_impl.Tunnel.X509_verify_param in
  let open Sandwich.Tunnel.Tls in
  let open Alloc.Vec in
  let open Core.Iter.Traits.Collect in
  ()

/// Convenient wrapper around a `SSL_CTX`.
type t_SslContext = | SslContext : Core.Ptr.Non_null.t_NonNull Openssl3.t_ssl_ctx_st -> t_SslContext

/// Mode for a [`Context`].
/// A [`Context`] is either a context for client-side applications or
/// server-side applications.
type t_Mode =
  | Mode_Client : t_Mode
  | Mode_Server : t_Mode

/// Tunnel context.
type t_Context116464909 = {
  f__lib_ctx:Sandwich.Implementation.Openssl3_impl.t_LibCtx;
  f_ssl_ctx:Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_ctx_st;
  f_security_requirements:Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements;
  f_mode:t_Mode
}

/// A Sandwich context.
type t_Context665818913 = | Context665818913_OpenSSL3 : t_Context116464909 -> t_Context665818913

/// Sets the verification mode.
/// If a `X509Verifier` structure is present in the protobuf configuration,
/// then `SSL_VERIFY_PEER` is used in client mode, and `SSL_VERIFY_PEER | SSL_VERIFY_FAIL_IF_NO_PEER_CERT`
/// is used in server mode.
assume
val set_verify_mode': self: t_SslContext -> verify_mode: Sandwich.Tunnel.Tls.t_VerifyMode
  -> Prims.unit

let set_verify_mode = set_verify_mode'

/// Tunnel builder.
/// This is a convenient aggregate of useful values to build a tunnel.
type t_TunnelBuilder = {
  f_ssl_ctx:t_Context116464909;
  f_io:Sandwich.Tunnel.Io.t_BoxedIO;
  f_configuration:Sandwich_api_proto.Tunnel.t_TunnelConfiguration
}

/// Determines the verify mode depending on the mode and the existence of a
/// X509Verifier structure in the protobuf configuration.
let get_verify_mode_from_mode_and_x509_verifier
      (mode: t_Mode)
      (x509_verifier: Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
    : Sandwich.Tunnel.Tls.t_VerifyMode =
  if Core.Option.impl__is_none #Sandwich_api_proto.Verifiers.t_X509Verifier x509_verifier
  then Sandwich.Tunnel.Tls.VerifyMode_None <: Sandwich.Tunnel.Tls.t_VerifyMode
  else
    if mode =. (Mode_Client <: t_Mode)
    then Sandwich.Tunnel.Tls.VerifyMode_Peer <: Sandwich.Tunnel.Tls.t_VerifyMode
    else Sandwich.Tunnel.Tls.VerifyMode_Mutual <: Sandwich.Tunnel.Tls.t_VerifyMode

/// Configures TLS 1.2.
assume
val configure_tls12':
    self: t_SslContext ->
    tls12_config: Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSv12Config
  -> Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let configure_tls12 = configure_tls12'

/// Configures TLS 1.3.
assume
val configure_tls13':
    self: t_SslContext ->
    tls13_config: Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSv13Config
  -> Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let configure_tls13 = configure_tls13'

/// Imports the trusted certificates from the protobuf configuration to the
/// OpenSSL SSL context.
assume
val fill_certificate_trust_store':
    self: t_SslContext ->
    lib_ctx: Sandwich.Implementation.Openssl3_impl.t_LibCtx ->
    x509_verifier: Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier
  -> Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let fill_certificate_trust_store = fill_certificate_trust_store'

/// Loads the OpenSSL system-default trust anchors into context store.
assume
val fill_certificate_trust_store_with_default_cas':
    self: t_SslContext ->
    x509_verifier: Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier
  -> Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let fill_certificate_trust_store_with_default_cas = fill_certificate_trust_store_with_default_cas'

/// Sets supported application protocols (ALPN).
assume
val set_alpn_protocols':
    #v_S: Type0 ->
    #impl_995885649_: Type0 ->
    {| i6: Core.Convert.t_AsRef v_S string |} ->
    {| i6: Core.Iter.Traits.Collect.t_IntoIterator impl_995885649_ |} ->
    self: t_SslContext ->
    protocols: impl_995885649_
  -> Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let set_alpn_protocols #v_S #impl_995885649_ {| i6: Core.Convert.t_AsRef v_S string |} {| i61: Core.Iter.Traits.Collect.t_IntoIterator impl_995885649_ |}= 
  set_alpn_protocols' #v_S #impl_995885649_ #i6 #i61

/// Sets the default parameters for a SSL context.
assume
val set_default_parameters': self: t_SslContext
  -> Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let set_default_parameters = set_default_parameters'

/// Sets the X.509 identity to use.
/// If the client sets an X.509 identity, then it will expect a client
/// certificate request from the server, in order to establish a mutual
/// TLS tunnel (mTLS).
assume
val set_identity':
    self: t_SslContext ->
    lib_ctx: Sandwich.Implementation.Openssl3_impl.t_LibCtx ->
    identity: Core.Option.t_Option Sandwich_api_proto.Tls.t_X509Identity
  -> Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let set_identity = set_identity'

/// Sets the minimum and the maximum TLS versions to use.
assume
val set_min_and_max_tls_version':
    self: t_SslContext ->
    tls_options: Sandwich_api_proto.Tls.t_TLSOptions
  -> Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let set_min_and_max_tls_version = set_min_and_max_tls_version'

/// Sets the trust parameter on the verification parameters object, depending
/// on the execution mode.
assume
val set_trust': self: t_SslContext -> mode: t_Mode
  -> Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let set_trust = set_trust'

/// Instantiates a new SSL context (`SSL_CTX`).
assume
val new_ssl_context': ctx: Sandwich.t_Context -> mode: t_Mode
  -> Core.Result.t_Result (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_ctx_st)
      Sandwich.Error.t_Error

let new_ssl_context = new_ssl_context'

/// Returns the execution mode (Client or Server) and the tls options (`TLSOptions`).
let configuration_get_mode_and_options
      (configuration: Sandwich_api_proto.Configuration.t_Configuration)
    : Core.Result.t_Result (t_Mode & Sandwich_api_proto.Tls.t_TLSOptions) Sandwich.Error.t_Error =
  Core.Option.impl__ok_or #(t_Mode & Sandwich_api_proto.Tls.t_TLSOptions)
    #Sandwich.Error.t_Error
    (Core.Option.impl__and_then #Sandwich_api_proto.Configuration.t_Opts
        #(t_Mode & Sandwich_api_proto.Tls.t_TLSOptions)
        (Core.Option.impl__as_ref #Sandwich_api_proto.Configuration.t_Opts
            configuration.Sandwich_api_proto.Configuration.f_opts
          <:
          Core.Option.t_Option Sandwich_api_proto.Configuration.t_Opts)
        (fun opts ->
            let opts:Sandwich_api_proto.Configuration.t_Opts = opts in
            match opts with
            | Sandwich_api_proto.Configuration.Opts_Client opt ->
              Core.Option.impl__map #Sandwich_api_proto.Tls.t_TLSOptions
                #(t_Mode & Sandwich_api_proto.Tls.t_TLSOptions)
                (Core.Option.impl__and_then #Sandwich_api_proto.Tls.t_TLSClientOptions
                    #Sandwich_api_proto.Tls.t_TLSOptions
                    (Core.Option.impl__and_then #Sandwich_api_proto.Configuration.Client_options.t_Opts
                        #Sandwich_api_proto.Tls.t_TLSClientOptions
                        (Core.Option.impl__as_ref #Sandwich_api_proto.Configuration.Client_options.t_Opts
                            opt.Sandwich_api_proto.Configuration.f_opts
                          <:
                          Core.Option.t_Option
                          Sandwich_api_proto.Configuration.Client_options.t_Opts)
                        (fun proto ->
                            let proto:Sandwich_api_proto.Configuration.Client_options.t_Opts =
                              proto
                            in
                            match proto with
                            | Sandwich_api_proto.Configuration.Client_options.Opts_Tls tls ->
                              Core.Option.Option_Some tls
                              <:
                              Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSClientOptions
                            | _ ->
                              Core.Option.Option_None
                              <:
                              Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSClientOptions)
                      <:
                      Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSClientOptions)
                    (fun opts ->
                        let opts:Sandwich_api_proto.Tls.t_TLSClientOptions = opts in
                        Protobuf.Message_field.impl__as_ref #Sandwich_api_proto.Tls.t_TLSOptions
                          opts.Sandwich_api_proto.Tls.f_common_options
                        <:
                        Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSOptions)
                  <:
                  Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSOptions)
                (fun tls ->
                    let tls:Sandwich_api_proto.Tls.t_TLSOptions = tls in
                    (Mode_Client <: t_Mode), tls <: (t_Mode & Sandwich_api_proto.Tls.t_TLSOptions))
              <:
              Core.Option.t_Option (t_Mode & Sandwich_api_proto.Tls.t_TLSOptions)
            | Sandwich_api_proto.Configuration.Opts_Server opt ->
              Core.Option.impl__map #Sandwich_api_proto.Tls.t_TLSOptions
                #(t_Mode & Sandwich_api_proto.Tls.t_TLSOptions)
                (Core.Option.impl__and_then #Sandwich_api_proto.Tls.t_TLSServerOptions
                    #Sandwich_api_proto.Tls.t_TLSOptions
                    (Core.Option.impl__and_then #Sandwich_api_proto.Configuration.Server_options.t_Opts
                        #Sandwich_api_proto.Tls.t_TLSServerOptions
                        (Core.Option.impl__as_ref #Sandwich_api_proto.Configuration.Server_options.t_Opts
                            opt.Sandwich_api_proto.Configuration.f_opts
                          <:
                          Core.Option.t_Option
                          Sandwich_api_proto.Configuration.Server_options.t_Opts)
                        (fun proto ->
                            let proto:Sandwich_api_proto.Configuration.Server_options.t_Opts =
                              proto
                            in
                            match proto with
                            | Sandwich_api_proto.Configuration.Server_options.Opts_Tls tls ->
                              Core.Option.Option_Some tls
                              <:
                              Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSServerOptions
                            | _ ->
                              Core.Option.Option_None
                              <:
                              Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSServerOptions)
                      <:
                      Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSServerOptions)
                    (fun opts ->
                        let opts:Sandwich_api_proto.Tls.t_TLSServerOptions = opts in
                        Protobuf.Message_field.impl__as_ref #Sandwich_api_proto.Tls.t_TLSOptions
                          opts.Sandwich_api_proto.Tls.f_common_options
                        <:
                        Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSOptions)
                  <:
                  Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSOptions)
                (fun tls ->
                    let tls:Sandwich_api_proto.Tls.t_TLSOptions = tls in
                    (Mode_Server <: t_Mode), tls <: (t_Mode & Sandwich_api_proto.Tls.t_TLSOptions))
              <:
              Core.Option.t_Option (t_Mode & Sandwich_api_proto.Tls.t_TLSOptions)
            | _ ->
              Rust_primitives.Hax.never_to_any (Core.Panicking.panic "internal error: entered unreachable code"

                  <:
                  Rust_primitives.Hax.t_Never)
              <:
              Core.Option.t_Option (t_Mode & Sandwich_api_proto.Tls.t_TLSOptions))
      <:
      Core.Option.t_Option (t_Mode & Sandwich_api_proto.Tls.t_TLSOptions))
    (Core.Convert.f_into #Sandwich_proto.Errors.t_TLSConfigurationError
        #Sandwich.Error.t_Error
        #FStar.Tactics.Typeclasses.solve
        (Sandwich_proto.Errors.TLSConfigurationError_TLSCONFIGURATIONERROR_EMPTY
          <:
          Sandwich_proto.Errors.t_TLSConfigurationError)
      <:
      Sandwich.Error.t_Error)

/// Returns the X.509 verifier if exists.
/// If no X.509 verifier is found, and `EmptyVerifier` isn't specified, then
/// it's an error.
let tls_options_get_x509_verifier (tls_options: Sandwich_api_proto.Tls.t_TLSOptions)
    : Core.Result.t_Result (Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
      Sandwich.Error.t_Error =
  Core.Result.impl__and_then #Sandwich_api_proto.Tls.Tlsoptions.t_Peer_verifier
    #Sandwich.Error.t_Error
    #(Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
    (Core.Option.impl__ok_or #Sandwich_api_proto.Tls.Tlsoptions.t_Peer_verifier
        #Sandwich.Error.t_Error
        (Core.Option.impl__as_ref #Sandwich_api_proto.Tls.Tlsoptions.t_Peer_verifier
            tls_options.Sandwich_api_proto.Tls.f_peer_verifier
          <:
          Core.Option.t_Option Sandwich_api_proto.Tls.Tlsoptions.t_Peer_verifier)
        (Core.Convert.f_into #(Sandwich_proto.Errors.t_TLSConfigurationError & string)
            #Sandwich.Error.t_Error
            #FStar.Tactics.Typeclasses.solve
            ((Sandwich_proto.Errors.TLSConfigurationError_TLSCONFIGURATIONERROR_EMPTY
                <:
                Sandwich_proto.Errors.t_TLSConfigurationError),
              "no verifier specified"
              <:
              (Sandwich_proto.Errors.t_TLSConfigurationError & string))
          <:
          Sandwich.Error.t_Error)
      <:
      Core.Result.t_Result Sandwich_api_proto.Tls.Tlsoptions.t_Peer_verifier Sandwich.Error.t_Error)
    (fun v ->
        let v:Sandwich_api_proto.Tls.Tlsoptions.t_Peer_verifier = v in
        match v with
        | Sandwich_api_proto.Tls.Tlsoptions.Peer_verifier_X509Verifier x509 ->
          Core.Result.Result_Ok
          (Core.Option.Option_Some x509
            <:
            Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
          <:
          Core.Result.t_Result (Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
            Sandwich.Error.t_Error
        | Sandwich_api_proto.Tls.Tlsoptions.Peer_verifier_EmptyVerifier _ ->
          Core.Result.Result_Ok
          (Core.Option.Option_None
            <:
            Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
          <:
          Core.Result.t_Result (Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
            Sandwich.Error.t_Error
        | _ ->
          Rust_primitives.Hax.never_to_any (Core.Panicking.panic "internal error: entered unreachable code"

              <:
              Rust_primitives.Hax.t_Never)
          <:
          Core.Result.t_Result (Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
            Sandwich.Error.t_Error)

/// Verifies that a X.509 verifier isn't empty.
let x509_verifier_verify_emptiness
      (x509_verifier: Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
    : Core.Result.t_Result (Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
      Sandwich.Error.t_Error =
  match x509_verifier with
  | Core.Option.Option_Some x509 ->
    if
      Alloc.Vec.impl_1__is_empty #Sandwich_api_proto.Certificate.t_Certificate
        #Alloc.Alloc.t_Global
        x509.Sandwich_api_proto.Verifiers.f_trusted_cas &&
      ~.x509.Sandwich_api_proto.Verifiers.f_load_cas_from_default_verify_path
    then
      Core.Result.Result_Err
      (Core.Convert.f_into #(Sandwich_proto.Errors.t_TLSConfigurationError & string)
          #Sandwich.Error.t_Error
          #FStar.Tactics.Typeclasses.solve
          ((Sandwich_proto.Errors.TLSConfigurationError_TLSCONFIGURATIONERROR_EMPTY
              <:
              Sandwich_proto.Errors.t_TLSConfigurationError),
            "X.509 verifier empty"
            <:
            (Sandwich_proto.Errors.t_TLSConfigurationError & string)))
      <:
      Core.Result.t_Result (Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
        Sandwich.Error.t_Error
    else
      Core.Result.Result_Ok x509_verifier
      <:
      Core.Result.t_Result (Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
        Sandwich.Error.t_Error
  | _ ->
    Core.Result.Result_Ok
    (Core.Option.Option_None <: Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
    <:
    Core.Result.t_Result (Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
      Sandwich.Error.t_Error

/// Instantiates a new [`Context`] from a [protobuf configuration](`pb_api::Configuration`)
/// and a top-level context.
let try_from
      (ctx: Sandwich.t_Context)
      (configuration: Sandwich_api_proto.Configuration.t_Configuration)
    : Core.Result.t_Result t_Context116464909 Sandwich.Error.t_Error =
  let lib_ctx:Sandwich.Implementation.Openssl3_impl.t_LibCtx = ctx.Sandwich.f_ossl3_lib_ctx in
  match configuration_get_mode_and_options configuration with
  | Core.Result.Result_Ok (mode, tls_options) ->
    (match new_ssl_context ctx mode with
      | Core.Result.Result_Ok ssl_ctx ->
        let ssl_ctx_wrapped:t_SslContext =
          SslContext (Sandwich.Support.Pimpl.impl_2__as_nonnull #Openssl3.t_ssl_ctx_st ssl_ctx)
          <:
          t_SslContext
        in
        (match set_default_parameters ssl_ctx_wrapped with
          | Core.Result.Result_Ok _ ->
            (match set_trust ssl_ctx_wrapped mode with
              | Core.Result.Result_Ok _ ->
                (match set_min_and_max_tls_version ssl_ctx_wrapped tls_options with
                  | Core.Result.Result_Ok _ ->
                    (match
                        configure_tls12 ssl_ctx_wrapped
                          (Protobuf.Message_field.impl__as_ref #Sandwich_api_proto.Tls.t_TLSv12Config
                              tls_options.Sandwich_api_proto.Tls.f_tls12
                            <:
                            Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSv12Config)
                      with
                      | Core.Result.Result_Ok _ ->
                        (match
                            configure_tls13 ssl_ctx_wrapped
                              (Protobuf.Message_field.impl__as_ref #Sandwich_api_proto.Tls.t_TLSv13Config
                                  tls_options.Sandwich_api_proto.Tls.f_tls13
                                <:
                                Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSv13Config)
                          with
                          | Core.Result.Result_Ok _ ->
                            (match
                                set_alpn_protocols #Alloc.String.t_String
                                  #(Alloc.Vec.t_Vec Alloc.String.t_String Alloc.Alloc.t_Global)
                                  ssl_ctx_wrapped
                                  tls_options.Sandwich_api_proto.Tls.f_alpn_protocols
                              with
                              | Core.Result.Result_Ok _ ->
                                (match
                                    Core.Convert.f_try_from #Sandwich.Implementation.Openssl3_impl.Tunnel.X509_verify_param.t_X509VerifyParam
                                      #(Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_ctx_st)
                                      #FStar.Tactics.Typeclasses.solve
                                      ssl_ctx
                                  with
                                  | Core.Result.Result_Ok x509_verify_param ->
                                    (match
                                        Sandwich.Implementation.Openssl3_impl.Tunnel.X509_verify_param.impl_4__set_default_parameters
                                          x509_verify_param
                                      with
                                      | Core.Result.Result_Ok _ ->
                                        (match
                                            Core.Result.impl__and_then #(Core.Option.t_Option
                                                Sandwich_api_proto.Verifiers.t_X509Verifier)
                                              #Sandwich.Error.t_Error
                                              #(Core.Option.t_Option
                                                Sandwich_api_proto.Verifiers.t_X509Verifier)
                                              (tls_options_get_x509_verifier tls_options
                                                <:
                                                Core.Result.t_Result
                                                  (Core.Option.t_Option
                                                    Sandwich_api_proto.Verifiers.t_X509Verifier)
                                                  Sandwich.Error.t_Error)
                                              x509_verifier_verify_emptiness
                                          with
                                          | Core.Result.Result_Ok x509_verifier ->
                                            let _:Prims.unit =
                                              Sandwich.Implementation.Openssl3_impl.Tunnel.X509_verify_param.impl_4__update_certificate_chain_validation_depth_from_x509_verifier
                                                x509_verify_param
                                                x509_verifier
                                            in
                                            (match
                                                set_identity ssl_ctx_wrapped
                                                  lib_ctx
                                                  (Protobuf.Message_field.impl__as_ref #Sandwich_api_proto.Tls.t_X509Identity
                                                      tls_options.Sandwich_api_proto.Tls.f_identity
                                                    <:
                                                    Core.Option.t_Option
                                                    Sandwich_api_proto.Tls.t_X509Identity)
                                              with
                                              | Core.Result.Result_Ok _ ->
                                                (match
                                                    fill_certificate_trust_store ssl_ctx_wrapped
                                                      lib_ctx
                                                      x509_verifier
                                                  with
                                                  | Core.Result.Result_Ok _ ->
                                                    (match
                                                        fill_certificate_trust_store_with_default_cas
                                                          ssl_ctx_wrapped
                                                          x509_verifier
                                                      with
                                                      | Core.Result.Result_Ok _ ->
                                                        let verify_mode:Sandwich.Tunnel.Tls.t_VerifyMode
                                                        =
                                                          get_verify_mode_from_mode_and_x509_verifier
                                                            mode
                                                            x509_verifier
                                                        in
                                                        let _:Prims.unit =
                                                          set_verify_mode ssl_ctx_wrapped
                                                            verify_mode
                                                        in
                                                        let security_requirements:Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements
                                                        =
                                                          Core.Option.impl__unwrap_or_default #Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements
                                                            (Core.Option.impl__map #Sandwich_api_proto.Verifiers.t_X509Verifier
                                                                #Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements
                                                                x509_verifier
                                                                (fun x ->
                                                                    let x:Sandwich_api_proto.Verifiers.t_X509Verifier
                                                                    =
                                                                      x
                                                                    in
                                                                    Core.Convert.f_from #Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements
                                                                      #Sandwich_api_proto.Verifiers.t_X509Verifier
                                                                      #FStar.Tactics.Typeclasses.solve
                                                                      x
                                                                    <:
                                                                    Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements
                                                                )
                                                              <:
                                                              Core.Option.t_Option
                                                              Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements
                                                            )
                                                        in
                                                        Core.Result.Result_Ok
                                                        ({
                                                            f__lib_ctx = lib_ctx;
                                                            f_mode = mode;
                                                            f_security_requirements
                                                            =
                                                            security_requirements;
                                                            f_ssl_ctx = ssl_ctx
                                                          }
                                                          <:
                                                          t_Context116464909)
                                                        <:
                                                        Core.Result.t_Result t_Context116464909
                                                          Sandwich.Error.t_Error
                                                      | Core.Result.Result_Err err ->
                                                        Core.Result.Result_Err err
                                                        <:
                                                        Core.Result.t_Result t_Context116464909
                                                          Sandwich.Error.t_Error)
                                                  | Core.Result.Result_Err err ->
                                                    Core.Result.Result_Err err
                                                    <:
                                                    Core.Result.t_Result t_Context116464909
                                                      Sandwich.Error.t_Error)
                                              | Core.Result.Result_Err err ->
                                                Core.Result.Result_Err err
                                                <:
                                                Core.Result.t_Result t_Context116464909
                                                  Sandwich.Error.t_Error)
                                          | Core.Result.Result_Err err ->
                                            Core.Result.Result_Err err
                                            <:
                                            Core.Result.t_Result t_Context116464909
                                              Sandwich.Error.t_Error)
                                      | Core.Result.Result_Err err ->
                                        Core.Result.Result_Err err
                                        <:
                                        Core.Result.t_Result t_Context116464909
                                          Sandwich.Error.t_Error)
                                  | Core.Result.Result_Err err ->
                                    Core.Result.Result_Err err
                                    <:
                                    Core.Result.t_Result t_Context116464909 Sandwich.Error.t_Error)
                              | Core.Result.Result_Err err ->
                                Core.Result.Result_Err err
                                <:
                                Core.Result.t_Result t_Context116464909 Sandwich.Error.t_Error)
                          | Core.Result.Result_Err err ->
                            Core.Result.Result_Err err
                            <:
                            Core.Result.t_Result t_Context116464909 Sandwich.Error.t_Error)
                      | Core.Result.Result_Err err ->
                        Core.Result.Result_Err err
                        <:
                        Core.Result.t_Result t_Context116464909 Sandwich.Error.t_Error)
                  | Core.Result.Result_Err err ->
                    Core.Result.Result_Err err
                    <:
                    Core.Result.t_Result t_Context116464909 Sandwich.Error.t_Error)
              | Core.Result.Result_Err err ->
                Core.Result.Result_Err err
                <:
                Core.Result.t_Result t_Context116464909 Sandwich.Error.t_Error)
          | Core.Result.Result_Err err ->
            Core.Result.Result_Err err
            <:
            Core.Result.t_Result t_Context116464909 Sandwich.Error.t_Error)
      | Core.Result.Result_Err err ->
        Core.Result.Result_Err err <: Core.Result.t_Result t_Context116464909 Sandwich.Error.t_Error
    )
  | Core.Result.Result_Err err ->
    Core.Result.Result_Err err <: Core.Result.t_Result t_Context116464909 Sandwich.Error.t_Error

let hax_try_from
      (ctx: Sandwich.t_Context)
      (configuration: Sandwich_api_proto.Configuration.t_Configuration)
    : Core.Result.t_Result t_Context116464909 Sandwich.Error.t_Error = try_from ctx configuration

/// A tunnel, wrapper around a SSL object.
type t_Tunnel364847772 = {
  f__ssl_ctx:t_Context116464909;
  f_ssl:Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_st;
  f_security_requirements:Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements;
  f_io:Sandwich.Tunnel.Io.t_BoxedIO;
  f_state:Sandwich_proto.Tunnel.t_State
}

/// Builds a tunnel.
assume
val build': self: t_TunnelBuilder
  -> Core.Result.t_Result
      (Core.Pin.t_Pin (Alloc.Boxed.t_Box t_Tunnel364847772 Alloc.Alloc.t_Global))
      (Sandwich.Error.t_Error & Sandwich.Tunnel.Io.t_BoxedIO)

let build = build'

/// Creates a new tunnel.
let new_tunnel474967037
      (self: t_Context116464909)
      (io: Sandwich.Tunnel.Io.t_BoxedIO)
      (configuration: Sandwich_api_proto.Tunnel.t_TunnelConfiguration)
    : Core.Result.t_Result
      (Core.Pin.t_Pin (Alloc.Boxed.t_Box t_Tunnel364847772 Alloc.Alloc.t_Global))
      (Sandwich.Error.t_Error & Sandwich.Tunnel.Io.t_BoxedIO) =
  build ({ f_ssl_ctx = self; f_io = io; f_configuration = configuration } <: t_TunnelBuilder)

/// A tunnel.
type t_Tunnel70284935 =
  | Tunnel70284935_OpenSSL3 :
      Core.Pin.t_Pin (Alloc.Boxed.t_Box t_Tunnel364847772 Alloc.Alloc.t_Global)
    -> t_Tunnel70284935

/// Creates a new tunnel from an I/O interface. See [`IO`] from [`crate::io`] module.
/// The I/O interface must outlive the tunnel, as the tunnel makes use
/// of it to send and receive data.
/// If an error occured, the IO interface is returned to the user.
let new_tunnel499954878
      (self: t_Context665818913)
      (io: Sandwich.Tunnel.Io.t_BoxedIO)
      (configuration: Sandwich_api_proto.Tunnel.t_TunnelConfiguration)
    : Core.Result.t_Result t_Tunnel70284935 (Sandwich.Error.t_Error & Sandwich.Tunnel.Io.t_BoxedIO) =
  match self with
  | (Context665818913_OpenSSL3 c(*: t_Context665818913*)) ->
    match new_tunnel474967037 c io configuration with
    | Core.Result.Result_Ok hoist1 ->
      Core.Result.Result_Ok (Tunnel70284935_OpenSSL3 hoist1 <: t_Tunnel70284935)
      <:
      Core.Result.t_Result t_Tunnel70284935 (Sandwich.Error.t_Error & Sandwich.Tunnel.Io.t_BoxedIO)
    | Core.Result.Result_Err err ->
      Core.Result.Result_Err err
      <:
      Core.Result.t_Result t_Tunnel70284935 (Sandwich.Error.t_Error & Sandwich.Tunnel.Io.t_BoxedIO)

let new_tunnel735299623
      (context: t_Context665818913)
      (io: Sandwich.Tunnel.Io.t_BoxedIO)
      (configuration: Sandwich_api_proto.Tunnel.t_TunnelConfiguration)
    : Core.Result.t_Result t_Tunnel70284935 (Sandwich.Error.t_Error & Sandwich.Tunnel.Io.t_BoxedIO) =
  new_tunnel499954878 context io configuration
