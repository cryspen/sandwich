module Sandwich.Error.Code
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Sandwich_proto.Errors in
  ()

/// An enum allowed in [`ProtoBasedErrorCode`].
class t_AllowedProtoBasedErrorCodeEnum (v_Self: Type0) = {
  [@@@ FStar.Tactics.Typeclasses.no_method]_super_11581440318597584651:Core.Marker.t_Copy v_Self;
  [@@@ FStar.Tactics.Typeclasses.no_method]_super_9442900250278684536:Core.Clone.t_Clone v_Self
}

/// Adds `ErrorEnum` to the list of [`AllowedProtoBasedErrorCodeEnum`] trait.
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_68: t_AllowedProtoBasedErrorCodeEnum Sandwich_proto.Errors.t_ASN1Error =
  {
    _super_11581440318597584651 = FStar.Tactics.Typeclasses.solve;
    _super_9442900250278684536 = FStar.Tactics.Typeclasses.solve;
    __marker_trait = ()
  }

/// Adds `ErrorEnum` to the list of [`AllowedProtoBasedErrorCodeEnum`] trait.
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_86: t_AllowedProtoBasedErrorCodeEnum Sandwich_proto.Errors.t_DataSourceError =
  {
    _super_11581440318597584651 = FStar.Tactics.Typeclasses.solve;
    _super_9442900250278684536 = FStar.Tactics.Typeclasses.solve;
    __marker_trait = ()
  }

/// Adds `ErrorEnum` to the list of [`AllowedProtoBasedErrorCodeEnum`] trait.
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_41: t_AllowedProtoBasedErrorCodeEnum Sandwich_proto.Errors.t_TLSConfigurationError =
  {
    _super_11581440318597584651 = FStar.Tactics.Typeclasses.solve;
    _super_9442900250278684536 = FStar.Tactics.Typeclasses.solve;
    __marker_trait = ()
  }

/// Adds `ErrorEnum` to the list of [`AllowedProtoBasedErrorCodeEnum`] trait.
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_131: t_AllowedProtoBasedErrorCodeEnum Sandwich_proto.Errors.t_TunnelError =
  {
    _super_11581440318597584651 = FStar.Tactics.Typeclasses.solve;
    _super_9442900250278684536 = FStar.Tactics.Typeclasses.solve;
    __marker_trait = ()
  }

/// An error code.
/// An error code holds one of the error described in `errors.proto`
/// and listed in `ErrorKind`.
type t_ProtoBasedErrorCode =
  | ProtoBasedErrorCode_APIError : Sandwich_proto.Errors.t_APIError -> t_ProtoBasedErrorCode
  | ProtoBasedErrorCode_ConfigurationError : Sandwich_proto.Errors.t_ConfigurationError
    -> t_ProtoBasedErrorCode
  | ProtoBasedErrorCode_ProtobufError : Sandwich_proto.Errors.t_ProtobufError
    -> t_ProtoBasedErrorCode
  | ProtoBasedErrorCode_TLSConfigurationError : Sandwich_proto.Errors.t_TLSConfigurationError
    -> t_ProtoBasedErrorCode
  | ProtoBasedErrorCode_CertificateError : Sandwich_proto.Errors.t_CertificateError
    -> t_ProtoBasedErrorCode
  | ProtoBasedErrorCode_PrivateKeyError : Sandwich_proto.Errors.t_PrivateKeyError
    -> t_ProtoBasedErrorCode
  | ProtoBasedErrorCode_ASN1Error : Sandwich_proto.Errors.t_ASN1Error -> t_ProtoBasedErrorCode
  | ProtoBasedErrorCode_ALPNError : Sandwich_proto.Errors.t_ALPNError -> t_ProtoBasedErrorCode
  | ProtoBasedErrorCode_DataSourceError : Sandwich_proto.Errors.t_DataSourceError
    -> t_ProtoBasedErrorCode
  | ProtoBasedErrorCode_KEMError : Sandwich_proto.Errors.t_KEMError -> t_ProtoBasedErrorCode
  | ProtoBasedErrorCode_SystemError : Sandwich_proto.Errors.t_SystemError -> t_ProtoBasedErrorCode
  | ProtoBasedErrorCode_SocketError : Sandwich_proto.Errors.t_SocketError -> t_ProtoBasedErrorCode
  | ProtoBasedErrorCode_HandshakeError : Sandwich_proto.Errors.t_HandshakeError
    -> t_ProtoBasedErrorCode
  | ProtoBasedErrorCode_TunnelError : Sandwich_proto.Errors.t_TunnelError -> t_ProtoBasedErrorCode

