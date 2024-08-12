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

let discriminant_BitStrength_Bits128: isize = isz 128

let discriminant_BitStrength_Bits192: isize = isz 192

/// Represents the AES bit size equivalent hardness of breaking an algorithm.
type t_BitStrength =
  | BitStrength_Bits128 : t_BitStrength
  | BitStrength_Bits192 : t_BitStrength
  | BitStrength_Bits256 : t_BitStrength

val impl__BitStrength__as_u32 (self: t_BitStrength)
    : Prims.Pure u32 Prims.l_True (fun _ -> Prims.l_True)

val impl__BitStrength__complies_with (self expected_strength: t_BitStrength)
    : Prims.Pure bool Prims.l_True (fun _ -> Prims.l_True)

let discriminant_BitStrength_Bits256: isize = isz 256

val t_BitStrength_cast_to_repr (x: t_BitStrength)
    : Prims.Pure isize Prims.l_True (fun _ -> Prims.l_True)

/// A cryptographic algorithm: is it safe to attack from quantum computer, unsafe, or a hybrid.
type t_KESettings =
  | KESettings_Classical : t_BitStrength -> t_KESettings
  | KESettings_QuantumSafe : t_BitStrength -> t_KESettings
  | KESettings_Hybrid : t_BitStrength -> t_KESettings

/// Implements [`From`] for [`BitStrength`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl: Core.Convert.t_From t_BitStrength Sandwich_api_proto.Compliance.t_NISTSecurityStrengthBits =
  {
    f_from_pre
    =
    (fun (nist_bit_strength: Sandwich_api_proto.Compliance.t_NISTSecurityStrengthBits) -> true);
    f_from_post
    =
    (fun
        (nist_bit_strength: Sandwich_api_proto.Compliance.t_NISTSecurityStrengthBits)
        (out: t_BitStrength)
        ->
        true);
    f_from
    =
    fun (nist_bit_strength: Sandwich_api_proto.Compliance.t_NISTSecurityStrengthBits) ->
      match nist_bit_strength with
      | Sandwich_api_proto.Compliance.NISTSecurityStrengthBits_BIT_STRENGTH_AT_LEAST_128_  ->
        BitStrength_Bits128 <: t_BitStrength
      | Sandwich_api_proto.Compliance.NISTSecurityStrengthBits_BIT_STRENGTH_AT_LEAST_192_  ->
        BitStrength_Bits192 <: t_BitStrength
      | Sandwich_api_proto.Compliance.NISTSecurityStrengthBits_BIT_STRENGTH_AT_LEAST_256_  ->
        BitStrength_Bits256 <: t_BitStrength
  }

