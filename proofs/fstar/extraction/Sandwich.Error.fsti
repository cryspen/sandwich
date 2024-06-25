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
val impl
      (#v_ErrorEnum: Type0)
      {| i1: Sandwich.Error.Code.t_AllowedProtoBasedErrorCodeEnum v_ErrorEnum |}
      {| i2: Core.Convert.t_From Sandwich.Error.Code.t_ErrorCode v_ErrorEnum |}
    : Core.Convert.t_From #t_Error #v_ErrorEnum

/// Instantiates an [`Error`] from an enum value and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_1
      (#v_ErrorEnum #v_S: Type0)
      {| i2: Sandwich.Error.Code.t_AllowedProtoBasedErrorCodeEnum v_ErrorEnum |}
      {| i3: Core.Convert.t_AsRef v_S string |}
      {| i4: Core.Convert.t_From Sandwich.Error.Code.t_ErrorCode (v_ErrorEnum & v_S) |}
    : Core.Convert.t_From #t_Error #(v_ErrorEnum & v_S)

/// Instantiates an [`Error`] from an enum value and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_2
      (#v_ErrorEnum: Type0)
      {| i1: Sandwich.Error.Code.t_AllowedProtoBasedErrorCodeEnum v_ErrorEnum |}
      {| i2: Core.Convert.t_From Sandwich.Error.Code.t_ErrorCode (v_ErrorEnum & string) |}
    : Core.Convert.t_From #t_Error #(v_ErrorEnum & string)

/// Instantiates an [`Error`] from an enum value and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_3
      (#v_ErrorEnum: Type0)
      {| i1: Sandwich.Error.Code.t_AllowedProtoBasedErrorCodeEnum v_ErrorEnum |}
      {| i2:
          Core.Convert.t_From Sandwich.Error.Code.t_ErrorCode (v_ErrorEnum & Alloc.String.t_String)
        |}
    : Core.Convert.t_From #t_Error #(v_ErrorEnum & Alloc.String.t_String)

/// Instantiates an [`Error`] from an [`ProtoBasedErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_4:Core.Convert.t_From #t_Error #Sandwich.Error.Code.t_ProtoBasedErrorCode

/// Instantiates an [`Error`] from an enum value and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_5 (#v_S: Type0) {| i1: Core.Convert.t_AsRef v_S string |}
    : Core.Convert.t_From #t_Error #(Sandwich.Error.Code.t_ProtoBasedErrorCode & v_S)

/// Instantiates an [`Error`] from an enum value and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_6:Core.Convert.t_From #t_Error #(Sandwich.Error.Code.t_ProtoBasedErrorCode & string)

/// Instantiates an [`Error`] from an enum value and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_7:Core.Convert.t_From #t_Error
  #(Sandwich.Error.Code.t_ProtoBasedErrorCode & Alloc.String.t_String)

/// Instantiates an [`Error`] from an [`ErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_8:Core.Convert.t_From #t_Error #Sandwich.Error.Code.t_ErrorCode

/// Implements [`std::fmt::Display`] for [`Error`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_18:Core.Fmt.t_Display #t_Error

/// Implements [`std::fmt::Debug`] for [`Error`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_19:Core.Fmt.t_Debug #t_Error

/// Implements [`std::error::Error`] for [`Error`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_20:Core.Error.t_Error #t_Error

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
val impl_9
      (#v_ErrorEnum: Type0)
      {| i1: Sandwich.Error.Code.t_AllowedProtoBasedErrorCodeEnum v_ErrorEnum |}
      {| i2: Core.Convert.t_From Sandwich.Error.Code.t_ErrorCode v_ErrorEnum |}
    : Core.Ops.Bit.t_Shr #t_Error #v_ErrorEnum

/// Appends an [`Error`] into the chain, using the `>>` operator and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_10
      (#v_ErrorEnum #v_S: Type0)
      {| i2: Sandwich.Error.Code.t_AllowedProtoBasedErrorCodeEnum v_ErrorEnum |}
      {| i3: Core.Convert.t_From Sandwich.Error.Code.t_ErrorCode (v_ErrorEnum & v_S) |}
      {| i4: Core.Convert.t_AsRef v_S string |}
    : Core.Ops.Bit.t_Shr #t_Error #(v_ErrorEnum & v_S)

/// Appends an [`Error`] into the chain, using the `>>` operator and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_11
      (#v_ErrorEnum: Type0)
      {| i1: Sandwich.Error.Code.t_AllowedProtoBasedErrorCodeEnum v_ErrorEnum |}
      {| i2: Core.Convert.t_From Sandwich.Error.Code.t_ErrorCode (v_ErrorEnum & string) |}
    : Core.Ops.Bit.t_Shr #t_Error #(v_ErrorEnum & string)

/// Appends an [`Error`] into the chain, using the `>>` operator and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_12
      (#v_ErrorEnum: Type0)
      {| i1: Sandwich.Error.Code.t_AllowedProtoBasedErrorCodeEnum v_ErrorEnum |}
      {| i2:
          Core.Convert.t_From Sandwich.Error.Code.t_ErrorCode (v_ErrorEnum & Alloc.String.t_String)
        |}
    : Core.Ops.Bit.t_Shr #t_Error #(v_ErrorEnum & Alloc.String.t_String)

/// Appends an [`Error`] into the chain, using the `>>` operator.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_13:Core.Ops.Bit.t_Shr #t_Error #Sandwich.Error.Code.t_ProtoBasedErrorCode

/// Appends an [`Error`] into the chain, using the `>>` operator and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_14 (#v_S: Type0) {| i1: Core.Convert.t_AsRef v_S string |}
    : Core.Ops.Bit.t_Shr #t_Error #(Sandwich.Error.Code.t_ProtoBasedErrorCode & v_S)

/// Appends an [`Error`] into the chain, using the `>>` operator and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_15:Core.Ops.Bit.t_Shr #t_Error #(Sandwich.Error.Code.t_ProtoBasedErrorCode & string)

/// Appends an [`Error`] into the chain, using the `>>` operator.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_16:Core.Ops.Bit.t_Shr #t_Error
  #(Sandwich.Error.Code.t_ProtoBasedErrorCode & Alloc.String.t_String)

/// Appends an [`Error`] into the chain, using the `>>` operator.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_17:Core.Ops.Bit.t_Shr #t_Error #Sandwich.Error.Code.t_ErrorCode

/// Implements operator>> between two [`ErrorCode`] to produce
/// an [`Error`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_22:Core.Ops.Bit.t_Shr #Sandwich.Error.Code.t_ErrorCode #Sandwich.Error.Code.t_ErrorCode
