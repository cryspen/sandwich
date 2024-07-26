module Sandwich_api_proto.Data_source.Data_source
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

type t_Specifier =
  | Specifier_Filename : Alloc.String.t_String -> t_Specifier
  | Specifier_InlineBytes : Alloc.Vec.t_Vec u8 Alloc.Alloc.t_Global -> t_Specifier
  | Specifier_InlineString : Alloc.String.t_String -> t_Specifier
