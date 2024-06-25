module Sandwich_api_proto.Configuration.Server_options
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

type t_Opts = | Opts_Tls : Sandwich_api_proto.Tls.t_TLSServerOptions -> t_Opts
