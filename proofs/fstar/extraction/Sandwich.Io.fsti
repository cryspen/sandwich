module Sandwich.Io
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Std.Io in
  ()

/// An IO interface that implements both [`Read`] and [`Write`] traits.
class t_IO (v_Self: Type0) = {
  [@@@ FStar.Tactics.Typeclasses.no_method]_super_4807793307859852082:Std.Io.t_Read v_Self;
  [@@@ FStar.Tactics.Typeclasses.no_method]_super_7415520646860052681:Std.Io.t_Write v_Self
}

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl
      (#v_T: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()] i1: Std.Io.t_Read v_T)
      (#[FStar.Tactics.Typeclasses.tcresolve ()] i2: Std.Io.t_Write v_T)
    : t_IO v_T =
  {
    _super_4807793307859852082 = FStar.Tactics.Typeclasses.solve;
    _super_7415520646860052681 = FStar.Tactics.Typeclasses.solve
  }
