module Protobuf.Message
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

/// Trait which is implemented by all generated message.
/// Note, by default all generated messages also implement [`MessageFull`](crate::MessageFull)
/// trait which provides access to reflection and features which depend on reflection
/// (text format and JSON serialization).
class t_Message (v_Self: Type0) = {
  [@@@ FStar.Tactics.Typeclasses.no_method]_super_3331601577671695699:Core.Default.t_Default v_Self;
  [@@@ FStar.Tactics.Typeclasses.no_method]_super_9442900250278684536:Core.Clone.t_Clone v_Self;
  [@@@ FStar.Tactics.Typeclasses.no_method]_super_10171955091559533151:Core.Marker.t_Send v_Self;
  [@@@ FStar.Tactics.Typeclasses.no_method]_super_14975916834865509998:Core.Marker.t_Sync v_Self;
  [@@@ FStar.Tactics.Typeclasses.no_method]_super_12632649257025169145:Core.Cmp.t_PartialEq v_Self
    v_Self
}
