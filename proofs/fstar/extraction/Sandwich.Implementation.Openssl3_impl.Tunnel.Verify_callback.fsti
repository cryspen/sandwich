module Sandwich.Implementation.Openssl3_impl.Tunnel.Verify_callback
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

(* item error backend: (reject_RawOrMutPointer) ExplicitRejection { reason: "a node of kind [Raw_pointer] have been found in the AST" }
Last available AST for this item:

#[_hax::json("\"Erased\"")]
/// The verify callback to be used.
/// This callback is passed to `SSL_set_verify`.
#[cfg(feature = "tunnel")]
#[cfg(feature = "openssl3")]
#[deny(bare_trait_objects)]
#[feature(register_tool)]
#[register_tool(_hax)]
fn verify_callback(mut verify_code: int, store_ctx: raw_pointer!()) -> int {
    rust_primitives::hax::dropped_body
}


Last AST:
/** print_rust: pitem: not implemented  (item: { Concrete_ident.T.def_id =
  { Concrete_ident.Imported.krate = "sandwich";
    path =
    [{ Concrete_ident.Imported.data =
       (Concrete_ident.Imported.TypeNs "implementation"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "openssl3_impl"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "tunnel"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "verify_callback"); disambiguator = 0
        };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.ValueNs "verify_callback");
        disambiguator = 0 }
      ]
    };
  kind = Concrete_ident.Kind.Value }) */
const _: () = ();
 *)

/// Returns the error stored in the X509 store context.
val x509_store_context_get_error
      (store_ctx: Core.Ptr.Non_null.t_NonNull Openssl3.t_x509_store_ctx_st)
    : Prims.Pure i32 Prims.l_True (fun _ -> Prims.l_True)

/// Returns the SSL object from a X509 store context.
val x509_store_context_get_ssl (store_ctx: Core.Ptr.Non_null.t_NonNull Openssl3.t_x509_store_ctx_st)
    : Prims.Pure (Core.Option.t_Option (Core.Ptr.Non_null.t_NonNull Openssl3.t_ssl_st))
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Records an error in the X509 store context.
val x509_store_context_record_error
      (#impl_765196419_: Type0)
      {| i1: Core.Convert.t_Into impl_765196419_ i32 |}
      (store_ctx: Core.Ptr.Non_null.t_NonNull Openssl3.t_x509_store_ctx_st)
      (error: impl_765196419_)
    : Prims.Pure Prims.unit Prims.l_True (fun _ -> Prims.l_True)
