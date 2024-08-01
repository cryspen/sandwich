module Protobuf.Reflect
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let t_NullValue_cast_to_repr (x: t_NullValue) =
  match x with | NullValue_NULL_VALUE  -> discriminant_NullValue_NULL_VALUE
