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

let t_BitStrength_cast_to_repr (x: t_BitStrength) =
  match x with
  | BitStrength_Bits128  -> discriminant_BitStrength_Bits128
  | BitStrength_Bits192  -> discriminant_BitStrength_Bits192
  | BitStrength_Bits256  -> discriminant_BitStrength_Bits256

let assert_tls13_ke_compliance
      (#impl_488124255_: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()] i1: Core.Convert.t_AsRef impl_488124255_ string)
      (kes: Core.Slice.Iter.t_Iter impl_488124255_)
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
    Core.Iter.Traits.Iterator.f_fold (Core.Iter.Traits.Collect.f_into_iter #(Core.Slice.Iter.t_Iter
            impl_488124255_)
          kes
        <:
        Core.Slice.Iter.t_Iter impl_488124255_)
      result
      (fun result k ->
          let result:Core.Result.t_Result Prims.unit Sandwich.Error.t_Error = result in
          let k:impl_488124255_ = k in
          match result with
          | Core.Result.Result_Ok _ ->
            (match
                Core.Convert.f_try_from #t_KESettings
                  #string
                  (Core.Convert.f_as_ref #impl_488124255_ #string k <: string)
                <:
                Core.Result.t_Result t_KESettings Sandwich.Error.t_Error
              with
              | Core.Result.Result_Ok hoist9 ->
                let! bit_strength:t_BitStrength =
                  match hoist9 with
                  | KESettings_Hybrid hybrid_bit_strength ->
                    let! _:Prims.unit =
                      if
                        hybrid_choice =.
                        (Sandwich_api_proto.Compliance.HybridAlgoChoice_HYBRID_ALGORITHMS_FORBID
                          <:
                          Sandwich_api_proto.Compliance.t_HybridAlgoChoice)
                      then
                        match
                          Core.Result.Result_Err
                          (Sandwich_proto.Errors.TLSConfigurationError_TLSCONFIGURATIONERROR_INVALID_CASE
                            <:
                            Sandwich_proto.Errors.t_TLSConfigurationError)
                          <:
                          Core.Result.t_Result Prims.unit
                            Sandwich_proto.Errors.t_TLSConfigurationError
                        with
                        | Core.Result.Result_Ok ok ->
                          Core.Ops.Control_flow.ControlFlow_Continue ok
                          <:
                          Core.Ops.Control_flow.t_ControlFlow
                            (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error) Prims.unit
                        | Core.Result.Result_Err err ->
                          Core.Ops.Control_flow.ControlFlow_Break
                          (Core.Result.Result_Err (Core.Convert.f_from err)
                            <:
                            Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
                          <:
                          Core.Ops.Control_flow.t_ControlFlow
                            (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error) Prims.unit
                      else
                        Core.Ops.Control_flow.ControlFlow_Continue ()
                        <:
                        Core.Ops.Control_flow.t_ControlFlow
                          (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error) Prims.unit
                    in
                    Core.Ops.Control_flow.ControlFlow_Continue hybrid_bit_strength
                    <:
                    Core.Ops.Control_flow.t_ControlFlow
                      (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error) t_BitStrength
                  | KESettings_Classical classical_bit_strength ->
                    let! _:Prims.unit =
                      if
                        classical_choice =.
                        (Sandwich_api_proto.Compliance.ClassicalAlgoChoice_CLASSICAL_ALGORITHMS_FORBID
                          <:
                          Sandwich_api_proto.Compliance.t_ClassicalAlgoChoice)
                      then
                        match
                          Core.Result.Result_Err
                          (Sandwich_proto.Errors.TLSConfigurationError_TLSCONFIGURATIONERROR_INVALID_CASE
                            <:
                            Sandwich_proto.Errors.t_TLSConfigurationError)
                          <:
                          Core.Result.t_Result Prims.unit
                            Sandwich_proto.Errors.t_TLSConfigurationError
                        with
                        | Core.Result.Result_Ok ok ->
                          Core.Ops.Control_flow.ControlFlow_Continue ok
                          <:
                          Core.Ops.Control_flow.t_ControlFlow
                            (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error) Prims.unit
                        | Core.Result.Result_Err err ->
                          Core.Ops.Control_flow.ControlFlow_Break
                          (Core.Result.Result_Err (Core.Convert.f_from err)
                            <:
                            Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
                          <:
                          Core.Ops.Control_flow.t_ControlFlow
                            (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error) Prims.unit
                      else
                        Core.Ops.Control_flow.ControlFlow_Continue ()
                        <:
                        Core.Ops.Control_flow.t_ControlFlow
                          (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error) Prims.unit
                    in
                    Core.Ops.Control_flow.ControlFlow_Continue classical_bit_strength
                    <:
                    Core.Ops.Control_flow.t_ControlFlow
                      (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error) t_BitStrength
                  | KESettings_QuantumSafe quantum_bit_strength ->
                    let! _:Prims.unit =
                      if
                        quantum_safe_choice =.
                        (Sandwich_api_proto.Compliance.QuantumSafeAlgoChoice_QUANTUM_SAFE_ALGORITHMS_FORBID
                          <:
                          Sandwich_api_proto.Compliance.t_QuantumSafeAlgoChoice)
                      then
                        match
                          Core.Result.Result_Err
                          (Sandwich_proto.Errors.TLSConfigurationError_TLSCONFIGURATIONERROR_INVALID_CASE
                            <:
                            Sandwich_proto.Errors.t_TLSConfigurationError)
                          <:
                          Core.Result.t_Result Prims.unit
                            Sandwich_proto.Errors.t_TLSConfigurationError
                        with
                        | Core.Result.Result_Ok ok ->
                          Core.Ops.Control_flow.ControlFlow_Continue ok
                          <:
                          Core.Ops.Control_flow.t_ControlFlow
                            (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error) Prims.unit
                        | Core.Result.Result_Err err ->
                          Core.Ops.Control_flow.ControlFlow_Break
                          (Core.Result.Result_Err (Core.Convert.f_from err)
                            <:
                            Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
                          <:
                          Core.Ops.Control_flow.t_ControlFlow
                            (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error) Prims.unit
                      else
                        Core.Ops.Control_flow.ControlFlow_Continue ()
                        <:
                        Core.Ops.Control_flow.t_ControlFlow
                          (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error) Prims.unit
                    in
                    Core.Ops.Control_flow.ControlFlow_Continue quantum_bit_strength
                    <:
                    Core.Ops.Control_flow.t_ControlFlow
                      (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error) t_BitStrength
                in
                Core.Ops.Control_flow.ControlFlow_Continue
                (if
                    bit_strength <.
                    (Core.Convert.f_from #t_BitStrength
                        #Sandwich_api_proto.Compliance.t_NISTSecurityStrengthBits
                        desired_strength
                      <:
                      t_BitStrength)
                  then
                    let result:Core.Result.t_Result Prims.unit Sandwich.Error.t_Error =
                      Core.Result.Result_Err
                      (Core.Convert.f_into #Sandwich_proto.Errors.t_TLSConfigurationError
                          #Sandwich.Error.t_Error
                          (Sandwich_proto.Errors.TLSConfigurationError_TLSCONFIGURATIONERROR_INVALID_CASE
                            <:
                            Sandwich_proto.Errors.t_TLSConfigurationError))
                      <:
                      Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
                    in
                    result
                  else result)
                <:
                Core.Ops.Control_flow.t_ControlFlow
                  (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
                  (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
              | Core.Result.Result_Err err ->
                let! _:Prims.unit =
                  Core.Ops.Control_flow.ControlFlow_Break
                  (Core.Result.Result_Err err
                    <:
                    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
                  <:
                  Core.Ops.Control_flow.t_ControlFlow
                    (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error) Prims.unit
                in
                Core.Ops.Control_flow.ControlFlow_Continue result
                <:
                Core.Ops.Control_flow.t_ControlFlow
                  (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
                  (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error))
          | _ ->
            Core.Ops.Control_flow.ControlFlow_Continue result
            <:
            Core.Ops.Control_flow.t_ControlFlow
              (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
              (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error))
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
      (Core.Slice.impl__iter #Alloc.String.t_String
          (Core.Ops.Deref.f_deref #(Alloc.Vec.t_Vec Alloc.String.t_String Alloc.Alloc.t_Global) kes
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
