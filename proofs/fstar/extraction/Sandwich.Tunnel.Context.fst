module Sandwich.Tunnel.Context
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let t_Context_cast_to_repr (x: t_Context) = match x with

let t_Mode_cast_to_repr (x: t_Mode) =
  match x with
  | Mode_Client  -> isz 0
  | Mode_Server  -> isz 1
