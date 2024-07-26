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

let tls_options_get_min_max_tls_version (tls_options: Sandwich_api_proto.Tls.t_TLSOptions) =
  match
    Protobuf.Message_field.impl__is_some #Sandwich_api_proto.Tls.t_TLSv12Config
      tls_options.Sandwich_api_proto.Tls.f_tls12,
    Protobuf.Message_field.impl__is_some #Sandwich_api_proto.Tls.t_TLSv13Config
      tls_options.Sandwich_api_proto.Tls.f_tls13
    <:
    (bool & bool)
  with
  | false, false ->
    (Sandwich.Tunnel.Tls.TlsVersion_Tls13 <: Sandwich.Tunnel.Tls.t_TlsVersion),
    (Sandwich.Tunnel.Tls.TlsVersion_Tls13 <: Sandwich.Tunnel.Tls.t_TlsVersion)
    <:
    (Sandwich.Tunnel.Tls.t_TlsVersion & Sandwich.Tunnel.Tls.t_TlsVersion)
  | true, false ->
    (Sandwich.Tunnel.Tls.TlsVersion_Tls12 <: Sandwich.Tunnel.Tls.t_TlsVersion),
    (Sandwich.Tunnel.Tls.TlsVersion_Tls12 <: Sandwich.Tunnel.Tls.t_TlsVersion)
    <:
    (Sandwich.Tunnel.Tls.t_TlsVersion & Sandwich.Tunnel.Tls.t_TlsVersion)
  | false, true ->
    (Sandwich.Tunnel.Tls.TlsVersion_Tls13 <: Sandwich.Tunnel.Tls.t_TlsVersion),
    (Sandwich.Tunnel.Tls.TlsVersion_Tls13 <: Sandwich.Tunnel.Tls.t_TlsVersion)
    <:
    (Sandwich.Tunnel.Tls.t_TlsVersion & Sandwich.Tunnel.Tls.t_TlsVersion)
  | true, true ->
    (Sandwich.Tunnel.Tls.TlsVersion_Tls12 <: Sandwich.Tunnel.Tls.t_TlsVersion),
    (Sandwich.Tunnel.Tls.TlsVersion_Tls13 <: Sandwich.Tunnel.Tls.t_TlsVersion)
    <:
    (Sandwich.Tunnel.Tls.t_TlsVersion & Sandwich.Tunnel.Tls.t_TlsVersion)

