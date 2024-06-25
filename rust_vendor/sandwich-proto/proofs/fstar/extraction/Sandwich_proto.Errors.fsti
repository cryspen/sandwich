module Sandwich_proto.Errors
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

type t_ASN1Error =
  | ASN1Error_ASN1ERROR_INVALID_FORMAT : t_ASN1Error
  | ASN1Error_ASN1ERROR_MALFORMED : t_ASN1Error

type t_DataSourceError =
  | DataSourceError_DATASOURCEERROR_EMPTY : t_DataSourceError
  | DataSourceError_DATASOURCEERROR_INVALID_CASE : t_DataSourceError
  | DataSourceError_DATASOURCEERROR_NOT_FOUND : t_DataSourceError

type t_TLSConfigurationError =
  | TLSConfigurationError_TLSCONFIGURATIONERROR_UNSUPPORTED_IMPLEMENTATION : t_TLSConfigurationError
  | TLSConfigurationError_TLSCONFIGURATIONERROR_INVALID_CASE : t_TLSConfigurationError
  | TLSConfigurationError_TLSCONFIGURATIONERROR_EMPTY : t_TLSConfigurationError
  | TLSConfigurationError_TLSCONFIGURATIONERROR_UNSUPPORTED_PROTOCOL_VERSION : t_TLSConfigurationError
  | TLSConfigurationError_TLSCONFIGURATIONERROR_PRIVATE_KEY_INCONSISTENT_WITH_CERTIFICATE : t_TLSConfigurationError
  | TLSConfigurationError_TLSCONFIGURATIONERROR_UNSUPPORTED_CIPHERSUITE : t_TLSConfigurationError
  | TLSConfigurationError_TLSCONFIGURATIONERROR_UNSUPPORTED_CONTROL_CHARACTERS : t_TLSConfigurationError
  | TLSConfigurationError_TLSCONFIGURATIONERROR_INVALID : t_TLSConfigurationError

type t_TunnelError =
  | TunnelError_TUNNELERROR_INVALID : t_TunnelError
  | TunnelError_TUNNELERROR_VERIFIER : t_TunnelError
  | TunnelError_TUNNELERROR_UNKNOWN : t_TunnelError
