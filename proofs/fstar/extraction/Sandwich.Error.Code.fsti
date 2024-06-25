module Sandwich.Error.Code
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Sandwich_proto.Errors in
  ()

/// Implements [`std::fmt::Display`] for [`ProtoBasedErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_136:Core.Fmt.t_Display #t_ProtoBasedErrorCode

/// Implements [`Into<(i32, i32)>`] for [`ProtoBasedErrorCode`].
/// The first `i32` is the error kind, the second one is the error code.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_139:Core.Convert.t_From #(i32 & i32) #t_ProtoBasedErrorCode

/// Implements `[From<sandwich_proto::ErrorEnum>]` for [`ProtoBasedErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_72:Core.Convert.t_From #t_ProtoBasedErrorCode #Sandwich_proto.Errors.t_ALPNError

/// Adds `ErrorEnum` to the list of [`AllowedProtoBasedErrorCodeEnum`] trait.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_77:t_AllowedProtoBasedErrorCodeEnum #Sandwich_proto.Errors.t_ALPNError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_78:t_AllowedProtoBasedErrorCodeEnum #Sandwich_proto.Errors.t_ALPNError

/// Implements comparison operator between [`ProtoBasedErrorCode`] and the current error enum.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_79:Core.Cmp.t_PartialEq #Sandwich_proto.Errors.t_ALPNError #t_ProtoBasedErrorCode

/// Implements comparison operator between [`ProtoBasedErrorCode`] and the current error enum.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_80:Core.Cmp.t_PartialEq #t_ProtoBasedErrorCode #Sandwich_proto.Errors.t_ALPNError

/// Implements `[From<sandwich_proto::ErrorEnum>]` for [`ProtoBasedErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_9:Core.Convert.t_From #t_ProtoBasedErrorCode #Sandwich_proto.Errors.t_APIError

/// Adds `ErrorEnum` to the list of [`AllowedProtoBasedErrorCodeEnum`] trait.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_14:t_AllowedProtoBasedErrorCodeEnum #Sandwich_proto.Errors.t_APIError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_15:t_AllowedProtoBasedErrorCodeEnum #Sandwich_proto.Errors.t_APIError

/// Implements comparison operator between [`ProtoBasedErrorCode`] and the current error enum.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_16:Core.Cmp.t_PartialEq #Sandwich_proto.Errors.t_APIError #t_ProtoBasedErrorCode

/// Implements comparison operator between [`ProtoBasedErrorCode`] and the current error enum.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_17:Core.Cmp.t_PartialEq #t_ProtoBasedErrorCode #Sandwich_proto.Errors.t_APIError

/// Implements `[From<sandwich_proto::ErrorEnum>]` for [`ProtoBasedErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_63:Core.Convert.t_From #t_ProtoBasedErrorCode #Sandwich_proto.Errors.t_ASN1Error

/// Adds `ErrorEnum` to the list of [`AllowedProtoBasedErrorCodeEnum`] trait.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_68:t_AllowedProtoBasedErrorCodeEnum #Sandwich_proto.Errors.t_ASN1Error

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_69:t_AllowedProtoBasedErrorCodeEnum #Sandwich_proto.Errors.t_ASN1Error

/// Implements comparison operator between [`ProtoBasedErrorCode`] and the current error enum.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_70:Core.Cmp.t_PartialEq #Sandwich_proto.Errors.t_ASN1Error #t_ProtoBasedErrorCode

/// Implements comparison operator between [`ProtoBasedErrorCode`] and the current error enum.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_71:Core.Cmp.t_PartialEq #t_ProtoBasedErrorCode #Sandwich_proto.Errors.t_ASN1Error

/// Implements `[From<sandwich_proto::ErrorEnum>]` for [`ProtoBasedErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_45:Core.Convert.t_From #t_ProtoBasedErrorCode #Sandwich_proto.Errors.t_CertificateError

/// Adds `ErrorEnum` to the list of [`AllowedProtoBasedErrorCodeEnum`] trait.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_50:t_AllowedProtoBasedErrorCodeEnum #Sandwich_proto.Errors.t_CertificateError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_51:t_AllowedProtoBasedErrorCodeEnum #Sandwich_proto.Errors.t_CertificateError

