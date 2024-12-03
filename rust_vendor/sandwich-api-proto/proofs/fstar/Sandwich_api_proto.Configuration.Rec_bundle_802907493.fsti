module Sandwich_api_proto.Configuration.Rec_bundle_802907493
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul
(*)
let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Protobuf.Enums in
  let open Protobuf.Message in
  let open Protobuf.Message_full in
  let open Protobuf.Oneof in
  let open Protobuf.Reflect.Runtime_types in
  let open Protobuf.Reflect.Value in
  let open Sandwich_api_proto.Configuration in
  ()

val generated_message_descriptor_data148796056: Prims.unit
  -> Prims.Pure Protobuf.Reflect.Message.Generated.t_GeneratedMessageDescriptorData
      Prims.l_True
      (fun _ -> Prims.l_True)

val panic_cold_explicit562285512: Prims.unit
  -> Prims.Pure Rust_primitives.Hax.t_Never Prims.l_True (fun _ -> Prims.l_True)

val panic_cold_explicit390861150: Prims.unit
  -> Prims.Pure Rust_primitives.Hax.t_Never Prims.l_True (fun _ -> Prims.l_True)

val generated_message_descriptor_data531281869: Prims.unit
  -> Prims.Pure Protobuf.Reflect.Message.Generated.t_GeneratedMessageDescriptorData
      Prims.l_True
      (fun _ -> Prims.l_True)

val panic_cold_explicit917777752: Prims.unit
  -> Prims.Pure Rust_primitives.Hax.t_Never Prims.l_True (fun _ -> Prims.l_True)

val panic_cold_explicit587983074: Prims.unit
  -> Prims.Pure Rust_primitives.Hax.t_Never Prims.l_True (fun _ -> Prims.l_True)

val generated_message_descriptor_data302033158: Prims.unit
  -> Prims.Pure Protobuf.Reflect.Message.Generated.t_GeneratedMessageDescriptorData
      Prims.l_True
      (fun _ -> Prims.l_True)

val panic_cold_explicit1006410857: Prims.unit
  -> Prims.Pure Rust_primitives.Hax.t_Never Prims.l_True (fun _ -> Prims.l_True)

val panic_cold_explicit825999733: Prims.unit
  -> Prims.Pure Rust_primitives.Hax.t_Never Prims.l_True (fun _ -> Prims.l_True)

val panic_cold_explicit657958773: Prims.unit
  -> Prims.Pure Rust_primitives.Hax.t_Never Prims.l_True (fun _ -> Prims.l_True)

val panic_cold_explicit463996571: Prims.unit
  -> Prims.Pure Rust_primitives.Hax.t_Never Prims.l_True (fun _ -> Prims.l_True)

val generated_enum_descriptor_data: Prims.unit
  -> Prims.Pure Protobuf.Reflect.Enums.Generated.t_GeneratedEnumDescriptorData
      Prims.l_True
      (fun _ -> Prims.l_True)

type t_Implementation =
  | Implementation_IMPL_UNSPECIFIED : t_Implementation
  | Implementation_IMPL_OPENSSL1_1_1_OQS : t_Implementation
  | Implementation_IMPL_BORINGSSL_OQS : t_Implementation
  | Implementation_IMPL_OPENSSL3_OQS_PROVIDER : t_Implementation

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_20:Core.Default.t_Default t_Implementation

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_18:Protobuf.Enums.t_Enum t_Implementation

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_19:Protobuf.Enum_full.t_EnumFull t_Implementation

val t_Implementation_cast_to_repr (x: t_Implementation)
    : Prims.Pure isize Prims.l_True (fun _ -> Prims.l_True)

val generated_oneof_descriptor_data: Prims.unit
  -> Prims.Pure Protobuf.Reflect.Oneof.Generated.t_GeneratedOneofDescriptorData
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
type t_ClientOptions = {
  f_opts:Core.Option.t_Option Sandwich_api_proto.Configuration.Client_options.t_Opts;
  f_special_fields:Protobuf.Special.t_SpecialFields
}
(*)
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl:Core.Default.t_Default t_ClientOptions

