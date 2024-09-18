module Sandwich_proto.Tunnel
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Protobuf.Enums in
  let open Protobuf.Reflect.Enums in
  ()

let discriminant_HandshakeState_HANDSHAKESTATE_DONE: isize = isz 1

let discriminant_HandshakeState_HANDSHAKESTATE_ERROR: isize = isz 4

let discriminant_HandshakeState_HANDSHAKESTATE_IN_PROGRESS: isize = isz 0

let discriminant_HandshakeState_HANDSHAKESTATE_WANT_READ: isize = isz 2

type t_HandshakeState =
  | HandshakeState_HANDSHAKESTATE_IN_PROGRESS : t_HandshakeState
  | HandshakeState_HANDSHAKESTATE_DONE : t_HandshakeState
  | HandshakeState_HANDSHAKESTATE_WANT_READ : t_HandshakeState
  | HandshakeState_HANDSHAKESTATE_WANT_WRITE : t_HandshakeState
  | HandshakeState_HANDSHAKESTATE_ERROR : t_HandshakeState

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_6: Core.Default.t_Default t_HandshakeState =
  {
    f_default_pre = (fun (_: Prims.unit) -> true);
    f_default_post = (fun (_: Prims.unit) (out: t_HandshakeState) -> true);
    f_default = fun (_: Prims.unit) -> HandshakeState_HANDSHAKESTATE_IN_PROGRESS <: t_HandshakeState
  }

let discriminant_HandshakeState_HANDSHAKESTATE_WANT_WRITE: isize = isz 3

val t_HandshakeState_cast_to_repr (x: t_HandshakeState)
    : Prims.Pure isize Prims.l_True (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_Debug_Enum: Core.Fmt.t_Debug t_HandshakeState

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_4: Protobuf.Enums.t_Enum t_HandshakeState =
  {
    _super_11581440318597584651 = FStar.Tactics.Typeclasses.solve;
    _super_11603873402755071380 = FStar.Tactics.Typeclasses.solve;
    _super_3331601577671695699 = FStar.Tactics.Typeclasses.solve;
    f_NAME = "HandshakeState";
    f_value_pre = (fun (self: t_HandshakeState) -> true);
    f_value_post = (fun (self: t_HandshakeState) (out: i32) -> true);
    f_value
    =
    (fun (self: t_HandshakeState) -> cast (t_HandshakeState_cast_to_repr self <: isize) <: i32);
    f_from_i32_pre = (fun (value: i32) -> true);
    f_from_i32_post = (fun (value: i32) (out: Core.Option.t_Option t_HandshakeState) -> true);
    f_from_i32
    =
    (fun (value: i32) ->
        match value with
        | 0l ->
          Core.Option.Option_Some (HandshakeState_HANDSHAKESTATE_IN_PROGRESS <: t_HandshakeState)
          <:
          Core.Option.t_Option t_HandshakeState
        | 1l ->
          Core.Option.Option_Some (HandshakeState_HANDSHAKESTATE_DONE <: t_HandshakeState)
          <:
          Core.Option.t_Option t_HandshakeState
        | 2l ->
          Core.Option.Option_Some (HandshakeState_HANDSHAKESTATE_WANT_READ <: t_HandshakeState)
          <:
          Core.Option.t_Option t_HandshakeState
        | 3l ->
          Core.Option.Option_Some (HandshakeState_HANDSHAKESTATE_WANT_WRITE <: t_HandshakeState)
          <:
          Core.Option.t_Option t_HandshakeState
        | 4l ->
          Core.Option.Option_Some (HandshakeState_HANDSHAKESTATE_ERROR <: t_HandshakeState)
          <:
          Core.Option.t_Option t_HandshakeState
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_HandshakeState);
    f_from_str_pre = (fun (str: string) -> true);
    f_from_str_post = (fun (str: string) (out: Core.Option.t_Option t_HandshakeState) -> true);
    f_from_str
    =
    (fun (str: string) ->
        match str with
        | "HANDSHAKESTATE_IN_PROGRESS" ->
          Core.Option.Option_Some (HandshakeState_HANDSHAKESTATE_IN_PROGRESS <: t_HandshakeState)
          <:
          Core.Option.t_Option t_HandshakeState
        | "HANDSHAKESTATE_DONE" ->
          Core.Option.Option_Some (HandshakeState_HANDSHAKESTATE_DONE <: t_HandshakeState)
          <:
          Core.Option.t_Option t_HandshakeState
        | "HANDSHAKESTATE_WANT_READ" ->
          Core.Option.Option_Some (HandshakeState_HANDSHAKESTATE_WANT_READ <: t_HandshakeState)
          <:
          Core.Option.t_Option t_HandshakeState
        | "HANDSHAKESTATE_WANT_WRITE" ->
          Core.Option.Option_Some (HandshakeState_HANDSHAKESTATE_WANT_WRITE <: t_HandshakeState)
          <:
          Core.Option.t_Option t_HandshakeState
        | "HANDSHAKESTATE_ERROR" ->
          Core.Option.Option_Some (HandshakeState_HANDSHAKESTATE_ERROR <: t_HandshakeState)
          <:
          Core.Option.t_Option t_HandshakeState
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_HandshakeState);
    f_VALUES
    =
    Rust_primitives.unsize (let list =
          [
            HandshakeState_HANDSHAKESTATE_IN_PROGRESS <: t_HandshakeState;
            HandshakeState_HANDSHAKESTATE_DONE <: t_HandshakeState;
            HandshakeState_HANDSHAKESTATE_WANT_READ <: t_HandshakeState;
            HandshakeState_HANDSHAKESTATE_WANT_WRITE <: t_HandshakeState;
            HandshakeState_HANDSHAKESTATE_ERROR <: t_HandshakeState
          ]
        in
        FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 5);
        Rust_primitives.Hax.array_of_list 5 list)
  }