/// Implements comparison operator between [`ProtoBasedErrorCode`] and the current error enum.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_52:Core.Cmp.t_PartialEq #Sandwich_proto.Errors.t_CertificateError #t_ProtoBasedErrorCode

/// Implements comparison operator between [`ProtoBasedErrorCode`] and the current error enum.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_53:Core.Cmp.t_PartialEq #t_ProtoBasedErrorCode #Sandwich_proto.Errors.t_CertificateError

/// Implements `[From<sandwich_proto::ErrorEnum>]` for [`ProtoBasedErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_18:Core.Convert.t_From #t_ProtoBasedErrorCode #Sandwich_proto.Errors.t_ConfigurationError

/// Adds `ErrorEnum` to the list of [`AllowedProtoBasedErrorCodeEnum`] trait.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_23:t_AllowedProtoBasedErrorCodeEnum #Sandwich_proto.Errors.t_ConfigurationError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_24:t_AllowedProtoBasedErrorCodeEnum #Sandwich_proto.Errors.t_ConfigurationError

/// Implements comparison operator between [`ProtoBasedErrorCode`] and the current error enum.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_25:Core.Cmp.t_PartialEq #Sandwich_proto.Errors.t_ConfigurationError #t_ProtoBasedErrorCode

/// Implements comparison operator between [`ProtoBasedErrorCode`] and the current error enum.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_26:Core.Cmp.t_PartialEq #t_ProtoBasedErrorCode #Sandwich_proto.Errors.t_ConfigurationError

/// Implements `[From<sandwich_proto::ErrorEnum>]` for [`ProtoBasedErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_81:Core.Convert.t_From #t_ProtoBasedErrorCode #Sandwich_proto.Errors.t_DataSourceError

/// Adds `ErrorEnum` to the list of [`AllowedProtoBasedErrorCodeEnum`] trait.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_86:t_AllowedProtoBasedErrorCodeEnum #Sandwich_proto.Errors.t_DataSourceError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_87:t_AllowedProtoBasedErrorCodeEnum #Sandwich_proto.Errors.t_DataSourceError

/// Implements comparison operator between [`ProtoBasedErrorCode`] and the current error enum.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_88:Core.Cmp.t_PartialEq #Sandwich_proto.Errors.t_DataSourceError #t_ProtoBasedErrorCode

/// Implements comparison operator between [`ProtoBasedErrorCode`] and the current error enum.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_89:Core.Cmp.t_PartialEq #t_ProtoBasedErrorCode #Sandwich_proto.Errors.t_DataSourceError

/// Implements `Into<sandwich_proto::ErrorKind>` for [`ProtoBasedErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_135:Core.Convert.t_From #Sandwich_proto.Errors.t_ErrorKind #t_ProtoBasedErrorCode

/// Implements `[From<sandwich_proto::ErrorEnum>]` for [`ProtoBasedErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_117:Core.Convert.t_From #t_ProtoBasedErrorCode #Sandwich_proto.Errors.t_HandshakeError

/// Adds `ErrorEnum` to the list of [`AllowedProtoBasedErrorCodeEnum`] trait.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_122:t_AllowedProtoBasedErrorCodeEnum #Sandwich_proto.Errors.t_HandshakeError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_123:t_AllowedProtoBasedErrorCodeEnum #Sandwich_proto.Errors.t_HandshakeError

/// Implements comparison operator between [`ProtoBasedErrorCode`] and the current error enum.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_124:Core.Cmp.t_PartialEq #Sandwich_proto.Errors.t_HandshakeError #t_ProtoBasedErrorCode

/// Implements comparison operator between [`ProtoBasedErrorCode`] and the current error enum.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_125:Core.Cmp.t_PartialEq #t_ProtoBasedErrorCode #Sandwich_proto.Errors.t_HandshakeError

/// Implements `[From<sandwich_proto::ErrorEnum>]` for [`ProtoBasedErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_90:Core.Convert.t_From #t_ProtoBasedErrorCode #Sandwich_proto.Errors.t_KEMError

/// Adds `ErrorEnum` to the list of [`AllowedProtoBasedErrorCodeEnum`] trait.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_95:t_AllowedProtoBasedErrorCodeEnum #Sandwich_proto.Errors.t_KEMError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_96:t_AllowedProtoBasedErrorCodeEnum #Sandwich_proto.Errors.t_KEMError