val clear_tls139096552 (self: t_ClientOptions)
    : Prims.Pure t_ClientOptions Prims.l_True (fun _ -> Prims.l_True)

val has_tls282096008 (self: t_ClientOptions) : Prims.Pure bool Prims.l_True (fun _ -> Prims.l_True)

val mut_tls98751661 (self: t_ClientOptions)
    : Prims.Pure Rust_primitives.Hax.t_failure Prims.l_True (fun _ -> Prims.l_True)

val new601766580: Prims.unit -> Prims.Pure t_ClientOptions Prims.l_True (fun _ -> Prims.l_True)

val set_tls958841671 (self: t_ClientOptions) (v: Sandwich_api_proto.Tls.t_TLSClientOptions)
    : Prims.Pure t_ClientOptions Prims.l_True (fun _ -> Prims.l_True)

val take_tls794655662 (self: t_ClientOptions)
    : Prims.Pure (t_ClientOptions & Sandwich_api_proto.Tls.t_TLSClientOptions)
      Prims.l_True
      (fun _ -> Prims.l_True)

val tls607464578 (self: t_ClientOptions)
    : Prims.Pure Sandwich_api_proto.Tls.t_TLSClientOptions Prims.l_True (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_2:Protobuf.Message.t_Message t_ClientOptions

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_4:Core.Fmt.t_Display t_ClientOptions
*)
type t_ServerOptions = {
  f_opts:Core.Option.t_Option Sandwich_api_proto.Configuration.Server_options.t_Opts;
  f_special_fields:Protobuf.Special.t_SpecialFields
}
(*)
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_6:Core.Default.t_Default t_ServerOptions

val clear_tls775665717 (self: t_ServerOptions)
    : Prims.Pure t_ServerOptions Prims.l_True (fun _ -> Prims.l_True)

val has_tls979600013 (self: t_ServerOptions) : Prims.Pure bool Prims.l_True (fun _ -> Prims.l_True)

val mut_tls926129281 (self: t_ServerOptions)
    : Prims.Pure Rust_primitives.Hax.t_failure Prims.l_True (fun _ -> Prims.l_True)

val new165648603: Prims.unit -> Prims.Pure t_ServerOptions Prims.l_True (fun _ -> Prims.l_True)

val set_tls338917176 (self: t_ServerOptions) (v: Sandwich_api_proto.Tls.t_TLSServerOptions)
    : Prims.Pure t_ServerOptions Prims.l_True (fun _ -> Prims.l_True)

val take_tls98220860 (self: t_ServerOptions)
    : Prims.Pure (t_ServerOptions & Sandwich_api_proto.Tls.t_TLSServerOptions)
      Prims.l_True
      (fun _ -> Prims.l_True)

val tls26011436 (self: t_ServerOptions)
    : Prims.Pure Sandwich_api_proto.Tls.t_TLSServerOptions Prims.l_True (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_8:Protobuf.Message.t_Message t_ServerOptions

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_10:Core.Fmt.t_Display t_ServerOptions
*)
type t_Opts =
  | Opts_Client : t_ClientOptions -> t_Opts
  | Opts_Server : t_ServerOptions -> t_Opts
(*)
type t_Configuration = {
  f_impl___:Protobuf.Enum_or_unknown.t_EnumOrUnknown t_Implementation;
  f_opts:Core.Option.t_Option t_Opts;
  f_special_fields:Protobuf.Special.t_SpecialFields
}

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_12:Core.Default.t_Default t_Configuration

val clear_client (self: t_Configuration)
    : Prims.Pure t_Configuration Prims.l_True (fun _ -> Prims.l_True)

val clear_server (self: t_Configuration)
    : Prims.Pure t_Configuration Prims.l_True (fun _ -> Prims.l_True)

val client (self: t_Configuration) : Prims.Pure t_ClientOptions Prims.l_True (fun _ -> Prims.l_True)

val has_client (self: t_Configuration) : Prims.Pure bool Prims.l_True (fun _ -> Prims.l_True)

