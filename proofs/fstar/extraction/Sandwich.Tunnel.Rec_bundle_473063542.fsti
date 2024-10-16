module Sandwich.Tunnel.Rec_bundle_473063542
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Protobuf.Enums in
  let open Sandwich in
  let open Sandwich.Error in
  let open Sandwich.Error.Code in
  let open Sandwich.Implementation.Openssl3_impl.Error in
  let open Sandwich.Implementation.Openssl3_impl.Tunnel.X509_verify_param in
  let open Sandwich.Support.Data_source in
  let open Sandwich.Tunnel.Context in
  let open Sandwich.Tunnel.Tls in
  let open Sandwich_proto.Tunnel in
  let open Std.Io in
  ()

/// A wrapper around a BIO.
type t_Bio = | Bio : Core.Ptr.Non_null.t_NonNull Openssl3.t_bio_st -> t_Bio

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl: Core.Fmt.t_Debug t_Bio =
  {
    f_fmt_pre = (fun (self: t_Bio) (f: Core.Fmt.t_Formatter) -> true);
    f_fmt_post
    =
    (fun
        (self: t_Bio)
        (f: Core.Fmt.t_Formatter)
        (out1: (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error))
        ->
        true);
    f_fmt
    =
    fun (self: t_Bio) (f: Core.Fmt.t_Formatter) ->
      let tmp0, out:(Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error) =
        Core.Fmt.impl_9__write_fmt f
          (Core.Fmt.impl_2__new_v1 (sz 2)
              (sz 1)
              (let list = ["SandwichOpenSSL3BIO("; ")"] in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                Rust_primitives.Hax.array_of_list 2 list)
              (let list =
                  [
                    Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
                      "core::fmt::rt::impl_1__new_pointer::<\n        lifetime!(something),\n        raw_pointer!(),\n    >(\n        &(deref(\n            &(core::ptr::non_null::impl_3__as_ptr::<\n                openssl3::t_bio_st,\n            >(\n                proj_sandwich::implementation::openssl3_impl::tunnel::bio_method::_0(\n                    deref(self),\n                ),\n            )),\n        )),\n    )"

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

/// Clears flags.
val clear_flags
      (#impl_765196419_: Type0)
      {| i1: Core.Convert.t_Into impl_765196419_ i32 |}
      (self: t_Bio)
      (flags: impl_765196419_)
    : Prims.Pure Prims.unit Prims.l_True (fun _ -> Prims.l_True)

/// Clears the BIO retry flag.
val clear_retry_flag (self: t_Bio) : Prims.Pure Prims.unit Prims.l_True (fun _ -> Prims.l_True)

/// Declares the BIO as closed.
val declare_closed (self: t_Bio) : Prims.Pure Prims.unit Prims.l_True (fun _ -> Prims.l_True)

/// Sets flags.
val set_flags
      (#impl_765196419_: Type0)
      {| i2: Core.Convert.t_Into impl_765196419_ i32 |}
      (self: t_Bio)
      (flags: impl_765196419_)
    : Prims.Pure Prims.unit Prims.l_True (fun _ -> Prims.l_True)

/// Sets the 'retry read' flag.
val set_retry_read_flag (self: t_Bio) : Prims.Pure Prims.unit Prims.l_True (fun _ -> Prims.l_True)

/// Sets the 'retry write' flag.
val set_retry_write_flag (self: t_Bio) : Prims.Pure Prims.unit Prims.l_True (fun _ -> Prims.l_True)

(* item error backend: (reject_RawOrMutPointer) ExplicitRejection { reason: "a node of kind [Raw_pointer] have been found in the AST" }
Last available AST for this item:

/// BIO create callback (never used).
#[cfg(feature = "tunnel")]
#[cfg(feature = "openssl3")]
#[deny(bare_trait_objects)]
#[feature(register_tool)]
#[register_tool(_hax)]
unsafe fn bio_create(_bio: raw_pointer!()) -> int {
    { 1 }
}


Last AST:
/** print_rust: pitem: not implemented  (item: { Concrete_ident.T.def_id =
  { Concrete_ident.Imported.krate = "sandwich";
    path =
    [{ Concrete_ident.Imported.data =
       (Concrete_ident.Imported.TypeNs "tunnel"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "rec_bundle");
        disambiguator = 473063542 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.ValueNs "bio_create"); disambiguator = 0 }
      ]
    };
  kind = Concrete_ident.Kind.Value }) */
const _: () = ();
 *)

(* item error backend: (reject_RawOrMutPointer) ExplicitRejection { reason: "a node of kind [Raw_pointer] have been found in the AST" }
Last available AST for this item:

/// BIO destroy callback (never used).
#[cfg(feature = "tunnel")]
#[cfg(feature = "openssl3")]
#[deny(bare_trait_objects)]
#[feature(register_tool)]
#[register_tool(_hax)]
unsafe fn bio_destroy(_bio: raw_pointer!()) -> int {
    { 1 }
}


Last AST:
/** print_rust: pitem: not implemented  (item: { Concrete_ident.T.def_id =
  { Concrete_ident.Imported.krate = "sandwich";
    path =
    [{ Concrete_ident.Imported.data =
       (Concrete_ident.Imported.TypeNs "tunnel"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "rec_bundle");
        disambiguator = 473063542 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.ValueNs "bio_destroy"); disambiguator = 0 }
      ]
    };
  kind = Concrete_ident.Kind.Value }) */
const _: () = ();
 *)

let v_DISABLED: i32 = 0l

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
        Core.Fmt.impl_9__write_fmt f
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
val disable_session_cache_mode (self: t_SslContext)
    : Prims.Pure Prims.unit Prims.l_True (fun _ -> Prims.l_True)

/// Sets the `SSL_MODE_RELEASE_BUFFERS` option.
/// See <https://www.openssl.org/docs/man3.2/man3/SSL_CTX_set_mode.html#SSL_MODE_RELEASE_BUFFERS>
/// for more information.
val set_mode_release_buffers (self: t_SslContext)
    : Prims.Pure Prims.unit Prims.l_True (fun _ -> Prims.l_True)

/// Wrapper of the OpenSSL SSL object.
type t_Ssl = | Ssl : Core.Ptr.Non_null.t_NonNull Openssl3.t_ssl_st -> t_Ssl

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl: Core.Fmt.t_Debug t_Ssl =
  {
    f_fmt_pre = (fun (self: t_Ssl) (f: Core.Fmt.t_Formatter) -> true);
    f_fmt_post
    =
    (fun
        (self: t_Ssl)
        (f: Core.Fmt.t_Formatter)
        (out1: (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error))
        ->
        true);
    f_fmt
    =
    fun (self: t_Ssl) (f: Core.Fmt.t_Formatter) ->
      let tmp0, out:(Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error) =
        Core.Fmt.impl_9__write_fmt f
          (Core.Fmt.impl_2__new_v1 (sz 2)
              (sz 1)
              (let list = ["OpenSSL3SSLObject("; ")"] in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                Rust_primitives.Hax.array_of_list 2 list)
              (let list =
                  [
                    Core.Fmt.Rt.impl_1__new_pointer #(Core.Ptr.Non_null.t_NonNull Openssl3.t_ssl_st)
                      self.Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl._0
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
let impl_1: Core.Convert.t_From t_Ssl (Core.Ptr.Non_null.t_NonNull Openssl3.t_ssl_st) =
  {
    f_from_pre = (fun (ssl: Core.Ptr.Non_null.t_NonNull Openssl3.t_ssl_st) -> true);
    f_from_post = (fun (ssl: Core.Ptr.Non_null.t_NonNull Openssl3.t_ssl_st) (out: t_Ssl) -> true);
    f_from = fun (ssl: Core.Ptr.Non_null.t_NonNull Openssl3.t_ssl_st) -> t_Ssl ssl <: t_Ssl
  }

/// Returns a pointer to the BIO currently attached to the SSL object.
val get_attached_bio (self: t_Ssl)
    : Prims.Pure (Core.Option.t_Option (Core.Ptr.Non_null.t_NonNull Openssl3.t_bio_st))
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Returns a pointer to some extra data from a SSL object.
val get_extra_data_ptr
      (#v_T #impl_765196419_: Type0)
      {| i2: Core.Convert.t_Into impl_765196419_ i32 |}
      (self: t_Ssl)
      (extra_data_index: impl_765196419_)
    : Prims.Pure (Core.Option.t_Option (Core.Ptr.Non_null.t_NonNull v_T))
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Returns a reference to some extra data from a SSL object.
val get_extra_data_ref
      (#v_T #impl_765196419_: Type0)
      {| i5: Core.Convert.t_Into impl_765196419_ i32 |}
      (self: t_Ssl)
      (extra_data_index: impl_765196419_)
    : Prims.Pure (Core.Option.t_Option v_T) Prims.l_True (fun _ -> Prims.l_True)

/// Checks if the tunnel is in a shutdown state.
val is_shutdown (self: t_Ssl) : Prims.Pure bool Prims.l_True (fun _ -> Prims.l_True)

/// Index in the SSL user data (`SSL_get_ex_data`/`SSL_set_ex_data`) where
/// the pointer to the tunnel security requirements is stored.
let v_SSL_EX_DATA_TUNNEL_SECURITY_REQUIREMENTS_INDEX: i32 = 1l

/// Mode for a [`Context`].
/// A [`Context`] is either a context for client-side applications or
/// server-side applications.
type t_Mode =
  | Mode_Client : t_Mode
  | Mode_Server : t_Mode

val t_Mode_cast_to_repr (x: t_Mode) : Prims.Pure isize Prims.l_True (fun _ -> Prims.l_True)

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

/// Tunnel context.
type t_Context486924441 = {
  f__lib_ctx:Sandwich.Implementation.Openssl3_impl.t_LibCtx;
  f_ssl_ctx:Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_ctx_st;
  f_security_requirements:Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements;
  f_mode:t_Mode
}

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl: Core.Fmt.t_Debug t_Context486924441 =
  {
    f_fmt_pre = (fun (self: t_Context486924441) (f: Core.Fmt.t_Formatter) -> true);
    f_fmt_post
    =
    (fun
        (self: t_Context486924441)
        (f: Core.Fmt.t_Formatter)
        (out1: (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error))
        ->
        true);
    f_fmt
    =
    fun (self: t_Context486924441) (f: Core.Fmt.t_Formatter) ->
      let tmp0, out:(Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error) =
        Core.Fmt.impl_9__write_fmt f
          (Core.Fmt.impl_2__new_v1 (sz 2)
              (sz 1)
              (let list = ["OpenSSL3Context(mode="; ")"] in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                Rust_primitives.Hax.array_of_list 2 list)
              (let list =
                  [
                    Core.Fmt.Rt.impl_1__new_debug #t_Mode
                      self.Sandwich.Implementation.Openssl3_impl.Tunnel.Context.f_mode
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
let impl_1: Core.Borrow.t_Borrow t_Context486924441 Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements =
  {
    f_borrow_pre = (fun (self: t_Context486924441) -> true);
    f_borrow_post
    =
    (fun (self: t_Context486924441) (out: Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements) -> true);
    f_borrow
    =
    fun (self: t_Context486924441) ->
      self.Sandwich.Implementation.Openssl3_impl.Tunnel.Context.f_security_requirements
  }

/// Returns the security requirements of the context.
val security_requirements (self: t_Context486924441)
    : Prims.Pure Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Returns the tunnel security requirements from a SSL object.
val get_tunnel_security_requirements (self: t_Ssl)
    : Prims.Pure (Core.Option.t_Option Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// A Sandwich context.
type t_Context665818913 = | Context665818913_OpenSSL3 : t_Context486924441 -> t_Context665818913

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl: Core.Fmt.t_Debug t_Context665818913 =
  {
    f_fmt_pre = (fun (self: t_Context665818913) (f: Core.Fmt.t_Formatter) -> true);
    f_fmt_post
    =
    (fun
        (self: t_Context665818913)
        (f: Core.Fmt.t_Formatter)
        (out1: (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error))
        ->
        true);
    f_fmt
    =
    fun (self: t_Context665818913) (f: Core.Fmt.t_Formatter) ->
      let f, hax_temp_output:(Core.Fmt.t_Formatter &
        Core.Result.t_Result Prims.unit Core.Fmt.t_Error) =
        match self with
        | (Context665818913_OpenSSL3 c: t_Context665818913) ->
          let tmp0, out:(Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error) =
            Core.Fmt.impl_9__write_fmt f
              (Core.Fmt.impl_2__new_v1 (sz 2)
                  (sz 1)
                  (let list = ["Context(OpenSSL3("; "))"] in
                    FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                    Rust_primitives.Hax.array_of_list 2 list)
                  (let list =
                      [
                        Core.Fmt.Rt.impl_1__new_debug #t_Context486924441 c
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
          f, out <: (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error)
      in
      f, hax_temp_output
      <:
      (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error)
  }

/// Sets the verification mode.
/// If a `X509Verifier` structure is present in the protobuf configuration,
/// then `SSL_VERIFY_PEER` is used in client mode, and `SSL_VERIFY_PEER | SSL_VERIFY_FAIL_IF_NO_PEER_CERT`
/// is used in server mode.
val set_verify_mode (self: t_SslContext) (verify_mode: Sandwich.Tunnel.Tls.t_VerifyMode)
    : Prims.Pure Prims.unit Prims.l_True (fun _ -> Prims.l_True)

/// Returns the minimum and the maximum TLS versions depending on a given TLS config.
val tls_options_get_min_max_tls_version (tls_options: Sandwich_api_proto.Tls.t_TLSOptions)
    : Prims.Pure (Sandwich.Tunnel.Tls.t_TlsVersion & Sandwich.Tunnel.Tls.t_TlsVersion)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Determines the verify mode depending on the mode and the existence of a
/// X509Verifier structure in the protobuf configuration.
val get_verify_mode_from_mode_and_x509_verifier
      (mode: t_Mode)
      (x509_verifier: Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
    : Prims.Pure Sandwich.Tunnel.Tls.t_VerifyMode Prims.l_True (fun _ -> Prims.l_True)

/// Appends a certificate to the certificate chain the peer is going to expose
/// to remote.
/// This function takes a [`Pimpl`] as input since [`SSL_CTX_add_extra_chain_cert`]
/// takes the ownership of the `X509` object.
val add_extra_chain_cert
      (self: t_SslContext)
      (extra_certificate: Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_x509_st)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Loads the OpenSSL system-default trust anchors into context store.
val fill_certificate_trust_store_with_default_cas
      (self: t_SslContext)
      (x509_verifier: Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Initializes the trusted certificate store.
val initialize_trusted_cert_store (self: t_SslContext)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Sets supported application protocols (ALPN).
val set_alpn_protocols
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
val set_certificate
      (self: t_SslContext)
      (certificate: Core.Ptr.Non_null.t_NonNull Openssl3.t_x509_st)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Sets the list of available ciphers using the default list provided
/// by OpenSSL.
/// This function is only useful for TLS 1.2.
val set_default_cipher_list (self: t_SslContext)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Sets the list of available ciphersuites using the default list provided
/// by OpenSSL.
/// This function is only useful for TLS 1.3.
val set_default_ciphersuites (self: t_SslContext)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Sets the default parameters for a SSL context.
val set_default_parameters (self: t_SslContext)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Sets the KEs to an SSL context.
val set_kes
      (#impl_488124255_: Type0)
      {| i5: Core.Convert.t_AsRef impl_488124255_ string |}
      (self: t_SslContext)
      (kes: t_Slice impl_488124255_)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Defines the maximum TLS version to use.
val set_maximum_tls_version (self: t_SslContext) (version: Sandwich.Tunnel.Tls.t_TlsVersion)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Defines the minimum TLS version to use.
val set_minimum_tls_version (self: t_SslContext) (version: Sandwich.Tunnel.Tls.t_TlsVersion)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Sets the minimum and the maximum TLS versions to use.
val set_min_and_max_tls_version
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
val set_private_key
      (self: t_SslContext)
      (private_key: Core.Ptr.Non_null.t_NonNull Openssl3.t_evp_pkey_st)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Sets the trust parameter on the verification parameters object, depending
/// on the execution mode.
val set_trust (self: t_SslContext) (mode: t_Mode)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Instantiates a new SSL context (`SSL_CTX`).
val new_ssl_context (ctx: Sandwich.t_Context) (mode: t_Mode)
    : Prims.Pure
      (Core.Result.t_Result (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_ctx_st)
          Sandwich.Error.t_Error) Prims.l_True (fun _ -> Prims.l_True)

/// Instantiates a new SSL object from an SSL context.
/// `Pimpl` is passed here instead of the regular `NonNull` to enforce the lifetime
/// of the resulting SSL object.
val ssl_context_new_ssl (ssl_context: Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_ctx_st)
    : Prims.Pure
      (Core.Result.t_Result (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_st)
          Sandwich.Error.t_Error) Prims.l_True (fun _ -> Prims.l_True)

/// Instantiates a new SSL object.
val new_ssl (self: t_Context486924441)
    : Prims.Pure
      (Core.Result.t_Result (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_st)
          Sandwich.Error.t_Error) Prims.l_True (fun _ -> Prims.l_True)

/// Structure for states and errors based on protobuf definitions.
type t_ProtoStateErrorBase (v_Enum: Type0) {| i1: Protobuf.Enums.t_Enum v_Enum |} =
  | ProtoStateErrorBase : v_Enum -> Core.Option.t_Option Sandwich.Error.t_Error
    -> t_ProtoStateErrorBase v_Enum

/// Implements [`std::cmp::PartialEq`] with Enum for [`ProtoStateErrorBase`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl
      (#v_Enum: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()] i1: Protobuf.Enums.t_Enum v_Enum)
    : Core.Cmp.t_PartialEq (t_ProtoStateErrorBase v_Enum) v_Enum =
  {
    f_eq_pre = (fun (self: t_ProtoStateErrorBase v_Enum) (other: v_Enum) -> true);
    f_eq_post = (fun (self: t_ProtoStateErrorBase v_Enum) (other: v_Enum) (out: bool) -> true);
    f_eq
    =
    fun (self: t_ProtoStateErrorBase v_Enum) (other: v_Enum) -> self.Sandwich.Tunnel._0 =. other
  }

/// Implements [`std::fmt::Debug`] for [`ProtoStateErrorBase`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_1
      (#v_Enum: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()] i1: Protobuf.Enums.t_Enum v_Enum)
      (#[FStar.Tactics.Typeclasses.tcresolve ()]
          i2:
          Core.Fmt.t_Display (t_ProtoStateErrorBase v_Enum))
    : Core.Fmt.t_Debug (t_ProtoStateErrorBase v_Enum) =
  {
    f_fmt_pre = (fun (self: t_ProtoStateErrorBase v_Enum) (f: Core.Fmt.t_Formatter) -> true);
    f_fmt_post
    =
    (fun
        (self: t_ProtoStateErrorBase v_Enum)
        (f: Core.Fmt.t_Formatter)
        (out1: (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error))
        ->
        true);
    f_fmt
    =
    fun (self: t_ProtoStateErrorBase v_Enum) (f: Core.Fmt.t_Formatter) ->
      let tmp0, out:(Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error) =
        Core.Fmt.impl_9__write_fmt f
          (Core.Fmt.impl_2__new_v1 (sz 3)
              (sz 2)
              (let list = [""; " (code "; ")"] in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 3);
                Rust_primitives.Hax.array_of_list 3 list)
              (let list =
                  [
                    Core.Fmt.Rt.impl_1__new_display #(t_ProtoStateErrorBase v_Enum) self
                    <:
                    Core.Fmt.Rt.t_Argument;
                    Core.Fmt.Rt.impl_1__new_display #i32
                      (Protobuf.Enums.f_value #v_Enum
                          #FStar.Tactics.Typeclasses.solve
                          self.Sandwich.Tunnel._0
                        <:
                        i32)
                    <:
                    Core.Fmt.Rt.t_Argument
                  ]
                in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                Rust_primitives.Hax.array_of_list 2 list)
            <:
            Core.Fmt.t_Arguments)
      in
      let f:Core.Fmt.t_Formatter = tmp0 in
      let hax_temp_output:Core.Result.t_Result Prims.unit Core.Fmt.t_Error = out in
      f, hax_temp_output
      <:
      (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error)
  }

/// Converts a [`ProtoStateErrorBase`] to a [`crate::Error`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_2
      (#v_Enum: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()] i1: Protobuf.Enums.t_Enum v_Enum)
    : Core.Convert.t_From Sandwich.Error.t_Error (t_ProtoStateErrorBase v_Enum) =
  {
    f_from_pre = (fun (e: t_ProtoStateErrorBase v_Enum) -> true);
    f_from_post = (fun (e: t_ProtoStateErrorBase v_Enum) (out: Sandwich.Error.t_Error) -> true);
    f_from
    =
    fun (e: t_ProtoStateErrorBase v_Enum) ->
      Core.Option.impl__unwrap #Sandwich.Error.t_Error e.Sandwich.Tunnel._1
  }

/// Converts an enum value to a [`ProtoStateErrorBase`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_3
      (#v_Enum: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()] i1: Protobuf.Enums.t_Enum v_Enum)
    : Core.Convert.t_From (t_ProtoStateErrorBase v_Enum) v_Enum =
  {
    f_from_pre = (fun (e: v_Enum) -> true);
    f_from_post = (fun (e: v_Enum) (out: t_ProtoStateErrorBase v_Enum) -> true);
    f_from
    =
    fun (e: v_Enum) ->
      t_ProtoStateErrorBase e
        (Core.Option.Option_None <: Core.Option.t_Option Sandwich.Error.t_Error)
      <:
      t_ProtoStateErrorBase v_Enum
  }

/// Converts an enum value and a [`crate::Error`] to a [`ProtoStateErrorBase`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_4
      (#v_Enum: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()] i1: Protobuf.Enums.t_Enum v_Enum)
    : Core.Convert.t_From (t_ProtoStateErrorBase v_Enum) (v_Enum & Sandwich.Error.t_Error) =
  {
    f_from_pre = (fun (p: (v_Enum & Sandwich.Error.t_Error)) -> true);
    f_from_post
    =
    (fun (p: (v_Enum & Sandwich.Error.t_Error)) (out: t_ProtoStateErrorBase v_Enum) -> true);
    f_from
    =
    fun (p: (v_Enum & Sandwich.Error.t_Error)) ->
      t_ProtoStateErrorBase p._1
        (Core.Option.Option_Some p._2 <: Core.Option.t_Option Sandwich.Error.t_Error)
      <:
      t_ProtoStateErrorBase v_Enum
  }

/// Returns true if an error occurred.
val is_err
      (#v_Enum: Type0)
      {| i1: Protobuf.Enums.t_Enum v_Enum |}
      (self: t_ProtoStateErrorBase v_Enum)
    : Prims.Pure bool Prims.l_True (fun _ -> Prims.l_True)

/// Returns the enum value.
val value
      (#v_Enum: Type0)
      {| i2: Protobuf.Enums.t_Enum v_Enum |}
      (self: t_ProtoStateErrorBase v_Enum)
    : Prims.Pure v_Enum Prims.l_True (fun _ -> Prims.l_True)

/// Implements [`std::fmt::Display`] for [`HandshakeError`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_8: Core.Fmt.t_Display (t_ProtoStateErrorBase Sandwich_proto.Errors.t_HandshakeError) =
  {
    f_fmt_pre
    =
    (fun
        (self: t_ProtoStateErrorBase Sandwich_proto.Errors.t_HandshakeError)
        (f: Core.Fmt.t_Formatter)
        ->
        true);
    f_fmt_post
    =
    (fun
        (self: t_ProtoStateErrorBase Sandwich_proto.Errors.t_HandshakeError)
        (f: Core.Fmt.t_Formatter)
        (out1: (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error))
        ->
        true);
    f_fmt
    =
    fun
      (self: t_ProtoStateErrorBase Sandwich_proto.Errors.t_HandshakeError)
      (f: Core.Fmt.t_Formatter)
      ->
      let tmp0, out:(Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error) =
        Core.Fmt.impl_9__write_fmt f
          (Core.Fmt.impl_2__new_v1 (sz 1)
              (sz 1)
              (let list = [""] in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                Rust_primitives.Hax.array_of_list 1 list)
              (let list =
                  [
                    Core.Fmt.Rt.impl_1__new_display #string
                      (match self.Sandwich.Tunnel._0 with
                        | Sandwich_proto.Errors.HandshakeError_HANDSHAKEERROR_INVALID_SERVER_NAME  ->
                          "invalid server name"
                        | Sandwich_proto.Errors.HandshakeError_HANDSHAKEERROR_CERTIFICATE_VERIFICATION_FAILED
                           ->
                          "certificate verification failed"
                        | Sandwich_proto.Errors.HandshakeError_HANDSHAKEERROR_CERTIFICATE_EXPIRED  ->
                          "certificate has expired"
                        | Sandwich_proto.Errors.HandshakeError_HANDSHAKEERROR_CERTIFICATE_REVOKED  ->
                          "certificate was revoked"
                        | Sandwich_proto.Errors.HandshakeError_HANDSHAKEERROR_INVALID_CERTIFICATE  ->
                          "invalid certificate"
                        | Sandwich_proto.Errors.HandshakeError_HANDSHAKEERROR_CERTIFICATE_SIGNATURE_VERIFICATION_FAILED
                           ->
                          "certificate signature verification failed"
                        | Sandwich_proto.Errors.HandshakeError_HANDSHAKEERROR_DEPTH_EXCEEDED  ->
                          "certificate chain too long or pathlen exceeded"
                        | Sandwich_proto.Errors.HandshakeError_HANDSHAKEERROR_UNSUPPORTED_PROTOCOL  ->
                          "unsupported protocol"
                        | Sandwich_proto.Errors.HandshakeError_HANDSHAKEERROR_NO_SHARED_CIPHER  ->
                          "no shared cipher"
                        | Sandwich_proto.Errors.HandshakeError_HANDSHAKEERROR_NO_SUITABLE_KEY_SHARE  ->
                          "no suitable key share"
                        | Sandwich_proto.Errors.HandshakeError_HANDSHAKEERROR_UNKNOWN_ERROR  ->
                          "unknown handshake error")
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

/// Sets the list of available ciphers.
/// This function is only used for TLS 1.2.
/// Names will be converted to OpenSSL names using `OPENSSL_cipher_name`.
val set_cipher_list
      (#v_S #impl_995885649_: Type0)
      {| i2: Core.Convert.t_AsRef v_S string |}
      {| i3: Core.Iter.Traits.Collect.t_IntoIterator impl_995885649_ |}
      (self: t_SslContext)
      (ciphers: impl_995885649_)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Configures TLS 1.2.
val configure_tls12
      (self: t_SslContext)
      (tls12_config: Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSv12Config)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Sets the list of available ciphersuites for TLS 1.3.
val set_ciphersuites
      (#v_S #impl_995885649_: Type0)
      {| i4: Core.Convert.t_AsRef v_S string |}
      {| i4: Core.Iter.Traits.Collect.t_IntoIterator impl_995885649_ |}
      (self: t_SslContext)
      (ciphers: impl_995885649_)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Configures TLS 1.3.
val configure_tls13
      (self: t_SslContext)
      (tls13_config: Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSv13Config)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Returns the execution mode (Client or Server) and the tls options (`TLSOptions`).
val configuration_get_mode_and_options
      (configuration: Sandwich_api_proto.Configuration.t_Configuration)
    : Prims.Pure
      (Core.Result.t_Result (t_Mode & Sandwich_api_proto.Tls.t_TLSOptions) Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

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

/// Sets the server name indication (SNI).
val set_server_name_indication
      (#impl_488124255_: Type0)
      {| i9: Core.Convert.t_AsRef impl_488124255_ string |}
      (self: t_Ssl)
      (sni: impl_488124255_)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Verifies the tunnel configuration against the security requirements that come
/// from the context.
val verify_tunnel_verifier
      (tunnel_verifier: Core.Option.t_Option Sandwich_api_proto.Verifiers.t_TunnelVerifier)
      (security_requirements: Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Returns the SSL object attached to the BIO.
val get_ssl (self: t_Bio)
    : Prims.Pure
      (Core.Result.t_Result (Core.Ptr.Non_null.t_NonNull Openssl3.t_ssl_st)
          Sandwich_proto.Io.t_IOError) Prims.l_True (fun _ -> Prims.l_True)

/// Reflects an IO error in the BIO flags.
/// When an IO interface raises an error, this function sets the appropriate
/// flags to the BIO state depending on the error.
val bio_reflect_io_error
      (#impl_1033358885_ #impl_1033358885_ #impl_765196419_: Type0)
      {| i3: Core.Ops.Function.t_FnOnce impl_1033358885_ Prims.unit |}
      {| i4: Core.Ops.Function.t_FnOnce impl_720525265_ Prims.unit |}
      {| i5: Core.Convert.t_Into impl_765196419_ i32 |}
      (error: Sandwich_proto.Io.t_IOError)
      (on_retry: impl_1033358885_)
      (on_close: impl_720525265_)
      (default_return_value: impl_765196419_)
    : Prims.Pure i32 Prims.l_True (fun _ -> Prims.l_True)

/// Returns the state of the SSL tunnel.
val get_state (self: t_Ssl)
    : Prims.Pure Sandwich_proto.Tunnel.t_HandshakeState Prims.l_True (fun _ -> Prims.l_True)

/// Implements [`std::fmt::Display`] for [`HandshakeState`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_7: Core.Fmt.t_Display (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_HandshakeState) =
  {
    f_fmt_pre
    =
    (fun
        (self: t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_HandshakeState)
        (f: Core.Fmt.t_Formatter)
        ->
        true);
    f_fmt_post
    =
    (fun
        (self: t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_HandshakeState)
        (f: Core.Fmt.t_Formatter)
        (out1: (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error))
        ->
        true);
    f_fmt
    =
    fun
      (self: t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_HandshakeState)
      (f: Core.Fmt.t_Formatter)
      ->
      let tmp0, out:(Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error) =
        Core.Fmt.impl_9__write_fmt f
          (Core.Fmt.impl_2__new_v1 (sz 1)
              (sz 1)
              (let list = [""] in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                Rust_primitives.Hax.array_of_list 1 list)
              (let list =
                  [
                    Core.Fmt.Rt.impl_1__new_display #string
                      (match self.Sandwich.Tunnel._0 with
                        | Sandwich_proto.Tunnel.HandshakeState_HANDSHAKESTATE_IN_PROGRESS  ->
                          "in progress"
                        | Sandwich_proto.Tunnel.HandshakeState_HANDSHAKESTATE_DONE  -> "done"
                        | Sandwich_proto.Tunnel.HandshakeState_HANDSHAKESTATE_WANT_READ  ->
                          "wants to read"
                        | Sandwich_proto.Tunnel.HandshakeState_HANDSHAKESTATE_WANT_WRITE  ->
                          "wants to write"
                        | Sandwich_proto.Tunnel.HandshakeState_HANDSHAKESTATE_ERROR  -> "error")
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

/// Closes the tunnel.
val close690884291 (self: t_Ssl)
    : Prims.Pure
      (Core.Result.t_Result Prims.unit (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Implements [`std::fmt::Display`] for [`RecordError`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_9: Core.Fmt.t_Display (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError) =
  {
    f_fmt_pre
    =
    (fun
        (self: t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError)
        (f: Core.Fmt.t_Formatter)
        ->
        true);
    f_fmt_post
    =
    (fun
        (self: t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError)
        (f: Core.Fmt.t_Formatter)
        (out1: (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error))
        ->
        true);
    f_fmt
    =
    fun
      (self: t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError)
      (f: Core.Fmt.t_Formatter)
      ->
      let tmp0, out:(Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error) =
        Core.Fmt.impl_9__write_fmt f
          (Core.Fmt.impl_2__new_v1 (sz 1)
              (sz 1)
              (let list = [""] in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                Rust_primitives.Hax.array_of_list 1 list)
              (let list =
                  [
                    Core.Fmt.Rt.impl_1__new_display #string
                      (match self.Sandwich.Tunnel._0 with
                        | Sandwich_proto.Tunnel.RecordError_RECORDERROR_OK  -> "no error"
                        | Sandwich_proto.Tunnel.RecordError_RECORDERROR_WANT_READ  -> "want read"
                        | Sandwich_proto.Tunnel.RecordError_RECORDERROR_WANT_WRITE  -> "want write"
                        | Sandwich_proto.Tunnel.RecordError_RECORDERROR_BEING_SHUTDOWN  ->
                          "being shutdown"
                        | Sandwich_proto.Tunnel.RecordError_RECORDERROR_CLOSED  -> "closed"
                        | Sandwich_proto.Tunnel.RecordError_RECORDERROR_TOO_BIG  -> "too big"
                        | Sandwich_proto.Tunnel.RecordError_RECORDERROR_UNKNOWN  -> "unknown error")
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
let impl_10: Core.Error.t_Error (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError) =
  {
    _super_11603873402755071380 = FStar.Tactics.Typeclasses.solve;
    _super_7348497752681407507 = FStar.Tactics.Typeclasses.solve
  }

/// Implements [`std::fmt::Display`] for [`State`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_6: Core.Fmt.t_Display (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_State) =
  {
    f_fmt_pre
    =
    (fun (self: t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_State) (f: Core.Fmt.t_Formatter) ->
        true);
    f_fmt_post
    =
    (fun
        (self: t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_State)
        (f: Core.Fmt.t_Formatter)
        (out1: (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error))
        ->
        true);
    f_fmt
    =
    fun (self: t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_State) (f: Core.Fmt.t_Formatter) ->
      let tmp0, out:(Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error) =
        Core.Fmt.impl_9__write_fmt f
          (Core.Fmt.impl_2__new_v1 (sz 1)
              (sz 1)
              (let list = [""] in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                Rust_primitives.Hax.array_of_list 1 list)
              (let list =
                  [
                    Core.Fmt.Rt.impl_1__new_display #string
                      (match self.Sandwich.Tunnel._0 with
                        | Sandwich_proto.Tunnel.State_STATE_NOT_CONNECTED  -> "not connected"
                        | Sandwich_proto.Tunnel.State_STATE_CONNECTION_IN_PROGRESS  ->
                          "connection in progress"
                        | Sandwich_proto.Tunnel.State_STATE_HANDSHAKE_IN_PROGRESS  ->
                          "handshake in progress"
                        | Sandwich_proto.Tunnel.State_STATE_HANDSHAKE_DONE  -> "handshake done"
                        | Sandwich_proto.Tunnel.State_STATE_BEING_SHUTDOWN  -> "being shutdown"
                        | Sandwich_proto.Tunnel.State_STATE_DISCONNECTED  -> "disconnected"
                        | Sandwich_proto.Tunnel.State_STATE_ERROR  -> "error")
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

/// A tunnel, wrapper around a SSL object.
type t_Tunnel77328211 = {
  f__ssl_ctx:t_Context486924441;
  f_ssl:Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_st;
  f_security_requirements:Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements;
  f_io:Sandwich.Tunnel.Io.t_BoxedIO;
  f_state:Sandwich_proto.Tunnel.t_State
}

/// Returns the tunnel attached to the BIO.
val get_tunnel (self: t_Bio)
    : Prims.Pure Rust_primitives.Hax.t_failure Prims.l_True (fun _ -> Prims.l_True)

/// Synchronizes the SSL state with the tunnel state.
val synchronize_states (self: t_Bio) (tun: t_Tunnel77328211)
    : Prims.Pure t_Tunnel77328211 Prims.l_True (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_3: Core.Fmt.t_Debug t_Tunnel77328211 =
  {
    f_fmt_pre = (fun (self: t_Tunnel77328211) (f: Core.Fmt.t_Formatter) -> true);
    f_fmt_post
    =
    (fun
        (self: t_Tunnel77328211)
        (f: Core.Fmt.t_Formatter)
        (out1: (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error))
        ->
        true);
    f_fmt
    =
    fun (self: t_Tunnel77328211) (f: Core.Fmt.t_Formatter) ->
      let tmp0, out:(Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error) =
        Core.Fmt.impl_9__write_fmt f
          (Core.Fmt.impl_2__new_v1 (sz 2)
              (sz 1)
              (let list = ["OpenSSL3Tunnel(ssl: "; ")"] in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                Rust_primitives.Hax.array_of_list 2 list)
              (let list =
                  [
                    Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
                      "core::fmt::rt::impl_1__new_pointer::<\n        lifetime!(something),\n        raw_pointer!(),\n    >(\n        &(deref(\n            &(core::ptr::non_null::impl_3__as_ptr::<\n                openssl3::t_ssl_st,\n            >(\n                sandwich::support::pimpl::impl_2__as_nonnull::<\n                    lifetime!(something),\n                    openssl3::t_ssl_st,\n                >(\n                    &(proj_sandwich::implementation::openssl3_impl::tunnel::ssl::f_ssl(\n                        deref(self),\n                    )),\n                ),\n            )),\n        )),\n    )"

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

/// Attaches the security requirements structure to the `SSL` object
/// through `ex_data`.
val attach_security_requirements (self: Core.Pin.t_Pin t_Tunnel77328211)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Attaches itself to the current BIO.
val attach_to_bio (self: Core.Pin.t_Pin t_Tunnel77328211)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

val state771356817 (self: t_Tunnel77328211)
    : Prims.Pure (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_State)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Updates the state of the tunnel.
/// This method must be called after any read or write operation.
val update_state (self: t_Tunnel77328211)
    : Prims.Pure t_Tunnel77328211 Prims.l_True (fun _ -> Prims.l_True)

val close995496454 (self: t_Tunnel77328211)
    : Prims.Pure
      (t_Tunnel77328211 &
        Core.Result.t_Result Prims.unit (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Tunnel builder.
/// This is a convenient aggregate of useful values to build a tunnel.
type t_TunnelBuilder = {
  f_ssl_ctx:t_Context486924441;
  f_io:Sandwich.Tunnel.Io.t_BoxedIO;
  f_configuration:Sandwich_api_proto.Tunnel.t_TunnelConfiguration
}

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_4: Core.Fmt.t_Debug t_TunnelBuilder =
  {
    f_fmt_pre = (fun (self: t_TunnelBuilder) (f: Core.Fmt.t_Formatter) -> true);
    f_fmt_post
    =
    (fun
        (self: t_TunnelBuilder)
        (f: Core.Fmt.t_Formatter)
        (out1: (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error))
        ->
        true);
    f_fmt
    =
    fun (self: t_TunnelBuilder) (f: Core.Fmt.t_Formatter) ->
      let tmp0, out:(Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error) =
        Core.Fmt.impl_9__write_fmt f
          (Core.Fmt.impl_2__new_const (sz 1)
              (let list = ["OpenSSL3TunnelBuilder"] in
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

/// A tunnel.
type t_Tunnel70284935 =
  | Tunnel70284935_OpenSSL3 :
      Core.Pin.t_Pin (Alloc.Boxed.t_Box t_Tunnel77328211 Alloc.Alloc.t_Global)
    -> t_Tunnel70284935

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_11: Core.Convert.t_From t_Tunnel70284935 t_Tunnel77328211 =
  {
    f_from_pre = (fun (inner: t_Tunnel77328211) -> true);
    f_from_post = (fun (inner: t_Tunnel77328211) (out: t_Tunnel70284935) -> true);
    f_from
    =
    fun (inner: t_Tunnel77328211) ->
      Tunnel70284935_OpenSSL3 (Alloc.Boxed.impl__pin #t_Tunnel77328211 inner) <: t_Tunnel70284935
  }

val rewrap:
    #v_Inner: Type0 ->
    #v_Other: Type0 ->
    {| i2: Core.Convert.t_From t_Tunnel70284935 v_Inner |} ->
    (v_Inner & v_Other)
  -> Prims.Pure (t_Tunnel70284935 & v_Other) Prims.l_True (fun _ -> Prims.l_True)

/// Closes the tunnel.
val close700377666 (self: t_Tunnel70284935)
    : Prims.Pure
      (t_Tunnel70284935 &
        Core.Result.t_Result Prims.unit (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Returns the state of the tunnel.
val state468029348 (self: t_Tunnel70284935)
    : Prims.Pure (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_State)
      Prims.l_True
      (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_14: Core.Fmt.t_Debug t_Tunnel70284935 =
  {
    f_fmt_pre = (fun (self: t_Tunnel70284935) (f: Core.Fmt.t_Formatter) -> true);
    f_fmt_post
    =
    (fun
        (self: t_Tunnel70284935)
        (f: Core.Fmt.t_Formatter)
        (out1: (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error))
        ->
        true);
    f_fmt
    =
    fun (self: t_Tunnel70284935) (f: Core.Fmt.t_Formatter) ->
      let f, hax_temp_output:(Core.Fmt.t_Formatter &
        Core.Result.t_Result Prims.unit Core.Fmt.t_Error) =
        match self with
        | (Tunnel70284935_OpenSSL3 t: t_Tunnel70284935) ->
          let tmp0, out:(Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error) =
            Core.Fmt.impl_9__write_fmt f
              (Core.Fmt.impl_2__new_v1 (sz 2)
                  (sz 1)
                  (let list = ["Tunnel(OpenSSL3("; "))"] in
                    FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                    Rust_primitives.Hax.array_of_list 2 list)
                  (let list =
                      [
                        Core.Fmt.Rt.impl_1__new_debug #(Core.Pin.t_Pin
                            (Alloc.Boxed.t_Box t_Tunnel77328211 Alloc.Alloc.t_Global))
                          t
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
          f, out <: (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error)
      in
      f, hax_temp_output
      <:
      (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error)
  }

/// Flushes data.
val flush (self: t_Bio)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich_proto.Io.t_IOError)
      Prims.l_True
      (fun _ -> Prims.l_True)

(* item error backend: (reject_RawOrMutPointer) ExplicitRejection { reason: "a node of kind [Raw_pointer] have been found in the AST" }
Last available AST for this item:

/// BIO control callback.
#[cfg(feature = "tunnel")]
#[cfg(feature = "openssl3")]
#[deny(bare_trait_objects)]
#[feature(register_tool)]
#[register_tool(_hax)]
unsafe fn bio_ctrl(
    bio: raw_pointer!(),
    cmd: int,
    larg: int,
    _pargs: raw_pointer!(),
) -> int {
    {
        (match (cast(cmd)) {
            9 => {
                let _: tuple0 = {
                    openssl3::foreign_mod_534::v_BIO_set_shutdown(bio, cast(larg))
                };
                { 1 }
            }
            8 => cast(openssl3::foreign_mod_535::v_BIO_get_shutdown(bio)),
            11 => {
                (if core::result::impl__is_err::<
                    tuple0,
                    sandwich_proto::io::t_IOError,
                >(
                    &(sandwich::implementation::openssl3_impl::tunnel::bio_method::impl__Bio__flush(
                        &(sandwich::implementation::openssl3_impl::tunnel::bio_method::Bio(
                            core::ptr::non_null::impl_3__new_unchecked::<
                                openssl3::t_bio_st,
                            >(bio),
                        )),
                    )),
                ) {
                    { 0 }
                } else {
                    { 1 }
                })
            }
            _ => 0,
        })
    }
}


Last AST:
/** print_rust: pitem: not implemented  (item: { Concrete_ident.T.def_id =
  { Concrete_ident.Imported.krate = "sandwich";
    path =
    [{ Concrete_ident.Imported.data =
       (Concrete_ident.Imported.TypeNs "tunnel"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "rec_bundle");
        disambiguator = 473063542 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.ValueNs "bio_ctrl"); disambiguator = 0 }
      ]
    };
  kind = Concrete_ident.Kind.Value }) */
const _: () = ();
 *)

/// Reads data from the BIO.
val read279365663 (self: t_Bio) (buffer: t_Slice u8)
    : Prims.Pure (Core.Result.t_Result usize Sandwich_proto.Io.t_IOError)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Writes data to the BIO.
val write840835472 (self: t_Bio) (buffer: t_Slice u8)
    : Prims.Pure (Core.Result.t_Result usize Sandwich_proto.Io.t_IOError)
      Prims.l_True
      (fun _ -> Prims.l_True)

(* item error backend: (reject_RawOrMutPointer) ExplicitRejection { reason: "a node of kind [Raw_pointer] have been found in the AST" }
Last available AST for this item:

/// BIO read callback.
#[cfg(feature = "tunnel")]
#[cfg(feature = "openssl3")]
#[deny(bare_trait_objects)]
#[feature(register_tool)]
#[register_tool(_hax)]
unsafe fn bio_read(
    bio: raw_pointer!(),
    data: raw_pointer!(),
    len: int,
    written: raw_pointer!(),
) -> int {
    {
        let bio: sandwich::implementation::openssl3_impl::tunnel::bio_method::t_Bio = {
            sandwich::implementation::openssl3_impl::tunnel::bio_method::Bio(
                core::ptr::non_null::impl_3__new_unchecked::<openssl3::t_bio_st>(bio),
            )
        };
        {
            let _: tuple0 = {
                sandwich::implementation::openssl3_impl::tunnel::bio_method::impl__Bio__clear_retry_flag(
                    &(bio),
                )
            };
            {
                (match (sandwich::implementation::openssl3_impl::tunnel::bio_method::impl__Bio__read(
                    &(bio),
                    &mut (deref(
                        core::slice::raw::from_raw_parts_mut::<
                            lifetime!(something),
                            int,
                        >(core::ptr::mut_ptr::impl__cast::<int, int>(data), len),
                    )),
                )) {
                    core::result::Result_Ok(n) => {
                        let _: tuple0 = { (deref(written) = n) };
                        { 1 }
                    }
                    core::result::Result_Err(e) => {
                        sandwich::implementation::openssl3_impl::tunnel::bio_method::bio_reflect_io_error::<
                            arrow!(tuple0 -> int),
                            arrow!(tuple0 -> int),
                            int,
                        >(
                            e,
                            (|_| {
                                {
                                    let _: tuple0 = {
                                        sandwich::implementation::openssl3_impl::tunnel::bio_method::impl__Bio__set_retry_read_flag(
                                            &(bio),
                                        )
                                    };
                                    { 1 }
                                }
                            }),
                            (|_| {
                                {
                                    let _: tuple0 = {
                                        sandwich::implementation::openssl3_impl::tunnel::bio_method::impl__Bio__declare_closed(
                                            &(bio),
                                        )
                                    };
                                    { 1 }
                                }
                            }),
                            1,
                        )
                    }
                })
            }
        }
    }
}


Last AST:
/** print_rust: pitem: not implemented  (item: { Concrete_ident.T.def_id =
  { Concrete_ident.Imported.krate = "sandwich";
    path =
    [{ Concrete_ident.Imported.data =
       (Concrete_ident.Imported.TypeNs "tunnel"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "rec_bundle");
        disambiguator = 473063542 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.ValueNs "bio_read"); disambiguator = 0 }
      ]
    };
  kind = Concrete_ident.Kind.Value }) */
const _: () = ();
 *)

(* item error backend: (reject_RawOrMutPointer) ExplicitRejection { reason: "a node of kind [Raw_pointer] have been found in the AST" }
Last available AST for this item:

/// BIO write callback.
#[cfg(feature = "tunnel")]
#[cfg(feature = "openssl3")]
#[deny(bare_trait_objects)]
#[feature(register_tool)]
#[register_tool(_hax)]
unsafe fn bio_write(
    bio: raw_pointer!(),
    data: raw_pointer!(),
    len: int,
    written: raw_pointer!(),
) -> int {
    {
        let bio: sandwich::implementation::openssl3_impl::tunnel::bio_method::t_Bio = {
            sandwich::implementation::openssl3_impl::tunnel::bio_method::Bio(
                core::ptr::non_null::impl_3__new_unchecked::<openssl3::t_bio_st>(bio),
            )
        };
        {
            let _: tuple0 = {
                sandwich::implementation::openssl3_impl::tunnel::bio_method::impl__Bio__clear_retry_flag(
                    &(bio),
                )
            };
            {
                (match (sandwich::implementation::openssl3_impl::tunnel::bio_method::impl__Bio__write(
                    &(bio),
                    &(deref(
                        core::slice::raw::from_raw_parts::<
                            lifetime!(something),
                            int,
                        >(core::ptr::const_ptr::impl__cast::<int, int>(data), len),
                    )),
                )) {
                    core::result::Result_Ok(n) => {
                        let _: tuple0 = { (deref(written) = n) };
                        { 1 }
                    }
                    core::result::Result_Err(e) => {
                        sandwich::implementation::openssl3_impl::tunnel::bio_method::bio_reflect_io_error::<
                            arrow!(tuple0 -> int),
                            arrow!(tuple0 -> int),
                            int,
                        >(
                            e,
                            (|_| {
                                {
                                    let _: tuple0 = {
                                        sandwich::implementation::openssl3_impl::tunnel::bio_method::impl__Bio__set_retry_write_flag(
                                            &(bio),
                                        )
                                    };
                                    { 1 }
                                }
                            }),
                            (|_| {
                                {
                                    let _: tuple0 = {
                                        sandwich::implementation::openssl3_impl::tunnel::bio_method::impl__Bio__declare_closed(
                                            &(bio),
                                        )
                                    };
                                    { 1 }
                                }
                            }),
                            1,
                        )
                    }
                })
            }
        }
    }
}


Last AST:
/** print_rust: pitem: not implemented  (item: { Concrete_ident.T.def_id =
  { Concrete_ident.Imported.krate = "sandwich";
    path =
    [{ Concrete_ident.Imported.data =
       (Concrete_ident.Imported.TypeNs "tunnel"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "rec_bundle");
        disambiguator = 473063542 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.ValueNs "bio_write"); disambiguator = 0 }
      ]
    };
  kind = Concrete_ident.Kind.Value }) */
const _: () = ();
 *)

/// Static BIO method.
let v_BIO_METH_OBJECT: Openssl3.t_bio_method_st =
  {
    Openssl3.f_type___ = cast (Openssl3.v_BIO_TYPE_SOCKET <: u32) <: i32;
    Openssl3.f_name
    =
    Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
      "core::ptr::null_mut::<int>(Tuple0)";
    Openssl3.f_bwrite
    =
    Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
      "core::option::Option_Some(\n        sandwich::implementation::openssl3_impl::tunnel::bio_method::bio_write,\n    )"
    ;
    Openssl3.f_bwrite_old
    =
    Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
      "core::option::Option_None()";
    Openssl3.f_bread
    =
    Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
      "core::option::Option_Some(\n        sandwich::implementation::openssl3_impl::tunnel::bio_method::bio_read,\n    )"
    ;
    Openssl3.f_bread_old
    =
    Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
      "core::option::Option_None()";
    Openssl3.f_bputs
    =
    Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
      "core::option::Option_None()";
    Openssl3.f_bgets
    =
    Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
      "core::option::Option_None()";
    Openssl3.f_ctrl
    =
    Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
      "core::option::Option_Some(\n        sandwich::implementation::openssl3_impl::tunnel::bio_method::bio_ctrl,\n    )"
    ;
    Openssl3.f_create
    =
    Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
      "core::option::Option_Some(\n        sandwich::implementation::openssl3_impl::tunnel::bio_method::bio_create,\n    )"
    ;
    Openssl3.f_destroy
    =
    Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
      "core::option::Option_Some(\n        sandwich::implementation::openssl3_impl::tunnel::bio_method::bio_destroy,\n    )"
    ;
    Openssl3.f_callback_ctrl
    =
    Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
      "core::option::Option_None()";
    Openssl3.f_brecvmmsg
    =
    Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
      "core::option::Option_None()";
    Openssl3.f_bsendmmsg
    =
    Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
      "core::option::Option_None()"
  }
  <:
  Openssl3.t_bio_method_st

let v_BIO_METHOD: Core.Ptr.Non_null.t_NonNull Openssl3.t_bio_method_st =
  Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
    "rust_primitives::hax::failure(\"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\"core::ptr::non_null::impl_3__new_unchecked\")::<openssl3::t_bio_method_st>(rust_primitives::hax::failure(\"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\"core::ptr::const_ptr::impl__cast_mut::<openssl3::t_bio_method_st>(address_of)\"))"

/// Creates a new Sandwich BIO and attach it to the SSL object.
val create_and_attach_bio (self: t_Ssl)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Returns the last recorded error.
val get_last_recorded_error
      (#impl_765196419_: Type0)
      {| i7: Core.Convert.t_Into impl_765196419_ i32 |}
      (self: t_Ssl)
      (ret: impl_765196419_)
    : Prims.Pure (Core.Result.t_Result Sandwich.Implementation.Openssl3_impl.Error.t_SslError i32)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Returns the error that occurred during the record stage.
/// The record stage is the stage when `SSL_read` and `SSL_write`
/// are called.
val get_error_from_record_stage (self: t_Ssl) (err: i32)
    : Prims.Pure Sandwich_proto.Tunnel.t_RecordError Prims.l_True (fun _ -> Prims.l_True)

/// Handles an SSL error of type `SSL_ERROR_SSL`.
val handle_ssl_error_ssl (self: t_Ssl)
    : Prims.Pure
      (Core.Result.t_Result Sandwich_proto.Tunnel.t_HandshakeState Sandwich.Error.t_Error &
        Core.Option.t_Option Sandwich_proto.Tunnel.t_State) Prims.l_True (fun _ -> Prims.l_True)

/// Performs the handshake.
val do_handshake (self: t_Ssl)
    : Prims.Pure
      (Core.Result.t_Result Sandwich_proto.Tunnel.t_HandshakeState Sandwich.Error.t_Error &
        Core.Option.t_Option Sandwich_proto.Tunnel.t_State) Prims.l_True (fun _ -> Prims.l_True)

/// Reads some data and writes it to a buffer.
val read796983554 (self: t_Ssl) (buffer: t_Slice u8)
    : Prims.Pure
      (t_Slice u8 &
        Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Write some data.
val write106684250 (self: t_Ssl) (buffer: t_Slice u8)
    : Prims.Pure
      (Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))
      Prims.l_True
      (fun _ -> Prims.l_True)

val handshake866067863 (self: t_Tunnel77328211)
    : Prims.Pure
      (t_Tunnel77328211 &
        Core.Result.t_Result (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_HandshakeState)
          Sandwich.Error.t_Error) Prims.l_True (fun _ -> Prims.l_True)

val read182962880 (self: t_Tunnel77328211) (buf: t_Slice u8)
    : Prims.Pure
      (t_Slice u8 &
        (t_Tunnel77328211 &
          Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError)))
      Prims.l_True
      (fun _ -> Prims.l_True)

val write696175305 (self: t_Tunnel77328211) (buf: t_Slice u8)
    : Prims.Pure
      (t_Tunnel77328211 &
        Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Sets the required Subject Alternative Names (SAN) specified in the [`pb_api::TunnelVerifier`]
/// object.
val set_subject_alternative_names
      (self: t_Ssl)
      (tunnel_verifier: Core.Option.t_Option Sandwich_api_proto.Verifiers.t_TunnelVerifier)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Prepares a tunnel structure.
val prepare_ssl (self: t_TunnelBuilder)
    : Prims.Pure
      (Core.Result.t_Result (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_st)
          Sandwich.Error.t_Error) Prims.l_True (fun _ -> Prims.l_True)

/// Builds a tunnel.
val build (self: t_TunnelBuilder)
    : Prims.Pure
      (Core.Result.t_Result
          (Core.Pin.t_Pin (Alloc.Boxed.t_Box t_Tunnel77328211 Alloc.Alloc.t_Global))
          (Sandwich.Error.t_Error & Sandwich.Tunnel.Io.t_BoxedIO))
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Creates a new tunnel.
val new_tunnel235737456
      (self: t_Context486924441)
      (io: Sandwich.Tunnel.Io.t_BoxedIO)
      (configuration: Sandwich_api_proto.Tunnel.t_TunnelConfiguration)
    : Prims.Pure
      (Core.Result.t_Result
          (Core.Pin.t_Pin (Alloc.Boxed.t_Box t_Tunnel77328211 Alloc.Alloc.t_Global))
          (Sandwich.Error.t_Error & Sandwich.Tunnel.Io.t_BoxedIO))
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Performs the handshake.
/// Depending on the return value, this method may need to be called
/// more than once.
val handshake492868715 (self: t_Tunnel70284935)
    : Prims.Pure
      (t_Tunnel70284935 &
        Core.Result.t_Result (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_HandshakeState)
          Sandwich.Error.t_Error) Prims.l_True (fun _ -> Prims.l_True)

/// Reads data from the tunnel.
val read355100115 (self: t_Tunnel70284935) (buf: t_Slice u8)
    : Prims.Pure
      (t_Slice u8 &
        (t_Tunnel70284935 &
          Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError)))
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Writes data to the tunnel.
val write350444783 (self: t_Tunnel70284935) (buf: t_Slice u8)
    : Prims.Pure
      (t_Tunnel70284935 &
        Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))
      Prims.l_True
      (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_15: Std.Io.t_Read t_Tunnel70284935 =
  {
    f_read_pre = (fun (self: t_Tunnel70284935) (buf: t_Slice u8) -> true);
    f_read_post
    =
    (fun
        (self: t_Tunnel70284935)
        (buf: t_Slice u8)
        (out1: (t_Tunnel70284935 & t_Slice u8 & Core.Result.t_Result usize Std.Io.Error.t_Error))
        ->
        true);
    f_read
    =
    fun (self: t_Tunnel70284935) (buf: t_Slice u8) ->
      let tmp0, tmp1, out:(t_Tunnel70284935 & t_Slice u8 &
        Core.Result.t_Result usize Std.Io.Error.t_Error) =
        Std.Io.f_read #t_Tunnel70284935 #FStar.Tactics.Typeclasses.solve self buf
      in
      let self:t_Tunnel70284935 = tmp0 in
      let buf:t_Slice u8 = tmp1 in
      let hax_temp_output:Core.Result.t_Result usize Std.Io.Error.t_Error =
        Core.Result.impl__map_err #usize
          #Std.Io.Error.t_Error
          #Std.Io.Error.t_Error
          out
          Core.Convert.From.from
      in
      self, buf, hax_temp_output
      <:
      (t_Tunnel70284935 & t_Slice u8 & Core.Result.t_Result usize Std.Io.Error.t_Error)
  }

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_16: Std.Io.t_Write t_Tunnel70284935 =
  {
    f_write_pre = (fun (self: t_Tunnel70284935) (buf: t_Slice u8) -> true);
    f_write_post
    =
    (fun
        (self: t_Tunnel70284935)
        (buf: t_Slice u8)
        (out1: (t_Tunnel70284935 & Core.Result.t_Result usize Std.Io.Error.t_Error))
        ->
        true);
    f_write
    =
    (fun (self: t_Tunnel70284935) (buf: t_Slice u8) ->
        let tmp0, out:(t_Tunnel70284935 & Core.Result.t_Result usize Std.Io.Error.t_Error) =
          Std.Io.f_write #t_Tunnel70284935 #FStar.Tactics.Typeclasses.solve self buf
        in
        let self:t_Tunnel70284935 = tmp0 in
        let hax_temp_output:Core.Result.t_Result usize Std.Io.Error.t_Error =
          Core.Result.impl__map_err #usize
            #Std.Io.Error.t_Error
            #Std.Io.Error.t_Error
            out
            Core.Convert.From.from
        in
        self, hax_temp_output
        <:
        (t_Tunnel70284935 & Core.Result.t_Result usize Std.Io.Error.t_Error));
    f_flush_pre = (fun (self: t_Tunnel70284935) -> true);
    f_flush_post
    =
    (fun
        (self: t_Tunnel70284935)
        (out: (t_Tunnel70284935 & Core.Result.t_Result Prims.unit Std.Io.Error.t_Error))
        ->
        true);
    f_flush
    =
    fun (self: t_Tunnel70284935) ->
      let hax_temp_output:Core.Result.t_Result Prims.unit Std.Io.Error.t_Error =
        Core.Result.Result_Ok (() <: Prims.unit)
        <:
        Core.Result.t_Result Prims.unit Std.Io.Error.t_Error
      in
      self, hax_temp_output
      <:
      (t_Tunnel70284935 & Core.Result.t_Result Prims.unit Std.Io.Error.t_Error)
  }

/// Creates a new tunnel from an I/O interface. See [`IO`] from [`crate::io`] module.
/// The I/O interface must outlive the tunnel, as the tunnel makes use
/// of it to send and receive data.
/// If an error occured, the IO interface is returned to the user.
val new_tunnel499954878
      (self: t_Context665818913)
      (io: Sandwich.Tunnel.Io.t_BoxedIO)
      (configuration: Sandwich_api_proto.Tunnel.t_TunnelConfiguration)
    : Prims.Pure
      (Core.Result.t_Result t_Tunnel70284935 (Sandwich.Error.t_Error & Sandwich.Tunnel.Io.t_BoxedIO)
      ) Prims.l_True (fun _ -> Prims.l_True)

/// Reads the content of a certificate as described in a protobuf message.
val configuration_read_certificate (cert: Sandwich_api_proto.Certificate.t_Certificate)
    : Prims.Pure
      (Core.Result.t_Result
          (Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat &
            Sandwich.Support.Data_source.t_DataSource) Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Imports the trusted certificates from the protobuf configuration to the
/// OpenSSL SSL context.
val fill_certificate_trust_store
      (self: t_SslContext)
      (lib_ctx: Sandwich.Implementation.Openssl3_impl.t_LibCtx)
      (x509_verifier: Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
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

/// Sets the X.509 identity to use.
/// If the client sets an X.509 identity, then it will expect a client
/// certificate request from the server, in order to establish a mutual
/// TLS tunnel (mTLS).
val set_identity
      (self: t_SslContext)
      (lib_ctx: Sandwich.Implementation.Openssl3_impl.t_LibCtx)
      (identity: Core.Option.t_Option Sandwich_api_proto.Tls.t_X509Identity)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Instantiates a new [`Context`] from a [protobuf configuration](`pb_api::Configuration`)
/// and a top-level context.
val try_from263357434
      (ctx: Sandwich.t_Context)
      (configuration: Sandwich_api_proto.Configuration.t_Configuration)
    : Prims.Pure (Core.Result.t_Result t_Context486924441 Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Instantiates a [`Context`] from a protobuf configuration message.
/// # Examples
/// ## Constructs a configuration in Rust.
/// ```
/// use sandwich_api_proto as pb_api;
/// // Instantiates a top-level context.
/// let sw = sandwich::Context;
/// // Creates a protobuf configuration
/// let mut configuration = pb_api::Configuration::new();
/// // Sets the implementation to be used by Sandwich. Here it's OpenSSL 1.1.1
/// // with liboqs.
/// configuration.set_impl(pb_api::Implementation::IMPL_OPENSSL1_1_1_OQS);
/// // Sets the client or server configuration according to the implementation
/// // and the protocol.
/// // …
/// // Creates the Sandwich context that will make use of the supplied
/// // configuration.
/// match sandwich::context::try_from(&sw, &configuration) {
///     Err(e) => eprintln!("Failed to instantiate a Sandwich context: {}", e),
///     Ok(context) => {
///         // Do something with `context`.
///     }
/// };
/// ```
val try_from541313740
      (context: Sandwich.t_Context)
      (configuration: Sandwich_api_proto.Configuration.t_Configuration)
    : Prims.Pure (Core.Result.t_Result t_Context665818913 Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)
