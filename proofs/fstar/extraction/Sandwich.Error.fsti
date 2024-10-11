module Sandwich.Error
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Sandwich.Error.Code in
  ()

/// An error.
/// An [`Error`] holds a chain of [`ProtoBasedErrorCode`].
type t_Error =
  | Error : Alloc.Vec.t_Vec Sandwich.Error.Code.t_ErrorCode Alloc.Alloc.t_Global -> t_Error

/// Instantiates an [`Error`] from an enum value.
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl
      (#v_ErrorEnum: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()]
          i1:
          Sandwich.Error.Code.t_AllowedProtoBasedErrorCodeEnum v_ErrorEnum)
      (#[FStar.Tactics.Typeclasses.tcresolve ()]
          i2:
          Core.Convert.t_From Sandwich.Error.Code.t_ErrorCode v_ErrorEnum)
    : Core.Convert.t_From t_Error v_ErrorEnum =
  {
    f_from_pre = (fun (e: v_ErrorEnum) -> true);
    f_from_post = (fun (e: v_ErrorEnum) (out: t_Error) -> true);
    f_from
    =
    fun (e: v_ErrorEnum) ->
      Error
      (Alloc.Slice.impl__into_vec #Sandwich.Error.Code.t_ErrorCode
          #Alloc.Alloc.t_Global
          (Rust_primitives.unsize (Rust_primitives.Hax.box_new (let list =
                      [
                        Core.Convert.f_from #Sandwich.Error.Code.t_ErrorCode
                          #v_ErrorEnum
                          #FStar.Tactics.Typeclasses.solve
                          e
                        <:
                        Sandwich.Error.Code.t_ErrorCode
                      ]
                    in
                    FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                    Rust_primitives.Hax.array_of_list 1 list)
                <:
                Alloc.Boxed.t_Box (t_Array Sandwich.Error.Code.t_ErrorCode (sz 1))
                  Alloc.Alloc.t_Global)
            <:
            Alloc.Boxed.t_Box (t_Slice Sandwich.Error.Code.t_ErrorCode) Alloc.Alloc.t_Global))
      <:
      t_Error
  }

/// Instantiates an [`Error`] from an enum value and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_2
      (#v_ErrorEnum: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()]
          i1:
          Sandwich.Error.Code.t_AllowedProtoBasedErrorCodeEnum v_ErrorEnum)
      (#[FStar.Tactics.Typeclasses.tcresolve ()]
          i2:
          Core.Convert.t_From Sandwich.Error.Code.t_ErrorCode (v_ErrorEnum & string))
    : Core.Convert.t_From t_Error (v_ErrorEnum & string) =
  {
    f_from_pre = (fun (e, s: (v_ErrorEnum & string)) -> true);
    f_from_post = (fun (e, s: (v_ErrorEnum & string)) (out: t_Error) -> true);
    f_from
    =
    fun (e, s: (v_ErrorEnum & string)) ->
      Error
      (Alloc.Slice.impl__into_vec #Sandwich.Error.Code.t_ErrorCode
          #Alloc.Alloc.t_Global
          (Rust_primitives.unsize (Rust_primitives.Hax.box_new (let list =
                      [
                        Core.Convert.f_from #Sandwich.Error.Code.t_ErrorCode
                          #(v_ErrorEnum & string)
                          #FStar.Tactics.Typeclasses.solve
                          (e, s <: (v_ErrorEnum & string))
                        <:
                        Sandwich.Error.Code.t_ErrorCode
                      ]
                    in
                    FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                    Rust_primitives.Hax.array_of_list 1 list)
                <:
                Alloc.Boxed.t_Box (t_Array Sandwich.Error.Code.t_ErrorCode (sz 1))
                  Alloc.Alloc.t_Global)
            <:
            Alloc.Boxed.t_Box (t_Slice Sandwich.Error.Code.t_ErrorCode) Alloc.Alloc.t_Global))
      <:
      t_Error
  }

