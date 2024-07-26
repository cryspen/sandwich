module Protobuf.Message_field
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

type t_MessageField (v_T: Type0) =
  | MessageField : Core.Option.t_Option (Alloc.Boxed.t_Box v_T Alloc.Alloc.t_Global)
    -> t_MessageField v_T
