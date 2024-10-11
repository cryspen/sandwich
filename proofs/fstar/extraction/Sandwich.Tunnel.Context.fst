module Sandwich.Tunnel.Context
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Sandwich.Error in
  let open Sandwich.Error.Code in
  let open Sandwich.Implementation.Openssl3.Tunnel.Context in
  ()

let t_Mode_cast_to_repr (x: t_Mode) =
  match x with
  | Mode_Client  -> isz 0
  | Mode_Server  -> isz 1

let impl_1__try_from
      (context: Sandwich.t_Context)
      (configuration: Sandwich_api_proto.Configuration.t_Configuration)
     =
  match Sandwich.Tunnel.Tls.Security.assert_compliance configuration with
  | Core.Result.Result_Ok _ ->
    Core.Result.impl__map_err #t_Context
      #Sandwich.Error.t_Error
      #Sandwich.Error.t_Error
      (Core.Result.impl__and_then #Sandwich_api_proto.Configuration.t_Implementation
          #Sandwich.Error.t_Error
          #t_Context
          (Core.Result.impl__map_err #Sandwich_api_proto.Configuration.t_Implementation
              #i32
              #Sandwich.Error.t_Error
              (Protobuf.Enum_or_unknown.impl_1__enum_value #Sandwich_api_proto.Configuration.t_Implementation
                  configuration.Sandwich_api_proto.Configuration.f_impl___
                <:
                Core.Result.t_Result Sandwich_api_proto.Configuration.t_Implementation i32)
              (fun temp_0_ ->
                  let _:i32 = temp_0_ in
                  ((Sandwich.Error.impl__Error__new () <: Sandwich.Error.t_Error) >>!
                    (Sandwich_proto.Errors.ConfigurationError_CONFIGURATIONERROR_INVALID_IMPLEMENTATION
                      <:
                      Sandwich_proto.Errors.t_ConfigurationError)
                    <:
                    Sandwich.Error.t_Error) >>!
                  (Sandwich_proto.Errors.ConfigurationError_CONFIGURATIONERROR_INVALID
                    <:
                    Sandwich_proto.Errors.t_ConfigurationError)
                  <:
                  Sandwich.Error.t_Error)
            <:
            Core.Result.t_Result Sandwich_api_proto.Configuration.t_Implementation
              Sandwich.Error.t_Error)
          (fun v ->
              let v:Sandwich_api_proto.Configuration.t_Implementation = v in
              match v with
              | Sandwich_api_proto.Configuration.Implementation_IMPL_OPENSSL3_OQS_PROVIDER  ->
                Core.Result.impl__map_err #t_Context
                  #Sandwich.Error.t_Error
                  #Sandwich.Error.t_Error
                  (Core.Result.impl__map #Sandwich.Implementation.Openssl3.Tunnel.Context.t_Context
                      #Sandwich.Error.t_Error
                      #t_Context
                      (Sandwich.Implementation.Openssl3.Tunnel.Context.impl_5__try_from context
                          configuration
                        <:
                        Core.Result.t_Result
                          Sandwich.Implementation.Openssl3.Tunnel.Context.t_Context
                          Sandwich.Error.t_Error)
                      Sandwich.Tunnel.Context.Context.v_OpenSSL3
                    <:
                    Core.Result.t_Result t_Context Sandwich.Error.t_Error)
                  (fun e ->
                      let e:Sandwich.Error.t_Error = e in
                      e >>!
                      (Sandwich_proto.Errors.ConfigurationError_CONFIGURATIONERROR_INVALID
                        <:
                        Sandwich_proto.Errors.t_ConfigurationError)
                      <:
                      Sandwich.Error.t_Error)
                <:
                Core.Result.t_Result t_Context Sandwich.Error.t_Error
              | _ ->
                Core.Result.Result_Err
                (((Sandwich.Error.impl__Error__new () <: Sandwich.Error.t_Error) >>!
                    (Sandwich_proto.Errors.ConfigurationError_CONFIGURATIONERROR_INVALID_IMPLEMENTATION
                      <:
                      Sandwich_proto.Errors.t_ConfigurationError)
                    <:
                    Sandwich.Error.t_Error) >>!
                  (Sandwich_proto.Errors.ConfigurationError_CONFIGURATIONERROR_INVALID
                    <:
                    Sandwich_proto.Errors.t_ConfigurationError)
                  <:
                  Sandwich.Error.t_Error)
                <:
                Core.Result.t_Result t_Context Sandwich.Error.t_Error)
        <:
        Core.Result.t_Result t_Context Sandwich.Error.t_Error)
      (fun e ->
          let e:Sandwich.Error.t_Error = e in
          e >>!
          (Sandwich_proto.Errors.APIError_APIERROR_CONFIGURATION <: Sandwich_proto.Errors.t_APIError
          )
          <:
          Sandwich.Error.t_Error)
  | Core.Result.Result_Err err ->
    Core.Result.Result_Err err <: Core.Result.t_Result t_Context Sandwich.Error.t_Error

let impl_1__new_tunnel
      (self: t_Context)
      (io: Sandwich.Tunnel.Io.t_BoxedIO)
      (configuration: Sandwich_api_proto.Tunnel.t_TunnelConfiguration)
     =
  match self with
  | (Context_OpenSSL3 c: t_Context) ->
    match Sandwich.Implementation.Openssl3.Tunnel.Context.impl_5__new_tunnel c io configuration with
    | Core.Result.Result_Ok hoist32 ->
      Core.Result.Result_Ok (Sandwich.Tunnel.Tunnel_OpenSSL3 hoist32 <: Sandwich.Tunnel.t_Tunnel)
      <:
      Core.Result.t_Result Sandwich.Tunnel.t_Tunnel
        (Sandwich.Error.t_Error & Sandwich.Tunnel.Io.t_BoxedIO)
    | Core.Result.Result_Err err ->
      Core.Result.Result_Err err
      <:
      Core.Result.t_Result Sandwich.Tunnel.t_Tunnel
        (Sandwich.Error.t_Error & Sandwich.Tunnel.Io.t_BoxedIO)
