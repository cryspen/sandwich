module Sandwich.Support
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

/// Checks if a given string contains any of the characters from another string.
val contains_any_of (string invalid_chars: string)
    : Prims.Pure bool Prims.l_True (fun _ -> Prims.l_True)
