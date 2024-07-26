module Sandwich_proto.Errors
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Protobuf.Enums in
  ()

type t_ALPNError =
  | ALPNError_ALPNERROR_LENGTH_ERROR : t_ALPNError
  | ALPNError_ALPNERROR_INVALID_STRING : t_ALPNError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_30:Core.Default.t_Default t_ALPNError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_28:Protobuf.Enums.t_Enum t_ALPNError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_29:Protobuf.Enum_full.t_EnumFull t_ALPNError

type t_APIError =
  | APIError_APIERROR_CONFIGURATION : t_APIError
  | APIError_APIERROR_SOCKET : t_APIError
  | APIError_APIERROR_TUNNEL : t_APIError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_2:Core.Default.t_Default t_APIError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl:Protobuf.Enums.t_Enum t_APIError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_1:Protobuf.Enum_full.t_EnumFull t_APIError

type t_ASN1Error =
  | ASN1Error_ASN1ERROR_INVALID_FORMAT : t_ASN1Error
  | ASN1Error_ASN1ERROR_MALFORMED : t_ASN1Error

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_26:Core.Default.t_Default t_ASN1Error

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_24:Protobuf.Enums.t_Enum t_ASN1Error

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_25:Protobuf.Enum_full.t_EnumFull t_ASN1Error

type t_CertificateError =
  | CertificateError_CERTIFICATEERROR_MALFORMED : t_CertificateError
  | CertificateError_CERTIFICATEERROR_EXPIRED : t_CertificateError
  | CertificateError_CERTIFICATEERROR_NOT_FOUND : t_CertificateError
  | CertificateError_CERTIFICATEERROR_UNKNOWN : t_CertificateError
  | CertificateError_CERTIFICATEERROR_UNSUPPORTED : t_CertificateError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_18:Core.Default.t_Default t_CertificateError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_16:Protobuf.Enums.t_Enum t_CertificateError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_17:Protobuf.Enum_full.t_EnumFull t_CertificateError

type t_ConfigurationError =
  | ConfigurationError_CONFIGURATIONERROR_INVALID_IMPLEMENTATION : t_ConfigurationError
  | ConfigurationError_CONFIGURATIONERROR_UNSUPPORTED_IMPLEMENTATION : t_ConfigurationError
  | ConfigurationError_CONFIGURATIONERROR_INVALID : t_ConfigurationError
  | ConfigurationError_CONFIGURATIONERROR_INVALID_LISTENER : t_ConfigurationError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_6:Core.Default.t_Default t_ConfigurationError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_4:Protobuf.Enums.t_Enum t_ConfigurationError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_5:Protobuf.Enum_full.t_EnumFull t_ConfigurationError

type t_DataSourceError =
  | DataSourceError_DATASOURCEERROR_EMPTY : t_DataSourceError
  | DataSourceError_DATASOURCEERROR_INVALID_CASE : t_DataSourceError
  | DataSourceError_DATASOURCEERROR_NOT_FOUND : t_DataSourceError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_34:Core.Default.t_Default t_DataSourceError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_32:Protobuf.Enums.t_Enum t_DataSourceError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_33:Protobuf.Enum_full.t_EnumFull t_DataSourceError

type t_ErrorKind =
  | ErrorKind_ERRORKIND_API : t_ErrorKind
  | ErrorKind_ERRORKIND_CONFIGURATION : t_ErrorKind
  | ErrorKind_ERRORKIND_TLS_CONFIGURATION : t_ErrorKind
  | ErrorKind_ERRORKIND_CERTIFICATE : t_ErrorKind
  | ErrorKind_ERRORKIND_SYSTEM : t_ErrorKind
  | ErrorKind_ERRORKIND_SOCKET : t_ErrorKind
  | ErrorKind_ERRORKIND_PROTOBUF : t_ErrorKind
  | ErrorKind_ERRORKIND_PRIVATE_KEY : t_ErrorKind
  | ErrorKind_ERRORKIND_ASN1 : t_ErrorKind
  | ErrorKind_ERRORKIND_DATA_SOURCE : t_ErrorKind
  | ErrorKind_ERRORKIND_KEM : t_ErrorKind
  | ErrorKind_ERRORKIND_HANDSHAKE : t_ErrorKind
  | ErrorKind_ERRORKIND_TUNNEL : t_ErrorKind
  | ErrorKind_ERRORKIND_ALPN : t_ErrorKind
  | ErrorKind_ERRORKIND_IO : t_ErrorKind

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_58:Core.Default.t_Default t_ErrorKind

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_56:Protobuf.Enums.t_Enum t_ErrorKind

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_57:Protobuf.Enum_full.t_EnumFull t_ErrorKind

type t_HandshakeError =
  | HandshakeError_HANDSHAKEERROR_INVALID_SERVER_NAME : t_HandshakeError
  | HandshakeError_HANDSHAKEERROR_CERTIFICATE_VERIFICATION_FAILED : t_HandshakeError
  | HandshakeError_HANDSHAKEERROR_CERTIFICATE_EXPIRED : t_HandshakeError
  | HandshakeError_HANDSHAKEERROR_CERTIFICATE_REVOKED : t_HandshakeError
  | HandshakeError_HANDSHAKEERROR_INVALID_CERTIFICATE : t_HandshakeError
  | HandshakeError_HANDSHAKEERROR_CERTIFICATE_SIGNATURE_VERIFICATION_FAILED : t_HandshakeError
  | HandshakeError_HANDSHAKEERROR_DEPTH_EXCEEDED : t_HandshakeError
  | HandshakeError_HANDSHAKEERROR_UNSUPPORTED_PROTOCOL : t_HandshakeError
  | HandshakeError_HANDSHAKEERROR_NO_SHARED_CIPHER : t_HandshakeError
  | HandshakeError_HANDSHAKEERROR_NO_SUITABLE_KEY_SHARE : t_HandshakeError
  | HandshakeError_HANDSHAKEERROR_UNKNOWN_ERROR : t_HandshakeError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_50:Core.Default.t_Default t_HandshakeError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_48:Protobuf.Enums.t_Enum t_HandshakeError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_49:Protobuf.Enum_full.t_EnumFull t_HandshakeError

