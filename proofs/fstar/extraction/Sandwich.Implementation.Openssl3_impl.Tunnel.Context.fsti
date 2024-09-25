module Sandwich.Implementation.Openssl3_impl.Tunnel.Context
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Sandwich.Error in
  let open Sandwich.Error.Code in
  let open Sandwich.Implementation.Openssl3_impl.Tunnel.X509_verify_param in
  let open Sandwich.Support.Data_source in
  let open Sandwich.Tunnel.Context in
  let open Sandwich.Tunnel.Tls in
  ()

let impl_4__set_default_parameters__DISABLED: i32 = 0l

/// Converts a [`TlsVersion`] into the corresponding OpenSSL symbol.
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_2: Core.Convert.t_From i64 Sandwich.Tunnel.Tls.t_TlsVersion =
  {
    f_from_pre = (fun (tls_version: Sandwich.Tunnel.Tls.t_TlsVersion) -> true);
    f_from_post = (fun (tls_version: Sandwich.Tunnel.Tls.t_TlsVersion) (out: i64) -> true);
    f_from
    =
    fun (tls_version: Sandwich.Tunnel.Tls.t_TlsVersion) ->
      Core.Convert.f_into #u32
        #i64
        #FStar.Tactics.Typeclasses.solve
        (match tls_version with
          | Sandwich.Tunnel.Tls.TlsVersion_Tls12  -> Openssl3.v_TLS1_2_VERSION
          | Sandwich.Tunnel.Tls.TlsVersion_Tls13  -> Openssl3.v_TLS1_3_VERSION)
  }