let discriminant_RecordError_RECORDERROR_BEING_SHUTDOWN: isize = isz 3

let discriminant_RecordError_RECORDERROR_CLOSED: isize = isz 4

let discriminant_RecordError_RECORDERROR_OK: isize = isz 0

let discriminant_RecordError_RECORDERROR_TOO_BIG: isize = isz 5

let discriminant_RecordError_RECORDERROR_UNKNOWN: isize = isz 6

let discriminant_RecordError_RECORDERROR_WANT_READ: isize = isz 1

type t_RecordError =
  | RecordError_RECORDERROR_OK : t_RecordError
  | RecordError_RECORDERROR_WANT_READ : t_RecordError
  | RecordError_RECORDERROR_WANT_WRITE : t_RecordError
  | RecordError_RECORDERROR_BEING_SHUTDOWN : t_RecordError
  | RecordError_RECORDERROR_CLOSED : t_RecordError
  | RecordError_RECORDERROR_TOO_BIG : t_RecordError
  | RecordError_RECORDERROR_UNKNOWN : t_RecordError

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_10: Core.Default.t_Default t_RecordError =
  {
    f_default_pre = (fun (_: Prims.unit) -> true);
    f_default_post = (fun (_: Prims.unit) (out: t_RecordError) -> true);
    f_default = fun (_: Prims.unit) -> RecordError_RECORDERROR_OK <: t_RecordError
  }

let discriminant_RecordError_RECORDERROR_WANT_WRITE: isize = isz 2