val has_server (self: t_Configuration) : Prims.Pure bool Prims.l_True (fun _ -> Prims.l_True)

val mut_client (self: t_Configuration)
    : Prims.Pure Rust_primitives.Hax.t_failure Prims.l_True (fun _ -> Prims.l_True)

val mut_server (self: t_Configuration)
    : Prims.Pure Rust_primitives.Hax.t_failure Prims.l_True (fun _ -> Prims.l_True)

val new323773925: Prims.unit -> Prims.Pure t_Configuration Prims.l_True (fun _ -> Prims.l_True)

val server (self: t_Configuration) : Prims.Pure t_ServerOptions Prims.l_True (fun _ -> Prims.l_True)

val set_client (self: t_Configuration) (v: t_ClientOptions)
    : Prims.Pure t_Configuration Prims.l_True (fun _ -> Prims.l_True)

val set_server (self: t_Configuration) (v: t_ServerOptions)
    : Prims.Pure t_Configuration Prims.l_True (fun _ -> Prims.l_True)

val take_client (self: t_Configuration)
    : Prims.Pure (t_Configuration & t_ClientOptions) Prims.l_True (fun _ -> Prims.l_True)

val take_server (self: t_Configuration)
    : Prims.Pure (t_Configuration & t_ServerOptions) Prims.l_True (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_14:Protobuf.Message.t_Message t_Configuration

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_16:Core.Fmt.t_Display t_Configuration

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl:Protobuf.Oneof.t_Oneof t_Opts

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_1:Protobuf.Oneof_full.t_OneofFull t_Opts

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_3:Protobuf.Message_full.t_MessageFull t_ClientOptions

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_9:Protobuf.Message_full.t_MessageFull t_ServerOptions

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_15:Protobuf.Message_full.t_MessageFull t_Configuration

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_5: Protobuf.Reflect.Value.t_ProtobufValue t_ClientOptions =
  {
    _super_9442900250278684536 = FStar.Tactics.Typeclasses.solve;
    _super_3331601577671695699 = FStar.Tactics.Typeclasses.solve;
    _super_11603873402755071380 = FStar.Tactics.Typeclasses.solve;
    _super_10171955091559533151 = FStar.Tactics.Typeclasses.solve;
    _super_14975916834865509998 = FStar.Tactics.Typeclasses.solve;
    f_RuntimeType = Protobuf.Reflect.Runtime_types.t_RuntimeTypeMessage t_ClientOptions;
    f_RuntimeType_17998487123418572305 = FStar.Tactics.Typeclasses.solve
  }

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_11: Protobuf.Reflect.Value.t_ProtobufValue t_ServerOptions =
  {
    _super_9442900250278684536 = FStar.Tactics.Typeclasses.solve;
    _super_3331601577671695699 = FStar.Tactics.Typeclasses.solve;
    _super_11603873402755071380 = FStar.Tactics.Typeclasses.solve;
    _super_10171955091559533151 = FStar.Tactics.Typeclasses.solve;
    _super_14975916834865509998 = FStar.Tactics.Typeclasses.solve;
    f_RuntimeType = Protobuf.Reflect.Runtime_types.t_RuntimeTypeMessage t_ServerOptions;
    f_RuntimeType_17998487123418572305 = FStar.Tactics.Typeclasses.solve
  }

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_17: Protobuf.Reflect.Value.t_ProtobufValue t_Configuration =
  {
    _super_9442900250278684536 = FStar.Tactics.Typeclasses.solve;
    _super_3331601577671695699 = FStar.Tactics.Typeclasses.solve;
    _super_11603873402755071380 = FStar.Tactics.Typeclasses.solve;
    _super_10171955091559533151 = FStar.Tactics.Typeclasses.solve;
    _super_14975916834865509998 = FStar.Tactics.Typeclasses.solve;
    f_RuntimeType = Protobuf.Reflect.Runtime_types.t_RuntimeTypeMessage t_Configuration;
    f_RuntimeType_17998487123418572305 = FStar.Tactics.Typeclasses.solve
  }
*)