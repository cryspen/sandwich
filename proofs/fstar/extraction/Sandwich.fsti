module Sandwich
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

/// Top-level context.
/// This context is used to create tunnel contexts.
type t_Context = { f_ossl3_lib_ctx:Sandwich.Implementation.Openssl3_impl.t_LibCtx }

/// Returns the current top-level library context for Openssl 3.
val impl__Context__get_openssl3_lib_ctx (self: t_Context)
    : Prims.Pure Sandwich.Implementation.Openssl3_impl.t_LibCtx Prims.l_True (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_2: Core.Borrow.t_Borrow t_Context Sandwich.Implementation.Openssl3_impl.t_LibCtx =
  {
    f_borrow_pre = (fun (self: t_Context) -> true);
    f_borrow_post
    =
    (fun (self: t_Context) (out: Sandwich.Implementation.Openssl3_impl.t_LibCtx) -> true);
    f_borrow = fun (self: t_Context) -> self.f_ossl3_lib_ctx
  }