/// Implements comparison operator between [`ProtoBasedErrorCode`] and the current error enum.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_97:Core.Cmp.t_PartialEq #Sandwich_proto.Errors.t_KEMError #t_ProtoBasedErrorCode

/// Implements comparison operator between [`ProtoBasedErrorCode`] and the current error enum.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_98:Core.Cmp.t_PartialEq #t_ProtoBasedErrorCode #Sandwich_proto.Errors.t_KEMError

/// Implements `[From<sandwich_proto::ErrorEnum>]` for [`ProtoBasedErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_54:Core.Convert.t_From #t_ProtoBasedErrorCode #Sandwich_proto.Errors.t_PrivateKeyError

/// Adds `ErrorEnum` to the list of [`AllowedProtoBasedErrorCodeEnum`] trait.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_59:t_AllowedProtoBasedErrorCodeEnum #Sandwich_proto.Errors.t_PrivateKeyError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_60:t_AllowedProtoBasedErrorCodeEnum #Sandwich_proto.Errors.t_PrivateKeyError

/// Implements comparison operator between [`ProtoBasedErrorCode`] and the current error enum.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_61:Core.Cmp.t_PartialEq #Sandwich_proto.Errors.t_PrivateKeyError #t_ProtoBasedErrorCode

/// Implements comparison operator between [`ProtoBasedErrorCode`] and the current error enum.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_62:Core.Cmp.t_PartialEq #t_ProtoBasedErrorCode #Sandwich_proto.Errors.t_PrivateKeyError

/// Implements `[From<sandwich_proto::ErrorEnum>]` for [`ProtoBasedErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_27:Core.Convert.t_From #t_ProtoBasedErrorCode #Sandwich_proto.Errors.t_ProtobufError

/// Adds `ErrorEnum` to the list of [`AllowedProtoBasedErrorCodeEnum`] trait.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_32:t_AllowedProtoBasedErrorCodeEnum #Sandwich_proto.Errors.t_ProtobufError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_33:t_AllowedProtoBasedErrorCodeEnum #Sandwich_proto.Errors.t_ProtobufError

/// Implements comparison operator between [`ProtoBasedErrorCode`] and the current error enum.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_34:Core.Cmp.t_PartialEq #Sandwich_proto.Errors.t_ProtobufError #t_ProtoBasedErrorCode

/// Implements comparison operator between [`ProtoBasedErrorCode`] and the current error enum.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_35:Core.Cmp.t_PartialEq #t_ProtoBasedErrorCode #Sandwich_proto.Errors.t_ProtobufError

/// Implements `[From<sandwich_proto::ErrorEnum>]` for [`ProtoBasedErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_108:Core.Convert.t_From #t_ProtoBasedErrorCode #Sandwich_proto.Errors.t_SocketError

/// Adds `ErrorEnum` to the list of [`AllowedProtoBasedErrorCodeEnum`] trait.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_113:t_AllowedProtoBasedErrorCodeEnum #Sandwich_proto.Errors.t_SocketError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_114:t_AllowedProtoBasedErrorCodeEnum #Sandwich_proto.Errors.t_SocketError

/// Implements comparison operator between [`ProtoBasedErrorCode`] and the current error enum.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_115:Core.Cmp.t_PartialEq #Sandwich_proto.Errors.t_SocketError #t_ProtoBasedErrorCode

/// Implements comparison operator between [`ProtoBasedErrorCode`] and the current error enum.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_116:Core.Cmp.t_PartialEq #t_ProtoBasedErrorCode #Sandwich_proto.Errors.t_SocketError

/// Implements `[From<sandwich_proto::ErrorEnum>]` for [`ProtoBasedErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_99:Core.Convert.t_From #t_ProtoBasedErrorCode #Sandwich_proto.Errors.t_SystemError

/// Adds `ErrorEnum` to the list of [`AllowedProtoBasedErrorCodeEnum`] trait.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_104:t_AllowedProtoBasedErrorCodeEnum #Sandwich_proto.Errors.t_SystemError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_105:t_AllowedProtoBasedErrorCodeEnum #Sandwich_proto.Errors.t_SystemError

