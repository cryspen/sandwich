module Sandwich.Tunnel.Tls.Security
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

/// Checks that the TLS 1.3 Key Exchange (KE) and Ciphersuite are satisfied by the configuration.
assume
val assert_tls13_compliance': tls13_config: Sandwich_api_proto.Tls.t_TLSv13Config
  -> Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let assert_tls13_compliance = assert_tls13_compliance'

/// Checks that the policy is satisfied by the configuration.
let assert_compliance (cfg: Sandwich_api_proto.Configuration.t_Configuration)
    : Core.Result.t_Result Prims.unit Sandwich.Error.t_Error =
  match
    Sandwich.Tunnel.Tls.get_tls13_config cfg
    <:
    Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSv13Config
  with
  | Core.Option.Option_Some tls13 -> assert_tls13_compliance tls13
  | _ ->
    Core.Result.Result_Ok (() <: Prims.unit)
    <:
    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
