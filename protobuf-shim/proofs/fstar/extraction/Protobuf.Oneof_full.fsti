module Protobuf.Oneof_full
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Protobuf.Oneof in
  ()

/// Implemented by all oneof types when lite runtime is not enabled.
class t_OneofFull (#v_Self: Type0) = {
  [@@@ FStar.Tactics.Typeclasses.no_method]_super_17062659898687969672:Protobuf.Oneof.t_Oneof #v_Self;
  f_descriptor_pre:Prims.unit -> bool;
  f_descriptor_post:Prims.unit -> Protobuf.Reflect.t_OneofDescriptor -> bool;
  f_descriptor:x0: Prims.unit
    -> Prims.Pure Protobuf.Reflect.t_OneofDescriptor
        (f_descriptor_pre x0)
        (fun result -> f_descriptor_post x0 result)
}