/// Implements comparison operator between [`ProtoBasedErrorCode`] and the current error enum.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_106:Core.Cmp.t_PartialEq #Sandwich_proto.Errors.t_SystemError #t_ProtoBasedErrorCode

/// Implements comparison operator between [`ProtoBasedErrorCode`] and the current error enum.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_107:Core.Cmp.t_PartialEq #t_ProtoBasedErrorCode #Sandwich_proto.Errors.t_SystemError

/// Implements `[From<sandwich_proto::ErrorEnum>]` for [`ProtoBasedErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_36:Core.Convert.t_From #t_ProtoBasedErrorCode
  #Sandwich_proto.Errors.t_TLSConfigurationError

/// Adds `ErrorEnum` to the list of [`AllowedProtoBasedErrorCodeEnum`] trait.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_41:t_AllowedProtoBasedErrorCodeEnum #Sandwich_proto.Errors.t_TLSConfigurationError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_42:t_AllowedProtoBasedErrorCodeEnum #Sandwich_proto.Errors.t_TLSConfigurationError

/// Implements comparison operator between [`ProtoBasedErrorCode`] and the current error enum.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_43:Core.Cmp.t_PartialEq #Sandwich_proto.Errors.t_TLSConfigurationError
  #t_ProtoBasedErrorCode

/// Implements comparison operator between [`ProtoBasedErrorCode`] and the current error enum.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_44:Core.Cmp.t_PartialEq #t_ProtoBasedErrorCode
  #Sandwich_proto.Errors.t_TLSConfigurationError

/// Implements `[From<sandwich_proto::ErrorEnum>]` for [`ProtoBasedErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_126:Core.Convert.t_From #t_ProtoBasedErrorCode #Sandwich_proto.Errors.t_TunnelError

/// Adds `ErrorEnum` to the list of [`AllowedProtoBasedErrorCodeEnum`] trait.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_131:t_AllowedProtoBasedErrorCodeEnum #Sandwich_proto.Errors.t_TunnelError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_132:t_AllowedProtoBasedErrorCodeEnum #Sandwich_proto.Errors.t_TunnelError

/// Implements comparison operator between [`ProtoBasedErrorCode`] and the current error enum.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_133:Core.Cmp.t_PartialEq #Sandwich_proto.Errors.t_TunnelError #t_ProtoBasedErrorCode

/// Implements comparison operator between [`ProtoBasedErrorCode`] and the current error enum.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_134:Core.Cmp.t_PartialEq #t_ProtoBasedErrorCode #Sandwich_proto.Errors.t_TunnelError

/// An error code.
/// An error code consists of an error code based on a protobuf enum - [`ProtoBasedErrorCode`]
/// and an arbitrary string.
type t_ErrorCode = {
  f_ec:t_ProtoBasedErrorCode;
  f_msg:Core.Option.t_Option Alloc.String.t_String
}

/// Implements [`std::borrow::Borrow`] for [`ErrorCode`] and [`ProtoBasedErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl:Core.Borrow.t_Borrow #t_ErrorCode #t_ProtoBasedErrorCode

/// Implements [`std::fmt::Display`] for [`ErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_1:Core.Fmt.t_Display #t_ErrorCode

/// Instantiates an [`ErrorCode`] by consuming a [`ProtoBasedErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_2:Core.Convert.t_From #t_ErrorCode #t_ProtoBasedErrorCode

