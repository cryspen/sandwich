module Sandwich.Support.Data_source
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

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
