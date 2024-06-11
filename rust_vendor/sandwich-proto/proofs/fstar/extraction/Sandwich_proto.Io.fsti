module Sandwich_proto.Io
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Protobuf.Enums in
  let open Protobuf.Reflect.Enums in
  ()

let discriminant_IOError_IOERROR_ADDRESS_IN_USE: isize = isz 8

let discriminant_IOError_IOERROR_CLOSED: isize = isz 4

let discriminant_IOError_IOERROR_INVALID: isize = isz 5

let discriminant_IOError_IOERROR_IN_PROGRESS: isize = isz 1

let discriminant_IOError_IOERROR_OK: isize = isz 0

let discriminant_IOError_IOERROR_REFUSED: isize = isz 3

let discriminant_IOError_IOERROR_SYSTEM_ERROR: isize = isz 7

let discriminant_IOError_IOERROR_UNKNOWN: isize = isz 6

type t_IOError =
  | IOError_IOERROR_OK : t_IOError
  | IOError_IOERROR_IN_PROGRESS : t_IOError
  | IOError_IOERROR_WOULD_BLOCK : t_IOError
  | IOError_IOERROR_REFUSED : t_IOError
  | IOError_IOERROR_CLOSED : t_IOError
  | IOError_IOERROR_INVALID : t_IOError
  | IOError_IOERROR_SYSTEM_ERROR : t_IOError
  | IOError_IOERROR_ADDRESS_IN_USE : t_IOError
  | IOError_IOERROR_UNKNOWN : t_IOError

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_2: Core.Default.t_Default t_IOError =
  {
    f_default_pre = (fun (_: Prims.unit) -> true);
    f_default_post = (fun (_: Prims.unit) (out: t_IOError) -> true);
    f_default = fun (_: Prims.unit) -> IOError_IOERROR_OK <: t_IOError
  }

let discriminant_IOError_IOERROR_WOULD_BLOCK: isize = isz 2