val t_RecordError_cast_to_repr (x: t_RecordError)
    : Prims.Pure isize Prims.l_True (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_Debug_RecordError: Core.Fmt.t_Debug t_RecordError

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_8: Protobuf.Enums.t_Enum t_RecordError =
  {
    _super_11581440318597584651 = FStar.Tactics.Typeclasses.solve;
    _super_11603873402755071380 = FStar.Tactics.Typeclasses.solve;
    _super_3331601577671695699 = FStar.Tactics.Typeclasses.solve;
    f_NAME = "RecordError";
    f_value_pre = (fun (self: t_RecordError) -> true);
    f_value_post = (fun (self: t_RecordError) (out: i32) -> true);
    f_value = (fun (self: t_RecordError) -> cast (t_RecordError_cast_to_repr self <: isize) <: i32);
    f_from_i32_pre = (fun (value: i32) -> true);
    f_from_i32_post = (fun (value: i32) (out: Core.Option.t_Option t_RecordError) -> true);
    f_from_i32
    =
    (fun (value: i32) ->
        match value with
        | 0l ->
          Core.Option.Option_Some (RecordError_RECORDERROR_OK <: t_RecordError)
          <:
          Core.Option.t_Option t_RecordError
        | 1l ->
          Core.Option.Option_Some (RecordError_RECORDERROR_WANT_READ <: t_RecordError)
          <:
          Core.Option.t_Option t_RecordError
        | 2l ->
          Core.Option.Option_Some (RecordError_RECORDERROR_WANT_WRITE <: t_RecordError)
          <:
          Core.Option.t_Option t_RecordError
        | 3l ->
          Core.Option.Option_Some (RecordError_RECORDERROR_BEING_SHUTDOWN <: t_RecordError)
          <:
          Core.Option.t_Option t_RecordError
        | 4l ->
          Core.Option.Option_Some (RecordError_RECORDERROR_CLOSED <: t_RecordError)
          <:
          Core.Option.t_Option t_RecordError
        | 5l ->
          Core.Option.Option_Some (RecordError_RECORDERROR_TOO_BIG <: t_RecordError)
          <:
          Core.Option.t_Option t_RecordError
        | 6l ->
          Core.Option.Option_Some (RecordError_RECORDERROR_UNKNOWN <: t_RecordError)
          <:
          Core.Option.t_Option t_RecordError
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_RecordError);
    f_from_str_pre = (fun (str: string) -> true);
    f_from_str_post = (fun (str: string) (out: Core.Option.t_Option t_RecordError) -> true);
    f_from_str
    =
    (fun (str: string) ->
        match str with
        | "RECORDERROR_OK" ->
          Core.Option.Option_Some (RecordError_RECORDERROR_OK <: t_RecordError)
          <:
          Core.Option.t_Option t_RecordError
        | "RECORDERROR_WANT_READ" ->
          Core.Option.Option_Some (RecordError_RECORDERROR_WANT_READ <: t_RecordError)
          <:
          Core.Option.t_Option t_RecordError
        | "RECORDERROR_WANT_WRITE" ->
          Core.Option.Option_Some (RecordError_RECORDERROR_WANT_WRITE <: t_RecordError)
          <:
          Core.Option.t_Option t_RecordError
        | "RECORDERROR_BEING_SHUTDOWN" ->
          Core.Option.Option_Some (RecordError_RECORDERROR_BEING_SHUTDOWN <: t_RecordError)
          <:
          Core.Option.t_Option t_RecordError
        | "RECORDERROR_CLOSED" ->
          Core.Option.Option_Some (RecordError_RECORDERROR_CLOSED <: t_RecordError)
          <:
          Core.Option.t_Option t_RecordError
        | "RECORDERROR_TOO_BIG" ->
          Core.Option.Option_Some (RecordError_RECORDERROR_TOO_BIG <: t_RecordError)
          <:
          Core.Option.t_Option t_RecordError
        | "RECORDERROR_UNKNOWN" ->
          Core.Option.Option_Some (RecordError_RECORDERROR_UNKNOWN <: t_RecordError)
          <:
          Core.Option.t_Option t_RecordError
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_RecordError);
    f_VALUES
    =
    Rust_primitives.unsize (let list =
          [
            RecordError_RECORDERROR_OK <: t_RecordError;
            RecordError_RECORDERROR_WANT_READ <: t_RecordError;
            RecordError_RECORDERROR_WANT_WRITE <: t_RecordError;
            RecordError_RECORDERROR_BEING_SHUTDOWN <: t_RecordError;
            RecordError_RECORDERROR_CLOSED <: t_RecordError;
            RecordError_RECORDERROR_TOO_BIG <: t_RecordError;
            RecordError_RECORDERROR_UNKNOWN <: t_RecordError
          ]
        in
        FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 7);
        Rust_primitives.Hax.array_of_list 7 list)
  }

let discriminant_State_STATE_BEING_SHUTDOWN: isize = isz 4

let discriminant_State_STATE_CONNECTION_IN_PROGRESS: isize = isz 1

let discriminant_State_STATE_DISCONNECTED: isize = isz 5

let discriminant_State_STATE_ERROR: isize = isz 6

let discriminant_State_STATE_HANDSHAKE_DONE: isize = isz 3

let discriminant_State_STATE_HANDSHAKE_IN_PROGRESS: isize = isz 2

type t_State =
  | State_STATE_NOT_CONNECTED : t_State
  | State_STATE_CONNECTION_IN_PROGRESS : t_State
  | State_STATE_HANDSHAKE_IN_PROGRESS : t_State
  | State_STATE_HANDSHAKE_DONE : t_State
  | State_STATE_BEING_SHUTDOWN : t_State
  | State_STATE_DISCONNECTED : t_State
  | State_STATE_ERROR : t_State

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_2: Core.Default.t_Default t_State =
  {
    f_default_pre = (fun (_: Prims.unit) -> true);
    f_default_post = (fun (_: Prims.unit) (out: t_State) -> true);
    f_default = fun (_: Prims.unit) -> State_STATE_NOT_CONNECTED <: t_State
  }

let discriminant_State_STATE_NOT_CONNECTED: isize = isz 0

