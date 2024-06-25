module Sandwich_api_proto.Private_key
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

type t_PrivateKey = {
  f_source:Core.Option.t_Option Sandwich_api_proto.Private_key.Private_key.t_Source;
  f_special_fields:Protobuf.Special.t_SpecialFields
}
