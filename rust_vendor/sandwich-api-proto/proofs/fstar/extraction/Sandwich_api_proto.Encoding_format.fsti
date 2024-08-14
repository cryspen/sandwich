module Sandwich_api_proto.Encoding_format
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

type t_ASN1EncodingFormat =
  | ASN1EncodingFormat_ENCODING_FORMAT_PEM : t_ASN1EncodingFormat
  | ASN1EncodingFormat_ENCODING_FORMAT_DER : t_ASN1EncodingFormat

(* This is a dummy implementation (the real implementation should be produced
   by hax as it exists in the rust code, but it is not because of a bug) *)
(* This workaround solves the following error: *)
(*
* Error 228 at Sandwich.Tunnel.Tls.Support.fst(110,48-110,66):
  - Typeclass resolution failed.
  - Could not solve constraint
      Protobuf.Enums.t_Enum Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat

  - See also FStar.Tactics.Typeclasses.fst(302,6-306,7)
*)
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl :Protobuf.Enums.t_Enum t_ASN1EncodingFormat