module Sandwich.Implementation.Openssl3_impl.Rec_bundle_686151964
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Sandwich.Error in
  let open Sandwich.Error.Code in
  let open Std.Ffi.Os_str in
  ()

(* item error backend: (reject_RawOrMutPointer) ExplicitRejection { reason: "a node of kind [Raw_pointer] have been found in the AST" }
Last available AST for this item:

/// A convenient builder for providers.
#[cfg(feature = "openssl3")]
#[deny(bare_trait_objects)]
#[feature(register_tool)]
#[register_tool(_hax)]
struct t_ProviderBuilder {
    /// Name of the provider, C format.
    f_name: core::option::t_Option<raw_pointer!()>,
    /// Library context.
    f_lib_ctx: core::option::t_Option<
        core::ptr::non_null::t_NonNull<openssl3::t_ossl_lib_ctx_st>,
    >,
}


Last AST:
/** print_rust: pitem: not implemented  (item: { Concrete_ident.T.def_id =
  { Concrete_ident.Imported.krate = "sandwich";
    path =
    [{ Concrete_ident.Imported.data =
       (Concrete_ident.Imported.TypeNs "implementation"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "openssl3_impl"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "rec_bundle");
        disambiguator = 686151964 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "ProviderBuilder"); disambiguator = 0
        }
      ]
    };
  kind = Concrete_ident.Kind.Value }) */
const _: () = ();
 *)

/// Sets the library context.
val lib_ctx
      (self: v_ProviderBuilder)
      (lib_ctx: Core.Ptr.Non_null.t_NonNull Openssl3.t_ossl_lib_ctx_st)
    : Prims.Pure v_ProviderBuilder Prims.l_True (fun _ -> Prims.l_True)

(* item error backend: (reject_RawOrMutPointer) ExplicitRejection { reason: "a node of kind [Raw_pointer] have been found in the AST" }
Last available AST for this item:

/// Sets the name.
#[cfg(feature = "openssl3")]
#[deny(bare_trait_objects)]
#[feature(register_tool)]
#[register_tool(_hax)]
fn impl__ProviderBuilder__name(
    self: sandwich::implementation::openssl3_impl::t_ProviderBuilder,
    name: raw_pointer!(),
) -> sandwich::implementation::openssl3_impl::t_ProviderBuilder {
    {
        sandwich::implementation::openssl3_impl::ProviderBuilder {
            f_name: core::option::Option_Some(name),
            ..(self)
        }
    }
}


Last AST:
/** print_rust: pitem: not implemented  (item: { Concrete_ident.T.def_id =
  { Concrete_ident.Imported.krate = "sandwich";
    path =
    [{ Concrete_ident.Imported.data =
       (Concrete_ident.Imported.TypeNs "implementation"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "openssl3_impl"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "rec_bundle");
        disambiguator = 686151964 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.ValueNs "name"); disambiguator = 0 }
      ]
    };
  kind = Concrete_ident.Kind.Value }) */
const _: () = ();
 *)

