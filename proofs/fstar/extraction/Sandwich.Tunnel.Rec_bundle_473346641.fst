module Sandwich.Tunnel.Rec_bundle_473346641
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Sandwich.Error in
  let open Sandwich.Error.Code in
  let open Sandwich.Tunnel.Tls in
  ()

/// Wrapper of the OpenSSL SSL object.
type t_Ssl = | Ssl : Core.Ptr.Non_null.t_NonNull Openssl3.t_ssl_st -> t_Ssl

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

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_1: Core.Borrow.t_Borrow t_Context116464909 Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements =
  {
    f_borrow_pre = (fun (self: t_Context116464909) -> true);
    f_borrow_post
    =
    (fun (self: t_Context116464909) (out: Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements) -> true);
    f_borrow = fun (self: t_Context116464909) -> self.f_security_requirements
  }

/// Returns the security requirements of the context.
let security_requirements (self: t_Context116464909)
    : Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements =
  Core.Borrow.f_borrow #t_Context116464909
    #Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements
    #FStar.Tactics.Typeclasses.solve
    self

/// A Sandwich context.
type t_Context665818913 = | Context665818913_OpenSSL3 : t_Context116464909 -> t_Context665818913

/// Tunnel builder.
/// This is a convenient aggregate of useful values to build a tunnel.
type t_TunnelBuilder = {
  f_ssl_ctx:t_Context116464909;
  f_io:Sandwich.Tunnel.Io.t_BoxedIO;
  f_configuration:Sandwich_api_proto.Tunnel.t_TunnelConfiguration
}

/// Instantiates a new SSL object.
assume
val new_ssl': self: t_Context116464909
  -> Core.Result.t_Result (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_st) Sandwich.Error.t_Error

let new_ssl = new_ssl'

/// Creates a new Sandwich BIO and attach it to the SSL object.
assume
val create_and_attach_bio': self: t_Ssl -> Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let create_and_attach_bio = create_and_attach_bio'

/// Sets the server name indication (SNI).
assume
val set_server_name_indication':
    #impl_488124255_: Type0 ->
    {| i9: Core.Convert.t_AsRef impl_488124255_ string |} ->
    self: t_Ssl ->
    sni: impl_488124255_
  -> Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let set_server_name_indication = set_server_name_indication'

/// Sets the required Subject Alternative Names (SAN) specified in the [`pb_api::TunnelVerifier`]
/// object.
assume
val set_subject_alternative_names':
    self: t_Ssl ->
    tunnel_verifier: Core.Option.t_Option Sandwich_api_proto.Verifiers.t_TunnelVerifier
  -> Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let set_subject_alternative_names = set_subject_alternative_names'

/// Verifies the tunnel configuration against the security requirements that come
/// from the context.
let verify_tunnel_verifier
      (tunnel_verifier: Core.Option.t_Option Sandwich_api_proto.Verifiers.t_TunnelVerifier)
      (security_requirements: Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements)
    : Core.Result.t_Result Prims.unit Sandwich.Error.t_Error =
  match tunnel_verifier with
  | Core.Option.Option_Some tunnel_verifier ->
    Sandwich.Tunnel.Tls.f_run_sanitizer_checks #Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements
      #Sandwich_api_proto.Verifiers.t_TunnelVerifier
      #FStar.Tactics.Typeclasses.solve
      security_requirements
      tunnel_verifier
  | _ ->
    Core.Result.Result_Err
    (Core.Convert.f_into #(Sandwich_proto.Errors.t_TunnelError & string)
        #Sandwich.Error.t_Error
        #FStar.Tactics.Typeclasses.solve
        ((Sandwich_proto.Errors.TunnelError_TUNNELERROR_VERIFIER
            <:
            Sandwich_proto.Errors.t_TunnelError),
          "empty verifier"
          <:
          (Sandwich_proto.Errors.t_TunnelError & string)))
    <:
    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

