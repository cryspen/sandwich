module Protobuf.Enum_or_unknown
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

type t_EnumOrUnknown (v_E: Type0) = { f_phantom:Core.Marker.t_PhantomData v_E }
