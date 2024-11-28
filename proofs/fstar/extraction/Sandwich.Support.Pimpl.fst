module Sandwich.Support.Pimpl
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

/// Wrapper around an raw pointer.
val t_Pimpl (v_T: Type0) : Type0

/// Returns a copy of the [`NonNull`] pointer.
let impl_2__as_nonnull (#v_T: Type0) (self: t_Pimpl v_T) : Core.Ptr.Non_null.t_NonNull v_T =
  self.f_p
