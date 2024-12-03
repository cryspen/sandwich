module Sandwich.Support.Pimpl
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

/// Wrapper around an raw pointer.
assume
val t_Pimpl': v_T: Type0 -> eqtype

let t_Pimpl = t_Pimpl'

/// Returns a copy of the [`NonNull`] pointer.
assume
val impl_2__as_nonnull': #v_T: Type0 -> self: t_Pimpl v_T -> Core.Ptr.Non_null.t_NonNull v_T

let impl_2__as_nonnull = impl_2__as_nonnull'