val t_IOError_cast_to_repr (x: t_IOError) : Prims.Pure isize Prims.l_True (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl: Protobuf.Enums.t_Enum t_IOError =
  {
    _super_8099741844003281729 = FStar.Tactics.Typeclasses.solve;
    _super_11581440318597584651 = FStar.Tactics.Typeclasses.solve;
    _super_11603873402755071380 = FStar.Tactics.Typeclasses.solve;
    _super_3331601577671695699 = FStar.Tactics.Typeclasses.solve;
    _super_10171955091559533151 = FStar.Tactics.Typeclasses.solve;
    _super_14975916834865509998 = FStar.Tactics.Typeclasses.solve;
    f_NAME = "IOError";
    f_value_pre = (fun (self: t_IOError) -> true);
    f_value_post = (fun (self: t_IOError) (out: i32) -> true);
    f_value = (fun (self: t_IOError) -> cast (t_IOError_cast_to_repr self <: isize) <: i32);
    f_from_i32_pre = (fun (value: i32) -> true);
    f_from_i32_post = (fun (value: i32) (out: Core.Option.t_Option t_IOError) -> true);
    f_from_i32
    =
    (fun (value: i32) ->
        match value with
        | 0l ->
          Core.Option.Option_Some (IOError_IOERROR_OK <: t_IOError)
          <:
          Core.Option.t_Option t_IOError
        | 1l ->
          Core.Option.Option_Some (IOError_IOERROR_IN_PROGRESS <: t_IOError)
          <:
          Core.Option.t_Option t_IOError
        | 2l ->
          Core.Option.Option_Some (IOError_IOERROR_WOULD_BLOCK <: t_IOError)
          <:
          Core.Option.t_Option t_IOError
        | 3l ->
          Core.Option.Option_Some (IOError_IOERROR_REFUSED <: t_IOError)
          <:
          Core.Option.t_Option t_IOError
        | 4l ->
          Core.Option.Option_Some (IOError_IOERROR_CLOSED <: t_IOError)
          <:
          Core.Option.t_Option t_IOError
        | 5l ->
          Core.Option.Option_Some (IOError_IOERROR_INVALID <: t_IOError)
          <:
          Core.Option.t_Option t_IOError
        | 7l ->
          Core.Option.Option_Some (IOError_IOERROR_SYSTEM_ERROR <: t_IOError)
          <:
          Core.Option.t_Option t_IOError
        | 8l ->
          Core.Option.Option_Some (IOError_IOERROR_ADDRESS_IN_USE <: t_IOError)
          <:
          Core.Option.t_Option t_IOError
        | 6l ->
          Core.Option.Option_Some (IOError_IOERROR_UNKNOWN <: t_IOError)
          <:
          Core.Option.t_Option t_IOError
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_IOError);
    f_from_str_pre = (fun (str: string) -> true);
    f_from_str_post = (fun (str: string) (out: Core.Option.t_Option t_IOError) -> true);
    f_from_str
    =
    (fun (str: string) ->
        match str with
        | "IOERROR_OK" ->
          Core.Option.Option_Some (IOError_IOERROR_OK <: t_IOError)
          <:
          Core.Option.t_Option t_IOError
        | "IOERROR_IN_PROGRESS" ->
          Core.Option.Option_Some (IOError_IOERROR_IN_PROGRESS <: t_IOError)
          <:
          Core.Option.t_Option t_IOError
        | "IOERROR_WOULD_BLOCK" ->
          Core.Option.Option_Some (IOError_IOERROR_WOULD_BLOCK <: t_IOError)
          <:
          Core.Option.t_Option t_IOError
        | "IOERROR_REFUSED" ->
          Core.Option.Option_Some (IOError_IOERROR_REFUSED <: t_IOError)
          <:
          Core.Option.t_Option t_IOError
        | "IOERROR_CLOSED" ->
          Core.Option.Option_Some (IOError_IOERROR_CLOSED <: t_IOError)
          <:
          Core.Option.t_Option t_IOError
        | "IOERROR_INVALID" ->
          Core.Option.Option_Some (IOError_IOERROR_INVALID <: t_IOError)
          <:
          Core.Option.t_Option t_IOError
        | "IOERROR_SYSTEM_ERROR" ->
          Core.Option.Option_Some (IOError_IOERROR_SYSTEM_ERROR <: t_IOError)
          <:
          Core.Option.t_Option t_IOError
        | "IOERROR_ADDRESS_IN_USE" ->
          Core.Option.Option_Some (IOError_IOERROR_ADDRESS_IN_USE <: t_IOError)
          <:
          Core.Option.t_Option t_IOError
        | "IOERROR_UNKNOWN" ->
          Core.Option.Option_Some (IOError_IOERROR_UNKNOWN <: t_IOError)
          <:
          Core.Option.t_Option t_IOError
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_IOError);
    f_VALUES
    =
    Rust_primitives.unsize (let list =
          [
            IOError_IOERROR_OK <: t_IOError;
            IOError_IOERROR_IN_PROGRESS <: t_IOError;
            IOError_IOERROR_WOULD_BLOCK <: t_IOError;
            IOError_IOERROR_REFUSED <: t_IOError;
            IOError_IOERROR_CLOSED <: t_IOError;
            IOError_IOERROR_INVALID <: t_IOError;
            IOError_IOERROR_SYSTEM_ERROR <: t_IOError;
            IOError_IOERROR_ADDRESS_IN_USE <: t_IOError;
            IOError_IOERROR_UNKNOWN <: t_IOError
          ]
        in
        FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 9);
        Rust_primitives.Hax.array_of_list 9 list)
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
let impl_1: Protobuf.Enum_full.t_EnumFull t_IOError =
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
                        "IOError"
                      <:
                      Core.Option.t_Option Protobuf.Reflect.Enums.t_EnumDescriptor)
                  <:
                  Protobuf.Reflect.Enums.t_EnumDescriptor)
            <:
            Protobuf.Reflect.Enums.t_EnumDescriptor));
    f_descriptor_pre = (fun (self: t_IOError) -> true);
    f_descriptor_post
    =
    (fun (self: t_IOError) (out: Protobuf.Reflect.Enums.t_EnumValueDescriptor) -> true);
    f_descriptor
    =
    fun (self: t_IOError) ->
      let index:usize =
        match self with
        | IOError_IOERROR_OK  -> sz 0
        | IOError_IOERROR_IN_PROGRESS  -> sz 1
        | IOError_IOERROR_WOULD_BLOCK  -> sz 2
        | IOError_IOERROR_REFUSED  -> sz 3
        | IOError_IOERROR_CLOSED  -> sz 4
        | IOError_IOERROR_INVALID  -> sz 5
        | IOError_IOERROR_SYSTEM_ERROR  -> sz 6
        | IOError_IOERROR_ADDRESS_IN_USE  -> sz 7
        | IOError_IOERROR_UNKNOWN  -> sz 8
      in
      Protobuf.Reflect.Enums.impl__EnumDescriptor__value_by_index (Protobuf.Enum_full.f_enum_descriptor
            #t_IOError
            ()
          <:
          Protobuf.Reflect.Enums.t_EnumDescriptor)
        index
  }

val impl__IOError__generated_enum_descriptor_data: Prims.unit
  -> Prims.Pure Protobuf.Reflect.Enums.Generated.t_GeneratedEnumDescriptorData
      Prims.l_True
      (fun _ -> Prims.l_True)