let configuration_read_certificate (cert: Sandwich_api_proto.Certificate.t_Certificate) =
  Core.Result.impl__and_then #Sandwich_api_proto.Certificate.Certificate.t_Source
    #Sandwich.Error.t_Error
    #(Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat &
      Sandwich.Support.Data_source.t_DataSource)
    (Core.Option.impl__ok_or_else #Sandwich_api_proto.Certificate.Certificate.t_Source
        #Sandwich.Error.t_Error
        (Core.Option.impl__as_ref #Sandwich_api_proto.Certificate.Certificate.t_Source
            cert.Sandwich_api_proto.Certificate.f_source
          <:
          Core.Option.t_Option Sandwich_api_proto.Certificate.Certificate.t_Source)
        (fun temp_0_ ->
            let _:Prims.unit = temp_0_ in
            Core.Convert.f_into #Sandwich_proto.Errors.t_DataSourceError
              #Sandwich.Error.t_Error
              #FStar.Tactics.Typeclasses.solve
              (Sandwich_proto.Errors.DataSourceError_DATASOURCEERROR_EMPTY
                <:
                Sandwich_proto.Errors.t_DataSourceError)
            <:
            Sandwich.Error.t_Error)
      <:
      Core.Result.t_Result Sandwich_api_proto.Certificate.Certificate.t_Source
        Sandwich.Error.t_Error)
    (fun oneof ->
        let oneof:Sandwich_api_proto.Certificate.Certificate.t_Source = oneof in
        match oneof with
        | Sandwich_api_proto.Certificate.Certificate.Source_Static asn1ds ->
          Core.Result.impl__and_then #Sandwich.Support.Data_source.t_DataSource
            #Sandwich.Error.t_Error
            #(Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat &
              Sandwich.Support.Data_source.t_DataSource)
            (Core.Result.impl__and_then #Sandwich_api_proto.Data_source.t_DataSource
                #Sandwich.Error.t_Error
                #Sandwich.Support.Data_source.t_DataSource
                (Core.Option.impl__ok_or_else #Sandwich_api_proto.Data_source.t_DataSource
                    #Sandwich.Error.t_Error
                    (Protobuf.Message_field.impl__as_ref #Sandwich_api_proto.Data_source.t_DataSource
                        asn1ds.Sandwich_api_proto.Data_source.f_data
                      <:
                      Core.Option.t_Option Sandwich_api_proto.Data_source.t_DataSource)
                    (fun temp_0_ ->
                        let _:Prims.unit = temp_0_ in
                        Core.Convert.f_into #Sandwich_proto.Errors.t_DataSourceError
                          #Sandwich.Error.t_Error
                          #FStar.Tactics.Typeclasses.solve
                          (Sandwich_proto.Errors.DataSourceError_DATASOURCEERROR_EMPTY
                            <:
                            Sandwich_proto.Errors.t_DataSourceError)
                        <:
                        Sandwich.Error.t_Error)
                  <:
                  Core.Result.t_Result Sandwich_api_proto.Data_source.t_DataSource
                    Sandwich.Error.t_Error)
                Core.Convert.TryFrom.try_from
              <:
              Core.Result.t_Result Sandwich.Support.Data_source.t_DataSource Sandwich.Error.t_Error)
            (fun ds ->
                let ds:Sandwich.Support.Data_source.t_DataSource = ds in
                Core.Result.impl__map #Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat
                  #Sandwich.Error.t_Error
                  #(Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat &
                    Sandwich.Support.Data_source.t_DataSource)
                  (Core.Result.impl__map_err #Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat
                      #i32
                      #Sandwich.Error.t_Error
                      (Protobuf.Enum_or_unknown.impl_1__enum_value #Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat
                          asn1ds.Sandwich_api_proto.Data_source.f_format
                        <:
                        Core.Result.t_Result Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat
                          i32)
                      (fun temp_0_ ->
                          let _:i32 = temp_0_ in
                          Core.Convert.f_into #Sandwich_proto.Errors.t_ASN1Error
                            #Sandwich.Error.t_Error
                            #FStar.Tactics.Typeclasses.solve
                            (Sandwich_proto.Errors.ASN1Error_ASN1ERROR_INVALID_FORMAT
                              <:
                              Sandwich_proto.Errors.t_ASN1Error)
                          <:
                          Sandwich.Error.t_Error)
                    <:
                    Core.Result.t_Result Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat
                      Sandwich.Error.t_Error)
                  (fun f ->
                      let f:Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat = f in
                      f, ds
                      <:
                      (Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat &
                        Sandwich.Support.Data_source.t_DataSource))
                <:
                Core.Result.t_Result
                  (Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat &
                    Sandwich.Support.Data_source.t_DataSource) Sandwich.Error.t_Error)
          <:
          Core.Result.t_Result
            (Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat &
              Sandwich.Support.Data_source.t_DataSource) Sandwich.Error.t_Error
        | _ ->
          Core.Result.Result_Err
          (Core.Convert.f_into #Sandwich_proto.Errors.t_DataSourceError
              #Sandwich.Error.t_Error
              #FStar.Tactics.Typeclasses.solve
              (Sandwich_proto.Errors.DataSourceError_DATASOURCEERROR_EMPTY
                <:
                Sandwich_proto.Errors.t_DataSourceError)
            <:
            Sandwich.Error.t_Error)
          <:
          Core.Result.t_Result
            (Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat &
              Sandwich.Support.Data_source.t_DataSource) Sandwich.Error.t_Error)

