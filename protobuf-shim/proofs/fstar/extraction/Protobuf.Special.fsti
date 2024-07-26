module Protobuf.Special
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

type t_SpecialFields = {
  f_unknown_fields:Protobuf.Unknown_fields.t_UnknownFields;
  f_cached_size:Protobuf.Cached_size.t_CachedSize
}