type t_KEMError =
  | KEMError_KEMERROR_INVALID : t_KEMError
  | KEMError_KEMERROR_TOO_MANY : t_KEMError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_38:Core.Default.t_Default t_KEMError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_36:Protobuf.Enums.t_Enum t_KEMError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_37:Protobuf.Enum_full.t_EnumFull t_KEMError

type t_PrivateKeyError =
  | PrivateKeyError_PRIVATEKEYERROR_MALFORMED : t_PrivateKeyError
  | PrivateKeyError_PRIVATEKEYERROR_NOT_FOUND : t_PrivateKeyError
  | PrivateKeyError_PRIVATEKEYERROR_UNKNOWN : t_PrivateKeyError
  | PrivateKeyError_PRIVATEKEYERROR_UNSUPPORTED : t_PrivateKeyError
  | PrivateKeyError_PRIVATEKEYERROR_NOT_SERVER : t_PrivateKeyError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_22:Core.Default.t_Default t_PrivateKeyError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_20:Protobuf.Enums.t_Enum t_PrivateKeyError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_21:Protobuf.Enum_full.t_EnumFull t_PrivateKeyError

type t_ProtobufError =
  | ProtobufError_PROTOBUFERROR_EMPTY : t_ProtobufError
  | ProtobufError_PROTOBUFERROR_TOO_BIG : t_ProtobufError
  | ProtobufError_PROTOBUFERROR_PARSE_FAILED : t_ProtobufError
  | ProtobufError_PROTOBUFERROR_NULLPTR : t_ProtobufError
  | ProtobufError_PROTOBUFERROR_INVALID_ARGUMENT : t_ProtobufError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_10:Core.Default.t_Default t_ProtobufError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_8:Protobuf.Enums.t_Enum t_ProtobufError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_9:Protobuf.Enum_full.t_EnumFull t_ProtobufError

type t_SocketError =
  | SocketError_SOCKETERROR_BAD_FD : t_SocketError
  | SocketError_SOCKETERROR_CREATION_FAILED : t_SocketError
  | SocketError_SOCKETERROR_BAD_NETADDR : t_SocketError
  | SocketError_SOCKETERROR_NETADDR_UNKNOWN : t_SocketError
  | SocketError_SOCKETERROR_FSTAT_FAILED : t_SocketError
  | SocketError_SOCKETERROR_NOT_SOCK : t_SocketError
  | SocketError_SOCKETERROR_GETSOCKNAME_FAILED : t_SocketError
  | SocketError_SOCKETERROR_SETSOCKOPT_FAILED : t_SocketError
  | SocketError_SOCKETERROR_INVALID_AI_FAMILY : t_SocketError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_46:Core.Default.t_Default t_SocketError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_44:Protobuf.Enums.t_Enum t_SocketError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_45:Protobuf.Enum_full.t_EnumFull t_SocketError

type t_SystemError =
  | SystemError_SYSTEMERROR_MEMORY : t_SystemError
  | SystemError_SYSTEMERROR_INTEGER_OVERFLOW : t_SystemError
  | SystemError_SYSTEMERROR_BACKEND : t_SystemError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_42:Core.Default.t_Default t_SystemError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_40:Protobuf.Enums.t_Enum t_SystemError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_41:Protobuf.Enum_full.t_EnumFull t_SystemError

type t_TLSConfigurationError =
  | TLSConfigurationError_TLSCONFIGURATIONERROR_UNSUPPORTED_IMPLEMENTATION : t_TLSConfigurationError
  | TLSConfigurationError_TLSCONFIGURATIONERROR_INVALID_CASE : t_TLSConfigurationError
  | TLSConfigurationError_TLSCONFIGURATIONERROR_EMPTY : t_TLSConfigurationError
  | TLSConfigurationError_TLSCONFIGURATIONERROR_UNSUPPORTED_PROTOCOL_VERSION : t_TLSConfigurationError
  | TLSConfigurationError_TLSCONFIGURATIONERROR_PRIVATE_KEY_INCONSISTENT_WITH_CERTIFICATE : t_TLSConfigurationError
  | TLSConfigurationError_TLSCONFIGURATIONERROR_UNSUPPORTED_CIPHERSUITE : t_TLSConfigurationError
  | TLSConfigurationError_TLSCONFIGURATIONERROR_UNSUPPORTED_CONTROL_CHARACTERS : t_TLSConfigurationError
  | TLSConfigurationError_TLSCONFIGURATIONERROR_INVALID : t_TLSConfigurationError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_14:Core.Default.t_Default t_TLSConfigurationError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_12:Protobuf.Enums.t_Enum t_TLSConfigurationError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_13:Protobuf.Enum_full.t_EnumFull t_TLSConfigurationError

type t_TunnelError =
  | TunnelError_TUNNELERROR_INVALID : t_TunnelError
  | TunnelError_TUNNELERROR_VERIFIER : t_TunnelError
  | TunnelError_TUNNELERROR_UNKNOWN : t_TunnelError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_54:Core.Default.t_Default t_TunnelError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_52:Protobuf.Enums.t_Enum t_TunnelError

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_53:Protobuf.Enum_full.t_EnumFull t_TunnelError
