module Sandwich.Tunnel.Io
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Sandwich.Io in
  let open Std.Io in
  let open Std.Io.Impls in
  ()

(* item error backend: (reject_TraitItemDefault) ExplicitRejection { reason: "a node of kind [Trait_item_default] have been found in the AST" }
Last available AST for this item:

/** An IO interface specific to tunnels.*/#[cfg(all(any(feature = "openssl1_1_1", feature = "boringssl", feature =
"openssl3"), feature = "tunnel"))]#[deny(bare_trait_objects)]#[feature(register_tool)]#[register_tool(_hax)]trait t_IO<Self_> where _: sandwich::io::t_IO<Self>{fn f_set_state((self: Self,_state: sandwich_proto::tunnel::t_State)) -> Self{self}}

Last AST:
/** print_rust: pitem: not implemented  (item: { Concrete_ident.T.def_id =
  { Concrete_ident.Imported.krate = "sandwich";
    path =
    [{ Concrete_ident.Imported.data =
       (Concrete_ident.Imported.TypeNs "tunnel"); disambiguator = 0 };
      { Concrete_ident.Imported.data = (Concrete_ident.Imported.TypeNs "io");
        disambiguator = 0 };
      { Concrete_ident.Imported.data = (Concrete_ident.Imported.TypeNs "IO");
        disambiguator = 0 }
      ]
    };
  kind = Concrete_ident.Kind.Value }) */
const _: () = ();
 *)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_4: Core.Fmt.t_Debug (dyn 1 (fun z -> t_IO z)) =
  {
    f_fmt_pre = (fun (self: dyn 1 (fun z -> t_IO z)) (f: Core.Fmt.t_Formatter) -> true);
    f_fmt_post
    =
    (fun
        (self: dyn 1 (fun z -> t_IO z))
        (f: Core.Fmt.t_Formatter)
        (out1: (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error))
        ->
        true);
    f_fmt
    =
    fun (self: dyn 1 (fun z -> t_IO z)) (f: Core.Fmt.t_Formatter) ->
      let tmp0, out:(Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error) =
        Core.Fmt.impl_9__write_fmt f
          (Core.Fmt.impl_2__new_const (sz 1)
              (let list = ["Box(tunnel::IO)"] in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                Rust_primitives.Hax.array_of_list 1 list)
            <:
            Core.Fmt.t_Arguments)
      in
      let f:Core.Fmt.t_Formatter = tmp0 in
      let hax_temp_output:Core.Result.t_Result Prims.unit Core.Fmt.t_Error = out in
      f, hax_temp_output
      <:
      (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error)
  }

/// BoxedIO
val t_BoxedIO:Type0

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_3: Core.Convert.t_From t_BoxedIO
  (Alloc.Boxed.t_Box (dyn 1 (fun z -> t_IO z)) Alloc.Alloc.t_Global) =
  {
    f_from_pre
    =
    (fun (io: Alloc.Boxed.t_Box (dyn 1 (fun z -> t_IO z)) Alloc.Alloc.t_Global) -> true);
    f_from_post
    =
    (fun (io: Alloc.Boxed.t_Box (dyn 1 (fun z -> t_IO z)) Alloc.Alloc.t_Global) (out: t_BoxedIO) ->
        true);
    f_from
    =
    fun (io: Alloc.Boxed.t_Box (dyn 1 (fun z -> t_IO z)) Alloc.Alloc.t_Global) ->
      Rust_primitives.Hax.never_to_any (Core.Panicking.panic "not implemented"
          <:
          Rust_primitives.Hax.t_Never)
  }

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
      let tmp0, tmp1, out:(Alloc.Boxed.t_Box (dyn 1 (fun z -> t_IO z)) Alloc.Alloc.t_Global &
        t_Slice u8 &
        Core.Result.t_Result usize Std.Io.Error.t_Error) =
        Std.Io.f_read #(Alloc.Boxed.t_Box (dyn 1 (fun z -> t_IO z)) Alloc.Alloc.t_Global)
          #FStar.Tactics.Typeclasses.solve
          self._0
          buf
      in
      let self:t_BoxedIO = { self with _0 = tmp0 } <: t_BoxedIO in
      let buf:t_Slice u8 = tmp1 in
      let hax_temp_output:Core.Result.t_Result usize Std.Io.Error.t_Error = out in
      self, buf, hax_temp_output
      <:
      (t_BoxedIO & t_Slice u8 & Core.Result.t_Result usize Std.Io.Error.t_Error)
  }

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
        let tmp0, out:(Alloc.Boxed.t_Box (dyn 1 (fun z -> t_IO z)) Alloc.Alloc.t_Global &
          Core.Result.t_Result usize Std.Io.Error.t_Error) =
          Std.Io.f_write #(Alloc.Boxed.t_Box (dyn 1 (fun z -> t_IO z)) Alloc.Alloc.t_Global)
            #FStar.Tactics.Typeclasses.solve
            self._0
            buf
        in
        let self:t_BoxedIO = { self with _0 = tmp0 } <: t_BoxedIO in
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
      let tmp0, out:(Alloc.Boxed.t_Box (dyn 1 (fun z -> t_IO z)) Alloc.Alloc.t_Global &
        Core.Result.t_Result Prims.unit Std.Io.Error.t_Error) =
        Std.Io.f_flush #(Alloc.Boxed.t_Box (dyn 1 (fun z -> t_IO z)) Alloc.Alloc.t_Global)
          #FStar.Tactics.Typeclasses.solve
          self._0
      in
      let self:t_BoxedIO = { self with _0 = tmp0 } <: t_BoxedIO in
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