/// Initializes a builder.
val v_new: Prims.unit -> Prims.Pure v_ProviderBuilder Prims.l_True (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_1: Core.Default.t_Default v_ProviderBuilder =
  {
    f_default_pre = (fun (_: Prims.unit) -> true);
    f_default_post = (fun (_: Prims.unit) (out: v_ProviderBuilder) -> true);
    f_default = fun (_: Prims.unit) -> v_new ()
  }

/// Returns the cipher name in the OpenSSL format.
val cipher_name
      (#impl_488124255_: Type0)
      {| i1: Core.Convert.t_AsRef impl_488124255_ string |}
      (name: impl_488124255_)
    : Prims.Pure (Core.Option.t_Option string) Prims.l_True (fun _ -> Prims.l_True)

/// Returns the library where a given error occurred.
/// This function reproduces the `ERR_GET_LIB` method from OpenSSL, which
/// is a static function in header (thus not understandable by bindgen).
val err_get_lib (err: u64) : Prims.Pure i32 Prims.l_True (fun _ -> Prims.l_True)

/// Returns the reason of why a given error occurred.
/// This function reproduces the `ERR_GET_REASON` method from OpenSSL, which
/// is a static function in header (thus not understandable by bindgen).
val err_get_reason (err: u64) : Prims.Pure i32 Prims.l_True (fun _ -> Prims.l_True)

let v_DEFAULT_BUFFER_LEN: usize = sz 256

/// Tells if a BIO has reached EOF.
val is_BIO_eof (bio: Core.Ptr.Non_null.t_NonNull Openssl3.t_bio_st)
    : Prims.Pure bool Prims.l_True (fun _ -> Prims.l_True)

/// Returns the last error.
val peek_last_error: Prims.unit -> Prims.Pure u64 Prims.l_True (fun _ -> Prims.l_True)

/// The default provider name.
let v_DEFAULT_PROVIDER_NAME: t_Array u8 (sz 8) =
  let list = [100uy; 101uy; 102uy; 97uy; 117uy; 108uy; 116uy; 0uy] in
  FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 8);
  Rust_primitives.Hax.array_of_list 8 list

/// Pointer to the default provider name.
let v_DEFAULT_PROVIDER_NAME_PTR: Rust_primitives.Hax.t_failure =
  Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
    "core::ptr::const_ptr::impl__cast::<\n        int,\n        int,\n    >(\n        rust_primitives::hax::failure(\n            \"(AST import) Fatal error: something we considered as impossible occurred! \\027[1mPlease report this by submitting an issue on GitHub!\\027[0m\\nDetails: Pointer, with [cast] being Types.ArrayToPointer\",\n            \"{ Types.attributes = [];\\n  contents =\\n  Types.PointerCoercion {cast = Types.ArrayToPointer;\\n    source =\\n    { Types.attributes = [];\\n      contents =\\n      Types.AddressOf {\\n        arg =\\n        { Types.attributes = [];\\n          contents =\\n          Types.Deref {\\n            arg =\\n            { Types.attributes = [];\\n              contents =\\n              Types.NamedConst {args = [];\\n                def_id =\\n                { Types.index = (0, 511); is_local = true;\\n                  krate = \\\"sandwich\\\";\\n                  path =\\n                  [{ Types.data = (Types.TypeNs \\\"implementation\\\");\\n                     disambiguator = 0 };\\n                    { Types.data = (Types.TypeNs \\\"openssl3_impl\\\");\\n                      disambiguator = 0 };\\n                    { Types.data = (Types.ValueNs \\\"DEFAULT_PROVIDER_NAME\\\");\\n                      disambiguator = 0 }\\n                    ]\\n                  };\\n                impl = None; user_ty = None};\\n              hir_id = None;\\n              span =\\n              { Types.filename =\\n                (Types.Real\\n                   (Types.LocalPath\\n                      \\\"rust/implementation/openssl3_impl/mod.rs\\\"));\\n                hi = { Types.col = \\\"71\\\"; line = \\\"29\\\" };\\n                lo = { Types.col = \\\"50\\\"; line = \\\"29\\\" } };\\n              ty =\\n              { Types.kind =\\n                (Types.Ref\\n                   ({ Types.kind = Types.ReErased },\\n                    { Types.kind =\\n                      (Types.Array\\n                         ({ Types.kind = (Types.Uint Types.U8) },\\n                          { Types.attributes = [];\\n                            contents =\\n                            (Types.Literal\\n                               (Types.Int (Types.Uint (\\\"8\\\", Types.Usize))));\\n                            hir_id = None;\\n                            span =\\n                            { Types.filename =\\n                              (Types.Real (Types.LocalPath \\\"rust/lib.rs\\\"));\\n                              hi = { Types.col = \\\"0\\\"; line = \\\"1\\\" };\\n                              lo = { Types.col = \\\"0\\\"; line = \\\"1\\\" } };\\n                            ty = { Types.kind = (Types.Uint Types.Usize) } }))\\n                      },\\n                    false))\\n                }\\n              }};\\n          hir_id = None;\\n          span =\\n          { Types.filename =\\n            (Types.Real\\n               (Types.LocalPath \\\"rust/implementation/openssl3_impl/mod.rs\\\"));\\n            hi = { Types.col = \\\"71\\\"; line = \\\"29\\\" };\\n            lo = { Types.col = \\\"50\\\"; line = \\\"29\\\" } };\\n          ty =\\n          { Types.kind =\\n            (Types.Array\\n               ({ Types.kind = (Types.Uint Types.U8) },\\n                { Types.attributes = [];\\n                  contents =\\n                  (Types.Literal (Types.Int (Types.Uint (\\\"8\\\", Types.Usize))));\\n                  hir_id = None;\\n                  span =\\n                  { Types.filename =\\n                    (Types.Real (Types.LocalPath \\\"rust/lib.rs\\\"));\\n                    hi = { Types.col = \\\"0\\\"; line = \\\"1\\\" };\\n                    lo = { Types.col = \\\"0\\\"; line = \\\"1\\\" } };\\n                  ty = { Types.kind = (Types.Uint Types.Usize) } }))\\n            }\\n          };\\n        mutability = false};\\n      hir_id = (Some (\\\"513\\\", \\\"7\\\"));\\n      span =\\n      { Types.filename =\\n        (Types.Real\\n           (Types.LocalPath \\\"rust/implementation/openssl3_impl/mod.rs\\\"));\\n        hi = { Types.col = \\\"71\\\"; line = \\\"29\\\" };\\n        lo = { Types.col = \\\"50\\\"; line = \\\"29\\\" } };\\n      ty =\\n      { Types.kind =\\n        (Types.RawPtr\\n           ({ Types.kind =\\n              (Types.Array\\n                 ({ Types.kind = (Types.Uint Types.U8) },\\n                  { Types.attributes = [];\\n                    contents =\\n                    (Types.Literal\\n                       (Types.Int (Types.Uint (\\\"8\\\", Types.Usize))));\\n                    hir_id = None;\\n                    span =\\n                    { Types.filename =\\n                      (Types.Real (Types.LocalPath \\\"rust/lib.rs\\\"));\\n                      hi = { Types.col = \\\"0\\\"; line = \\\"1\\\" };\\n                      lo = { Types.col = \\\"0\\\"; line = \\\"1\\\" } };\\n                    ty = { Types.kind = (Types.Uint Types.Usize) } }))\\n              },\\n            false))\\n        }\\n      }};\\n  hir_id = (Some (\\\"513\\\", \\\"6\\\"));\\n  span =\\n  { Types.filename =\\n    (Types.Real (Types.LocalPath \\\"rust/implementation/openssl3_impl/mod.rs\\\"));\\n    hi = { Types.col = \\\"85\\\"; line = \\\"29\\\" };\\n    lo = { Types.col = \\\"49\\\"; line = \\\"29\\\" } };\\n  ty =\\n  { Types.kind =\\n    (Types.RawPtr ({ Types.kind = (Types.Uint Types.U8) }, false)) }\\n  }\",\n        ),\n    )"

/// The oqs-provider provider name.
let v_OQS_PROVIDER_NAME: t_Array u8 (sz 12) =
  let list = [111uy; 113uy; 115uy; 112uy; 114uy; 111uy; 118uy; 105uy; 100uy; 101uy; 114uy; 0uy] in
  FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 12);
  Rust_primitives.Hax.array_of_list 12 list

