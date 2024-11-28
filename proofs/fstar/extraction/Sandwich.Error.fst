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

/// Instantiates an [`Error`] from an enum value and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_18
      (#v_ErrorEnum: Type0)
      {| i1: Sandwich.Error.Code.t_AllowedProtoBasedErrorCodeEnum v_ErrorEnum |}
      {| i2: Core.Convert.t_From Sandwich.Error.Code.t_ErrorCode (v_ErrorEnum & string) |}
    : Core.Convert.t_From t_Error (v_ErrorEnum & string)

[@@ FStar.Tactics.Typeclasses.tcinstance]
assume
val impl_18':
    #v_ErrorEnum: Type0 ->
    {| i1: Sandwich.Error.Code.t_AllowedProtoBasedErrorCodeEnum v_ErrorEnum |} ->
    {| i2: Core.Convert.t_From Sandwich.Error.Code.t_ErrorCode (v_ErrorEnum & string) |}
  -> Core.Convert.t_From t_Error (v_ErrorEnum & string)

let impl_18 = impl_18'

/// Instantiates an [`Error`] from an enum value and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_19
      (#v_ErrorEnum: Type0)
      {| i1: Sandwich.Error.Code.t_AllowedProtoBasedErrorCodeEnum v_ErrorEnum |}
      {| i2:
          Core.Convert.t_From Sandwich.Error.Code.t_ErrorCode (v_ErrorEnum & Alloc.String.t_String)
        |}
    : Core.Convert.t_From t_Error (v_ErrorEnum & Alloc.String.t_String)

[@@ FStar.Tactics.Typeclasses.tcinstance]
assume
val impl_19':
    #v_ErrorEnum: Type0 ->
    {| i1: Sandwich.Error.Code.t_AllowedProtoBasedErrorCodeEnum v_ErrorEnum |} ->
    {| i2: Core.Convert.t_From Sandwich.Error.Code.t_ErrorCode (v_ErrorEnum & Alloc.String.t_String)
      |}
  -> Core.Convert.t_From t_Error (v_ErrorEnum & Alloc.String.t_String)

let impl_19 = impl_19'
