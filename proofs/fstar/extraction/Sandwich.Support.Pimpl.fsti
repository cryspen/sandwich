module Sandwich.Support.Pimpl
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

(* item error backend: (reject_RawOrMutPointer) ExplicitRejection { reason: "a node of kind [Raw_pointer] have been found in the AST" }
Last available AST for this item:

#[allow(dead_code)]
#[allow(unused_imports)]
#[allow(dead_code)]
#[deny(bare_trait_objects)]
#[feature(register_tool)]
#[register_tool(_hax)]
struct t_PimplInner<'a: 'unk, T>
where
    _: core::marker::t_Sized<T>,
{
    /// The type to own.
    f_p: core::ptr::non_null::t_NonNull<T>,
    /// The deleter to call on the type.
    f_del: core::option::t_Option<arrow!(raw_pointer!() -> tuple0)>,
    /// A `PhantomData` to explicit the lifetime of the pointer.
    f_phantom: core::marker::t_PhantomData<&T>,
}


Last AST:
/** print_rust: pitem: not implemented  (item: { Concrete_ident.T.def_id =
  { Concrete_ident.Imported.krate = "sandwich";
    path =
    [{ Concrete_ident.Imported.data =
       (Concrete_ident.Imported.TypeNs "support"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "pimpl"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "PimplInner"); disambiguator = 0 }
      ]
    };
  kind = Concrete_ident.Kind.Value }) */
const _: () = ();
 *)

/// Wrapper around an raw pointer.
val t_Pimpl (#v_T: Type0) : Type0

/// Returns a copy of the [`NonNull`] pointer.
val impl_2__as_nonnull (#v_T: Type0) (self: t_Pimpl v_T)
    : Prims.Pure (Core.Ptr.Non_null.t_NonNull v_T) Prims.l_True (fun _ -> Prims.l_True)

/// Returns the raw pointer by consuming the object.
val impl_2__into_raw (#v_T: Type0) (self: t_Pimpl v_T)
    : Prims.Pure Rust_primitives.Hax.t_failure Prims.l_True (fun _ -> Prims.l_True)
