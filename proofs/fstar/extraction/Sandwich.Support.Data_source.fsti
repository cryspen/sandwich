module Sandwich.Support.Data_source
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

/// A source of data.
/// Source of the material is either from the local filesystem (`Fs`), from
/// an inline slice of bytes (`Bytes`) or from a inline string (`String`).
/// The content is borrowed, unless is it explicitly mandated to own it.
noeq type t_DataSource =
  | DataSource_Fs : Alloc.Vec.t_Vec u8 Alloc.Alloc.t_Global -> t_DataSource
  | DataSource_Bytes : Alloc.Borrow.t_Cow (t_Slice u8) -> t_DataSource
  | DataSource_String : Alloc.Borrow.t_Cow string -> t_DataSource

/// Returns the data holds by the [`DataSource`] as a slice of bytes.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_1:Core.Convert.t_AsRef t_DataSource (t_Slice u8)

/// Implements [`std::fmt::Debug`] for [`DataSource`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_2:Core.Fmt.t_Debug t_DataSource

(* item error backend: (reject_RawOrMutPointer) ExplicitRejection { reason: "a node of kind [Raw_pointer] have been found in the AST" }

Last available AST for this item:

/** Get the raw void pointer to the data held by the `DataSource`.*/ /***/
/** **WARNING**: because the returned value is a raw pointer, we cannot*/
/** enforce `DataSource` to outlive this returned pointer.*/
#[allow(unused_imports)]
#[allow(dead_code)]
#[deny(bare_trait_objects)]
#[feature(register_tool)]
#[register_tool(_hax)]
impl<'data: 'unk, Anonymous: 'unk>
    core::convert::t_From<
        raw_pointer!(),
        &sandwich::support::data_source::t_DataSource<lifetime!(something)>,
    > for raw_pointer!()
{
    fn f_from<Anonymous: 'unk>(
        ds: &sandwich::support::data_source::t_DataSource<lifetime!(something)>,
    ) -> raw_pointer!() {
        rust_primitives::hax::dropped_body
    }
}


Last AST:
/* print_rust: pitem: not implemented  (item: { Concrete_ident.T.def_id =
{ Concrete_ident.Imported.krate = "sandwich";
  path =
  [{ Concrete_ident.Imported.data =
     (Concrete_ident.Imported.TypeNs "support"); disambiguator = 0 };
    { Concrete_ident.Imported.data =
      (Concrete_ident.Imported.TypeNs "data_source"); disambiguator = 0 };
    { Concrete_ident.Imported.data = Concrete_ident.Imported.Impl;
      disambiguator = 3 }
    ]
  };
kind = Concrete_ident.Kind.Value }) */
 *)

/// Instantiates a [`DataSource`] from a protobuf `DataSource` message.
/// # Errors
/// If the protobuf `DataSource` message provides a filename, and the file
/// couldn't be found or read from the local filesystem, then
/// `DataSourceError::DATASOURCEERROR_NOT_FOUND` is returned.
/// If the protobuf `DataSource` message doesn't provide any source type,
/// then `DataSourceError::DATASOURCEERROR_INVALID_CASE` is returned.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl:Core.Convert.t_TryFrom t_DataSource Sandwich_api_proto.Data_source.t_DataSource