/// Implements [`Into<(i32, i32)>`] for [`ErrorCode`].
/// The first `i32` is the error kind, the second one is the error code.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_4:Core.Convert.t_From #(i32 & i32) #t_ErrorCode

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_5 (#v_S: Type0) {| i1: Core.Convert.t_AsRef v_S string |}
    : Core.Convert.t_From #t_ErrorCode #(t_ProtoBasedErrorCode & v_S)

/// Instantiates an [`ErrorCode`] by consuming a [`ProtoBasedErrorCode`] and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_6:Core.Convert.t_From #t_ErrorCode #(t_ProtoBasedErrorCode & string)

/// Instantiates an [`ErrorCode`] by consuming a [`ProtoBasedErrorCode`] and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_7:Core.Convert.t_From #t_ErrorCode #(t_ProtoBasedErrorCode & Alloc.String.t_String)

/// Implements `[From<sandwich_proto::ErrorEnum>]` for [`ErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_10:Core.Convert.t_From #t_ErrorCode #Sandwich_proto.Errors.t_APIError

/// Instantiates an [`ErrorCode`] from an error enum and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_11 (#v_S: Type0) {| i1: Core.Convert.t_AsRef v_S string |}
    : Core.Convert.t_From #t_ErrorCode #(Sandwich_proto.Errors.t_APIError & v_S)

/// Instantiates an [`ErrorCode`] from an error enum and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_12:Core.Convert.t_From #t_ErrorCode #(Sandwich_proto.Errors.t_APIError & string)

/// Instantiates an [`ErrorCode`] from an error enum and a [`String`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_13:Core.Convert.t_From #t_ErrorCode
  #(Sandwich_proto.Errors.t_APIError & Alloc.String.t_String)

/// Implements `[From<sandwich_proto::ErrorEnum>]` for [`ErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_19:Core.Convert.t_From #t_ErrorCode #Sandwich_proto.Errors.t_ConfigurationError

/// Instantiates an [`ErrorCode`] from an error enum and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_20 (#v_S: Type0) {| i1: Core.Convert.t_AsRef v_S string |}
    : Core.Convert.t_From #t_ErrorCode #(Sandwich_proto.Errors.t_ConfigurationError & v_S)

/// Instantiates an [`ErrorCode`] from an error enum and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_21:Core.Convert.t_From #t_ErrorCode #(Sandwich_proto.Errors.t_ConfigurationError & string)

/// Instantiates an [`ErrorCode`] from an error enum and a [`String`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_22:Core.Convert.t_From #t_ErrorCode
  #(Sandwich_proto.Errors.t_ConfigurationError & Alloc.String.t_String)

/// Implements `[From<sandwich_proto::ErrorEnum>]` for [`ErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_28:Core.Convert.t_From #t_ErrorCode #Sandwich_proto.Errors.t_ProtobufError

/// Instantiates an [`ErrorCode`] from an error enum and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_29 (#v_S: Type0) {| i1: Core.Convert.t_AsRef v_S string |}
    : Core.Convert.t_From #t_ErrorCode #(Sandwich_proto.Errors.t_ProtobufError & v_S)

/// Instantiates an [`ErrorCode`] from an error enum and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_30:Core.Convert.t_From #t_ErrorCode #(Sandwich_proto.Errors.t_ProtobufError & string)

/// Instantiates an [`ErrorCode`] from an error enum and a [`String`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_31:Core.Convert.t_From #t_ErrorCode
  #(Sandwich_proto.Errors.t_ProtobufError & Alloc.String.t_String)

/// Implements `[From<sandwich_proto::ErrorEnum>]` for [`ErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_37:Core.Convert.t_From #t_ErrorCode #Sandwich_proto.Errors.t_TLSConfigurationError

/// Instantiates an [`ErrorCode`] from an error enum and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_38 (#v_S: Type0) {| i1: Core.Convert.t_AsRef v_S string |}
    : Core.Convert.t_From #t_ErrorCode #(Sandwich_proto.Errors.t_TLSConfigurationError & v_S)

/// Instantiates an [`ErrorCode`] from an error enum and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_39:Core.Convert.t_From #t_ErrorCode
  #(Sandwich_proto.Errors.t_TLSConfigurationError & string)

/// Instantiates an [`ErrorCode`] from an error enum and a [`String`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_40:Core.Convert.t_From #t_ErrorCode
  #(Sandwich_proto.Errors.t_TLSConfigurationError & Alloc.String.t_String)

/// Implements `[From<sandwich_proto::ErrorEnum>]` for [`ErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_46:Core.Convert.t_From #t_ErrorCode #Sandwich_proto.Errors.t_CertificateError

/// Instantiates an [`ErrorCode`] from an error enum and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_47 (#v_S: Type0) {| i1: Core.Convert.t_AsRef v_S string |}
    : Core.Convert.t_From #t_ErrorCode #(Sandwich_proto.Errors.t_CertificateError & v_S)

/// Instantiates an [`ErrorCode`] from an error enum and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_48:Core.Convert.t_From #t_ErrorCode #(Sandwich_proto.Errors.t_CertificateError & string)

/// Instantiates an [`ErrorCode`] from an error enum and a [`String`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_49:Core.Convert.t_From #t_ErrorCode
  #(Sandwich_proto.Errors.t_CertificateError & Alloc.String.t_String)

/// Implements `[From<sandwich_proto::ErrorEnum>]` for [`ErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_55:Core.Convert.t_From #t_ErrorCode #Sandwich_proto.Errors.t_PrivateKeyError

/// Instantiates an [`ErrorCode`] from an error enum and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_56 (#v_S: Type0) {| i1: Core.Convert.t_AsRef v_S string |}
    : Core.Convert.t_From #t_ErrorCode #(Sandwich_proto.Errors.t_PrivateKeyError & v_S)

/// Instantiates an [`ErrorCode`] from an error enum and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_57:Core.Convert.t_From #t_ErrorCode #(Sandwich_proto.Errors.t_PrivateKeyError & string)

/// Instantiates an [`ErrorCode`] from an error enum and a [`String`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_58:Core.Convert.t_From #t_ErrorCode
  #(Sandwich_proto.Errors.t_PrivateKeyError & Alloc.String.t_String)

/// Implements `[From<sandwich_proto::ErrorEnum>]` for [`ErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_64:Core.Convert.t_From #t_ErrorCode #Sandwich_proto.Errors.t_ASN1Error

/// Instantiates an [`ErrorCode`] from an error enum and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_65 (#v_S: Type0) {| i1: Core.Convert.t_AsRef v_S string |}
    : Core.Convert.t_From #t_ErrorCode #(Sandwich_proto.Errors.t_ASN1Error & v_S)

/// Instantiates an [`ErrorCode`] from an error enum and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_66:Core.Convert.t_From #t_ErrorCode #(Sandwich_proto.Errors.t_ASN1Error & string)

/// Instantiates an [`ErrorCode`] from an error enum and a [`String`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_67:Core.Convert.t_From #t_ErrorCode
  #(Sandwich_proto.Errors.t_ASN1Error & Alloc.String.t_String)

/// Implements `[From<sandwich_proto::ErrorEnum>]` for [`ErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_73:Core.Convert.t_From #t_ErrorCode #Sandwich_proto.Errors.t_ALPNError

/// Instantiates an [`ErrorCode`] from an error enum and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_74 (#v_S: Type0) {| i1: Core.Convert.t_AsRef v_S string |}
    : Core.Convert.t_From #t_ErrorCode #(Sandwich_proto.Errors.t_ALPNError & v_S)

/// Instantiates an [`ErrorCode`] from an error enum and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_75:Core.Convert.t_From #t_ErrorCode #(Sandwich_proto.Errors.t_ALPNError & string)

/// Instantiates an [`ErrorCode`] from an error enum and a [`String`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_76:Core.Convert.t_From #t_ErrorCode
  #(Sandwich_proto.Errors.t_ALPNError & Alloc.String.t_String)

/// Implements `[From<sandwich_proto::ErrorEnum>]` for [`ErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_82:Core.Convert.t_From #t_ErrorCode #Sandwich_proto.Errors.t_DataSourceError

/// Instantiates an [`ErrorCode`] from an error enum and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_83 (#v_S: Type0) {| i1: Core.Convert.t_AsRef v_S string |}
    : Core.Convert.t_From #t_ErrorCode #(Sandwich_proto.Errors.t_DataSourceError & v_S)

/// Instantiates an [`ErrorCode`] from an error enum and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_84:Core.Convert.t_From #t_ErrorCode #(Sandwich_proto.Errors.t_DataSourceError & string)

/// Instantiates an [`ErrorCode`] from an error enum and a [`String`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_85:Core.Convert.t_From #t_ErrorCode
  #(Sandwich_proto.Errors.t_DataSourceError & Alloc.String.t_String)

/// Implements `[From<sandwich_proto::ErrorEnum>]` for [`ErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_91:Core.Convert.t_From #t_ErrorCode #Sandwich_proto.Errors.t_KEMError

/// Instantiates an [`ErrorCode`] from an error enum and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_92 (#v_S: Type0) {| i1: Core.Convert.t_AsRef v_S string |}
    : Core.Convert.t_From #t_ErrorCode #(Sandwich_proto.Errors.t_KEMError & v_S)

/// Instantiates an [`ErrorCode`] from an error enum and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_93:Core.Convert.t_From #t_ErrorCode #(Sandwich_proto.Errors.t_KEMError & string)

/// Instantiates an [`ErrorCode`] from an error enum and a [`String`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_94:Core.Convert.t_From #t_ErrorCode
  #(Sandwich_proto.Errors.t_KEMError & Alloc.String.t_String)

/// Implements `[From<sandwich_proto::ErrorEnum>]` for [`ErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_100:Core.Convert.t_From #t_ErrorCode #Sandwich_proto.Errors.t_SystemError

/// Instantiates an [`ErrorCode`] from an error enum and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_101 (#v_S: Type0) {| i1: Core.Convert.t_AsRef v_S string |}
    : Core.Convert.t_From #t_ErrorCode #(Sandwich_proto.Errors.t_SystemError & v_S)

/// Instantiates an [`ErrorCode`] from an error enum and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_102:Core.Convert.t_From #t_ErrorCode #(Sandwich_proto.Errors.t_SystemError & string)

/// Instantiates an [`ErrorCode`] from an error enum and a [`String`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_103:Core.Convert.t_From #t_ErrorCode
  #(Sandwich_proto.Errors.t_SystemError & Alloc.String.t_String)

/// Implements `[From<sandwich_proto::ErrorEnum>]` for [`ErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_109:Core.Convert.t_From #t_ErrorCode #Sandwich_proto.Errors.t_SocketError

/// Instantiates an [`ErrorCode`] from an error enum and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_110 (#v_S: Type0) {| i1: Core.Convert.t_AsRef v_S string |}
    : Core.Convert.t_From #t_ErrorCode #(Sandwich_proto.Errors.t_SocketError & v_S)

/// Instantiates an [`ErrorCode`] from an error enum and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_111:Core.Convert.t_From #t_ErrorCode #(Sandwich_proto.Errors.t_SocketError & string)

/// Instantiates an [`ErrorCode`] from an error enum and a [`String`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_112:Core.Convert.t_From #t_ErrorCode
  #(Sandwich_proto.Errors.t_SocketError & Alloc.String.t_String)

/// Implements `[From<sandwich_proto::ErrorEnum>]` for [`ErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_118:Core.Convert.t_From #t_ErrorCode #Sandwich_proto.Errors.t_HandshakeError

/// Instantiates an [`ErrorCode`] from an error enum and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_119 (#v_S: Type0) {| i1: Core.Convert.t_AsRef v_S string |}
    : Core.Convert.t_From #t_ErrorCode #(Sandwich_proto.Errors.t_HandshakeError & v_S)

/// Instantiates an [`ErrorCode`] from an error enum and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_120:Core.Convert.t_From #t_ErrorCode #(Sandwich_proto.Errors.t_HandshakeError & string)

/// Instantiates an [`ErrorCode`] from an error enum and a [`String`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_121:Core.Convert.t_From #t_ErrorCode
  #(Sandwich_proto.Errors.t_HandshakeError & Alloc.String.t_String)

/// Implements `[From<sandwich_proto::ErrorEnum>]` for [`ErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_127:Core.Convert.t_From #t_ErrorCode #Sandwich_proto.Errors.t_TunnelError

/// Instantiates an [`ErrorCode`] from an error enum and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_128 (#v_S: Type0) {| i1: Core.Convert.t_AsRef v_S string |}
    : Core.Convert.t_From #t_ErrorCode #(Sandwich_proto.Errors.t_TunnelError & v_S)

/// Instantiates an [`ErrorCode`] from an error enum and a string.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_129:Core.Convert.t_From #t_ErrorCode #(Sandwich_proto.Errors.t_TunnelError & string)

/// Instantiates an [`ErrorCode`] from an error enum and a [`String`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_130:Core.Convert.t_From #t_ErrorCode
  #(Sandwich_proto.Errors.t_TunnelError & Alloc.String.t_String)

/// Implements [`TryFrom`] for [`ProtoBasedErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_137:Core.Convert.t_TryFrom #t_ProtoBasedErrorCode #(i32 & i32)

/// Implements [`TryFrom`] for [`ErrorCode`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_138:Core.Convert.t_TryFrom #t_ErrorCode #(i32 & i32)