/// Implements `[From<sandwich_proto::ErrorEnum>]` for [`ProtoBasedErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_36: Core.Convert.t_From t_ProtoBasedErrorCode Sandwich_proto.Errors.t_TLSConfigurationError =
  {
    f_from_pre = (fun (v: Sandwich_proto.Errors.t_TLSConfigurationError) -> true);
    f_from_post
    =
    (fun (v: Sandwich_proto.Errors.t_TLSConfigurationError) (out: t_ProtoBasedErrorCode) -> true);
    f_from
    =
    fun (v: Sandwich_proto.Errors.t_TLSConfigurationError) ->
      ProtoBasedErrorCode_TLSConfigurationError v <: t_ProtoBasedErrorCode
  }

/// Implements `[From<sandwich_proto::ErrorEnum>]` for [`ProtoBasedErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_63: Core.Convert.t_From t_ProtoBasedErrorCode Sandwich_proto.Errors.t_ASN1Error =
  {
    f_from_pre = (fun (v: Sandwich_proto.Errors.t_ASN1Error) -> true);
    f_from_post = (fun (v: Sandwich_proto.Errors.t_ASN1Error) (out: t_ProtoBasedErrorCode) -> true);
    f_from
    =
    fun (v: Sandwich_proto.Errors.t_ASN1Error) ->
      ProtoBasedErrorCode_ASN1Error v <: t_ProtoBasedErrorCode
  }

/// Implements `[From<sandwich_proto::ErrorEnum>]` for [`ProtoBasedErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_81: Core.Convert.t_From t_ProtoBasedErrorCode Sandwich_proto.Errors.t_DataSourceError =
  {
    f_from_pre = (fun (v: Sandwich_proto.Errors.t_DataSourceError) -> true);
    f_from_post
    =
    (fun (v: Sandwich_proto.Errors.t_DataSourceError) (out: t_ProtoBasedErrorCode) -> true);
    f_from
    =
    fun (v: Sandwich_proto.Errors.t_DataSourceError) ->
      ProtoBasedErrorCode_DataSourceError v <: t_ProtoBasedErrorCode
  }

/// Implements `[From<sandwich_proto::ErrorEnum>]` for [`ProtoBasedErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_126: Core.Convert.t_From t_ProtoBasedErrorCode Sandwich_proto.Errors.t_TunnelError =
  {
    f_from_pre = (fun (v: Sandwich_proto.Errors.t_TunnelError) -> true);
    f_from_post
    =
    (fun (v: Sandwich_proto.Errors.t_TunnelError) (out: t_ProtoBasedErrorCode) -> true);
    f_from
    =
    fun (v: Sandwich_proto.Errors.t_TunnelError) ->
      ProtoBasedErrorCode_TunnelError v <: t_ProtoBasedErrorCode
  }

/// An error code.
/// An error code consists of an error code based on a protobuf enum - [`ProtoBasedErrorCode`]
/// and an arbitrary string.
type t_ErrorCode = {
  f_ec:t_ProtoBasedErrorCode;
  f_msg:Core.Option.t_Option Alloc.String.t_String
}

/// Implements `[From<sandwich_proto::ErrorEnum>]` for [`ErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_37: Core.Convert.t_From t_ErrorCode Sandwich_proto.Errors.t_TLSConfigurationError =
  {
    f_from_pre = (fun (v: Sandwich_proto.Errors.t_TLSConfigurationError) -> true);
    f_from_post
    =
    (fun (v: Sandwich_proto.Errors.t_TLSConfigurationError) (out: t_ErrorCode) -> true);
    f_from
    =
    fun (v: Sandwich_proto.Errors.t_TLSConfigurationError) ->
      {
        f_ec
        =
        Core.Convert.f_from #t_ProtoBasedErrorCode #Sandwich_proto.Errors.t_TLSConfigurationError v;
        f_msg = Core.Option.Option_None <: Core.Option.t_Option Alloc.String.t_String
      }
      <:
      t_ErrorCode
  }