/// Pointer to the oqs-provider provider name.
let v_OQS_PROVIDER_NAME_PTR: Rust_primitives.Hax.t_failure =
  Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
    "core::ptr::const_ptr::impl__cast::<\n        int,\n        int,\n    >(\n        rust_primitives::hax::failure(\n            \"(AST import) Fatal error: something we considered as impossible occurred! \\027[1mPlease report this by submitting an issue on GitHub!\\027[0m\\nDetails: Pointer, with [cast] being Types.ArrayToPointer\",\n            \"{ Types.attributes = [];\\n  contents =\\n  Types.PointerCoercion {cast = Types.ArrayToPointer;\\n    source =\\n    { Types.attributes = [];\\n      contents =\\n      Types.AddressOf {\\n        arg =\\n        { Types.attributes = [];\\n          contents =\\n          Types.Deref {\\n            arg =\\n            { Types.attributes = [];\\n              contents =\\n              Types.NamedConst {args = [];\\n                def_id =\\n                { Types.index = (0, 514); is_local = true;\\n                  krate = \\\"sandwich\\\";\\n                  path =\\n                  [{ Types.data = (Types.TypeNs \\\"implementation\\\");\\n                     disambiguator = 0 };\\n                    { Types.data = (Types.TypeNs \\\"openssl3_impl\\\");\\n                      disambiguator = 0 };\\n                    { Types.data = (Types.ValueNs \\\"OQS_PROVIDER_NAME\\\");\\n                      disambiguator = 0 }\\n                    ]\\n                  };\\n                impl = None; user_ty = None};\\n              hir_id = None;\\n              span =\\n              { Types.filename =\\n                (Types.Real\\n                   (Types.LocalPath\\n                      \\\"rust/implementation/openssl3_impl/mod.rs\\\"));\\n                hi = { Types.col = \\\"63\\\"; line = \\\"35\\\" };\\n                lo = { Types.col = \\\"46\\\"; line = \\\"35\\\" } };\\n              ty =\\n              { Types.kind =\\n                (Types.Ref\\n                   ({ Types.kind = Types.ReErased },\\n                    { Types.kind =\\n                      (Types.Array\\n                         ({ Types.kind = (Types.Uint Types.U8) },\\n                          { Types.attributes = [];\\n                            contents =\\n                            (Types.Literal\\n                               (Types.Int (Types.Uint (\\\"12\\\", Types.Usize))));\\n                            hir_id = None;\\n                            span =\\n                            { Types.filename =\\n                              (Types.Real (Types.LocalPath \\\"rust/lib.rs\\\"));\\n                              hi = { Types.col = \\\"0\\\"; line = \\\"1\\\" };\\n                              lo = { Types.col = \\\"0\\\"; line = \\\"1\\\" } };\\n                            ty = { Types.kind = (Types.Uint Types.Usize) } }))\\n                      },\\n                    false))\\n                }\\n              }};\\n          hir_id = None;\\n          span =\\n          { Types.filename =\\n            (Types.Real\\n               (Types.LocalPath \\\"rust/implementation/openssl3_impl/mod.rs\\\"));\\n            hi = { Types.col = \\\"63\\\"; line = \\\"35\\\" };\\n            lo = { Types.col = \\\"46\\\"; line = \\\"35\\\" } };\\n          ty =\\n          { Types.kind =\\n            (Types.Array\\n               ({ Types.kind = (Types.Uint Types.U8) },\\n                { Types.attributes = [];\\n                  contents =\\n                  (Types.Literal (Types.Int (Types.Uint (\\\"12\\\", Types.Usize))));\\n                  hir_id = None;\\n                  span =\\n                  { Types.filename =\\n                    (Types.Real (Types.LocalPath \\\"rust/lib.rs\\\"));\\n                    hi = { Types.col = \\\"0\\\"; line = \\\"1\\\" };\\n                    lo = { Types.col = \\\"0\\\"; line = \\\"1\\\" } };\\n                  ty = { Types.kind = (Types.Uint Types.Usize) } }))\\n            }\\n          };\\n        mutability = false};\\n      hir_id = (Some (\\\"516\\\", \\\"7\\\"));\\n      span =\\n      { Types.filename =\\n        (Types.Real\\n           (Types.LocalPath \\\"rust/implementation/openssl3_impl/mod.rs\\\"));\\n        hi = { Types.col = \\\"63\\\"; line = \\\"35\\\" };\\n        lo = { Types.col = \\\"46\\\"; line = \\\"35\\\" } };\\n      ty =\\n      { Types.kind =\\n        (Types.RawPtr\\n           ({ Types.kind =\\n              (Types.Array\\n                 ({ Types.kind = (Types.Uint Types.U8) },\\n                  { Types.attributes = [];\\n                    contents =\\n                    (Types.Literal\\n                       (Types.Int (Types.Uint (\\\"12\\\", Types.Usize))));\\n                    hir_id = None;\\n                    span =\\n                    { Types.filename =\\n                      (Types.Real (Types.LocalPath \\\"rust/lib.rs\\\"));\\n                      hi = { Types.col = \\\"0\\\"; line = \\\"1\\\" };\\n                      lo = { Types.col = \\\"0\\\"; line = \\\"1\\\" } };\\n                    ty = { Types.kind = (Types.Uint Types.Usize) } }))\\n              },\\n            false))\\n        }\\n      }};\\n  hir_id = (Some (\\\"516\\\", \\\"6\\\"));\\n  span =\\n  { Types.filename =\\n    (Types.Real (Types.LocalPath \\\"rust/implementation/openssl3_impl/mod.rs\\\"));\\n    hi = { Types.col = \\\"77\\\"; line = \\\"35\\\" };\\n    lo = { Types.col = \\\"45\\\"; line = \\\"35\\\" } };\\n  ty =\\n  { Types.kind =\\n    (Types.RawPtr ({ Types.kind = (Types.Uint Types.U8) }, false)) }\\n  }\",\n        ),\n    )"

