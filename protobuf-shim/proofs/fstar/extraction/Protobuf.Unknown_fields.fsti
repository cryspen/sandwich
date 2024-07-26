module Protobuf.Unknown_fields
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

/// Hold "unknown" fields in parsed message.
/// Field may be unknown if it they are added in newer version of `.proto`.
/// Unknown fields are stored in `UnknownFields` structure, so
/// protobuf message could process messages without losing data.
/// For example, in this operation: load from DB, modify, store to DB,
/// even when working with older `.proto` file, new fields won't be lost.
type t_UnknownFields = { f_fields:Prims.unit }