let configuration_read_private_key (private_key: Sandwich_api_proto.Private_key.t_PrivateKey) =
  Core.Result.impl__and_then #Sandwich_api_proto.Private_key.Private_key.t_Source
    #Sandwich.Error.t_Error
    #(Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat &
      Sandwich.Support.Data_source.t_DataSource)
    (Core.Option.impl__ok_or_else #Sandwich_api_proto.Private_key.Private_key.t_Source
        #Sandwich.Error.t_Error
        (Core.Option.impl__as_ref #Sandwich_api_proto.Private_key.Private_key.t_Source
            private_key.Sandwich_api_proto.Private_key.f_source
          <:
          Core.Option.t_Option Sandwich_api_proto.Private_key.Private_key.t_Source)
        (fun temp_0_ ->
            let _:Prims.unit = temp_0_ in
            Core.Convert.f_into #Sandwich_proto.Errors.t_DataSourceError
              #Sandwich.Error.t_Error
              #FStar.Tactics.Typeclasses.solve
              (Sandwich_proto.Errors.DataSourceError_DATASOURCEERROR_EMPTY
                <:
                Sandwich_proto.Errors.t_DataSourceError)
            <:
            Sandwich.Error.t_Error)
      <:
      Core.Result.t_Result Sandwich_api_proto.Private_key.Private_key.t_Source
        Sandwich.Error.t_Error)
    (fun oneof ->
        let oneof:Sandwich_api_proto.Private_key.Private_key.t_Source = oneof in
        match oneof with
        | Sandwich_api_proto.Private_key.Private_key.Source_Static asn1ds ->
          Core.Result.impl__and_then #Sandwich.Support.Data_source.t_DataSource
            #Sandwich.Error.t_Error
            #(Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat &
              Sandwich.Support.Data_source.t_DataSource)
            (Core.Result.impl__and_then #Sandwich_api_proto.Data_source.t_DataSource
                #Sandwich.Error.t_Error
                #Sandwich.Support.Data_source.t_DataSource
                (Core.Option.impl__ok_or_else #Sandwich_api_proto.Data_source.t_DataSource
                    #Sandwich.Error.t_Error
                    (Protobuf.Message_field.impl__as_ref #Sandwich_api_proto.Data_source.t_DataSource
                        asn1ds.Sandwich_api_proto.Data_source.f_data
                      <:
                      Core.Option.t_Option Sandwich_api_proto.Data_source.t_DataSource)
                    (fun temp_0_ ->
                        let _:Prims.unit = temp_0_ in
                        Core.Convert.f_into #Sandwich_proto.Errors.t_DataSourceError
                          #Sandwich.Error.t_Error
                          #FStar.Tactics.Typeclasses.solve
                          (Sandwich_proto.Errors.DataSourceError_DATASOURCEERROR_EMPTY
                            <:
                            Sandwich_proto.Errors.t_DataSourceError)
                        <:
                        Sandwich.Error.t_Error)
                  <:
                  Core.Result.t_Result Sandwich_api_proto.Data_source.t_DataSource
                    Sandwich.Error.t_Error)
                Core.Convert.TryFrom.try_from
              <:
              Core.Result.t_Result Sandwich.Support.Data_source.t_DataSource Sandwich.Error.t_Error)
            (fun ds ->
                let ds:Sandwich.Support.Data_source.t_DataSource = ds in
                Core.Result.impl__map #Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat
                  #Sandwich.Error.t_Error
                  #(Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat &
                    Sandwich.Support.Data_source.t_DataSource)
                  (Core.Result.impl__map_err #Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat
                      #i32
                      #Sandwich.Error.t_Error
                      (Protobuf.Enum_or_unknown.impl_1__enum_value #Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat
                          asn1ds.Sandwich_api_proto.Data_source.f_format
                        <:
                        Core.Result.t_Result Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat
                          i32)
                      (fun temp_0_ ->
                          let _:i32 = temp_0_ in
                          Core.Convert.f_into #Sandwich_proto.Errors.t_ASN1Error
                            #Sandwich.Error.t_Error
                            #FStar.Tactics.Typeclasses.solve
                            (Sandwich_proto.Errors.ASN1Error_ASN1ERROR_INVALID_FORMAT
                              <:
                              Sandwich_proto.Errors.t_ASN1Error)
                          <:
                          Sandwich.Error.t_Error)
                    <:
                    Core.Result.t_Result Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat
                      Sandwich.Error.t_Error)
                  (fun f ->
                      let f:Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat = f in
                      f, ds
                      <:
                      (Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat &
                        Sandwich.Support.Data_source.t_DataSource))
                <:
                Core.Result.t_Result
                  (Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat &
                    Sandwich.Support.Data_source.t_DataSource) Sandwich.Error.t_Error)
          <:
          Core.Result.t_Result
            (Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat &
              Sandwich.Support.Data_source.t_DataSource) Sandwich.Error.t_Error
        | _ ->
          Core.Result.Result_Err
          (Core.Convert.f_into #Sandwich_proto.Errors.t_DataSourceError
              #Sandwich.Error.t_Error
              #FStar.Tactics.Typeclasses.solve
              (Sandwich_proto.Errors.DataSourceError_DATASOURCEERROR_EMPTY
                <:
                Sandwich_proto.Errors.t_DataSourceError)
            <:
            Sandwich.Error.t_Error)
          <:
          Core.Result.t_Result
            (Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat &
              Sandwich.Support.Data_source.t_DataSource) Sandwich.Error.t_Error)