val t_State_cast_to_repr (x: t_State) : Prims.Pure isize Prims.l_True (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_Debug_State: Core.Fmt.t_Debug t_State

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl: Protobuf.Enums.t_Enum t_State =
  {
    _super_11581440318597584651 = FStar.Tactics.Typeclasses.solve;
    _super_11603873402755071380 = FStar.Tactics.Typeclasses.solve;
    _super_3331601577671695699 = FStar.Tactics.Typeclasses.solve;
    f_NAME = "State";
    f_value_pre = (fun (self: t_State) -> true);
    f_value_post = (fun (self: t_State) (out: i32) -> true);
    f_value = (fun (self: t_State) -> cast (t_State_cast_to_repr self <: isize) <: i32);
    f_from_i32_pre = (fun (value: i32) -> true);
    f_from_i32_post = (fun (value: i32) (out: Core.Option.t_Option t_State) -> true);
    f_from_i32
    =
    (fun (value: i32) ->
        match value with
        | 0l ->
          Core.Option.Option_Some (State_STATE_NOT_CONNECTED <: t_State)
          <:
          Core.Option.t_Option t_State
        | 1l ->
          Core.Option.Option_Some (State_STATE_CONNECTION_IN_PROGRESS <: t_State)
          <:
          Core.Option.t_Option t_State
        | 2l ->
          Core.Option.Option_Some (State_STATE_HANDSHAKE_IN_PROGRESS <: t_State)
          <:
          Core.Option.t_Option t_State
        | 3l ->
          Core.Option.Option_Some (State_STATE_HANDSHAKE_DONE <: t_State)
          <:
          Core.Option.t_Option t_State
        | 4l ->
          Core.Option.Option_Some (State_STATE_BEING_SHUTDOWN <: t_State)
          <:
          Core.Option.t_Option t_State
        | 5l ->
          Core.Option.Option_Some (State_STATE_DISCONNECTED <: t_State)
          <:
          Core.Option.t_Option t_State
        | 6l ->
          Core.Option.Option_Some (State_STATE_ERROR <: t_State) <: Core.Option.t_Option t_State
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_State);
    f_from_str_pre = (fun (str: string) -> true);
    f_from_str_post = (fun (str: string) (out: Core.Option.t_Option t_State) -> true);
    f_from_str
    =
    (fun (str: string) ->
        match str with
        | "STATE_NOT_CONNECTED" ->
          Core.Option.Option_Some (State_STATE_NOT_CONNECTED <: t_State)
          <:
          Core.Option.t_Option t_State
        | "STATE_CONNECTION_IN_PROGRESS" ->
          Core.Option.Option_Some (State_STATE_CONNECTION_IN_PROGRESS <: t_State)
          <:
          Core.Option.t_Option t_State
        | "STATE_HANDSHAKE_IN_PROGRESS" ->
          Core.Option.Option_Some (State_STATE_HANDSHAKE_IN_PROGRESS <: t_State)
          <:
          Core.Option.t_Option t_State
        | "STATE_HANDSHAKE_DONE" ->
          Core.Option.Option_Some (State_STATE_HANDSHAKE_DONE <: t_State)
          <:
          Core.Option.t_Option t_State
        | "STATE_BEING_SHUTDOWN" ->
          Core.Option.Option_Some (State_STATE_BEING_SHUTDOWN <: t_State)
          <:
          Core.Option.t_Option t_State
        | "STATE_DISCONNECTED" ->
          Core.Option.Option_Some (State_STATE_DISCONNECTED <: t_State)
          <:
          Core.Option.t_Option t_State
        | "STATE_ERROR" ->
          Core.Option.Option_Some (State_STATE_ERROR <: t_State) <: Core.Option.t_Option t_State
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_State);
    f_VALUES
    =
    Rust_primitives.unsize (let list =
          [
            State_STATE_NOT_CONNECTED <: t_State;
            State_STATE_CONNECTION_IN_PROGRESS <: t_State;
            State_STATE_HANDSHAKE_IN_PROGRESS <: t_State;
            State_STATE_HANDSHAKE_DONE <: t_State;
            State_STATE_BEING_SHUTDOWN <: t_State;
            State_STATE_DISCONNECTED <: t_State;
            State_STATE_ERROR <: t_State
          ]
        in
        FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 7);
        Rust_primitives.Hax.array_of_list 7 list)
  }

/// `FileDescriptor` object which allows dynamic access to files
val file_descriptor: Prims.unit
  -> Prims.Pure Protobuf.Reflect.File.t_FileDescriptor Prims.l_True (fun _ -> Prims.l_True)

