module Sandwich_api_proto.Certificate.Certificate
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

type t_Source = | Source_Static : Sandwich_api_proto.Data_source.t_ASN1DataSource -> t_Source
