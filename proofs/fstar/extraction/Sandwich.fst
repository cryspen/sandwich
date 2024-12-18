module Sandwich
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

/// Top-level context.
/// This context is used to create tunnel contexts.
type t_Context = { f_ossl3_lib_ctx:Sandwich.Implementation.Openssl3_impl.t_LibCtx }
