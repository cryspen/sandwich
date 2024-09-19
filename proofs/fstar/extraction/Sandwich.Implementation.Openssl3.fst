module Sandwich.Implementation.Openssl3
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

(* item error backend: (reject_RawOrMutPointer) ExplicitRejection { reason: "a node of kind [Raw_pointer] have been found in the AST" }
Last available AST for this item:

#[_hax::json("\"OpaqueType\"")]
/// A convenient builder for providers.
#[cfg(feature = "openssl3")]
#[deny(bare_trait_objects)]
#[feature(register_tool)]
#[register_tool(_hax)]
struct t_ProviderBuilder {
    /// Name of the provider, C format.
    f_name: core::option::t_Option<raw_pointer!()>,
    /// Library context.
    f_lib_ctx: core::option::t_Option<
        core::ptr::non_null::t_NonNull<openssl3::t_ossl_lib_ctx_st>,
    >,
}


Last AST:
/** print_rust: pitem: not implemented  (item: { Concrete_ident.T.def_id =
  { Concrete_ident.Imported.krate = "sandwich";
    path =
    [{ Concrete_ident.Imported.data =
       (Concrete_ident.Imported.TypeNs "implementation"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "openssl3"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "ProviderBuilder"); disambiguator = 0
        }
      ]
    };
  kind = Concrete_ident.Kind.Value }) */
const _: () = ();
 *)