let configuration_get_mode_and_options
      (configuration: Sandwich_api_proto.Configuration.t_Configuration)
     =
  Core.Option.impl__ok_or #(Sandwich.Tunnel.Context.t_Mode & Sandwich_api_proto.Tls.t_TLSOptions)
    #Sandwich.Error.t_Error
    (Core.Option.impl__and_then #Sandwich_api_proto.Configuration.Configuration.t_Opts
        #(Sandwich.Tunnel.Context.t_Mode & Sandwich_api_proto.Tls.t_TLSOptions)
        (Core.Option.impl__as_ref #Sandwich_api_proto.Configuration.Configuration.t_Opts
            configuration.Sandwich_api_proto.Configuration.f_opts
          <:
          Core.Option.t_Option Sandwich_api_proto.Configuration.Configuration.t_Opts)
        (fun opts ->
            let opts:Sandwich_api_proto.Configuration.Configuration.t_Opts = opts in
            match opts with
            | Sandwich_api_proto.Configuration.Configuration.Opts_Client opt ->
              Core.Option.impl__map #Sandwich_api_proto.Tls.t_TLSOptions
                #(Sandwich.Tunnel.Context.t_Mode & Sandwich_api_proto.Tls.t_TLSOptions)
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
                    (Sandwich.Tunnel.Context.Mode_Client <: Sandwich.Tunnel.Context.t_Mode), tls
                    <:
                    (Sandwich.Tunnel.Context.t_Mode & Sandwich_api_proto.Tls.t_TLSOptions))
              <:
              Core.Option.t_Option
              (Sandwich.Tunnel.Context.t_Mode & Sandwich_api_proto.Tls.t_TLSOptions)
            | Sandwich_api_proto.Configuration.Configuration.Opts_Server opt ->
              Core.Option.impl__map #Sandwich_api_proto.Tls.t_TLSOptions
                #(Sandwich.Tunnel.Context.t_Mode & Sandwich_api_proto.Tls.t_TLSOptions)
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
                    (Sandwich.Tunnel.Context.Mode_Server <: Sandwich.Tunnel.Context.t_Mode), tls
                    <:
                    (Sandwich.Tunnel.Context.t_Mode & Sandwich_api_proto.Tls.t_TLSOptions))
              <:
              Core.Option.t_Option
              (Sandwich.Tunnel.Context.t_Mode & Sandwich_api_proto.Tls.t_TLSOptions)
            | _ ->
              Rust_primitives.Hax.never_to_any (Core.Panicking.panic "internal error: entered unreachable code"

                  <:
                  Rust_primitives.Hax.t_Never)
              <:
              Core.Option.t_Option
              (Sandwich.Tunnel.Context.t_Mode & Sandwich_api_proto.Tls.t_TLSOptions))
      <:
      Core.Option.t_Option (Sandwich.Tunnel.Context.t_Mode & Sandwich_api_proto.Tls.t_TLSOptions))
    (Core.Convert.f_into #Sandwich_proto.Errors.t_TLSConfigurationError
        #Sandwich.Error.t_Error
        #FStar.Tactics.Typeclasses.solve
        (Sandwich_proto.Errors.TLSConfigurationError_TLSCONFIGURATIONERROR_EMPTY
          <:
          Sandwich_proto.Errors.t_TLSConfigurationError)
      <:
      Sandwich.Error.t_Error)

