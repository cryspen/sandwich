module Protobuf.Reflect.Value
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

class t_ProtobufValue (v_Self: Type0) = {
  [@@@ FStar.Tactics.Typeclasses.no_method]_super_9442900250278684536:Core.Clone.t_Clone v_Self;
  [@@@ FStar.Tactics.Typeclasses.no_method]_super_3331601577671695699:Core.Default.t_Default v_Self;
  [@@@ FStar.Tactics.Typeclasses.no_method]_super_11603873402755071380:Core.Fmt.t_Debug v_Self;
  [@@@ FStar.Tactics.Typeclasses.no_method]_super_10171955091559533151:Core.Marker.t_Send v_Self;
  [@@@ FStar.Tactics.Typeclasses.no_method]_super_14975916834865509998:Core.Marker.t_Sync v_Self
}
