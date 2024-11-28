module Sandwich.Tunnel.Io
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Sandwich.Io in
  let open Std.Io in
  ()

/// BoxedIO
val t_BoxedIO:Type0

/// An IO interface specific to tunnels.
class t_IO (v_Self: Type0) = {
  [@@@ FStar.Tactics.Typeclasses.no_method]_super_4477687896940107264:Sandwich.Io.t_IO v_Self;
  f_set_state_pre:v_Self -> Sandwich_proto.Tunnel.t_State -> Type0;
  f_set_state_post:v_Self -> Sandwich_proto.Tunnel.t_State -> v_Self -> Type0;
  f_set_state:x0: v_Self -> x1: Sandwich_proto.Tunnel.t_State
    -> Prims.Pure v_Self (f_set_state_pre x0 x1) (fun result -> f_set_state_post x0 x1 result)
}

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_3:Core.Convert.t_From t_BoxedIO
  (Alloc.Boxed.t_Box (dyn 1 (fun z -> t_IO z)) Alloc.Alloc.t_Global)

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_4:Core.Fmt.t_Debug (dyn 1 (fun z -> t_IO z))

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_1:Std.Io.t_Read t_BoxedIO

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_2:Std.Io.t_Write t_BoxedIO

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl:t_IO t_BoxedIO
