module Sandwich.Implementation.Openssl3_impl.Rec_bundle_65087417
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

/// A convenient builder for providers.
type t_ProviderBuilder = {
  f_name:Core.Option.t_Option Core.Ffi.C_str.t_CStr;
  f_lib_ctx:Core.Option.t_Option (Core.Ptr.Non_null.t_NonNull Openssl3.t_ossl_lib_ctx_st)
}

/// Sets the library context.
val lib_ctx
      (self: t_ProviderBuilder)
      (lib_ctx: Core.Ptr.Non_null.t_NonNull Openssl3.t_ossl_lib_ctx_st)
    : Prims.Pure t_ProviderBuilder Prims.l_True (fun _ -> Prims.l_True)

/// Sets the name.
val name (self: t_ProviderBuilder) (name: Core.Ffi.C_str.t_CStr)
    : Prims.Pure t_ProviderBuilder Prims.l_True (fun _ -> Prims.l_True)

/// Initializes a builder.
val v_new: Prims.unit -> Prims.Pure t_ProviderBuilder Prims.l_True (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_1: Core.Default.t_Default t_ProviderBuilder =
  {
    f_default_pre = (fun (_: Prims.unit) -> true);
    f_default_post = (fun (_: Prims.unit) (out: t_ProviderBuilder) -> true);
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
let v_DEFAULT_PROVIDER_NAME: Core.Ffi.C_str.t_CStr =
  let list = [100uy; 101uy; 102uy; 97uy; 117uy; 108uy; 116uy; 0uy] in
  FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 8);
  Rust_primitives.Hax.array_of_list 8 list

/// The oqs-provider provider name.
let v_OQS_PROVIDER_NAME: Core.Ffi.C_str.t_CStr =
  let list = [111uy; 113uy; 115uy; 112uy; 114uy; 111uy; 118uy; 105uy; 100uy; 101uy; 114uy; 0uy] in
  FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 12);
  Rust_primitives.Hax.array_of_list 12 list

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
val build (self: t_ProviderBuilder)
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
