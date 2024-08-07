module Protobuf.Message_field
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let impl__as_ref (#v_T: Type0) (self: t_MessageField v_T) =
  Core.Option.impl__map #(Alloc.Boxed.t_Box v_T Alloc.Alloc.t_Global)
    #v_T
    (Core.Option.impl__as_ref #(Alloc.Boxed.t_Box v_T Alloc.Alloc.t_Global) self._0
      <:
      Core.Option.t_Option (Alloc.Boxed.t_Box v_T Alloc.Alloc.t_Global))
    (fun v -> v)
