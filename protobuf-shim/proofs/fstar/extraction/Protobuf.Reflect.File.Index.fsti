module Protobuf.Reflect.File.Index
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

type t_FileDescriptorCommon = {
  f_enums_by_name_to_package:Std.Collections.Hash.Map.t_HashMap Alloc.String.t_String
    usize
    Std.Hash.Random.t_RandomState
}
