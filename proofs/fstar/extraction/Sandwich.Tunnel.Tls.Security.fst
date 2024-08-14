module Sandwich.Tunnel.Tls.Security
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Sandwich.Error in
  let open Sandwich.Error.Code in
  let open Sandwich_api_proto.Compliance in
  ()

let impl__BitStrength__as_u32 (self: t_BitStrength) =
  match self with
  | BitStrength_Bits128  -> 128ul
  | BitStrength_Bits192  -> 192ul
  | BitStrength_Bits256  -> 256ul

let impl__BitStrength__complies_with (self expected_strength: t_BitStrength) =
  (impl__BitStrength__as_u32 self <: u32) >=. (impl__BitStrength__as_u32 expected_strength <: u32)

let t_BitStrength_cast_to_repr (x: t_BitStrength) =
  match x with
  | BitStrength_Bits128  -> discriminant_BitStrength_Bits128
  | BitStrength_Bits192  -> discriminant_BitStrength_Bits192
  | BitStrength_Bits256  -> discriminant_BitStrength_Bits256

let assert_tls13_ke_compliance
      (#impl_488124255_ #impl_145962886_: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()] i2: Core.Convert.t_AsRef impl_488124255_ string)
      (#[FStar.Tactics.Typeclasses.tcresolve ()]
          i3:
          Core.Iter.Traits.Collect.t_IntoIterator impl_145962886_)
      (kes: impl_145962886_)
      (classical_choice: Sandwich_api_proto.Compliance.t_ClassicalAlgoChoice)
      (hybrid_choice: Sandwich_api_proto.Compliance.t_HybridAlgoChoice)
      (quantum_safe_choice: Sandwich_api_proto.Compliance.t_QuantumSafeAlgoChoice)
      (desired_strength: Sandwich_api_proto.Compliance.t_NISTSecurityStrengthBits)
     =
  let result:Core.Result.t_Result Prims.unit Sandwich.Error.t_Error =
    Core.Result.Result_Ok (() <: Prims.unit)
    <:
    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
  in
  let result:Core.Result.t_Result Prims.unit Sandwich.Error.t_Error =
    Core.Iter.Traits.Iterator.f_fold 
      #i3.f_IntoIter
      #i3.f_IntoIter_Iterator
      (Core.Iter.Traits.Collect.f_into_iter #i3.f_IntoIter
          #i3
          (Core.Iter.Traits.Collect.f_into_iter #impl_145962886_
              #i3
              kes
            <:
            i3.f_IntoIter)
        <:
        i3.f_IntoIter)
      result
      (fun result k ->
          let result:Core.Result.t_Result Prims.unit Sandwich.Error.t_Error = result in
          let k:impl_488124255_ = k in
          if Core.Result.impl__is_ok #Prims.unit #Sandwich.Error.t_Error result <: bool
          then
            let result, bit_strength:(Core.Result.t_Result Prims.unit Sandwich.Error.t_Error &
              t_BitStrength) =
              match
                Core.Convert.f_try_from #t_KESettings
                  #string
                  #FStar.Tactics.Typeclasses.solve
                  (Core.Convert.f_as_ref #impl_488124255_ #string #FStar.Tactics.Typeclasses.solve k
                    <:
                    string)
              with
              | Core.Result.Result_Ok (KESettings_Hybrid hybrid_bit_strength) ->
                let result:Core.Result.t_Result Prims.unit Sandwich.Error.t_Error =
                  if
                    hybrid_choice =.
                    (Sandwich_api_proto.Compliance.HybridAlgoChoice_HYBRID_ALGORITHMS_FORBID
                      <:
                      Sandwich_api_proto.Compliance.t_HybridAlgoChoice)
                  then
                    let result:Core.Result.t_Result Prims.unit Sandwich.Error.t_Error =
                      Core.Result.Result_Err
                      (Core.Convert.f_into #Sandwich_proto.Errors.t_TLSConfigurationError
                          #Sandwich.Error.t_Error
                          #FStar.Tactics.Typeclasses.solve
                          (Sandwich_proto.Errors.TLSConfigurationError_TLSCONFIGURATIONERROR_INVALID_CASE
                            <:
                            Sandwich_proto.Errors.t_TLSConfigurationError))
                      <:
                      Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
                    in
                    result
                  else result
                in
                result, hybrid_bit_strength
                <:
                (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error & t_BitStrength)
              | Core.Result.Result_Ok (KESettings_Classical classical_bit_strength) ->
                let result:Core.Result.t_Result Prims.unit Sandwich.Error.t_Error =
                  if
                    classical_choice =.
                    (Sandwich_api_proto.Compliance.ClassicalAlgoChoice_CLASSICAL_ALGORITHMS_FORBID
                      <:
                      Sandwich_api_proto.Compliance.t_ClassicalAlgoChoice)
                  then
                    let result:Core.Result.t_Result Prims.unit Sandwich.Error.t_Error =
                      Core.Result.Result_Err
                      (Core.Convert.f_into #Sandwich_proto.Errors.t_TLSConfigurationError
                          #Sandwich.Error.t_Error
                          #FStar.Tactics.Typeclasses.solve
                          (Sandwich_proto.Errors.TLSConfigurationError_TLSCONFIGURATIONERROR_INVALID_CASE
                            <:
                            Sandwich_proto.Errors.t_TLSConfigurationError))
                      <:
                      Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
                    in
                    result
                  else result
                in
                result, classical_bit_strength
                <:
                (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error & t_BitStrength)
              | Core.Result.Result_Ok (KESettings_QuantumSafe quantum_bit_strength) ->
                let result:Core.Result.t_Result Prims.unit Sandwich.Error.t_Error =
                  if
                    quantum_safe_choice =.
                    (Sandwich_api_proto.Compliance.QuantumSafeAlgoChoice_QUANTUM_SAFE_ALGORITHMS_FORBID
                      <:
                      Sandwich_api_proto.Compliance.t_QuantumSafeAlgoChoice)
                  then
                    let result:Core.Result.t_Result Prims.unit Sandwich.Error.t_Error =
                      Core.Result.Result_Err
                      (Core.Convert.f_into #Sandwich_proto.Errors.t_TLSConfigurationError
                          #Sandwich.Error.t_Error
                          #FStar.Tactics.Typeclasses.solve
                          (Sandwich_proto.Errors.TLSConfigurationError_TLSCONFIGURATIONERROR_INVALID_CASE
                            <:
                            Sandwich_proto.Errors.t_TLSConfigurationError))
                      <:
                      Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
                    in
                    result
                  else result
                in
                result, quantum_bit_strength
                <:
                (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error & t_BitStrength)
              | Core.Result.Result_Err err ->
                let result:Core.Result.t_Result Prims.unit Sandwich.Error.t_Error =
                  Core.Result.Result_Err err
                  <:
                  Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
                in
                result,
                Core.Convert.f_from #t_BitStrength
                  #Sandwich_api_proto.Compliance.t_NISTSecurityStrengthBits
                  #FStar.Tactics.Typeclasses.solve
                  desired_strength
                <:
                (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error & t_BitStrength)
            in
            if
              impl__BitStrength__complies_with bit_strength
                (Core.Convert.f_into #Sandwich_api_proto.Compliance.t_NISTSecurityStrengthBits
                    #t_BitStrength
                    #FStar.Tactics.Typeclasses.solve
                    desired_strength
                  <:
                  t_BitStrength)
            then
              let result:Core.Result.t_Result Prims.unit Sandwich.Error.t_Error =
                Core.Result.Result_Err
                (Core.Convert.f_into #Sandwich_proto.Errors.t_TLSConfigurationError
                    #Sandwich.Error.t_Error
                    #FStar.Tactics.Typeclasses.solve
                    (Sandwich_proto.Errors.TLSConfigurationError_TLSCONFIGURATIONERROR_INVALID_CASE
                      <:
                      Sandwich_proto.Errors.t_TLSConfigurationError))
                <:
                Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
              in
              result
            else result
          else result)
  in
  result

let assert_tls13_compliance (tls13_config: Sandwich_api_proto.Tls.t_TLSv13Config) =
  let (kes: Alloc.Vec.t_Vec Alloc.String.t_String Alloc.Alloc.t_Global):Alloc.Vec.t_Vec
    Alloc.String.t_String Alloc.Alloc.t_Global =
    tls13_config.Sandwich_api_proto.Tls.f_ke
  in
  let compliance:Sandwich_api_proto.Compliance.t_Compliance =
    Core.Option.impl__unwrap_or_default #Sandwich_api_proto.Compliance.t_Compliance
      (Protobuf.Message_field.impl__as_ref #Sandwich_api_proto.Compliance.t_Compliance
          tls13_config.Sandwich_api_proto.Tls.f_compliance
        <:
        Core.Option.t_Option Sandwich_api_proto.Compliance.t_Compliance)
  in
  let hybrid_choice:Sandwich_api_proto.Compliance.t_HybridAlgoChoice =
    Protobuf.Enum_or_unknown.impl_1__enum_value_or_default #Sandwich_api_proto.Compliance.t_HybridAlgoChoice
      compliance.Sandwich_api_proto.Compliance.f_hybrid_choice
  in
  let classical_choice:Sandwich_api_proto.Compliance.t_ClassicalAlgoChoice =
    Protobuf.Enum_or_unknown.impl_1__enum_value_or_default #Sandwich_api_proto.Compliance.t_ClassicalAlgoChoice
      compliance.Sandwich_api_proto.Compliance.f_classical_choice
  in
  let quantum_safe_choice:Sandwich_api_proto.Compliance.t_QuantumSafeAlgoChoice =
    Protobuf.Enum_or_unknown.impl_1__enum_value_or_default #Sandwich_api_proto.Compliance.t_QuantumSafeAlgoChoice
      compliance.Sandwich_api_proto.Compliance.f_quantum_safe_choice
  in
  let desired_strength:Sandwich_api_proto.Compliance.t_NISTSecurityStrengthBits =
    Protobuf.Enum_or_unknown.impl_1__enum_value_or_default #Sandwich_api_proto.Compliance.t_NISTSecurityStrengthBits
      compliance.Sandwich_api_proto.Compliance.f_bit_strength_choice
  in
  match
    assert_tls13_ke_compliance #Alloc.String.t_String
      #(Core.Slice.Iter.t_Iter Alloc.String.t_String)
      #FStar.Tactics.Typeclasses.solve
      #(Core.Iter.Traits.Collect.impl (Core.Slice.Iter.t_Iter Alloc.String.t_String) #(Core.Iter.iterator_slice Alloc.String.t_String))
      (Core.Slice.impl__iter #Alloc.String.t_String
          (Core.Ops.Deref.f_deref #(Alloc.Vec.t_Vec Alloc.String.t_String Alloc.Alloc.t_Global)
              #FStar.Tactics.Typeclasses.solve
              kes
            <:
            t_Slice Alloc.String.t_String)
        <:
        Core.Slice.Iter.t_Iter Alloc.String.t_String)
      classical_choice
      hybrid_choice
      quantum_safe_choice
      desired_strength
  with
  | Core.Result.Result_Ok _ ->
    Core.Result.Result_Ok (() <: Prims.unit)
    <:
    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
  | Core.Result.Result_Err err ->
    Core.Result.Result_Err err <: Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let assert_compliance (cfg: Sandwich_api_proto.Configuration.t_Configuration) =
  match Sandwich.Tunnel.Tls.get_tls13_config cfg with
  | Core.Option.Option_Some tls13 -> assert_tls13_compliance tls13
  | _ ->
    Core.Result.Result_Ok (() <: Prims.unit)
    <:
    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
