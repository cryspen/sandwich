module Protobuf.Reflect.Enums
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

type t_EnumDescriptor = { f__hax_placeholder:Prims.unit }

val impl__EnumDescriptor__new (#v_T: Type0) (file_descriptor: v_T) (index: usize)
    : Prims.Pure t_EnumDescriptor Prims.l_True (fun _ -> Prims.l_True)
