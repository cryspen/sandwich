module Sandwich_api_proto.Configuration
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

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