/// Instantiates an [`ErrorCode`] from an error enum and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_39: Core.Convert.t_From t_ErrorCode
  (Sandwich_proto.Errors.t_TLSConfigurationError & string) =
  {
    f_from_pre = (fun (v, s: (Sandwich_proto.Errors.t_TLSConfigurationError & string)) -> true);
    f_from_post
    =
    (fun (v, s: (Sandwich_proto.Errors.t_TLSConfigurationError & string)) (out: t_ErrorCode) -> true
    );
    f_from
    =
    fun (v, s: (Sandwich_proto.Errors.t_TLSConfigurationError & string)) ->
      {
        f_ec
        =
        Core.Convert.f_from #t_ProtoBasedErrorCode #Sandwich_proto.Errors.t_TLSConfigurationError v;
        f_msg
        =
        Core.Option.Option_Some (Core.Convert.f_into #string #Alloc.String.t_String s)
        <:
        Core.Option.t_Option Alloc.String.t_String
      }
      <:
      t_ErrorCode
  }

/// Implements `[From<sandwich_proto::ErrorEnum>]` for [`ErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_64: Core.Convert.t_From t_ErrorCode Sandwich_proto.Errors.t_ASN1Error =
  {
    f_from_pre = (fun (v: Sandwich_proto.Errors.t_ASN1Error) -> true);
    f_from_post = (fun (v: Sandwich_proto.Errors.t_ASN1Error) (out: t_ErrorCode) -> true);
    f_from
    =
    fun (v: Sandwich_proto.Errors.t_ASN1Error) ->
      {
        f_ec = Core.Convert.f_from #t_ProtoBasedErrorCode #Sandwich_proto.Errors.t_ASN1Error v;
        f_msg = Core.Option.Option_None <: Core.Option.t_Option Alloc.String.t_String
      }
      <:
      t_ErrorCode
  }

/// Implements `[From<sandwich_proto::ErrorEnum>]` for [`ErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_82: Core.Convert.t_From t_ErrorCode Sandwich_proto.Errors.t_DataSourceError =
  {
    f_from_pre = (fun (v: Sandwich_proto.Errors.t_DataSourceError) -> true);
    f_from_post = (fun (v: Sandwich_proto.Errors.t_DataSourceError) (out: t_ErrorCode) -> true);
    f_from
    =
    fun (v: Sandwich_proto.Errors.t_DataSourceError) ->
      {
        f_ec = Core.Convert.f_from #t_ProtoBasedErrorCode #Sandwich_proto.Errors.t_DataSourceError v;
        f_msg = Core.Option.Option_None <: Core.Option.t_Option Alloc.String.t_String
      }
      <:
      t_ErrorCode
  }

/// Instantiates an [`ErrorCode`] from an error enum and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_129: Core.Convert.t_From t_ErrorCode (Sandwich_proto.Errors.t_TunnelError & string) =
  {
    f_from_pre = (fun (v, s: (Sandwich_proto.Errors.t_TunnelError & string)) -> true);
    f_from_post
    =
    (fun (v, s: (Sandwich_proto.Errors.t_TunnelError & string)) (out: t_ErrorCode) -> true);
    f_from
    =
    fun (v, s: (Sandwich_proto.Errors.t_TunnelError & string)) ->
      {
        f_ec = Core.Convert.f_from #t_ProtoBasedErrorCode #Sandwich_proto.Errors.t_TunnelError v;
        f_msg
        =
        Core.Option.Option_Some (Core.Convert.f_into #string #Alloc.String.t_String s)
        <:
        Core.Option.t_Option Alloc.String.t_String
      }
      <:
      t_ErrorCode
  }

/// Instantiates an [`ErrorCode`] from an error enum and a [`String`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_130: Core.Convert.t_From t_ErrorCode
  (Sandwich_proto.Errors.t_TunnelError & Alloc.String.t_String) =
  {
    f_from_pre = (fun (v, s: (Sandwich_proto.Errors.t_TunnelError & Alloc.String.t_String)) -> true);
    f_from_post
    =
    (fun (v, s: (Sandwich_proto.Errors.t_TunnelError & Alloc.String.t_String)) (out: t_ErrorCode) ->
        true);
    f_from
    =
    fun (v, s: (Sandwich_proto.Errors.t_TunnelError & Alloc.String.t_String)) ->
      {
        f_ec = Core.Convert.f_from #t_ProtoBasedErrorCode #Sandwich_proto.Errors.t_TunnelError v;
        f_msg = Core.Option.Option_Some s <: Core.Option.t_Option Alloc.String.t_String
      }
      <:
      t_ErrorCode
  }
