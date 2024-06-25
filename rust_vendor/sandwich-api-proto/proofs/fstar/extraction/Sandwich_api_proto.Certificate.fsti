module Sandwich_api_proto.Certificate
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

type t_Certificate = {
  f_source:Core.Option.t_Option Sandwich_api_proto.Certificate.Certificate.t_Source;
  f_special_fields:Protobuf.Special.t_SpecialFields
}