/// Instantiates an [`Error`] from an enum value and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_3
      (#v_ErrorEnum: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()]
          i1:
          Sandwich.Error.Code.t_AllowedProtoBasedErrorCodeEnum v_ErrorEnum)
      (#[FStar.Tactics.Typeclasses.tcresolve ()]
          i2:
          Core.Convert.t_From Sandwich.Error.Code.t_ErrorCode (v_ErrorEnum & Alloc.String.t_String))
    : Core.Convert.t_From t_Error (v_ErrorEnum & Alloc.String.t_String) =
  {
    f_from_pre = (fun (e, s: (v_ErrorEnum & Alloc.String.t_String)) -> true);
    f_from_post = (fun (e, s: (v_ErrorEnum & Alloc.String.t_String)) (out: t_Error) -> true);
    f_from
    =
    fun (e, s: (v_ErrorEnum & Alloc.String.t_String)) ->
      Error
      (Alloc.Slice.impl__into_vec #Sandwich.Error.Code.t_ErrorCode
          #Alloc.Alloc.t_Global
          (Rust_primitives.unsize (Rust_primitives.Hax.box_new (let list =
                      [
                        Core.Convert.f_from #Sandwich.Error.Code.t_ErrorCode
                          #(v_ErrorEnum & Alloc.String.t_String)
                          #FStar.Tactics.Typeclasses.solve
                          (e, s <: (v_ErrorEnum & Alloc.String.t_String))
                        <:
                        Sandwich.Error.Code.t_ErrorCode
                      ]
                    in
                    FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                    Rust_primitives.Hax.array_of_list 1 list)
                <:
                Alloc.Boxed.t_Box (t_Array Sandwich.Error.Code.t_ErrorCode (sz 1))
                  Alloc.Alloc.t_Global)
            <:
            Alloc.Boxed.t_Box (t_Slice Sandwich.Error.Code.t_ErrorCode) Alloc.Alloc.t_Global))
      <:
      t_Error
  }

/// Appends an [`Error`] into the chain, using the `>>` operator.
/// The `>>` operator is used to easily build a chain of error:
/// `child_error -> parent_error`, where `child_error` is more precise than
/// `parent_error`.
/// # Example
/// ```
///   // Creates a new Error.
///   let e = Error::from(pb::ASN1Error::ASN1ERROR_INVALID_FORMAT);
///   // Creates a new Error, "invalid certificate", and appends the previous one.
///   let e = e >> pb::CertificateError::CERTIFICATEERROR_MALFORMED;
///   // Now, the error chain is the following:
///   // CertificateError::CERTIFICATEERROR_MALFORMED -> ASN1Error>>ASN1ERROR_INVALID_FORMAT
///   // It is read as "a certificate error occurred: malformed certificate,
///   // because: an ASN.1 error occurred: invalid format".
/// ```
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_9
      (#v_ErrorEnum: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()]
          i1:
          Sandwich.Error.Code.t_AllowedProtoBasedErrorCodeEnum v_ErrorEnum)
      (#[FStar.Tactics.Typeclasses.tcresolve ()]
          i2:
          Core.Convert.t_From Sandwich.Error.Code.t_ErrorCode v_ErrorEnum)
    : Core.Ops.Bit.t_Shr t_Error v_ErrorEnum =
  {
    f_Output = t_Error;
    f_shr_pre = (fun (self: t_Error) (e: v_ErrorEnum) -> true);
    f_shr_post = (fun (self: t_Error) (e: v_ErrorEnum) (out: t_Error) -> true);
    f_shr
    =
    fun (self: t_Error) (e: v_ErrorEnum) ->
      let n:t_Error = Error self._0 <: t_Error in
      let n:t_Error =
        {
          n with
          _0
          =
          Alloc.Vec.impl_1__push #Sandwich.Error.Code.t_ErrorCode
            #Alloc.Alloc.t_Global
            n._0
            (Core.Convert.f_from #Sandwich.Error.Code.t_ErrorCode
                #v_ErrorEnum
                #FStar.Tactics.Typeclasses.solve
                e
              <:
              Sandwich.Error.Code.t_ErrorCode)
        }
        <:
        t_Error
      in
      n
  }
