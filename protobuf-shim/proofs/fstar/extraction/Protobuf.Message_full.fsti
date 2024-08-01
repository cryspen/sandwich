module Protobuf.Message_full
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Protobuf.Message in
  let open Protobuf.Reflect.Value in
  ()

/// Trait implemented for all the generated messages, except when lite runtime is enabled.
/// When lite runtime is enabled, only `MessageLite` is implemented.
/// * Generated messages are generated from `.proto` files
/// * Dynamic messages can be created without code generation using only parsed proto files
///   (see [FileDescriptor::new_dynamic](crate::reflect::FileDescriptor::new_dynamic)).
/// Also, generated messages implement `Default + PartialEq`
/// This trait is sized, there's accompanying [`MessageDyn`](crate::MessageDyn) trait
/// which is implemented for all messages which can be used in functions
/// without making message a function type parameter.
/// ## `Display`
/// [`Display`](fmt::Display) implementation for messages does protobuf text format.
/// See [`text_format`](crate::text_format) for more details.
class t_MessageFull (v_Self: Type0) = {
  [@@@ FStar.Tactics.Typeclasses.no_method]_super_11208663668378484103:Protobuf.Message.t_Message
  v_Self;
  [@@@ FStar.Tactics.Typeclasses.no_method]_super_515255715722043529:Protobuf.Reflect.Value.t_ProtobufValue
  v_Self;
  [@@@ FStar.Tactics.Typeclasses.no_method]_super_11603873402755071380:Core.Fmt.t_Debug v_Self;
  [@@@ FStar.Tactics.Typeclasses.no_method]_super_7348497752681407507:Core.Fmt.t_Display v_Self
}
