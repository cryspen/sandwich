module Sandwich_api_proto.Compliance
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Protobuf.Enums in
  let open Protobuf.Message in
  let open Protobuf.Reflect.Runtime_types in
  let open Protobuf.Reflect.Value in
  ()

type t_ClassicalAlgoChoice =
  | ClassicalAlgoChoice_CLASSICAL_ALGORITHMS_ALLOW : t_ClassicalAlgoChoice
  | ClassicalAlgoChoice_CLASSICAL_ALGORITHMS_FORBID : t_ClassicalAlgoChoice

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_8:Core.Default.t_Default #t_ClassicalAlgoChoice

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_6:Protobuf.Enums.t_Enum #t_ClassicalAlgoChoice

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_7:Protobuf.Enum_full.t_EnumFull #t_ClassicalAlgoChoice

type t_HybridAlgoChoice =
  | HybridAlgoChoice_HYBRID_ALGORITHMS_ALLOW : t_HybridAlgoChoice
  | HybridAlgoChoice_HYBRID_ALGORITHMS_FORBID : t_HybridAlgoChoice

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_16:Core.Default.t_Default #t_HybridAlgoChoice

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_14:Protobuf.Enums.t_Enum #t_HybridAlgoChoice

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_15:Protobuf.Enum_full.t_EnumFull #t_HybridAlgoChoice

type t_NISTSecurityStrengthBits =
  | NISTSecurityStrengthBits_BIT_STRENGTH_AT_LEAST_128_ : t_NISTSecurityStrengthBits
  | NISTSecurityStrengthBits_BIT_STRENGTH_AT_LEAST_192_ : t_NISTSecurityStrengthBits
  | NISTSecurityStrengthBits_BIT_STRENGTH_AT_LEAST_256_ : t_NISTSecurityStrengthBits

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_20:Core.Default.t_Default #t_NISTSecurityStrengthBits

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_18:Protobuf.Enums.t_Enum #t_NISTSecurityStrengthBits

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_19:Protobuf.Enum_full.t_EnumFull #t_NISTSecurityStrengthBits

type t_QuantumSafeAlgoChoice =
  | QuantumSafeAlgoChoice_QUANTUM_SAFE_ALGORITHMS_ALLOW : t_QuantumSafeAlgoChoice
  | QuantumSafeAlgoChoice_QUANTUM_SAFE_ALGORITHMS_FORBID : t_QuantumSafeAlgoChoice

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_12:Core.Default.t_Default #t_QuantumSafeAlgoChoice

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_10:Protobuf.Enums.t_Enum #t_QuantumSafeAlgoChoice

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_11:Protobuf.Enum_full.t_EnumFull #t_QuantumSafeAlgoChoice

type t_Compliance = {
  f_hybrid_choice:Protobuf.Enum_or_unknown.t_EnumOrUnknown t_HybridAlgoChoice;
  f_quantum_safe_choice:Protobuf.Enum_or_unknown.t_EnumOrUnknown t_QuantumSafeAlgoChoice;
  f_classical_choice:Protobuf.Enum_or_unknown.t_EnumOrUnknown t_ClassicalAlgoChoice;
  f_bit_strength_choice:Protobuf.Enum_or_unknown.t_EnumOrUnknown t_NISTSecurityStrengthBits;
  f_special_fields:Protobuf.Special.t_SpecialFields
}

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl:Core.Default.t_Default #t_Compliance

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_2:Protobuf.Message.t_Message #t_Compliance

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_4:Core.Fmt.t_Display #t_Compliance

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_3:Protobuf.Message_full.t_MessageFull #t_Compliance

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_5:Protobuf.Reflect.Value.t_ProtobufValue #t_Compliance
