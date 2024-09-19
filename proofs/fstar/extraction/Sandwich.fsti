module Sandwich
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

/// Top-level context.
/// This context is used to create tunnel contexts.
type t_Context = { f_ossl3_lib_ctx:Sandwich.Implementation.Openssl3.t_LibCtx }

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_2: Core.Borrow.t_Borrow t_Context Sandwich.Implementation.Openssl3.t_LibCtx =
  {
    f_borrow_pre = (fun (self: t_Context) -> true);
    f_borrow_post = (fun (self: t_Context) (out: Sandwich.Implementation.Openssl3.t_LibCtx) -> true);
    f_borrow = fun (self: t_Context) -> self.f_ossl3_lib_ctx
  }