/// A wrapper around an `OSSL_PROVIDER`.
type t_Provider =
  | Provider : Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ossl_provider_st -> t_Provider

/// An `OSSL_LIB_CTX` object wrapped in a `Pimpl`.
type t_LibCtx = {
  f__oqs_provider:t_Provider;
  f__default_provider:t_Provider;
  f_lib_ctx:Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ossl_lib_ctx_st
}

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl: Core.Fmt.t_Debug t_Provider =
  {
    f_fmt_pre = (fun (self: t_Provider) (f: Core.Fmt.t_Formatter) -> true);
    f_fmt_post
    =
    (fun
        (self: t_Provider)
        (f: Core.Fmt.t_Formatter)
        (out1: (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error))
        ->
        true);
    f_fmt
    =
    fun (self: t_Provider) (f: Core.Fmt.t_Formatter) ->
      let tmp0, out:(Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error) =
        Core.Fmt.impl_9__write_fmt f
          (Core.Fmt.impl_2__new_v1 (sz 1)
              (sz 1)
              (let list = ["Provider("] in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                Rust_primitives.Hax.array_of_list 1 list)
              (let list =
                  [
                    Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
                      "core::fmt::rt::impl_1__new_pointer::<\n        lifetime!(something),\n        raw_pointer!(),\n    >(\n        &(deref(\n            &(core::ptr::non_null::impl_3__as_ptr::<\n                openssl3::t_ossl_provider_st,\n            >(\n                sandwich::support::pimpl::impl_2__as_nonnull::<\n                    lifetime!(something),\n                    openssl3::t_ossl_provider_st,\n                >(&(proj_sandwich::implementation::openssl3_impl::_0(deref(self)))),\n            )),\n        )),\n    )"

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

/// Returns a pointer to the top-level library context.
val as_nonnull (self: t_LibCtx)
    : Prims.Pure (Core.Ptr.Non_null.t_NonNull Openssl3.t_ossl_lib_ctx_st)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Returns a string containing the error strings for all errors that
/// OpenSSL 3 has recorded.
/// This function clears the error queue.
val errstr: Prims.unit -> Prims.Pure Alloc.String.t_String Prims.l_True (fun _ -> Prims.l_True)

/// Builds the provider.
val build (self: v_ProviderBuilder)
    : Prims.Pure (Core.Result.t_Result t_Provider Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Creates a `BIO` object from a immutable buffer.
val v_BIO_from_buffer
      (#impl_424714745_: Type0)
      {| i1: Core.Convert.t_AsRef impl_424714745_ (t_Slice u8) |}
      (buffer: impl_424714745_)
    : Prims.Pure
      (Core.Result.t_Result (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_bio_st)
          Sandwich.Error.t_Error) Prims.l_True (fun _ -> Prims.l_True)

/// Reads a private key (`EVP_PKEY` object) from a `BIO` object.
val v_EVP_PKEY_from_BIO
      (lib_ctx: t_LibCtx)
      (bio: Core.Ptr.Non_null.t_NonNull Openssl3.t_bio_st)
      (format: Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat)
    : Prims.Pure
      (Core.Result.t_Result (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_evp_pkey_st)
          Sandwich.Error.t_Error) Prims.l_True (fun _ -> Prims.l_True)

/// Reads a certificate (`X509` object) from a `BIO` object.
val v_X509_from_BIO
      (lib_ctx: t_LibCtx)
      (bio: Core.Ptr.Non_null.t_NonNull Openssl3.t_bio_st)
      (format: Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat)
    : Prims.Pure
      (Core.Result.t_Result (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_x509_st)
          Sandwich.Error.t_Error) Prims.l_True (fun _ -> Prims.l_True)

/// Creates a new `BIO` object with a specific method.
val new_BIO (bio_meth: Core.Ptr.Non_null.t_NonNull Openssl3.t_bio_method_st)
    : Prims.Pure
      (Core.Result.t_Result (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_bio_st)
          Sandwich.Error.t_Error) Prims.l_True (fun _ -> Prims.l_True)

/// Instantiates a new top-level library context.
val try_new: Prims.unit
  -> Prims.Pure (Core.Result.t_Result t_LibCtx Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)