/// Implements [`TryFrom`] for [`KESettings`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_2: Core.Convert.t_TryFrom t_KESettings string =
  {
    f_Error = Sandwich.Error.t_Error;
    f_try_from_pre = (fun (alg: string) -> true);
    f_try_from_post
    =
    (fun (alg: string) (out: Core.Result.t_Result t_KESettings Sandwich.Error.t_Error) -> true);
    f_try_from
    =
    fun (alg: string) ->
      let (ke_setting: Core.Option.t_Option t_KESettings):Core.Option.t_Option t_KESettings =
        match alg with
        | "brainpoolP256r1" ->
          Core.Option.Option_Some
          (KESettings_Classical (BitStrength_Bits128 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "brainpoolP384r1" ->
          Core.Option.Option_Some
          (KESettings_Classical (BitStrength_Bits192 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "brainpoolP512r1" ->
          Core.Option.Option_Some
          (KESettings_Classical (BitStrength_Bits256 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "sect283k1" ->
          Core.Option.Option_Some
          (KESettings_Classical (BitStrength_Bits128 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "sect283r1" ->
          Core.Option.Option_Some
          (KESettings_Classical (BitStrength_Bits128 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "sect409k1" ->
          Core.Option.Option_Some
          (KESettings_Classical (BitStrength_Bits192 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "sect409r1" ->
          Core.Option.Option_Some
          (KESettings_Classical (BitStrength_Bits192 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "sect571k1" ->
          Core.Option.Option_Some
          (KESettings_Classical (BitStrength_Bits256 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "sect571r1" ->
          Core.Option.Option_Some
          (KESettings_Classical (BitStrength_Bits256 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "X25519" ->
          Core.Option.Option_Some
          (KESettings_Classical (BitStrength_Bits128 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "prime256v1" ->
          Core.Option.Option_Some
          (KESettings_Classical (BitStrength_Bits128 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "X448" ->
          Core.Option.Option_Some
          (KESettings_Classical (BitStrength_Bits192 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "secp256k1" ->
          Core.Option.Option_Some
          (KESettings_Classical (BitStrength_Bits128 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "secp384r1" ->
          Core.Option.Option_Some
          (KESettings_Classical (BitStrength_Bits192 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "secp521r1" ->
          Core.Option.Option_Some
          (KESettings_Classical (BitStrength_Bits256 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "frodo640aes" ->
          Core.Option.Option_Some
          (KESettings_QuantumSafe (BitStrength_Bits128 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "p256_frodo640aes" ->
          Core.Option.Option_Some
          (KESettings_Hybrid (BitStrength_Bits128 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "x25519_frodo640aes" ->
          Core.Option.Option_Some
          (KESettings_Hybrid (BitStrength_Bits128 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "frodo640shake" ->
          Core.Option.Option_Some
          (KESettings_QuantumSafe (BitStrength_Bits128 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "p256_frodo640shake" ->
          Core.Option.Option_Some
          (KESettings_Hybrid (BitStrength_Bits128 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "x25519_frodo640shake" ->
          Core.Option.Option_Some
          (KESettings_Hybrid (BitStrength_Bits128 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "frodo976aes" ->
          Core.Option.Option_Some
          (KESettings_QuantumSafe (BitStrength_Bits192 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "p384_frodo976aes" ->
          Core.Option.Option_Some
          (KESettings_Hybrid (BitStrength_Bits192 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "x448_frodo976aes" ->
          Core.Option.Option_Some
          (KESettings_Hybrid (BitStrength_Bits192 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "frodo976shake" ->
          Core.Option.Option_Some
          (KESettings_QuantumSafe (BitStrength_Bits192 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "p384_frodo976shake" ->
          Core.Option.Option_Some
          (KESettings_Hybrid (BitStrength_Bits192 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "x448_frodo976shake" ->
          Core.Option.Option_Some
          (KESettings_Hybrid (BitStrength_Bits192 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "frodo1344aes" ->
          Core.Option.Option_Some
          (KESettings_QuantumSafe (BitStrength_Bits256 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "p521_frodo1344aes" ->
          Core.Option.Option_Some
          (KESettings_Hybrid (BitStrength_Bits256 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "frodo1344shake" ->
          Core.Option.Option_Some
          (KESettings_QuantumSafe (BitStrength_Bits256 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "p521_frodo1344shake" ->
          Core.Option.Option_Some
          (KESettings_Hybrid (BitStrength_Bits256 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "kyber512" ->
          Core.Option.Option_Some
          (KESettings_QuantumSafe (BitStrength_Bits128 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "p256_kyber512" ->
          Core.Option.Option_Some
          (KESettings_Hybrid (BitStrength_Bits128 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "x25519_kyber512" ->
          Core.Option.Option_Some
          (KESettings_Hybrid (BitStrength_Bits128 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "kyber768" ->
          Core.Option.Option_Some
          (KESettings_QuantumSafe (BitStrength_Bits192 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "p384_kyber768" ->
          Core.Option.Option_Some
          (KESettings_Hybrid (BitStrength_Bits192 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "x448_kyber768" ->
          Core.Option.Option_Some
          (KESettings_Hybrid (BitStrength_Bits192 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "x25519_kyber768" ->
          Core.Option.Option_Some
          (KESettings_Hybrid (BitStrength_Bits128 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "p256_kyber768" ->
          Core.Option.Option_Some
          (KESettings_Hybrid (BitStrength_Bits128 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "kyber1024" ->
          Core.Option.Option_Some
          (KESettings_QuantumSafe (BitStrength_Bits256 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "p521_kyber1024" ->
          Core.Option.Option_Some
          (KESettings_Hybrid (BitStrength_Bits256 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "bikel1" ->
          Core.Option.Option_Some
          (KESettings_QuantumSafe (BitStrength_Bits128 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "p256_bikel1" ->
          Core.Option.Option_Some
          (KESettings_Hybrid (BitStrength_Bits128 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "x25519_bikel1" ->
          Core.Option.Option_Some
          (KESettings_Hybrid (BitStrength_Bits128 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "bikel3" ->
          Core.Option.Option_Some
          (KESettings_QuantumSafe (BitStrength_Bits192 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "p384_bikel3" ->
          Core.Option.Option_Some
          (KESettings_Hybrid (BitStrength_Bits192 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "x448_bikel3" ->
          Core.Option.Option_Some
          (KESettings_Hybrid (BitStrength_Bits192 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "bikel5" ->
          Core.Option.Option_Some
          (KESettings_QuantumSafe (BitStrength_Bits256 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "p521_bikel5" ->
          Core.Option.Option_Some
          (KESettings_Hybrid (BitStrength_Bits256 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "hqc128" ->
          Core.Option.Option_Some
          (KESettings_QuantumSafe (BitStrength_Bits128 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "p256_hqc128" ->
          Core.Option.Option_Some
          (KESettings_Hybrid (BitStrength_Bits128 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "x25519_hqc128" ->
          Core.Option.Option_Some
          (KESettings_Hybrid (BitStrength_Bits128 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "hqc192" ->
          Core.Option.Option_Some
          (KESettings_QuantumSafe (BitStrength_Bits192 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "p384_hqc192" ->
          Core.Option.Option_Some
          (KESettings_Hybrid (BitStrength_Bits192 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "x448_hqc192" ->
          Core.Option.Option_Some
          (KESettings_Hybrid (BitStrength_Bits192 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "hqc256" ->
          Core.Option.Option_Some
          (KESettings_QuantumSafe (BitStrength_Bits256 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | "p521_hqc256" ->
          Core.Option.Option_Some
          (KESettings_Hybrid (BitStrength_Bits256 <: t_BitStrength) <: t_KESettings)
          <:
          Core.Option.t_Option t_KESettings
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_KESettings
      in
      match ke_setting with
      | Core.Option.Option_Some ke ->
        Core.Result.Result_Ok ke <: Core.Result.t_Result t_KESettings Sandwich.Error.t_Error
      | _ ->
        Core.Result.Result_Err
        (Core.Convert.f_into #Sandwich_proto.Errors.t_TLSConfigurationError
            #Sandwich.Error.t_Error
            #FStar.Tactics.Typeclasses.solve
            (Sandwich_proto.Errors.TLSConfigurationError_TLSCONFIGURATIONERROR_INVALID_CASE
              <:
              Sandwich_proto.Errors.t_TLSConfigurationError))
        <:
        Core.Result.t_Result t_KESettings Sandwich.Error.t_Error
  }

/// Checks if the TLS 1.3 Key Exchange (KE) are satified the compliance
val assert_tls13_ke_compliance
      (#impl_488124255_: Type0)
      {| i1: Core.Convert.t_AsRef impl_488124255_ string |}
      (kes: Core.Slice.Iter.t_Iter impl_488124255_)
      (classical_choice: Sandwich_api_proto.Compliance.t_ClassicalAlgoChoice)
      (hybrid_choice: Sandwich_api_proto.Compliance.t_HybridAlgoChoice)
      (quantum_safe_choice: Sandwich_api_proto.Compliance.t_QuantumSafeAlgoChoice)
      (desired_strength: Sandwich_api_proto.Compliance.t_NISTSecurityStrengthBits)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Checks that the TLS 1.3 Key Exchange (KE) and Ciphersuite are satisfied by the configuration.
val assert_tls13_compliance (tls13_config: Sandwich_api_proto.Tls.t_TLSv13Config)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Checks that the policy is satisfied by the configuration.
val assert_compliance (cfg: Sandwich_api_proto.Configuration.t_Configuration)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)
