module Sandwich_api_proto.Configuration.Configuration
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

type t_Opts =
  | Opts_Client : Sandwich_api_proto.Configuration.t_ClientOptions -> t_Opts
  | Opts_Server : Sandwich_api_proto.Configuration.t_ServerOptions -> t_Opts
