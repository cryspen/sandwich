module Sandwich_api_proto.Tunnel
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul
(*
let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Protobuf.Message in
  let open Protobuf.Message_full in
  let open Protobuf.Reflect.Runtime_types in
  let open Protobuf.Reflect.Value in
  ()

val impl__TunnelConfiguration__generated_message_descriptor_data: Prims.unit
  -> Prims.Pure Protobuf.Reflect.Message.Generated.t_GeneratedMessageDescriptorData
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Generated files are compatible only with the same version
/// of protobuf runtime.
let v__PROTOBUF_VERSION_CHECK: Prims.unit = Protobuf.v_VERSION_3_3_0_

/// `FileDescriptor` object which allows dynamic access to files
val file_descriptor: Prims.unit
  -> Prims.Pure Protobuf.Reflect.File.t_FileDescriptor Prims.l_True (fun _ -> Prims.l_True)

/// `FileDescriptorProto` object which was a source for this generated file
val file_descriptor_proto: Prims.unit
  -> Prims.Pure Protobuf.Descriptor.t_FileDescriptorProto Prims.l_True (fun _ -> Prims.l_True)
*)
type t_TunnelConfiguration = {
  f_verifier:Protobuf.Message_field.t_MessageField Sandwich_api_proto.Verifiers.t_TunnelVerifier;
  f_server_name_indication:Alloc.String.t_String;
  f_special_fields:Protobuf.Special.t_SpecialFields
}
(*
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl:Core.Default.t_Default t_TunnelConfiguration

val impl__TunnelConfiguration__new: Prims.unit
  -> Prims.Pure t_TunnelConfiguration Prims.l_True (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_2:Protobuf.Message.t_Message t_TunnelConfiguration

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_4:Core.Fmt.t_Display t_TunnelConfiguration

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_3:Protobuf.Message_full.t_MessageFull t_TunnelConfiguration

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_5: Protobuf.Reflect.Value.t_ProtobufValue t_TunnelConfiguration =
  {
    _super_9442900250278684536 = FStar.Tactics.Typeclasses.solve;
    _super_3331601577671695699 = FStar.Tactics.Typeclasses.solve;
    _super_11603873402755071380 = FStar.Tactics.Typeclasses.solve;
    _super_10171955091559533151 = FStar.Tactics.Typeclasses.solve;
    _super_14975916834865509998 = FStar.Tactics.Typeclasses.solve;
    f_RuntimeType = Protobuf.Reflect.Runtime_types.t_RuntimeTypeMessage t_TunnelConfiguration;
    f_RuntimeType_17998487123418572305 = FStar.Tactics.Typeclasses.solve
  }
*)