/// Determines the verify mode depending on the mode and the existence of a
/// X509Verifier structure in the protobuf configuration.
val get_verify_mode_from_mode_and_x509_verifier
      (mode: Sandwich.Tunnel.Context.t_Mode)
      (x509_verifier: Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
    : Prims.Pure Sandwich.Tunnel.Tls.t_VerifyMode Prims.l_True (fun _ -> Prims.l_True)

/// Convenient wrapper around a `SSL_CTX`.
type t_SslContext = | SslContext : Core.Ptr.Non_null.t_NonNull Openssl3.t_ssl_ctx_st -> t_SslContext

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_3: Core.Fmt.t_Debug t_SslContext =
  {
    f_fmt_pre = (fun (self: t_SslContext) (f: Core.Fmt.t_Formatter) -> true);
    f_fmt_post
    =
    (fun
        (self: t_SslContext)
        (f: Core.Fmt.t_Formatter)
        (out1: (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error))
        ->
        true);
    f_fmt
    =
    fun (self: t_SslContext) (f: Core.Fmt.t_Formatter) ->
      let tmp0, out:(Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error) =
        Core.Fmt.impl_7__write_fmt f
          (Core.Fmt.impl_2__new_v1 (sz 2)
              (sz 1)
              (let list = ["SslContext("; ")"] in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                Rust_primitives.Hax.array_of_list 2 list)
              (let list =
                  [
                    Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
                      "core::fmt::rt::impl_1__new_pointer::<\n        lifetime!(something),\n        raw_pointer!(),\n    >(\n        &(deref(\n            &(core::ptr::non_null::impl_3__as_ptr::<\n                openssl3::t_ssl_ctx_st,\n            >(\n                proj_sandwich::implementation::openssl3_impl::tunnel::context::_0(\n                    deref(self),\n                ),\n            )),\n        )),\n    )"

                    <:
                    Core.Fmt.Rt.t_Argument
                  ]
                in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                Rust_primitives.Hax.array_of_list 1 list)
            <:
            Core.Fmt.t_Arguments)
      in
      let f:Core.Fmt.t_Formatter = tmp0 in
      let hax_temp_output:Core.Result.t_Result Prims.unit Core.Fmt.t_Error = out in
      f, hax_temp_output
      <:
      (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error)
  }

/// Disables session caching on a SSL context.
val impl__SslContext__disable_session_cache_mode (self: t_SslContext)
    : Prims.Pure Prims.unit Prims.l_True (fun _ -> Prims.l_True)

/// Sets the `SSL_MODE_RELEASE_BUFFERS` option.
/// See <https://www.openssl.org/docs/man3.2/man3/SSL_CTX_set_mode.html#SSL_MODE_RELEASE_BUFFERS>
/// for more information.
val impl__SslContext__set_mode_release_buffers (self: t_SslContext)
    : Prims.Pure Prims.unit Prims.l_True (fun _ -> Prims.l_True)

/// Sets the verification mode.
/// If a `X509Verifier` structure is present in the protobuf configuration,
/// then `SSL_VERIFY_PEER` is used in client mode, and `SSL_VERIFY_PEER | SSL_VERIFY_FAIL_IF_NO_PEER_CERT`
/// is used in server mode.
val impl__SslContext__set_verify_mode
      (self: t_SslContext)
      (verify_mode: Sandwich.Tunnel.Tls.t_VerifyMode)
    : Prims.Pure Prims.unit Prims.l_True (fun _ -> Prims.l_True)

/// Appends a certificate to the certificate chain the peer is going to expose
/// to remote.
/// This function takes a [`Pimpl`] as input since [`SSL_CTX_add_extra_chain_cert`]
/// takes the ownership of the `X509` object.
val impl__SslContext__add_extra_chain_cert
      (self: t_SslContext)
      (extra_certificate: Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_x509_st)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Loads the OpenSSL system-default trust anchors into context store.
val impl__SslContext__fill_certificate_trust_store_with_default_cas
      (self: t_SslContext)
      (x509_verifier: Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Initializes the trusted certificate store.
val impl__SslContext__initialize_trusted_cert_store (self: t_SslContext)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Sets supported application protocols (ALPN).
val impl__SslContext__set_alpn_protocols
      (#v_S #impl_995885649_: Type0)
      {| i6: Core.Convert.t_AsRef v_S string |}
      {| i6: Core.Iter.Traits.Collect.t_IntoIterator impl_995885649_ |}
      (self: t_SslContext)
      (protocols: impl_995885649_)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Sets the certificate to use when the remote peer requests an authentication.
/// This is used in server mode and in client mode when mTLS is enabled.
val impl__SslContext__set_certificate
      (self: t_SslContext)
      (certificate: Core.Ptr.Non_null.t_NonNull Openssl3.t_x509_st)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Sets the list of available ciphers using the default list provided
/// by OpenSSL.
/// This function is only useful for TLS 1.2.
val impl__SslContext__set_default_cipher_list (self: t_SslContext)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Sets the list of available ciphersuites using the default list provided
/// by OpenSSL.
/// This function is only useful for TLS 1.3.
val impl__SslContext__set_default_ciphersuites (self: t_SslContext)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Sets the default parameters for a SSL context.
val impl__SslContext__set_default_parameters (self: t_SslContext)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Sets the KEs to an SSL context.
val impl__SslContext__set_kes
      (#impl_488124255_: Type0)
      {| i5: Core.Convert.t_AsRef impl_488124255_ string |}
      (self: t_SslContext)
      (kes: t_Slice impl_488124255_)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Defines the maximum TLS version to use.
val impl__SslContext__set_maximum_tls_version
      (self: t_SslContext)
      (version: Sandwich.Tunnel.Tls.t_TlsVersion)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Defines the minimum TLS version to use.
val impl__SslContext__set_minimum_tls_version
      (self: t_SslContext)
      (version: Sandwich.Tunnel.Tls.t_TlsVersion)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Sets the minimum and the maximum TLS versions to use.
val impl__SslContext__set_min_and_max_tls_version
      (self: t_SslContext)
      (tls_options: Sandwich_api_proto.Tls.t_TLSOptions)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Sets the private key to use when the remote peer is requesting an authentication.
/// This is used in server mode and in clinet mode when mTLS is enabled.
/// This method also checks the consistency between the provided certificate
/// and the private key.
/// The certificate is provided using [`SslContext::set_certificate`].
val impl__SslContext__set_private_key
      (self: t_SslContext)
      (private_key: Core.Ptr.Non_null.t_NonNull Openssl3.t_evp_pkey_st)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Sets the trust parameter on the verification parameters object, depending
/// on the execution mode.
val impl__SslContext__set_trust (self: t_SslContext) (mode: Sandwich.Tunnel.Context.t_Mode)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Instantiates a new SSL object from an SSL context.
/// `Pimpl` is passed here instead of the regular `NonNull` to enforce the lifetime
/// of the resulting SSL object.
val ssl_context_new_ssl (ssl_context: Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_ctx_st)
    : Prims.Pure
      (Core.Result.t_Result (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_st)
          Sandwich.Error.t_Error) Prims.l_True (fun _ -> Prims.l_True)

/// Sets the list of available ciphers.
/// This function is only used for TLS 1.2.
/// Names will be converted to OpenSSL names using `OPENSSL_cipher_name`.
val impl__SslContext__set_cipher_list
      (#v_S #impl_995885649_: Type0)
      {| i2: Core.Convert.t_AsRef v_S string |}
      {| i3: Core.Iter.Traits.Collect.t_IntoIterator impl_995885649_ |}
      (self: t_SslContext)
      (ciphers: impl_995885649_)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Configures TLS 1.2.
val impl__SslContext__configure_tls12
      (self: t_SslContext)
      (tls12_config: Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSv12Config)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Sets the list of available ciphersuites for TLS 1.3.
val impl__SslContext__set_ciphersuites
      (#v_S #impl_995885649_: Type0)
      {| i4: Core.Convert.t_AsRef v_S string |}
      {| i4: Core.Iter.Traits.Collect.t_IntoIterator impl_995885649_ |}
      (self: t_SslContext)
      (ciphers: impl_995885649_)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Configures TLS 1.3.
val impl__SslContext__configure_tls13
      (self: t_SslContext)
      (tls13_config: Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSv13Config)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Instantiates a new SSL context (`SSL_CTX`).
val new_ssl_context
      (lib_ctx: Sandwich.Implementation.Openssl3_impl.t_LibCtx)
      (mode: Sandwich.Tunnel.Context.t_Mode)
    : Prims.Pure
      (Core.Result.t_Result (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_ctx_st)
          Sandwich.Error.t_Error) Prims.l_True (fun _ -> Prims.l_True)

/// Imports the trusted certificates from the protobuf configuration to the
/// OpenSSL SSL context.
val impl__SslContext__fill_certificate_trust_store
      (self: t_SslContext)
      (lib_ctx: Sandwich.Implementation.Openssl3_impl.t_LibCtx)
      (x509_verifier: Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Sets the X.509 identity to use.
/// If the client sets an X.509 identity, then it will expect a client
/// certificate request from the server, in order to establish a mutual
/// TLS tunnel (mTLS).
val impl__SslContext__set_identity
      (self: t_SslContext)
      (lib_ctx: Sandwich.Implementation.Openssl3_impl.t_LibCtx)
      (identity: Core.Option.t_Option Sandwich_api_proto.Tls.t_X509Identity)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl: Core.Fmt.t_Debug Sandwich.Implementation.Openssl3_impl.Tunnel.t_Context =
  {
    f_fmt_pre
    =
    (fun (self: Sandwich.Implementation.Openssl3_impl.Tunnel.t_Context) (f: Core.Fmt.t_Formatter) ->
        true);
    f_fmt_post
    =
    (fun
        (self: Sandwich.Implementation.Openssl3_impl.Tunnel.t_Context)
        (f: Core.Fmt.t_Formatter)
        (out1: (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error))
        ->
        true);
    f_fmt
    =
    fun (self: Sandwich.Implementation.Openssl3_impl.Tunnel.t_Context) (f: Core.Fmt.t_Formatter) ->
      let tmp0, out:(Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error) =
        Core.Fmt.impl_7__write_fmt f
          (Core.Fmt.impl_2__new_v1 (sz 2)
              (sz 1)
              (let list = ["OpenSSL3Context(mode="; ")"] in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                Rust_primitives.Hax.array_of_list 2 list)
              (let list =
                  [
                    Core.Fmt.Rt.impl_1__new_debug #Sandwich.Tunnel.Context.t_Mode
                      self.Sandwich.Implementation.Openssl3_impl.Tunnel.f_mode
                    <:
                    Core.Fmt.Rt.t_Argument
                  ]
                in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                Rust_primitives.Hax.array_of_list 1 list)
            <:
            Core.Fmt.t_Arguments)
      in
      let f:Core.Fmt.t_Formatter = tmp0 in
      let hax_temp_output:Core.Result.t_Result Prims.unit Core.Fmt.t_Error = out in
      f, hax_temp_output
      <:
      (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error)
  }

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_1: Core.Borrow.t_Borrow Sandwich.Implementation.Openssl3_impl.Tunnel.t_Context
  Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements =
  {
    f_borrow_pre = (fun (self: Sandwich.Implementation.Openssl3_impl.Tunnel.t_Context) -> true);
    f_borrow_post
    =
    (fun
        (self: Sandwich.Implementation.Openssl3_impl.Tunnel.t_Context)
        (out: Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements)
        ->
        true);
    f_borrow
    =
    fun (self: Sandwich.Implementation.Openssl3_impl.Tunnel.t_Context) ->
      self.Sandwich.Implementation.Openssl3_impl.Tunnel.f_security_requirements
  }

/// Instantiates a new SSL object.
val impl_5__new_ssl (self: Sandwich.Implementation.Openssl3_impl.Tunnel.t_Context)
    : Prims.Pure
      (Core.Result.t_Result (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_st)
          Sandwich.Error.t_Error) Prims.l_True (fun _ -> Prims.l_True)

/// Returns the security requirements of the context.
val impl_5__security_requirements (self: Sandwich.Implementation.Openssl3_impl.Tunnel.t_Context)
    : Prims.Pure Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Instantiates a new [`Context`] from a [protobuf configuration](`pb_api::Configuration`)
/// and a top-level context.
val impl_5__try_from
      (lib_ctx: Sandwich.Implementation.Openssl3_impl.t_LibCtx)
      (configuration: Sandwich_api_proto.Configuration.t_Configuration)
    : Prims.Pure
      (Core.Result.t_Result Sandwich.Implementation.Openssl3_impl.Tunnel.t_Context
          Sandwich.Error.t_Error) Prims.l_True (fun _ -> Prims.l_True)

/// Creates a new tunnel.
val impl_5__new_tunnel
      (self: Sandwich.Implementation.Openssl3_impl.Tunnel.t_Context)
      (io: Sandwich.Tunnel.Io.t_BoxedIO)
      (configuration: Sandwich_api_proto.Tunnel.t_TunnelConfiguration)
    : Prims.Pure
      (Core.Result.t_Result
          (Core.Pin.t_Pin
            (Alloc.Boxed.t_Box Sandwich.Implementation.Openssl3_impl.Tunnel.t_Tunnel
                Alloc.Alloc.t_Global)) (Sandwich.Error.t_Error & Sandwich.Tunnel.Io.t_BoxedIO))
      Prims.l_True
      (fun _ -> Prims.l_True)
