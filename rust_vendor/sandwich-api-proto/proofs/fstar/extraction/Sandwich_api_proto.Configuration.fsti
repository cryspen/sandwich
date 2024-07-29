module Sandwich_api_proto.Configuration
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

type t_Implementation =
  | Implementation_IMPL_UNSPECIFIED : t_Implementation
  | Implementation_IMPL_OPENSSL1_1_1_OQS : t_Implementation
  | Implementation_IMPL_BORINGSSL_OQS : t_Implementation
  | Implementation_IMPL_OPENSSL3_OQS_PROVIDER : t_Implementation

type t_ClientOptions = {
  f_opts:Core.Option.t_Option Sandwich_api_proto.Configuration.Client_options.t_Opts;
  f_special_fields:Protobuf.Special.t_SpecialFields
}

type t_ServerOptions = {
  f_opts:Core.Option.t_Option Sandwich_api_proto.Configuration.Server_options.t_Opts;
  f_special_fields:Protobuf.Special.t_SpecialFields
}

type t_Configuration = {
  f_impl___:Protobuf.Enum_or_unknown.t_EnumOrUnknown t_Implementation;
  f_opts:Core.Option.t_Option Sandwich_api_proto.Configuration.Configuration.t_Opts;
  f_special_fields:Protobuf.Special.t_SpecialFields
}

type t_Opts =
  | Opts_Client : Sandwich_api_proto.Configuration.t_ClientOptions -> t_Opts
  | Opts_Server : Sandwich_api_proto.Configuration.t_ServerOptions -> t_Opts
