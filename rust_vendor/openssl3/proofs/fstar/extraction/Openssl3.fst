module Openssl3
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

(* item error backend: (reject_RawOrMutPointer) ExplicitRejection { reason: "a node of kind [Raw_pointer] have been found in the AST" }
Last available AST for this item:

/** \\brief Custom BIO method for Sandwich.\n\n \\warning `bio_method_st` is an internal structure of OpenSSL, defined in\n          `include/internal/bio.h`. It means we shouldn't access its\n          definition. Instead, we should use `BIO_meth_new` and\n          its setters `BIO_meth_set_*`. However, in order not to use\n          an ELF/PIE constructor (using __attribute__((constructor))), we\n          copy the `bio_method_st` definition.\n          This copy is from OpenSSL 3.2 alpha 2.*/#[repr(C)]#[allow(box_pointers)]#[allow(clippy::all)]#[allow(clippy::pedantic)]#[allow(dead_code)]#[allow(deprecated)]#[allow(missing_docs)]#[allow(non_camel_case_types)]#[allow(non_snake_case)]#[allow(non_upper_case_globals)]#[allow(trivial_casts)]#[allow(unknown_lints)]#[allow(unsafe_code)]#[allow(unused_imports)]#[allow(unused_mut)]#[allow(unused_results)]#[allow(improper_ctypes)]#[allow(ambiguous_glob_reexports)]#[feature(register_tool)]#[register_tool(_hax)]struct t_bio_method_st{f_type___:int,f_name:raw_pointer!(),f_bwrite:core::option::t_Option<arrow!(raw_pointer!() -> raw_pointer!() -> int -> raw_pointer!() -> int)>,f_bwrite_old:core::option::t_Option<arrow!(raw_pointer!() -> raw_pointer!() -> int -> int)>,f_bread:core::option::t_Option<arrow!(raw_pointer!() -> raw_pointer!() -> int -> raw_pointer!() -> int)>,f_bread_old:core::option::t_Option<arrow!(raw_pointer!() -> raw_pointer!() -> int -> int)>,f_bputs:core::option::t_Option<arrow!(raw_pointer!() -> raw_pointer!() -> int)>,f_bgets:core::option::t_Option<arrow!(raw_pointer!() -> raw_pointer!() -> int -> int)>,f_ctrl:core::option::t_Option<arrow!(raw_pointer!() -> int -> int -> raw_pointer!() -> int)>,f_create:core::option::t_Option<arrow!(raw_pointer!() -> int)>,f_destroy:core::option::t_Option<arrow!(raw_pointer!() -> int)>,f_callback_ctrl:core::option::t_Option<arrow!(raw_pointer!() -> int -> core::option::t_Option<arrow!(raw_pointer!() -> int -> int -> int)> -> int)>,f_bsendmmsg:core::option::t_Option<arrow!(raw_pointer!() -> raw_pointer!() -> int -> int -> int -> raw_pointer!() -> int)>,f_brecvmmsg:core::option::t_Option<arrow!(raw_pointer!() -> raw_pointer!() -> int -> int -> int -> raw_pointer!() -> int)>}

Last AST:

/** print_rust: pitem: not implemented  (item: { Concrete_ident.T.def_id =
  { Concrete_ident.Imported.krate = "openssl3";
    path =
    [{ Concrete_ident.Imported.data =
       (Concrete_ident.Imported.TypeNs "bio_method_st"); disambiguator = 0 }
      ]
    };
  kind = Concrete_ident.Kind.Value }) */
const _: () = ();
 *)