/// `FileDescriptorProto` object which was a source for this generated file
val file_descriptor_proto: Prims.unit
  -> Prims.Pure Protobuf.Descriptor.t_FileDescriptorProto Prims.l_True (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_EnumFull_State: Protobuf.Enum_full.t_EnumFull Sandwich_proto.Tunnel.t_State

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_1: Protobuf.Enum_full.t_EnumFull t_State =
  {
    _super_14911585333008767414 = FStar.Tactics.Typeclasses.solve;
    f_enum_descriptor_pre = (fun (_: Prims.unit) -> true);
    f_enum_descriptor_post
    =
    (fun (_: Prims.unit) (out: Protobuf.Reflect.Enums.t_EnumDescriptor) -> true);
    f_enum_descriptor
    =
    (fun (_: Prims.unit) ->
      Protobuf.Reflect.Enums.impl__EnumDescriptor__hax_new ()
    );
    f_descriptor_pre = (fun (self: t_State) -> true);
    f_descriptor_post
    =
    (fun (self: t_State) (out: Protobuf.Reflect.t_EnumValueDescriptor) -> true);
    f_descriptor
    =
    fun (self: t_State) ->
      let index:usize = cast (t_State_cast_to_repr self <: isize) <: usize in
      Protobuf.Reflect.Enums.impl__EnumDescriptor__value_by_index (Protobuf.Reflect.Enums.impl__EnumDescriptor__hax_new
            ()
          <:
          Protobuf.Reflect.Enums.t_EnumDescriptor)
        index
  }

val impl__State__generated_enum_descriptor_data: Prims.unit
  -> Prims.Pure Protobuf.Reflect.Enums.Generated.t_GeneratedEnumDescriptorData
      Prims.l_True
      (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_EnumFull_HandShakeState: Protobuf.Enum_full.t_EnumFull t_HandshakeState

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_5: Protobuf.Enum_full.t_EnumFull t_HandshakeState =
  {
    _super_14911585333008767414 = FStar.Tactics.Typeclasses.solve;
    f_enum_descriptor_pre = (fun (_: Prims.unit) -> true);
    f_enum_descriptor_post
    =
    (fun (_: Prims.unit) (out: Protobuf.Reflect.Enums.t_EnumDescriptor) -> true);
    f_enum_descriptor
    =
    (fun (_: Prims.unit) ->
        Protobuf.Reflect.Enums.impl__EnumDescriptor__hax_new ());
    f_descriptor_pre = (fun (self: t_HandshakeState) -> true);
    f_descriptor_post
    =
    (fun (self: t_HandshakeState) (out: Protobuf.Reflect.t_EnumValueDescriptor) -> true);
    f_descriptor
    =
    fun (self: t_HandshakeState) ->
      let index:usize = cast (t_HandshakeState_cast_to_repr self <: isize) <: usize in
      Protobuf.Reflect.Enums.impl__EnumDescriptor__value_by_index (Protobuf.Reflect.Enums.impl__EnumDescriptor__hax_new
            ()
          <:
          Protobuf.Reflect.Enums.t_EnumDescriptor)
        index
  }

val impl__HandshakeState__generated_enum_descriptor_data: Prims.unit
  -> Prims.Pure Protobuf.Reflect.Enums.Generated.t_GeneratedEnumDescriptorData
      Prims.l_True
      (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_EnumFull_RecordError: Protobuf.Enum_full.t_EnumFull t_RecordError

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_9: Protobuf.Enum_full.t_EnumFull t_RecordError =
  {
    _super_14911585333008767414 = FStar.Tactics.Typeclasses.solve;
    f_enum_descriptor_pre = (fun (_: Prims.unit) -> true);
    f_enum_descriptor_post
    =
    (fun (_: Prims.unit) (out: Protobuf.Reflect.Enums.t_EnumDescriptor) -> true);
    f_enum_descriptor
    =
    (fun (_: Prims.unit) ->
      Protobuf.Reflect.Enums.impl__EnumDescriptor__hax_new ());
    f_descriptor_pre = (fun (self: t_RecordError) -> true);
    f_descriptor_post
    =
    (fun (self: t_RecordError) (out: Protobuf.Reflect.t_EnumValueDescriptor) -> true);
    f_descriptor
    =
    fun (self: t_RecordError) ->
      let index:usize = cast (t_RecordError_cast_to_repr self <: isize) <: usize in
      Protobuf.Reflect.Enums.impl__EnumDescriptor__value_by_index (Protobuf.Reflect.Enums.impl__EnumDescriptor__hax_new
            ()
          <:
          Protobuf.Reflect.Enums.t_EnumDescriptor)
        index
  }

val impl__RecordError__generated_enum_descriptor_data: Prims.unit
  -> Prims.Pure Protobuf.Reflect.Enums.Generated.t_GeneratedEnumDescriptorData
      Prims.l_True
      (fun _ -> Prims.l_True)
