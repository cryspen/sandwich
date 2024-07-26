module Protobuf.Enums
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

/// Trait implemented by all protobuf enum types.
/// Additionally, generated enums also implement [`EnumFull`](crate::EnumFull) trait,
/// which provides access to reflection.
class t_Enum (#v_Self: Type0) = {
  [@@@ FStar.Tactics.Typeclasses.no_method]_super_11581440318597584651:Core.Marker.t_Copy v_Self;
  [@@@ FStar.Tactics.Typeclasses.no_method]_super_11603873402755071380:Core.Fmt.t_Debug v_Self;
  [@@@ FStar.Tactics.Typeclasses.no_method]_super_3331601577671695699:Core.Default.t_Default v_Self;
  f_NAME:string;
  f_value_pre:v_Self -> bool;
  f_value_post:v_Self -> i32 -> bool;
  f_value:x0: v_Self -> Prims.Pure i32 (f_value_pre x0) (fun result -> f_value_post x0 result);
  f_from_i32_pre:i32 -> bool;
  f_from_i32_post:i32 -> Core.Option.t_Option v_Self -> bool;
  f_from_i32:x0: i32
    -> Prims.Pure (Core.Option.t_Option v_Self)
        (f_from_i32_pre x0)
        (fun result -> f_from_i32_post x0 result);
  f_from_str_pre:string -> bool;
  f_from_str_post:string -> Core.Option.t_Option v_Self -> bool;
  f_from_str:x0: string
    -> Prims.Pure (Core.Option.t_Option v_Self)
        (f_from_str_pre x0)
        (fun result -> f_from_str_post x0 result);
  f_VALUES:t_Slice v_Self
}
