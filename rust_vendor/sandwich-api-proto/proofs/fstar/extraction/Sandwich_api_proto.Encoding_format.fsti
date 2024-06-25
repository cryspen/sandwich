module Sandwich_api_proto.Encoding_format
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

type t_ASN1EncodingFormat =
  | ASN1EncodingFormat_ENCODING_FORMAT_PEM : t_ASN1EncodingFormat
  | ASN1EncodingFormat_ENCODING_FORMAT_DER : t_ASN1EncodingFormat
