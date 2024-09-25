module Sandwich.Tunnel.Context
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

/// A Sandwich context.
type t_Context =

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl: Core.Fmt.t_Debug t_Context =
  {
    f_fmt_pre = (fun (self: t_Context) (f: Core.Fmt.t_Formatter) -> true);
    f_fmt_post
    =
    (fun
        (self: t_Context)
        (f: Core.Fmt.t_Formatter)
        (out1: (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error))
        ->
        true);
    f_fmt
    =
    fun (self: t_Context) (f: Core.Fmt.t_Formatter) ->
      let tmp0, out:(Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error) =
        Core.Fmt.impl_7__write_fmt f
          (Core.Fmt.impl_2__new_const (sz 1)
              (let list = ["rust::tunnel::Context()"] in
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

val t_Context_cast_to_repr (x: t_Context)
    : Prims.Pure Rust_primitives.Hax.t_Never Prims.l_True (fun _ -> Prims.l_True)

/// Mode for a [`Context`].
/// A [`Context`] is either a context for client-side applications or
/// server-side applications.
type t_Mode =
  | Mode_Client : t_Mode
  | Mode_Server : t_Mode

val t_Mode_cast_to_repr (x: t_Mode) : Prims.Pure isize Prims.l_True (fun _ -> Prims.l_True)
