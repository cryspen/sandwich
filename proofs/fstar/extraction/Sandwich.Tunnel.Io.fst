module Sandwich.Tunnel.Io
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Sandwich.Io in
  ()

let v__boxed_io_flush (boxed_io: t_BoxedIO) =
  let tmp0, out:(dyn 1 (fun z -> t_IO z) & Core.Result.t_Result Prims.unit Std.Io.Error.t_Error) =
    Std.Io.f_flush #(dyn 1 (fun z -> t_IO z)) #FStar.Tactics.Typeclasses.solve boxed_io._0
  in
  let _:Prims.unit =
    Rust_primitives.Hax.failure "(reject_ArbitraryLhs) ExplicitRejection { reason: \"a node of kind [Arbitrary_lhs] have been found in the AST\" }"
      "(deref(proj_sandwich::tunnel::io::_0(boxed_io)) = tmp0)"
  in
  let hax_temp_output:Core.Result.t_Result Prims.unit Std.Io.Error.t_Error = out in
  boxed_io, hax_temp_output <: (t_BoxedIO & Core.Result.t_Result Prims.unit Std.Io.Error.t_Error)

let v__boxed_io_read (boxed_io: t_BoxedIO) (buf: t_Slice u8) =
  let tmp0, tmp1, out:(dyn 1 (fun z -> t_IO z) & t_Slice u8 &
    Core.Result.t_Result usize Std.Io.Error.t_Error) =
    Std.Io.f_read #(dyn 1 (fun z -> t_IO z)) #FStar.Tactics.Typeclasses.solve boxed_io._0 buf
  in
  let _:Prims.unit =
    Rust_primitives.Hax.failure "(reject_ArbitraryLhs) ExplicitRejection { reason: \"a node of kind [Arbitrary_lhs] have been found in the AST\" }"
      "(deref(proj_sandwich::tunnel::io::_0(boxed_io)) = tmp0)"
  in
  let buf:t_Slice u8 = tmp1 in
  let hax_temp_output:Core.Result.t_Result usize Std.Io.Error.t_Error = out in
  boxed_io, buf, hax_temp_output
  <:
  (t_BoxedIO & t_Slice u8 & Core.Result.t_Result usize Std.Io.Error.t_Error)

let v__boxed_io_write (boxed_io: t_BoxedIO) (buf: t_Slice u8) =
  let tmp0, out:(dyn 1 (fun z -> t_IO z) & Core.Result.t_Result usize Std.Io.Error.t_Error) =
    Std.Io.f_write #(dyn 1 (fun z -> t_IO z)) #FStar.Tactics.Typeclasses.solve boxed_io._0 buf
  in
  let _:Prims.unit =
    Rust_primitives.Hax.failure "(reject_ArbitraryLhs) ExplicitRejection { reason: \"a node of kind [Arbitrary_lhs] have been found in the AST\" }"
      "(deref(proj_sandwich::tunnel::io::_0(boxed_io)) = tmp0)"
  in
  let hax_temp_output:Core.Result.t_Result usize Std.Io.Error.t_Error = out in
  boxed_io, hax_temp_output <: (t_BoxedIO & Core.Result.t_Result usize Std.Io.Error.t_Error)
