module Protobuf.Cached_size
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

/// Cached size field used in generated code.
/// It is always equal to itself to simplify generated code.
/// (Generated code can use `#[derive(Eq)]`).
/// This type should rarely be used directly.
type t_CachedSize = { f_size:Prims.unit }
