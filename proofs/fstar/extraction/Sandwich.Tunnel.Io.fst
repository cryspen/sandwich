module Sandwich.Tunnel.Io
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

/// BoxedIO
assume
val t_BoxedIO': Type0

let t_BoxedIO = t_BoxedIO'
