module Sandwich.Support.Pimpl
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

(* item error backend: (reject_RawOrMutPointer) ExplicitRejection { reason: "a node of kind [Raw_pointer] have been found in the AST" }
Last available AST for this item:

/// Wrapper around an raw pointer.
#[allow(dead_code)]
#[allow(unused_imports)]
#[allow(dead_code)]
#[deny(bare_trait_objects)]
#[feature(register_tool)]
#[register_tool(_hax)]
struct t_Pimpl<'a: 'unk, T>
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
        (Concrete_ident.Imported.TypeNs "Pimpl"); disambiguator = 0 }
      ]
    };
  kind = Concrete_ident.Kind.Value }) */
const _: () = ();
 *)

(* item error backend: (reject_RawOrMutPointer) ExplicitRejection { reason: "a node of kind [Raw_pointer] have been found in the AST" }
Last available AST for this item:

/// Instantiates a [`Pimpl`] from a raw pointer and optionally a deleter.
/// # Example
/// ```no_run
/// let ptr = libc::malloc(42usize);
/// // `libc::free` will be called with the pointer when `ptr` gets dropped.
/// let ptr = unsafe { Pimpl::new(ptr, |p| libc::free(p)) };
/// ```
#[allow(dead_code)]
#[allow(unused_imports)]
#[allow(dead_code)]
#[deny(bare_trait_objects)]
#[feature(register_tool)]
#[register_tool(_hax)]
unsafe fn impl_2__new<'a: 'unk, T>(
    ptr: raw_pointer!(),
    del: arrow!(raw_pointer!() -> tuple0),
) -> core::option::t_Option<sandwich::support::pimpl::t_Pimpl<lifetime!(something), T>>
where
    _: core::marker::t_Sized<T>,
{
    (match (core::ptr::non_null::impl_3__new::<T>(ptr)) {
        core::option::Option_Some(p) => {
            core::option::Option_Some(sandwich::support::pimpl::Pimpl {
                f_p: p,
                f_del: core::option::Option_Some(del),
                f_phantom: core::marker::PhantomData(),
            })
        }
        _ => {
            let _: rust_primitives::hax::t_Never = {
                (return core::option::Option_None())
            };
            Tuple0
        }
    })
}


Last AST:
/** print_rust: pitem: not implemented  (item: { Concrete_ident.T.def_id =
  { Concrete_ident.Imported.krate = "sandwich";
    path =
    [{ Concrete_ident.Imported.data =
       (Concrete_ident.Imported.TypeNs "support"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "pimpl"); disambiguator = 0 };
      { Concrete_ident.Imported.data = Concrete_ident.Imported.Impl;
        disambiguator = 2 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.ValueNs "new"); disambiguator = 0 }
      ]
    };
  kind = Concrete_ident.Kind.Value }) */
const _: () = ();
 *)

(* item error backend: (reject_RawOrMutPointer) ExplicitRejection { reason: "a node of kind [Raw_pointer] have been found in the AST" }
Last available AST for this item:

/// Instantiates a [`Pimpl`] from a raw pointer and a deleter.
/// This method does the same job as [`Pimpl::new`], but the pointer's
/// nullity will not be checked.
#[allow(dead_code)]
#[allow(unused_imports)]
#[allow(dead_code)]
#[deny(bare_trait_objects)]
#[feature(register_tool)]
#[register_tool(_hax)]
unsafe fn impl_2__new_unchecked<'a: 'unk, T>(
    ptr: raw_pointer!(),
    del: arrow!(raw_pointer!() -> tuple0),
) -> sandwich::support::pimpl::t_Pimpl<lifetime!(something), T>
where
    _: core::marker::t_Sized<T>,
{
    {
        sandwich::support::pimpl::Pimpl {
            f_p: core::ptr::non_null::impl_3__new_unchecked::<T>(ptr),
            f_del: core::option::Option_Some(del),
            f_phantom: core::marker::PhantomData(),
        }
    }
}


Last AST:
/** print_rust: pitem: not implemented  (item: { Concrete_ident.T.def_id =
  { Concrete_ident.Imported.krate = "sandwich";
    path =
    [{ Concrete_ident.Imported.data =
       (Concrete_ident.Imported.TypeNs "support"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "pimpl"); disambiguator = 0 };
      { Concrete_ident.Imported.data = Concrete_ident.Imported.Impl;
        disambiguator = 2 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.ValueNs "new_unchecked"); disambiguator = 0
        }
      ]
    };
  kind = Concrete_ident.Kind.Value }) */
const _: () = ();
 *)