/// Prepares a tunnel structure.
let prepare_ssl (self: t_TunnelBuilder)
    : Core.Result.t_Result (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_st) Sandwich.Error.t_Error =
  let tunnel_verifier:Core.Option.t_Option Sandwich_api_proto.Verifiers.t_TunnelVerifier =
    Protobuf.Message_field.impl__as_ref #Sandwich_api_proto.Verifiers.t_TunnelVerifier
      self.f_configuration.Sandwich_api_proto.Tunnel.f_verifier
  in
  let security_requirements:Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements =
    security_requirements self.f_ssl_ctx
  in
  match verify_tunnel_verifier tunnel_verifier security_requirements with
  | Core.Result.Result_Ok _ ->
    (match new_ssl self.f_ssl_ctx with
      | Core.Result.Result_Ok ssl ->
        let ssl_wrapped:t_Ssl =
          t_Ssl (Sandwich.Support.Pimpl.impl_2__as_nonnull #Openssl3.t_ssl_st ssl) <: t_Ssl
        in
        (match set_subject_alternative_names ssl_wrapped tunnel_verifier with
          | Core.Result.Result_Ok _ ->
            (match
                set_server_name_indication #Alloc.String.t_String
                  ssl_wrapped
                  self.f_configuration.Sandwich_api_proto.Tunnel.f_server_name_indication
              with
              | Core.Result.Result_Ok _ ->
                (match create_and_attach_bio ssl_wrapped with
                  | Core.Result.Result_Ok _ ->
                    Core.Result.Result_Ok ssl
                    <:
                    Core.Result.t_Result (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_st)
                      Sandwich.Error.t_Error
                  | Core.Result.Result_Err err ->
                    Core.Result.Result_Err err
                    <:
                    Core.Result.t_Result (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_st)
                      Sandwich.Error.t_Error)
              | Core.Result.Result_Err err ->
                Core.Result.Result_Err err
                <:
                Core.Result.t_Result (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_st)
                  Sandwich.Error.t_Error)
          | Core.Result.Result_Err err ->
            Core.Result.Result_Err err
            <:
            Core.Result.t_Result (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_st)
              Sandwich.Error.t_Error)
      | Core.Result.Result_Err err ->
        Core.Result.Result_Err err
        <:
        Core.Result.t_Result (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_st)
          Sandwich.Error.t_Error)
  | Core.Result.Result_Err err ->
    Core.Result.Result_Err err
    <:
    Core.Result.t_Result (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_st) Sandwich.Error.t_Error

/// A tunnel, wrapper around a SSL object.
type t_Tunnel364847772 = {
  f__ssl_ctx:t_Context116464909;
  f_ssl:Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_st;
  f_security_requirements:Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements;
  f_io:Sandwich.Tunnel.Io.t_BoxedIO;
  f_state:Sandwich_proto.Tunnel.t_State
}

/// Attaches the security requirements structure to the `SSL` object
/// through `ex_data`.
assume
val attach_security_requirements': self: Core.Pin.t_Pin t_Tunnel364847772
  -> Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let attach_security_requirements = attach_security_requirements'

/// Attaches itself to the current BIO.
assume
val attach_to_bio': self: Core.Pin.t_Pin t_Tunnel364847772
  -> Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let attach_to_bio = attach_to_bio'

/// A tunnel.
type t_Tunnel70284935 =
  | Tunnel70284935_OpenSSL3 :
      Core.Pin.t_Pin (Alloc.Boxed.t_Box t_Tunnel364847772 Alloc.Alloc.t_Global)
    -> t_Tunnel70284935

/// Builds a tunnel.
let build (self: t_TunnelBuilder)
    : Core.Result.t_Result
      (Core.Pin.t_Pin (Alloc.Boxed.t_Box t_Tunnel364847772 Alloc.Alloc.t_Global))
      (Sandwich.Error.t_Error & Sandwich.Tunnel.Io.t_BoxedIO) =
  match prepare_ssl self with
  | Core.Result.Result_Ok ssl ->
    let ssl:Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_st = ssl in
    let tun:Core.Pin.t_Pin (Alloc.Boxed.t_Box t_Tunnel364847772 Alloc.Alloc.t_Global) =
      Alloc.Boxed.impl__pin #t_Tunnel364847772
        ({
            f__ssl_ctx = self.f_ssl_ctx;
            f_ssl = ssl;
            f_io = self.f_io;
            f_security_requirements
            =
            Core.Clone.f_clone #Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements
              #FStar.Tactics.Typeclasses.solve
              (security_requirements self.f_ssl_ctx
                <:
                Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements)
            <:
            Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements;
            f_state
            =
            Sandwich_proto.Tunnel.State_STATE_NOT_CONNECTED <: Sandwich_proto.Tunnel.t_State
          }
          <:
          t_Tunnel364847772)
    in
    (match
        attach_security_requirements (Core.Pin.impl_6__as_ref #(Alloc.Boxed.t_Box t_Tunnel364847772
                  Alloc.Alloc.t_Global)
              tun
            <:
            Core.Pin.t_Pin t_Tunnel364847772)
      with
      | Core.Result.Result_Err e ->
        Core.Result.Result_Err
        (e,
          (Core.Pin.impl_8__into_inner_unchecked #(Alloc.Boxed.t_Box t_Tunnel364847772
                  Alloc.Alloc.t_Global)
              tun)
            .f_io
          <:
          (Sandwich.Error.t_Error & Sandwich.Tunnel.Io.t_BoxedIO))
        <:
        Core.Result.t_Result
          (Core.Pin.t_Pin (Alloc.Boxed.t_Box t_Tunnel364847772 Alloc.Alloc.t_Global))
          (Sandwich.Error.t_Error & Sandwich.Tunnel.Io.t_BoxedIO)
      | _ ->
        match
          attach_to_bio (Core.Pin.impl_6__as_ref #(Alloc.Boxed.t_Box t_Tunnel364847772
                    Alloc.Alloc.t_Global)
                tun
              <:
              Core.Pin.t_Pin t_Tunnel364847772)
        with
        | Core.Result.Result_Err e ->
          Core.Result.Result_Err
          (e,
            (Core.Pin.impl_8__into_inner_unchecked #(Alloc.Boxed.t_Box t_Tunnel364847772
                    Alloc.Alloc.t_Global)
                tun)
              .f_io
            <:
            (Sandwich.Error.t_Error & Sandwich.Tunnel.Io.t_BoxedIO))
          <:
          Core.Result.t_Result
            (Core.Pin.t_Pin (Alloc.Boxed.t_Box t_Tunnel364847772 Alloc.Alloc.t_Global))
            (Sandwich.Error.t_Error & Sandwich.Tunnel.Io.t_BoxedIO)
        | _ ->
          Core.Result.Result_Ok tun
          <:
          Core.Result.t_Result
            (Core.Pin.t_Pin (Alloc.Boxed.t_Box t_Tunnel364847772 Alloc.Alloc.t_Global))
            (Sandwich.Error.t_Error & Sandwich.Tunnel.Io.t_BoxedIO))
  | Core.Result.Result_Err e ->
    Core.Result.Result_Err (e, self.f_io <: (Sandwich.Error.t_Error & Sandwich.Tunnel.Io.t_BoxedIO))
    <:
    Core.Result.t_Result (Core.Pin.t_Pin (Alloc.Boxed.t_Box t_Tunnel364847772 Alloc.Alloc.t_Global))
      (Sandwich.Error.t_Error & Sandwich.Tunnel.Io.t_BoxedIO)

/// Creates a new tunnel.
let new_tunnel235737456
      (self: t_Context116464909)
      (io: Sandwich.Tunnel.Io.t_BoxedIO)
      (configuration: Sandwich_api_proto.Tunnel.t_TunnelConfiguration)
    : Core.Result.t_Result
      (Core.Pin.t_Pin (Alloc.Boxed.t_Box t_Tunnel364847772 Alloc.Alloc.t_Global))
      (Sandwich.Error.t_Error & Sandwich.Tunnel.Io.t_BoxedIO) =
  build ({ f_ssl_ctx = self; f_io = io; f_configuration = configuration } <: t_TunnelBuilder)

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
  | (Context665818913_OpenSSL3 c: t_Context665818913) ->
    match new_tunnel235737456 c io configuration with
    | Core.Result.Result_Ok hoist5 ->
      Core.Result.Result_Ok (Tunnel70284935_OpenSSL3 hoist5 <: t_Tunnel70284935)
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
