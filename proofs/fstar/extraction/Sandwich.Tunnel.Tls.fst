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

let t_TlsVersion_cast_to_repr (x: t_TlsVersion) =
  match x with
  | TlsVersion_Tls12  -> isz 0
  | TlsVersion_Tls13  -> isz 1

let t_VerifyMode_cast_to_repr (x: t_VerifyMode) =
  match x with
  | VerifyMode_None  -> isz 0
  | VerifyMode_Peer  -> isz 1
  | VerifyMode_Mutual  -> isz 3

let get_tls13_config (cfg: Sandwich_api_proto.Configuration.t_Configuration) =
  Rust_primitives.Hax.Control_flow_monad.Mexception.run (match
        Core.Option.impl__as_ref #Sandwich_api_proto.Configuration.Configuration.t_Opts
          cfg.Sandwich_api_proto.Configuration.f_opts
        <:
        Core.Option.t_Option Sandwich_api_proto.Configuration.Configuration.t_Opts
      with
      | Core.Option.Option_Some opts ->
        let! hoist1:Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSOptions =
          match opts with
          | Sandwich_api_proto.Configuration.Configuration.Opts_Client c ->
            (match
                Core.Option.impl__as_ref #Sandwich_api_proto.Configuration.Client_options.t_Opts
                  c.Sandwich_api_proto.Configuration.f_opts
              with
              | Core.Option.Option_Some opts ->
                Core.Ops.Control_flow.ControlFlow_Continue
                (match opts with
                  | Sandwich_api_proto.Configuration.Client_options.Opts_Tls tls ->
                    Protobuf.Message_field.impl__as_ref #Sandwich_api_proto.Tls.t_TLSOptions
                      tls.Sandwich_api_proto.Tls.f_common_options
                  | _ ->
                    Rust_primitives.Hax.never_to_any (Core.Panicking.panic "internal error: entered unreachable code"

                        <:
                        Rust_primitives.Hax.t_Never))
                <:
                Core.Ops.Control_flow.t_ControlFlow
                  (Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSv13Config)
                  (Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSOptions)
              | Core.Option.Option_None  ->
                Core.Ops.Control_flow.ControlFlow_Break
                (Core.Option.Option_None
                  <:
                  Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSv13Config)
                <:
                Core.Ops.Control_flow.t_ControlFlow
                  (Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSv13Config)
                  (Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSOptions))
          | Sandwich_api_proto.Configuration.Configuration.Opts_Server c ->
            (match
                Core.Option.impl__as_ref #Sandwich_api_proto.Configuration.Server_options.t_Opts
                  c.Sandwich_api_proto.Configuration.f_opts
              with
              | Core.Option.Option_Some opts ->
                Core.Ops.Control_flow.ControlFlow_Continue
                (match opts with
                  | Sandwich_api_proto.Configuration.Server_options.Opts_Tls tls ->
                    Protobuf.Message_field.impl__as_ref #Sandwich_api_proto.Tls.t_TLSOptions
                      tls.Sandwich_api_proto.Tls.f_common_options
                  | _ ->
                    Rust_primitives.Hax.never_to_any (Core.Panicking.panic "internal error: entered unreachable code"

                        <:
                        Rust_primitives.Hax.t_Never))
                <:
                Core.Ops.Control_flow.t_ControlFlow
                  (Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSv13Config)
                  (Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSOptions)
              | Core.Option.Option_None  ->
                Core.Ops.Control_flow.ControlFlow_Break
                (Core.Option.Option_None
                  <:
                  Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSv13Config)
                <:
                Core.Ops.Control_flow.t_ControlFlow
                  (Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSv13Config)
                  (Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSOptions))
          | _ ->
            Core.Ops.Control_flow.ControlFlow_Continue
            (Rust_primitives.Hax.never_to_any (Core.Panicking.panic "internal error: entered unreachable code"

                  <:
                  Rust_primitives.Hax.t_Never))
            <:
            Core.Ops.Control_flow.t_ControlFlow
              (Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSv13Config)
              (Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSOptions)
        in
        Core.Ops.Control_flow.ControlFlow_Continue
        (Core.Option.impl__and_then #Sandwich_api_proto.Tls.t_TLSOptions
            #Sandwich_api_proto.Tls.t_TLSv13Config
            hoist1
            (fun common_options ->
                let common_options:Sandwich_api_proto.Tls.t_TLSOptions = common_options in
                Protobuf.Message_field.impl__as_ref #Sandwich_api_proto.Tls.t_TLSv13Config
                  common_options.Sandwich_api_proto.Tls.f_tls13
                <:
                Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSv13Config))
        <:
        Core.Ops.Control_flow.t_ControlFlow
          (Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSv13Config)
          (Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSv13Config)
      | Core.Option.Option_None  ->
        Core.Ops.Control_flow.ControlFlow_Continue
        (Core.Option.Option_None <: Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSv13Config)
        <:
        Core.Ops.Control_flow.t_ControlFlow
          (Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSv13Config)
          (Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSv13Config))

let impl__TunnelSecurityRequirements__new (_: Prims.unit) =
  { f_allow_expired_certificate = false } <: t_TunnelSecurityRequirements

let impl__TunnelSecurityRequirements__openssl3_assess_x509_store_error
      (self: t_TunnelSecurityRequirements)
      (error: i32)
     =
  Rust_primitives.Hax.Control_flow_monad.Mexception.run (let! _:Prims.unit =
        if
          self.f_allow_expired_certificate &&
          error =. (cast (Openssl3.v_X509_V_ERR_CERT_HAS_EXPIRED <: u32) <: i32)
        then
          let! hoist3:Rust_primitives.Hax.t_Never =
            Core.Ops.Control_flow.ControlFlow_Break true
            <:
            Core.Ops.Control_flow.t_ControlFlow bool Rust_primitives.Hax.t_Never
          in
          Core.Ops.Control_flow.ControlFlow_Continue (Rust_primitives.Hax.never_to_any hoist3)
          <:
          Core.Ops.Control_flow.t_ControlFlow bool Prims.unit
        else
          Core.Ops.Control_flow.ControlFlow_Continue ()
          <:
          Core.Ops.Control_flow.t_ControlFlow bool Prims.unit
      in
      Core.Ops.Control_flow.ControlFlow_Continue false
      <:
      Core.Ops.Control_flow.t_ControlFlow bool bool)
