module Sandwich.Implementation.Openssl3.Support
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Sandwich.Error in
  let open Sandwich.Error.Code in
  ()

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

let errstr__DEFAULT_BUFFER_LEN: usize = sz 256

/// Tells if a BIO has reached EOF.
val is_BIO_eof (bio: Core.Ptr.Non_null.t_NonNull Openssl3.t_bio_st)
    : Prims.Pure bool Prims.l_True (fun _ -> Prims.l_True)

/// Returns the last error.
val peek_last_error: Prims.unit -> Prims.Pure u64 Prims.l_True (fun _ -> Prims.l_True)

/// Returns a string containing the error strings for all errors that
/// OpenSSL 3 has recorded.
/// This function clears the error queue.
val errstr: Prims.unit -> Prims.Pure Alloc.String.t_String Prims.l_True (fun _ -> Prims.l_True)

/// Creates a `BIO` object from a immutable buffer.
val v_BIO_from_buffer
      (#impl_424714745_: Type0)
      {| i1: Core.Convert.t_AsRef impl_424714745_ (t_Slice u8) |}
      (buffer: impl_424714745_)
    : Prims.Pure
      (Core.Result.t_Result (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_bio_st)
          Sandwich.Error.t_Error) Prims.l_True (fun _ -> Prims.l_True)

/// Creates a new `BIO` object with a specific method.
val new_BIO (bio_meth: Core.Ptr.Non_null.t_NonNull Openssl3.t_bio_method_st)
    : Prims.Pure
      (Core.Result.t_Result (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_bio_st)
          Sandwich.Error.t_Error) Prims.l_True (fun _ -> Prims.l_True)

/// Reads a private key (`EVP_PKEY` object) from a `BIO` object.
val v_EVP_PKEY_from_BIO
      (lib_ctx: Sandwich.Implementation.Openssl3.t_LibCtx)
      (bio: Core.Ptr.Non_null.t_NonNull Openssl3.t_bio_st)
      (format: Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat)
    : Prims.Pure
      (Core.Result.t_Result (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_evp_pkey_st)
          Sandwich.Error.t_Error) Prims.l_True (fun _ -> Prims.l_True)

/// Reads a certificate (`X509` object) from a `BIO` object.
val v_X509_from_BIO
      (lib_ctx: Sandwich.Implementation.Openssl3.t_LibCtx)
      (bio: Core.Ptr.Non_null.t_NonNull Openssl3.t_bio_st)
      (format: Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat)
    : Prims.Pure
      (Core.Result.t_Result (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_x509_st)
          Sandwich.Error.t_Error) Prims.l_True (fun _ -> Prims.l_True)
