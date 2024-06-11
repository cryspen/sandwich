module Sandwich_proto.Sandwich
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Protobuf.Enums in
  let open Protobuf.Reflect.Enums in
  ()

let discriminant_Mode_MODE_CLIENT: isize = isz 1

let discriminant_Mode_MODE_SERVER: isize = isz 2

type t_Mode =
  | Mode_MODE_UNSPECIFIED : t_Mode
  | Mode_MODE_CLIENT : t_Mode
  | Mode_MODE_SERVER : t_Mode

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_2: Core.Default.t_Default t_Mode =
  {
    f_default_pre = (fun (_: Prims.unit) -> true);
    f_default_post = (fun (_: Prims.unit) (out: t_Mode) -> true);
    f_default = fun (_: Prims.unit) -> Mode_MODE_UNSPECIFIED <: t_Mode
  }

let discriminant_Mode_MODE_UNSPECIFIED: isize = isz 0

val t_Mode_cast_to_repr (x: t_Mode) : Prims.Pure isize Prims.l_True (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl: Protobuf.Enums.t_Enum t_Mode =
  {
    _super_8099741844003281729 = FStar.Tactics.Typeclasses.solve;
    _super_11581440318597584651 = FStar.Tactics.Typeclasses.solve;
    _super_11603873402755071380 = FStar.Tactics.Typeclasses.solve;
    _super_3331601577671695699 = FStar.Tactics.Typeclasses.solve;
    _super_10171955091559533151 = FStar.Tactics.Typeclasses.solve;
    _super_14975916834865509998 = FStar.Tactics.Typeclasses.solve;
    f_NAME = "Mode";
    f_value_pre = (fun (self: t_Mode) -> true);
    f_value_post = (fun (self: t_Mode) (out: i32) -> true);
    f_value = (fun (self: t_Mode) -> cast (t_Mode_cast_to_repr self <: isize) <: i32);
    f_from_i32_pre = (fun (value: i32) -> true);
    f_from_i32_post = (fun (value: i32) (out: Core.Option.t_Option t_Mode) -> true);
    f_from_i32
    =
    (fun (value: i32) ->
        match value with
        | 0l ->
          Core.Option.Option_Some (Mode_MODE_UNSPECIFIED <: t_Mode) <: Core.Option.t_Option t_Mode
        | 1l -> Core.Option.Option_Some (Mode_MODE_CLIENT <: t_Mode) <: Core.Option.t_Option t_Mode
        | 2l -> Core.Option.Option_Some (Mode_MODE_SERVER <: t_Mode) <: Core.Option.t_Option t_Mode
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_Mode);
    f_from_str_pre = (fun (str: string) -> true);
    f_from_str_post = (fun (str: string) (out: Core.Option.t_Option t_Mode) -> true);
    f_from_str
    =
    (fun (str: string) ->
        match str with
        | "MODE_UNSPECIFIED" ->
          Core.Option.Option_Some (Mode_MODE_UNSPECIFIED <: t_Mode) <: Core.Option.t_Option t_Mode
        | "MODE_CLIENT" ->
          Core.Option.Option_Some (Mode_MODE_CLIENT <: t_Mode) <: Core.Option.t_Option t_Mode
        | "MODE_SERVER" ->
          Core.Option.Option_Some (Mode_MODE_SERVER <: t_Mode) <: Core.Option.t_Option t_Mode
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_Mode);
    f_VALUES
    =
    Rust_primitives.unsize (let list =
          [Mode_MODE_UNSPECIFIED <: t_Mode; Mode_MODE_CLIENT <: t_Mode; Mode_MODE_SERVER <: t_Mode]
        in
        FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 3);
        Rust_primitives.Hax.array_of_list 3 list)
  }

let discriminant_TunnelInfo_TUNNEL_INFO_NETADDRESS: isize = isz 0

type t_TunnelInfo =
  | TunnelInfo_TUNNEL_INFO_NETADDRESS : t_TunnelInfo
  | TunnelInfo_TUNNEL_INFO_NETPORT : t_TunnelInfo

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_6: Core.Default.t_Default t_TunnelInfo =
  {
    f_default_pre = (fun (_: Prims.unit) -> true);
    f_default_post = (fun (_: Prims.unit) (out: t_TunnelInfo) -> true);
    f_default = fun (_: Prims.unit) -> TunnelInfo_TUNNEL_INFO_NETADDRESS <: t_TunnelInfo
  }

