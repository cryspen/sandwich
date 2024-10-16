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
