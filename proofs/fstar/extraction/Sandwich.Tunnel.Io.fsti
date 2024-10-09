module Sandwich.Tunnel.Io
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Sandwich.Io in
  ()

/// An IO interface specific to tunnels.
class t_IO (v_Self: Type0) = {
  [@@@ FStar.Tactics.Typeclasses.no_method]_super_4477687896940107264:Sandwich.Io.t_IO v_Self;
  f_set_state_pre:v_Self -> Sandwich_proto.Tunnel.t_State -> bool;
  f_set_state_post:v_Self -> Sandwich_proto.Tunnel.t_State -> v_Self -> bool;
  f_set_state:x0: v_Self -> x1: Sandwich_proto.Tunnel.t_State
    -> Prims.Pure v_Self (f_set_state_pre x0 x1) (fun result -> f_set_state_post x0 x1 result)
}

/// BoxedIO
val t_BoxedIO:Type0

val v__boxed_io_flush (boxed_io: t_BoxedIO)
    : Prims.Pure (t_BoxedIO & Core.Result.t_Result Prims.unit Std.Io.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

val v__boxed_io_read (boxed_io: t_BoxedIO) (buf: t_Slice u8)
    : Prims.Pure (t_BoxedIO & t_Slice u8 & Core.Result.t_Result usize Std.Io.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_1: Std.Io.t_Read t_BoxedIO =
  {
    f_read_pre = (fun (self: t_BoxedIO) (buf: t_Slice u8) -> true);
    f_read_post
    =
    (fun
        (self: t_BoxedIO)
        (buf: t_Slice u8)
        (out1: (t_BoxedIO & t_Slice u8 & Core.Result.t_Result usize Std.Io.Error.t_Error))
        ->
        true);
    f_read
    =
    fun (self: t_BoxedIO) (buf: t_Slice u8) ->
      let tmp0, tmp1, out:(t_BoxedIO & t_Slice u8 & Core.Result.t_Result usize Std.Io.Error.t_Error)
      =
        v__boxed_io_read self buf
      in
      let self:t_BoxedIO = tmp0 in
      let buf:t_Slice u8 = tmp1 in
      let hax_temp_output:Core.Result.t_Result usize Std.Io.Error.t_Error = out in
      self, buf, hax_temp_output
      <:
      (t_BoxedIO & t_Slice u8 & Core.Result.t_Result usize Std.Io.Error.t_Error)
  }

val v__boxed_io_write (boxed_io: t_BoxedIO) (buf: t_Slice u8)
    : Prims.Pure (t_BoxedIO & Core.Result.t_Result usize Std.Io.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_2: Std.Io.t_Write t_BoxedIO =
  {
    f_write_pre = (fun (self: t_BoxedIO) (buf: t_Slice u8) -> true);
    f_write_post
    =
    (fun
        (self: t_BoxedIO)
        (buf: t_Slice u8)
        (out1: (t_BoxedIO & Core.Result.t_Result usize Std.Io.Error.t_Error))
        ->
        true);
    f_write
    =
    (fun (self: t_BoxedIO) (buf: t_Slice u8) ->
        let tmp0, out:(t_BoxedIO & Core.Result.t_Result usize Std.Io.Error.t_Error) =
          v__boxed_io_write self buf
        in
        let self:t_BoxedIO = tmp0 in
        let hax_temp_output:Core.Result.t_Result usize Std.Io.Error.t_Error = out in
        self, hax_temp_output <: (t_BoxedIO & Core.Result.t_Result usize Std.Io.Error.t_Error));
    f_flush_pre = (fun (self: t_BoxedIO) -> true);
    f_flush_post
    =
    (fun
        (self: t_BoxedIO)
        (out1: (t_BoxedIO & Core.Result.t_Result Prims.unit Std.Io.Error.t_Error))
        ->
        true);
    f_flush
    =
    fun (self: t_BoxedIO) ->
      let tmp0, out:(t_BoxedIO & Core.Result.t_Result Prims.unit Std.Io.Error.t_Error) =
        v__boxed_io_flush self
      in
      let self:t_BoxedIO = tmp0 in
      let hax_temp_output:Core.Result.t_Result Prims.unit Std.Io.Error.t_Error = out in
      self, hax_temp_output <: (t_BoxedIO & Core.Result.t_Result Prims.unit Std.Io.Error.t_Error)
  }

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl: t_IO t_BoxedIO =
  {
    _super_4477687896940107264 = FStar.Tactics.Typeclasses.solve;
    f_set_state_pre = (fun (self: t_BoxedIO) (v__state: Sandwich_proto.Tunnel.t_State) -> true);
    f_set_state_post
    =
    (fun (self: t_BoxedIO) (v__state: Sandwich_proto.Tunnel.t_State) (out: t_BoxedIO) -> true);
    f_set_state = fun (self: t_BoxedIO) (v__state: Sandwich_proto.Tunnel.t_State) -> self
  }
