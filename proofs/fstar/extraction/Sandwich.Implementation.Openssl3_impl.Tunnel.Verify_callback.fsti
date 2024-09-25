module Sandwich.Implementation.Openssl3_impl.Tunnel.Verify_callback
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

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

(* item error backend: (reject_RawOrMutPointer) ExplicitRejection { reason: "a node of kind [Raw_pointer] have been found in the AST" }
Last available AST for this item:

/// The verify callback to be used.
/// This callback is passed to `SSL_set_verify`.
#[cfg(feature = "tunnel")]
#[cfg(feature = "openssl3")]
#[deny(bare_trait_objects)]
#[feature(register_tool)]
#[register_tool(_hax)]
fn verify_callback(mut verify_code: int, store_ctx: raw_pointer!()) -> int {
    {
        let _: tuple0 = {
            (if core::cmp::PartialEq::eq(verify_code, 1) {
                rust_primitives::hax::never_to_any({ (return verify_code) })
            })
        };
        (match (core::ptr::non_null::impl_3__new::<
            openssl3::t_x509_store_ctx_st,
        >(store_ctx)) {
            core::option::Option_Some(store_ctx) => {
                (match (sandwich::implementation::openssl3_impl::tunnel::verify_callback::x509_store_context_get_ssl(
                    store_ctx,
                )) {
                    core::option::Option_Some(ssl) => {
                        let ssl_wrapped: sandwich::implementation::openssl3_impl::tunnel::t_Ssl = {
                            core::convert::f_from(ssl)
                        };
                        (match (sandwich::implementation::openssl3_impl::tunnel::impl__Ssl__get_tunnel_security_requirements::<
                            lifetime!(something),
                        >(&(ssl_wrapped))) {
                            core::option::Option_Some(security_requirements) => {
                                let current_error: int = {
                                    sandwich::implementation::openssl3_impl::tunnel::verify_callback::x509_store_context_get_error(
                                        store_ctx,
                                    )
                                };
                                {
                                    let _: tuple0 = {
                                        (if sandwich::tunnel::tls::impl__TunnelSecurityRequirements__openssl3_assess_x509_store_error(
                                            &(deref(security_requirements)),
                                            current_error,
                                        ) {
                                            {
                                                let _: tuple0 = { (verify_code = 1) };
                                                {
                                                    let _: tuple0 = {
                                                        sandwich::implementation::openssl3_impl::tunnel::verify_callback::x509_store_context_record_error::<
                                                            int,
                                                        >(store_ctx, cast(openssl3::v_X509_V_OK))
                                                    };
                                                    Tuple0
                                                }
                                            }
                                        })
                                    };
                                    { verify_code }
                                }
                            }
                            _ => {
                                let _: rust_primitives::hax::t_Never = { (return 0) };
                                Tuple0
                            }
                        })
                    }
                    _ => {
                        let _: rust_primitives::hax::t_Never = { (return 0) };
                        Tuple0
                    }
                })
            }
            _ => {
                let _: rust_primitives::hax::t_Never = { (return 0) };
                Tuple0
            }
        })
    }
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