let discriminant_TunnelInfo_TUNNEL_INFO_NETPORT: isize = isz 1

val t_TunnelInfo_cast_to_repr (x: t_TunnelInfo)
    : Prims.Pure isize Prims.l_True (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_4: Protobuf.Enums.t_Enum t_TunnelInfo =
  {
    _super_8099741844003281729 = FStar.Tactics.Typeclasses.solve;
    _super_11581440318597584651 = FStar.Tactics.Typeclasses.solve;
    _super_11603873402755071380 = FStar.Tactics.Typeclasses.solve;
    _super_3331601577671695699 = FStar.Tactics.Typeclasses.solve;
    _super_10171955091559533151 = FStar.Tactics.Typeclasses.solve;
    _super_14975916834865509998 = FStar.Tactics.Typeclasses.solve;
    f_NAME = "TunnelInfo";
    f_value_pre = (fun (self: t_TunnelInfo) -> true);
    f_value_post = (fun (self: t_TunnelInfo) (out: i32) -> true);
    f_value = (fun (self: t_TunnelInfo) -> cast (t_TunnelInfo_cast_to_repr self <: isize) <: i32);
    f_from_i32_pre = (fun (value: i32) -> true);
    f_from_i32_post = (fun (value: i32) (out: Core.Option.t_Option t_TunnelInfo) -> true);
    f_from_i32
    =
    (fun (value: i32) ->
        match value with
        | 0l ->
          Core.Option.Option_Some (TunnelInfo_TUNNEL_INFO_NETADDRESS <: t_TunnelInfo)
          <:
          Core.Option.t_Option t_TunnelInfo
        | 1l ->
          Core.Option.Option_Some (TunnelInfo_TUNNEL_INFO_NETPORT <: t_TunnelInfo)
          <:
          Core.Option.t_Option t_TunnelInfo
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_TunnelInfo);
    f_from_str_pre = (fun (str: string) -> true);
    f_from_str_post = (fun (str: string) (out: Core.Option.t_Option t_TunnelInfo) -> true);
    f_from_str
    =
    (fun (str: string) ->
        match str with
        | "TUNNEL_INFO_NETADDRESS" ->
          Core.Option.Option_Some (TunnelInfo_TUNNEL_INFO_NETADDRESS <: t_TunnelInfo)
          <:
          Core.Option.t_Option t_TunnelInfo
        | "TUNNEL_INFO_NETPORT" ->
          Core.Option.Option_Some (TunnelInfo_TUNNEL_INFO_NETPORT <: t_TunnelInfo)
          <:
          Core.Option.t_Option t_TunnelInfo
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_TunnelInfo);
    f_VALUES
    =
    Rust_primitives.unsize (let list =
          [
            TunnelInfo_TUNNEL_INFO_NETADDRESS <: t_TunnelInfo;
            TunnelInfo_TUNNEL_INFO_NETPORT <: t_TunnelInfo
          ]
        in
        FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
        Rust_primitives.Hax.array_of_list 2 list)
  }

/// Generated files are compatible only with the same version
/// of protobuf runtime.
let v__PROTOBUF_VERSION_CHECK: Prims.unit = Rust_primitives.Hax.dropped_body

/// `FileDescriptor` object which allows dynamic access to files
val file_descriptor: Prims.unit
  -> Prims.Pure Protobuf.Reflect.File.t_FileDescriptor Prims.l_True (fun _ -> Prims.l_True)

/// `FileDescriptorProto` object which was a source for this generated file
val file_descriptor_proto: Prims.unit
  -> Prims.Pure Protobuf.Descriptor.t_FileDescriptorProto Prims.l_True (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_1: Protobuf.Enum_full.t_EnumFull t_Mode =
  {
    _super_14911585333008767414 = FStar.Tactics.Typeclasses.solve;
    f_enum_descriptor_pre = (fun (_: Prims.unit) -> true);
    f_enum_descriptor_post
    =
    (fun (_: Prims.unit) (out: Protobuf.Reflect.Enums.t_EnumDescriptor) -> true);
    f_enum_descriptor
    =
    (fun (_: Prims.unit) ->
        Core.Clone.f_clone #Protobuf.Reflect.Enums.t_EnumDescriptor
          (Protobuf.Lazy.impl__get #Protobuf.Reflect.Enums.t_EnumDescriptor
              enum_descriptor__descriptor
              (fun temp_0_ ->
                  let _:Prims.unit = temp_0_ in
                  Core.Option.impl__unwrap #Protobuf.Reflect.Enums.t_EnumDescriptor
                    (Protobuf.Reflect.File.impl__FileDescriptor__enum_by_package_relative_name (file_descriptor
                            ()
                          <:
                          Protobuf.Reflect.File.t_FileDescriptor)
                        "Mode"
                      <:
                      Core.Option.t_Option Protobuf.Reflect.Enums.t_EnumDescriptor)
                  <:
                  Protobuf.Reflect.Enums.t_EnumDescriptor)
            <:
            Protobuf.Reflect.Enums.t_EnumDescriptor));
    f_descriptor_pre = (fun (self: t_Mode) -> true);
    f_descriptor_post
    =
    (fun (self: t_Mode) (out: Protobuf.Reflect.Enums.t_EnumValueDescriptor) -> true);
    f_descriptor
    =
    fun (self: t_Mode) ->
      let index:usize = cast (t_Mode_cast_to_repr self <: isize) <: usize in
      Protobuf.Reflect.Enums.impl__EnumDescriptor__value_by_index (Protobuf.Enum_full.f_enum_descriptor
            #t_Mode
            ()
          <:
          Protobuf.Reflect.Enums.t_EnumDescriptor)
        index
  }

val impl__Mode__generated_enum_descriptor_data: Prims.unit
  -> Prims.Pure Protobuf.Reflect.Enums.Generated.t_GeneratedEnumDescriptorData
      Prims.l_True
      (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_5: Protobuf.Enum_full.t_EnumFull t_TunnelInfo =
  {
    _super_14911585333008767414 = FStar.Tactics.Typeclasses.solve;
    f_enum_descriptor_pre = (fun (_: Prims.unit) -> true);
    f_enum_descriptor_post
    =
    (fun (_: Prims.unit) (out: Protobuf.Reflect.Enums.t_EnumDescriptor) -> true);
    f_enum_descriptor
    =
    (fun (_: Prims.unit) ->
        Core.Clone.f_clone #Protobuf.Reflect.Enums.t_EnumDescriptor
          (Protobuf.Lazy.impl__get #Protobuf.Reflect.Enums.t_EnumDescriptor
              enum_descriptor__descriptor
              (fun temp_0_ ->
                  let _:Prims.unit = temp_0_ in
                  Core.Option.impl__unwrap #Protobuf.Reflect.Enums.t_EnumDescriptor
                    (Protobuf.Reflect.File.impl__FileDescriptor__enum_by_package_relative_name (file_descriptor
                            ()
                          <:
                          Protobuf.Reflect.File.t_FileDescriptor)
                        "TunnelInfo"
                      <:
                      Core.Option.t_Option Protobuf.Reflect.Enums.t_EnumDescriptor)
                  <:
                  Protobuf.Reflect.Enums.t_EnumDescriptor)
            <:
            Protobuf.Reflect.Enums.t_EnumDescriptor));
    f_descriptor_pre = (fun (self: t_TunnelInfo) -> true);
    f_descriptor_post
    =
    (fun (self: t_TunnelInfo) (out: Protobuf.Reflect.Enums.t_EnumValueDescriptor) -> true);
    f_descriptor
    =
    fun (self: t_TunnelInfo) ->
      let index:usize = cast (t_TunnelInfo_cast_to_repr self <: isize) <: usize in
      Protobuf.Reflect.Enums.impl__EnumDescriptor__value_by_index (Protobuf.Enum_full.f_enum_descriptor
            #t_TunnelInfo
            ()
          <:
          Protobuf.Reflect.Enums.t_EnumDescriptor)
        index
  }

val impl__TunnelInfo__generated_enum_descriptor_data: Prims.unit
  -> Prims.Pure Protobuf.Reflect.Enums.Generated.t_GeneratedEnumDescriptorData
      Prims.l_True
      (fun _ -> Prims.l_True)