let tls_options_get_x509_verifier (tls_options: Sandwich_api_proto.Tls.t_TLSOptions) =
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

let x509_verifier_verify_emptiness
      (x509_verifier: Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
     =
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

let build_ciphersuites_list
      (#v_S #impl_995885649_: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()] i2: Core.Convert.t_AsRef v_S string)
      (#[FStar.Tactics.Typeclasses.tcresolve ()]
          i3:
          Core.Iter.Traits.Collect.t_IntoIterator impl_995885649_)
      (ciphers: impl_995885649_)
      (invalid_chars: string)
     =
  let output:Alloc.String.t_String = Alloc.String.impl__String__new () in
  let output:Alloc.String.t_String =
    Core.Iter.Traits.Iterator.f_fold (Core.Iter.Traits.Collect.f_into_iter #i3.f_IntoIter
          #FStar.Tactics.Typeclasses.solve
          (Core.Iter.Traits.Collect.f_into_iter #impl_995885649_
              #FStar.Tactics.Typeclasses.solve
              ciphers
            <:
            i3.f_IntoIter)
        <:
        i3.f_IntoIter)
      output
      (fun output c ->
          let output:Alloc.String.t_String = output in
          let c:v_S = c in
          let! _:Prims.unit =
            if
              Sandwich.Support.contains_any_of (Core.Convert.f_as_ref #v_S
                    #string
                    #FStar.Tactics.Typeclasses.solve
                    c
                  <:
                  string)
                invalid_chars
            then
              let! hoist2:Rust_primitives.Hax.t_Never =
                Core.Ops.Control_flow.ControlFlow_Break
                (Core.Result.Result_Err
                  (Core.Convert.f_into #Sandwich_proto.Errors.t_TLSConfigurationError
                      #Sandwich.Error.t_Error
                      #FStar.Tactics.Typeclasses.solve
                      (Sandwich_proto.Errors.TLSConfigurationError_TLSCONFIGURATIONERROR_UNSUPPORTED_CONTROL_CHARACTERS
                        <:
                        Sandwich_proto.Errors.t_TLSConfigurationError))
                  <:
                  Core.Result.t_Result Alloc.String.t_String Sandwich.Error.t_Error)
                <:
                Core.Ops.Control_flow.t_ControlFlow
                  (Core.Result.t_Result Alloc.String.t_String Sandwich.Error.t_Error)
                  Rust_primitives.Hax.t_Never
              in
              Core.Ops.Control_flow.ControlFlow_Continue (Rust_primitives.Hax.never_to_any hoist2)
              <:
              Core.Ops.Control_flow.t_ControlFlow
                (Core.Result.t_Result Alloc.String.t_String Sandwich.Error.t_Error) Prims.unit
            else
              Core.Ops.Control_flow.ControlFlow_Continue ()
              <:
              Core.Ops.Control_flow.t_ControlFlow
                (Core.Result.t_Result Alloc.String.t_String Sandwich.Error.t_Error) Prims.unit
          in
          Core.Ops.Control_flow.ControlFlow_Continue
          (let output:Alloc.String.t_String =
              Alloc.String.impl__String__push_str output
                (Core.Convert.f_as_ref #v_S #string #FStar.Tactics.Typeclasses.solve c <: string)
            in
            let output:Alloc.String.t_String = Alloc.String.impl__String__push output ':' in
            output)
          <:
          Core.Ops.Control_flow.t_ControlFlow
            (Core.Result.t_Result Alloc.String.t_String Sandwich.Error.t_Error)
            Alloc.String.t_String)
  in
  let tmp0, out:(Alloc.String.t_String & Core.Option.t_Option char) =
    Alloc.String.impl__String__pop output
  in
  let output:Alloc.String.t_String = tmp0 in
  let _:Core.Option.t_Option char = out in
  Core.Result.Result_Ok output <: Core.Result.t_Result Alloc.String.t_String Sandwich.Error.t_Error
