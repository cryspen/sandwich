module Sandwich_api_proto.Verifiers.Sanmatcher
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Protobuf.Oneof in
  ()

type t_San =
  | San_Email : Alloc.String.t_String -> t_San
  | San_Dns : Alloc.String.t_String -> t_San
  | San_IpAddress : Alloc.String.t_String -> t_San

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl:Protobuf.Oneof.t_Oneof #t_San

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_1:Protobuf.Oneof_full.t_OneofFull #t_San
