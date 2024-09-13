module Protobuf.Reflect.File
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let impl__FileDescriptor__common (self: t_FileDescriptor) =
  match self.f_imp with
  | FileDescriptorImpl_Generated g -> g.Protobuf.Reflect.File.Generated.f_common
  | FileDescriptorImpl_Dynamic d -> d.f_common

let impl__FileDescriptor__enum_by_package_relative_name (self: t_FileDescriptor) (name: string) =
  Core.Option.impl__map #usize
    #Protobuf.Reflect.Enums.t_EnumDescriptor
    (Std.Collections.Hash.Map.impl_2__get #Alloc.String.t_String
        #usize
        #Std.Hash.Random.t_RandomState
        #string
        (impl__FileDescriptor__common self <: Protobuf.Reflect.File.Index.t_FileDescriptorCommon)
          .Protobuf.Reflect.File.Index.f_enums_by_name_to_package
        name
      <:
      Core.Option.t_Option usize)
    (fun index ->
        let index:usize = index in
        Protobuf.Reflect.Enums.impl__EnumDescriptor__new #t_FileDescriptor
          (Core.Clone.f_clone #t_FileDescriptor #FStar.Tactics.Typeclasses.solve self
            <:
            t_FileDescriptor)
          index
        <:
        Protobuf.Reflect.Enums.t_EnumDescriptor)
