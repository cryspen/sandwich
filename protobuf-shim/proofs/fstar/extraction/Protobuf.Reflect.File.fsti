module Protobuf.Reflect.File
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

type t_DynamicFileDescriptor = {
  f_proto:Protobuf.Descriptor.t_FileDescriptorProto;
  f_common:Protobuf.Reflect.File.Index.t_FileDescriptorCommon
}

type t_FileDescriptorImpl =
  | FileDescriptorImpl_Generated : Protobuf.Reflect.File.Generated.t_GeneratedFileDescriptor
    -> t_FileDescriptorImpl
  | FileDescriptorImpl_Dynamic : t_DynamicFileDescriptor -> t_FileDescriptorImpl

type t_FileDescriptor = { f_imp:t_FileDescriptorImpl }

val impl__FileDescriptor__common (self: t_FileDescriptor)
    : Prims.Pure Protobuf.Reflect.File.Index.t_FileDescriptorCommon
      Prims.l_True
      (fun _ -> Prims.l_True)

val impl__FileDescriptor__enum_by_package_relative_name (self: t_FileDescriptor) (name: string)
    : Prims.Pure (Core.Option.t_Option Protobuf.Reflect.Enums.t_EnumDescriptor)
      Prims.l_True
      (fun _ -> Prims.l_True)
