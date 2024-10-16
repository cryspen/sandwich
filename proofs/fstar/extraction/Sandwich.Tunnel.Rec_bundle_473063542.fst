module Sandwich.Tunnel.Rec_bundle_473063542
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Protobuf.Enums in
  let open Sandwich in
  let open Sandwich.Error in
  let open Sandwich.Error.Code in
  let open Sandwich.Implementation.Openssl3_impl.Error in
  let open Sandwich.Implementation.Openssl3_impl.Tunnel.X509_verify_param in
  let open Sandwich.Support.Data_source in
  let open Sandwich.Tunnel.Context in
  let open Sandwich.Tunnel.Tls in
  let open Sandwich_proto.Tunnel in
  let open Std.Io in
  ()

let clear_flags
      (#impl_765196419_: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()] i1: Core.Convert.t_Into impl_765196419_ i32)
      (self: t_Bio)
      (flags: impl_765196419_)
     =
  let _:Prims.unit =
    Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
      "rust_primitives::hax::failure(\n        \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n        \"openssl3::foreign_mod_502::v_BIO_clear_flags\",\n    )(\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::non_null::impl_3__as_ptr::<\\n        openssl3::t_bio_st,\\n    >(proj_sandwich::implementation::openssl3_impl::tunnel::bio_method::_0(deref(self)))\",\n        ),\n        core::convert::f_into(flags),\n    )"

  in
  ()

let clear_retry_flag (self: t_Bio) =
  let _:Prims.unit =
    clear_flags #i32
      self
      (cast (Openssl3.v_BIO_FLAGS_RWS |. Openssl3.v_BIO_FLAGS_SHOULD_RETRY <: u32) <: i32)
  in
  ()

let declare_closed (self: t_Bio) =
  let _:i64 =
    Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
      "rust_primitives::hax::failure(\n        \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n        \"openssl3::foreign_mod_550::v_BIO_ctrl\",\n    )(\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::non_null::impl_3__as_ptr::<\\n        openssl3::t_bio_st,\\n    >(proj_sandwich::implementation::openssl3_impl::tunnel::bio_method::_0(deref(self)))\",\n        ),\n        cast(openssl3::v_BIO_CTRL_SET_CLOSE),\n        1,\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::null_mut::<core::ffi::t_c_void>(Tuple0)\",\n        ),\n    )"

  in
  ()

let set_flags
      (#impl_765196419_: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()] i2: Core.Convert.t_Into impl_765196419_ i32)
      (self: t_Bio)
      (flags: impl_765196419_)
     =
  let _:Prims.unit =
    Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
      "rust_primitives::hax::failure(\n        \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n        \"openssl3::foreign_mod_500::v_BIO_set_flags\",\n    )(\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::non_null::impl_3__as_ptr::<\\n        openssl3::t_bio_st,\\n    >(proj_sandwich::implementation::openssl3_impl::tunnel::bio_method::_0(deref(self)))\",\n        ),\n        core::convert::f_into(flags),\n    )"

  in
  ()

let set_retry_read_flag (self: t_Bio) =
  let _:Prims.unit =
    set_flags #i32
      self
      (cast (Openssl3.v_BIO_FLAGS_READ |. Openssl3.v_BIO_FLAGS_SHOULD_RETRY <: u32) <: i32)
  in
  ()

let set_retry_write_flag (self: t_Bio) =
  let _:Prims.unit =
    set_flags #i32
      self
      (cast (Openssl3.v_BIO_FLAGS_WRITE |. Openssl3.v_BIO_FLAGS_SHOULD_RETRY <: u32) <: i32)
  in
  ()

(* item error backend: (reject_RawOrMutPointer) ExplicitRejection { reason: "a node of kind [Raw_pointer] have been found in the AST" }
Last available AST for this item:

/// BIO create callback (never used).
#[cfg(feature = "tunnel")]
#[cfg(feature = "openssl3")]
#[deny(bare_trait_objects)]
#[feature(register_tool)]
#[register_tool(_hax)]
unsafe fn bio_create(_bio: raw_pointer!()) -> int {
    { 1 }
}


Last AST:
/** print_rust: pitem: not implemented  (item: { Concrete_ident.T.def_id =
  { Concrete_ident.Imported.krate = "sandwich";
    path =
    [{ Concrete_ident.Imported.data =
       (Concrete_ident.Imported.TypeNs "tunnel"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "rec_bundle");
        disambiguator = 473063542 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.ValueNs "bio_create"); disambiguator = 0 }
      ]
    };
  kind = Concrete_ident.Kind.Value }) */
const _: () = ();
 *)

(* item error backend: (reject_RawOrMutPointer) ExplicitRejection { reason: "a node of kind [Raw_pointer] have been found in the AST" }
Last available AST for this item:

/// BIO destroy callback (never used).
#[cfg(feature = "tunnel")]
#[cfg(feature = "openssl3")]
#[deny(bare_trait_objects)]
#[feature(register_tool)]
#[register_tool(_hax)]
unsafe fn bio_destroy(_bio: raw_pointer!()) -> int {
    { 1 }
}


Last AST:
/** print_rust: pitem: not implemented  (item: { Concrete_ident.T.def_id =
  { Concrete_ident.Imported.krate = "sandwich";
    path =
    [{ Concrete_ident.Imported.data =
       (Concrete_ident.Imported.TypeNs "tunnel"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "rec_bundle");
        disambiguator = 473063542 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.ValueNs "bio_destroy"); disambiguator = 0 }
      ]
    };
  kind = Concrete_ident.Kind.Value }) */
const _: () = ();
 *)

let disable_session_cache_mode (self: t_SslContext) =
  let _:i64 =
    Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
      "rust_primitives::hax::failure(\n        \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n        \"openssl3::foreign_mod_3371::v_SSL_CTX_ctrl\",\n    )(\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::non_null::impl_3__as_ptr::<\\n        openssl3::t_ssl_ctx_st,\\n    >(proj_sandwich::implementation::openssl3_impl::tunnel::context::_0(deref(self)))\",\n        ),\n        cast(openssl3::v_SSL_CTRL_SET_SESS_CACHE_MODE),\n        core::convert::f_into(openssl3::v_SSL_SESS_CACHE_OFF),\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::null_mut::<core::ffi::t_c_void>(Tuple0)\",\n        ),\n    )"

  in
  ()

let set_mode_release_buffers (self: t_SslContext) =
  let _:i64 =
    Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
      "rust_primitives::hax::failure(\n        \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n        \"openssl3::foreign_mod_3371::v_SSL_CTX_ctrl\",\n    )(\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::non_null::impl_3__as_ptr::<\\n        openssl3::t_ssl_ctx_st,\\n    >(proj_sandwich::implementation::openssl3_impl::tunnel::context::_0(deref(self)))\",\n        ),\n        cast(openssl3::v_SSL_CTRL_MODE),\n        core::convert::f_into(openssl3::v_SSL_MODE_RELEASE_BUFFERS),\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::null_mut::<core::ffi::t_c_void>(Tuple0)\",\n        ),\n    )"

  in
  ()

let get_attached_bio (self: t_Ssl) =
  Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
    "rust_primitives::hax::failure(\"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\"core::ptr::non_null::impl_3__new\")::<openssl3::t_bio_st>(rust_primitives::hax::failure(\"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\"unsafe {\\n        openssl3::foreign_mod_3206::v_SSL_get_rbio(\\n            rust_primitives::hax::failure(\\n                \\\"(AST import) Fatal error: something we considered as impossible occurred! \\\\027[1mPlease report this by submitting an issue on GitHub!\\\\027[0m\\\\nDetails: Pointer, with [cast] being Types.MutToConstPointer\\\",\\n                \\\"{ Types.attributes = [];\\\\n  contents =\\\\n  Types.PointerCoercion {cast = Types.MutToConstPointer;\\\\n    source =\\\\n    { Types.attributes = [];\\\\n      contents =\\\\n      Types.Call {\\\\n        args =\\\\n        [{ Types.attributes = [];\\\\n           contents =\\\\n           Types.Field {\\\\n             field =\\\\n             { Types.index = (0, 392); is_local = true; krate = \\\\\\\"sandwich\\\\\\\";\\\\n               path =\\\\n               [{ Types.data = (Types.TypeNs \\\\\\\"implementation\\\\\\\");\\\\n                  disambiguator = 0 };\\\\n                 { Types.data = (Types.TypeNs \\\\\\\"openssl3_impl\\\\\\\");\\\\n                   disambiguator = 0 };\\\\n                 { Types.data = (Types.TypeNs \\\\\\\"tunnel\\\\\\\"); disambiguator = 0 };\\\\n                 { Types.data = (Types.TypeNs \\\\\\\"ssl\\\\\\\"); disambiguator = 0 };\\\\n                 { Types.data = (Types.TypeNs \\\\\\\"Ssl\\\\\\\"); disambiguator = 0 };\\\\n                 { Types.data = (Types.ValueNs \\\\\\\"0\\\\\\\"); disambiguator = 0 }]\\\\n               };\\\\n             lhs =\\\\n             { Types.attributes = [];\\\\n               contents =\\\\n               Types.Deref {\\\\n                 arg =\\\\n                 { Types.attributes = [];\\\\n                   contents =\\\\n                   Types.VarRef {\\\\n                     id =\\\\n                     { Types.id =\\\\n                       { Types.local_id = \\\\\\\"2\\\\\\\";\\\\n                         owner =\\\\n                         { Types.index = (0, 413); is_local = true;\\\\n                           krate = \\\\\\\"sandwich\\\\\\\";\\\\n                           path =\\\\n                           [{ Types.data = (Types.TypeNs \\\\\\\"implementation\\\\\\\");\\\\n                              disambiguator = 0 };\\\\n                             { Types.data = (Types.TypeNs \\\\\\\"openssl3_impl\\\\\\\");\\\\n                               disambiguator = 0 };\\\\n                             { Types.data = (Types.TypeNs \\\\\\\"tunnel\\\\\\\");\\\\n                               disambiguator = 0 };\\\\n                             { Types.data = (Types.TypeNs \\\\\\\"ssl\\\\\\\");\\\\n                               disambiguator = 0 };\\\\n                             { Types.data = Types.Impl; disambiguator = 2 };\\\\n                             { Types.data =\\\\n                               (Types.ValueNs \\\\\\\"get_attached_bio\\\\\\\");\\\\n                               disambiguator = 0 }\\\\n                             ]\\\\n                           }\\\\n                         };\\\\n                       name = \\\\\\\"self\\\\\\\" }};\\\\n                   hir_id = None;\\\\n                   span =\\\\n                   { Types.filename =\\\\n                     (Types.Real\\\\n                        (Types.LocalPath\\\\n                           \\\\\\\"rust/implementation/openssl3_impl/tunnel/ssl.rs\\\\\\\"));\\\\n                     hi = { Types.col = \\\\\\\"57\\\\\\\"; line = \\\\\\\"141\\\\\\\" };\\\\n                     lo = { Types.col = \\\\\\\"53\\\\\\\"; line = \\\\\\\"141\\\\\\\" } };\\\\n                   ty =\\\\n                   { Types.kind =\\\\n                     (Types.Ref\\\\n                        ({ Types.kind = Types.ReErased },\\\\n                         { Types.kind =\\\\n                           Types.Adt {\\\\n                             def_id =\\\\n                             { Types.index = (0, 390); is_local = true;\\\\n                               krate = \\\\\\\"sandwich\\\\\\\";\\\\n                               path =\\\\n                               [{ Types.data =\\\\n                                  (Types.TypeNs \\\\\\\"implementation\\\\\\\");\\\\n                                  disambiguator = 0 };\\\\n                                 { Types.data =\\\\n                                   (Types.TypeNs \\\\\\\"openssl3_impl\\\\\\\");\\\\n                                   disambiguator = 0 };\\\\n                                 { Types.data = (Types.TypeNs \\\\\\\"tunnel\\\\\\\");\\\\n                                   disambiguator = 0 };\\\\n                                 { Types.data = (Types.TypeNs \\\\\\\"ssl\\\\\\\");\\\\n                                   disambiguator = 0 };\\\\n                                 { Types.data = (Types.TypeNs \\\\\\\"Ssl\\\\\\\");\\\\n                                   disambiguator = 0 }\\\\n                                 ]\\\\n                               };\\\\n                             generic_args = []; trait_refs = []}\\\\n                           },\\\\n                         false))\\\\n                     }\\\\n                   }};\\\\n               hir_id = (Some (\\\\\\\"413\\\\\\\", \\\\\\\"16\\\\\\\"));\\\\n               span =\\\\n               { Types.filename =\\\\n                 (Types.Real\\\\n                    (Types.LocalPath\\\\n                       \\\\\\\"rust/implementation/openssl3_impl/tunnel/ssl.rs\\\\\\\"));\\\\n                 hi = { Types.col = \\\\\\\"57\\\\\\\"; line = \\\\\\\"141\\\\\\\" };\\\\n                 lo = { Types.col = \\\\\\\"53\\\\\\\"; line = \\\\\\\"141\\\\\\\" } };\\\\n               ty =\\\\n               { Types.kind =\\\\n                 Types.Adt {\\\\n                   def_id =\\\\n                   { Types.index = (0, 390); is_local = true;\\\\n                     krate = \\\\\\\"sandwich\\\\\\\";\\\\n                     path =\\\\n                     [{ Types.data = (Types.TypeNs \\\\\\\"implementation\\\\\\\");\\\\n                        disambiguator = 0 };\\\\n                       { Types.data = (Types.TypeNs \\\\\\\"openssl3_impl\\\\\\\");\\\\n                         disambiguator = 0 };\\\\n                       { Types.data = (Types.TypeNs \\\\\\\"tunnel\\\\\\\");\\\\n                         disambiguator = 0 };\\\\n                       { Types.data = (Types.TypeNs \\\\\\\"ssl\\\\\\\"); disambiguator = 0\\\\n                         };\\\\n                       { Types.data = (Types.TypeNs \\\\\\\"Ssl\\\\\\\"); disambiguator = 0\\\\n                         }\\\\n                       ]\\\\n                     };\\\\n                   generic_args = []; trait_refs = []}\\\\n                 }\\\\n               }};\\\\n           hir_id = (Some (\\\\\\\"413\\\\\\\", \\\\\\\"15\\\\\\\"));\\\\n           span =\\\\n           { Types.filename =\\\\n             (Types.Real\\\\n                (Types.LocalPath\\\\n                   \\\\\\\"rust/implementation/openssl3_impl/tunnel/ssl.rs\\\\\\\"));\\\\n             hi = { Types.col = \\\\\\\"59\\\\\\\"; line = \\\\\\\"141\\\\\\\" };\\\\n             lo = { Types.col = \\\\\\\"53\\\\\\\"; line = \\\\\\\"141\\\\\\\" } };\\\\n           ty =\\\\n           { Types.kind =\\\\n             Types.Adt {\\\\n               def_id =\\\\n               { Types.index = (2, 2358); is_local = false; krate = \\\\\\\"core\\\\\\\";\\\\n                 path =\\\\n                 [{ Types.data = (Types.TypeNs \\\\\\\"ptr\\\\\\\"); disambiguator = 0 };\\\\n                   { Types.data = (Types.TypeNs \\\\\\\"non_null\\\\\\\");\\\\n                     disambiguator = 0 };\\\\n                   { Types.data = (Types.TypeNs \\\\\\\"NonNull\\\\\\\"); disambiguator = 0\\\\n                     }\\\\n                   ]\\\\n                 };\\\\n               generic_args =\\\\n               [(Types.Type\\\\n                   { Types.kind =\\\\n                     Types.Adt {\\\\n                       def_id =\\\\n                       { Types.index = (27, 21394); is_local = false;\\\\n                         krate = \\\\\\\"openssl3\\\\\\\";\\\\n                         path =\\\\n                         [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\");\\\\n                            disambiguator = 0 }\\\\n                           ]\\\\n                         };\\\\n                       generic_args = []; trait_refs = []}\\\\n                     })\\\\n                 ];\\\\n               trait_refs = []}\\\\n             }\\\\n           }\\\\n          ];\\\\n        bounds_impls = [];\\\\n        fn_span =\\\\n        { Types.filename =\\\\n          (Types.Real\\\\n             (Types.LocalPath\\\\n                \\\\\\\"rust/implementation/openssl3_impl/tunnel/ssl.rs\\\\\\\"));\\\\n          hi = { Types.col = \\\\\\\"68\\\\\\\"; line = \\\\\\\"141\\\\\\\" };\\\\n          lo = { Types.col = \\\\\\\"60\\\\\\\"; line = \\\\\\\"141\\\\\\\" } };\\\\n        from_hir_call = true;\\\\n        fun' =\\\\n        { Types.attributes = [];\\\\n          contents =\\\\n          Types.GlobalName {\\\\n            id =\\\\n            { Types.index = (2, 2381); is_local = false; krate = \\\\\\\"core\\\\\\\";\\\\n              path =\\\\n              [{ Types.data = (Types.TypeNs \\\\\\\"ptr\\\\\\\"); disambiguator = 0 };\\\\n                { Types.data = (Types.TypeNs \\\\\\\"non_null\\\\\\\"); disambiguator = 0 };\\\\n                { Types.data = Types.Impl; disambiguator = 3 };\\\\n                { Types.data = (Types.ValueNs \\\\\\\"as_ptr\\\\\\\"); disambiguator = 0 }]\\\\n              }};\\\\n          hir_id = None;\\\\n          span =\\\\n          { Types.filename =\\\\n            (Types.Real\\\\n               (Types.LocalPath\\\\n                  \\\\\\\"rust/implementation/openssl3_impl/tunnel/ssl.rs\\\\\\\"));\\\\n            hi = { Types.col = \\\\\\\"66\\\\\\\"; line = \\\\\\\"141\\\\\\\" };\\\\n            lo = { Types.col = \\\\\\\"60\\\\\\\"; line = \\\\\\\"141\\\\\\\" } };\\\\n          ty =\\\\n          { Types.kind =\\\\n            (Types.Arrow\\\\n               { Types.bound_vars = [];\\\\n                 value =\\\\n                 { Types.abi = Types.Abi {todo = \\\\\\\"Rust\\\\\\\"}; c_variadic = false;\\\\n                   inputs =\\\\n                   [{ Types.kind =\\\\n                      Types.Adt {\\\\n                        def_id =\\\\n                        { Types.index = (2, 2358); is_local = false;\\\\n                          krate = \\\\\\\"core\\\\\\\";\\\\n                          path =\\\\n                          [{ Types.data = (Types.TypeNs \\\\\\\"ptr\\\\\\\");\\\\n                             disambiguator = 0 };\\\\n                            { Types.data = (Types.TypeNs \\\\\\\"non_null\\\\\\\");\\\\n                              disambiguator = 0 };\\\\n                            { Types.data = (Types.TypeNs \\\\\\\"NonNull\\\\\\\");\\\\n                              disambiguator = 0 }\\\\n                            ]\\\\n                          };\\\\n                        generic_args =\\\\n                        [(Types.Type\\\\n                            { Types.kind =\\\\n                              Types.Adt {\\\\n                                def_id =\\\\n                                { Types.index = (27, 21394);\\\\n                                  is_local = false; krate = \\\\\\\"openssl3\\\\\\\";\\\\n                                  path =\\\\n                                  [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\");\\\\n                                     disambiguator = 0 }\\\\n                                    ]\\\\n                                  };\\\\n                                generic_args = []; trait_refs = []}\\\\n                              })\\\\n                          ];\\\\n                        trait_refs = []}\\\\n                      }\\\\n                     ];\\\\n                   output =\\\\n                   { Types.kind =\\\\n                     (Types.RawPtr\\\\n                        ({ Types.kind =\\\\n                           Types.Adt {\\\\n                             def_id =\\\\n                             { Types.index = (27, 21394); is_local = false;\\\\n                               krate = \\\\\\\"openssl3\\\\\\\";\\\\n                               path =\\\\n                               [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\");\\\\n                                  disambiguator = 0 }\\\\n                                 ]\\\\n                               };\\\\n                             generic_args = []; trait_refs = []}\\\\n                           },\\\\n                         true))\\\\n                     };\\\\n                   safety = Types.Safe }\\\\n                 })\\\\n            }\\\\n          };\\\\n        generic_args =\\\\n        [(Types.Type\\\\n            { Types.kind =\\\\n              Types.Adt {\\\\n                def_id =\\\\n                { Types.index = (27, 21394); is_local = false;\\\\n                  krate = \\\\\\\"openssl3\\\\\\\";\\\\n                  path =\\\\n                  [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\"); disambiguator = 0\\\\n                     }\\\\n                    ]\\\\n                  };\\\\n                generic_args = []; trait_refs = []}\\\\n              })\\\\n          ];\\\\n        trait = None;\\\\n        ty =\\\\n        { Types.kind =\\\\n          (Types.Arrow\\\\n             { Types.bound_vars = [];\\\\n               value =\\\\n               { Types.abi = Types.Abi {todo = \\\\\\\"Rust\\\\\\\"}; c_variadic = false;\\\\n                 inputs =\\\\n                 [{ Types.kind =\\\\n                    Types.Adt {\\\\n                      def_id =\\\\n                      { Types.index = (2, 2358); is_local = false;\\\\n                        krate = \\\\\\\"core\\\\\\\";\\\\n                        path =\\\\n                        [{ Types.data = (Types.TypeNs \\\\\\\"ptr\\\\\\\");\\\\n                           disambiguator = 0 };\\\\n                          { Types.data = (Types.TypeNs \\\\\\\"non_null\\\\\\\");\\\\n                            disambiguator = 0 };\\\\n                          { Types.data = (Types.TypeNs \\\\\\\"NonNull\\\\\\\");\\\\n                            disambiguator = 0 }\\\\n                          ]\\\\n                        };\\\\n                      generic_args =\\\\n                      [(Types.Type\\\\n                          { Types.kind =\\\\n                            Types.Adt {\\\\n                              def_id =\\\\n                              { Types.index = (27, 21394); is_local = false;\\\\n                                krate = \\\\\\\"openssl3\\\\\\\";\\\\n                                path =\\\\n                                [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\");\\\\n                                   disambiguator = 0 }\\\\n                                  ]\\\\n                                };\\\\n                              generic_args = []; trait_refs = []}\\\\n                            })\\\\n                        ];\\\\n                      trait_refs = []}\\\\n                    }\\\\n                   ];\\\\n                 output =\\\\n                 { Types.kind =\\\\n                   (Types.RawPtr\\\\n                      ({ Types.kind =\\\\n                         Types.Adt {\\\\n                           def_id =\\\\n                           { Types.index = (27, 21394); is_local = false;\\\\n                             krate = \\\\\\\"openssl3\\\\\\\";\\\\n                             path =\\\\n                             [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\");\\\\n                                disambiguator = 0 }\\\\n                               ]\\\\n                             };\\\\n                           generic_args = []; trait_refs = []}\\\\n                         },\\\\n                       true))\\\\n                   };\\\\n                 safety = Types.Safe }\\\\n               })\\\\n          }};\\\\n      hir_id = None;\\\\n      span =\\\\n      { Types.filename =\\\\n        (Types.Real\\\\n           (Types.LocalPath \\\\\\\"rust/implementation/openssl3_impl/tunnel/ssl.rs\\\\\\\"));\\\\n        hi = { Types.col = \\\\\\\"68\\\\\\\"; line = \\\\\\\"141\\\\\\\" };\\\\n        lo = { Types.col = \\\\\\\"53\\\\\\\"; line = \\\\\\\"141\\\\\\\" } };\\\\n      ty =\\\\n      { Types.kind =\\\\n        (Types.RawPtr\\\\n           ({ Types.kind =\\\\n              Types.Adt {\\\\n                def_id =\\\\n                { Types.index = (27, 21394); is_local = false;\\\\n                  krate = \\\\\\\"openssl3\\\\\\\";\\\\n                  path =\\\\n                  [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\"); disambiguator = 0\\\\n                     }\\\\n                    ]\\\\n                  };\\\\n                generic_args = []; trait_refs = []}\\\\n              },\\\\n            true))\\\\n        }\\\\n      }};\\\\n  hir_id = (Some (\\\\\\\"413\\\\\\\", \\\\\\\"13\\\\\\\"));\\\\n  span =\\\\n  { Types.filename =\\\\n    (Types.Real\\\\n       (Types.LocalPath \\\\\\\"rust/implementation/openssl3_impl/tunnel/ssl.rs\\\\\\\"));\\\\n    hi = { Types.col = \\\\\\\"68\\\\\\\"; line = \\\\\\\"141\\\\\\\" };\\\\n    lo = { Types.col = \\\\\\\"53\\\\\\\"; line = \\\\\\\"141\\\\\\\" } };\\\\n  ty =\\\\n  { Types.kind =\\\\n    (Types.RawPtr\\\\n       ({ Types.kind =\\\\n          Types.Adt {\\\\n            def_id =\\\\n            { Types.index = (27, 21394); is_local = false;\\\\n              krate = \\\\\\\"openssl3\\\\\\\";\\\\n              path =\\\\n              [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\"); disambiguator = 0 }] };\\\\n            generic_args = []; trait_refs = []}\\\\n          },\\\\n        false))\\\\n    }\\\\n  }\\\",\\n            ),\\n        )\\n    }\"))"

let get_extra_data_ptr
      (#v_T #impl_765196419_: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()] i2: Core.Convert.t_Into impl_765196419_ i32)
      (self: t_Ssl)
      (extra_data_index: impl_765196419_)
     =
  Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
    "rust_primitives::hax::failure(\"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\"core::ptr::non_null::impl_3__new\")::<T>(rust_primitives::hax::failure(\"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\"core::ptr::mut_ptr::impl__cast::<\\n        core::ffi::t_c_void,\\n        T,\\n    >(unsafe {\\n        openssl3::foreign_mod_3461::v_SSL_get_ex_data(\\n            rust_primitives::hax::failure(\\n                \\\"(AST import) Fatal error: something we considered as impossible occurred! \\\\027[1mPlease report this by submitting an issue on GitHub!\\\\027[0m\\\\nDetails: Pointer, with [cast] being Types.MutToConstPointer\\\",\\n                \\\"{ Types.attributes = [];\\\\n  contents =\\\\n  Types.PointerCoercion {cast = Types.MutToConstPointer;\\\\n    source =\\\\n    { Types.attributes = [];\\\\n      contents =\\\\n      Types.Call {\\\\n        args =\\\\n        [{ Types.attributes = [];\\\\n           contents =\\\\n           Types.Field {\\\\n             field =\\\\n             { Types.index = (0, 392); is_local = true; krate = \\\\\\\"sandwich\\\\\\\";\\\\n               path =\\\\n               [{ Types.data = (Types.TypeNs \\\\\\\"implementation\\\\\\\");\\\\n                  disambiguator = 0 };\\\\n                 { Types.data = (Types.TypeNs \\\\\\\"openssl3_impl\\\\\\\");\\\\n                   disambiguator = 0 };\\\\n                 { Types.data = (Types.TypeNs \\\\\\\"tunnel\\\\\\\"); disambiguator = 0 };\\\\n                 { Types.data = (Types.TypeNs \\\\\\\"ssl\\\\\\\"); disambiguator = 0 };\\\\n                 { Types.data = (Types.TypeNs \\\\\\\"Ssl\\\\\\\"); disambiguator = 0 };\\\\n                 { Types.data = (Types.ValueNs \\\\\\\"0\\\\\\\"); disambiguator = 0 }]\\\\n               };\\\\n             lhs =\\\\n             { Types.attributes = [];\\\\n               contents =\\\\n               Types.Deref {\\\\n                 arg =\\\\n                 { Types.attributes = [];\\\\n                   contents =\\\\n                   Types.VarRef {\\\\n                     id =\\\\n                     { Types.id =\\\\n                       { Types.local_id = \\\\\\\"2\\\\\\\";\\\\n                         owner =\\\\n                         { Types.index = (0, 398); is_local = true;\\\\n                           krate = \\\\\\\"sandwich\\\\\\\";\\\\n                           path =\\\\n                           [{ Types.data = (Types.TypeNs \\\\\\\"implementation\\\\\\\");\\\\n                              disambiguator = 0 };\\\\n                             { Types.data = (Types.TypeNs \\\\\\\"openssl3_impl\\\\\\\");\\\\n                               disambiguator = 0 };\\\\n                             { Types.data = (Types.TypeNs \\\\\\\"tunnel\\\\\\\");\\\\n                               disambiguator = 0 };\\\\n                             { Types.data = (Types.TypeNs \\\\\\\"ssl\\\\\\\");\\\\n                               disambiguator = 0 };\\\\n                             { Types.data = Types.Impl; disambiguator = 2 };\\\\n                             { Types.data =\\\\n                               (Types.ValueNs \\\\\\\"get_extra_data_ptr\\\\\\\");\\\\n                               disambiguator = 0 }\\\\n                             ]\\\\n                           }\\\\n                         };\\\\n                       name = \\\\\\\"self\\\\\\\" }};\\\\n                   hir_id = None;\\\\n                   span =\\\\n                   { Types.filename =\\\\n                     (Types.Real\\\\n                        (Types.LocalPath\\\\n                           \\\\\\\"rust/implementation/openssl3_impl/tunnel/ssl.rs\\\\\\\"));\\\\n                     hi = { Types.col = \\\\\\\"51\\\\\\\"; line = \\\\\\\"45\\\\\\\" };\\\\n                     lo = { Types.col = \\\\\\\"47\\\\\\\"; line = \\\\\\\"45\\\\\\\" } };\\\\n                   ty =\\\\n                   { Types.kind =\\\\n                     (Types.Ref\\\\n                        ({ Types.kind = Types.ReErased },\\\\n                         { Types.kind =\\\\n                           Types.Adt {\\\\n                             def_id =\\\\n                             { Types.index = (0, 390); is_local = true;\\\\n                               krate = \\\\\\\"sandwich\\\\\\\";\\\\n                               path =\\\\n                               [{ Types.data =\\\\n                                  (Types.TypeNs \\\\\\\"implementation\\\\\\\");\\\\n                                  disambiguator = 0 };\\\\n                                 { Types.data =\\\\n                                   (Types.TypeNs \\\\\\\"openssl3_impl\\\\\\\");\\\\n                                   disambiguator = 0 };\\\\n                                 { Types.data = (Types.TypeNs \\\\\\\"tunnel\\\\\\\");\\\\n                                   disambiguator = 0 };\\\\n                                 { Types.data = (Types.TypeNs \\\\\\\"ssl\\\\\\\");\\\\n                                   disambiguator = 0 };\\\\n                                 { Types.data = (Types.TypeNs \\\\\\\"Ssl\\\\\\\");\\\\n                                   disambiguator = 0 }\\\\n                                 ]\\\\n                               };\\\\n                             generic_args = []; trait_refs = []}\\\\n                           },\\\\n                         false))\\\\n                     }\\\\n                   }};\\\\n               hir_id = (Some (\\\\\\\"398\\\\\\\", \\\\\\\"22\\\\\\\"));\\\\n               span =\\\\n               { Types.filename =\\\\n                 (Types.Real\\\\n                    (Types.LocalPath\\\\n                       \\\\\\\"rust/implementation/openssl3_impl/tunnel/ssl.rs\\\\\\\"));\\\\n                 hi = { Types.col = \\\\\\\"51\\\\\\\"; line = \\\\\\\"45\\\\\\\" };\\\\n                 lo = { Types.col = \\\\\\\"47\\\\\\\"; line = \\\\\\\"45\\\\\\\" } };\\\\n               ty =\\\\n               { Types.kind =\\\\n                 Types.Adt {\\\\n                   def_id =\\\\n                   { Types.index = (0, 390); is_local = true;\\\\n                     krate = \\\\\\\"sandwich\\\\\\\";\\\\n                     path =\\\\n                     [{ Types.data = (Types.TypeNs \\\\\\\"implementation\\\\\\\");\\\\n                        disambiguator = 0 };\\\\n                       { Types.data = (Types.TypeNs \\\\\\\"openssl3_impl\\\\\\\");\\\\n                         disambiguator = 0 };\\\\n                       { Types.data = (Types.TypeNs \\\\\\\"tunnel\\\\\\\");\\\\n                         disambiguator = 0 };\\\\n                       { Types.data = (Types.TypeNs \\\\\\\"ssl\\\\\\\"); disambiguator = 0\\\\n                         };\\\\n                       { Types.data = (Types.TypeNs \\\\\\\"Ssl\\\\\\\"); disambiguator = 0\\\\n                         }\\\\n                       ]\\\\n                     };\\\\n                   generic_args = []; trait_refs = []}\\\\n                 }\\\\n               }};\\\\n           hir_id = (Some (\\\\\\\"398\\\\\\\", \\\\\\\"21\\\\\\\"));\\\\n           span =\\\\n           { Types.filename =\\\\n             (Types.Real\\\\n                (Types.LocalPath\\\\n                   \\\\\\\"rust/implementation/openssl3_impl/tunnel/ssl.rs\\\\\\\"));\\\\n             hi = { Types.col = \\\\\\\"53\\\\\\\"; line = \\\\\\\"45\\\\\\\" };\\\\n             lo = { Types.col = \\\\\\\"47\\\\\\\"; line = \\\\\\\"45\\\\\\\" } };\\\\n           ty =\\\\n           { Types.kind =\\\\n             Types.Adt {\\\\n               def_id =\\\\n               { Types.index = (2, 2358); is_local = false; krate = \\\\\\\"core\\\\\\\";\\\\n                 path =\\\\n                 [{ Types.data = (Types.TypeNs \\\\\\\"ptr\\\\\\\"); disambiguator = 0 };\\\\n                   { Types.data = (Types.TypeNs \\\\\\\"non_null\\\\\\\");\\\\n                     disambiguator = 0 };\\\\n                   { Types.data = (Types.TypeNs \\\\\\\"NonNull\\\\\\\"); disambiguator = 0\\\\n                     }\\\\n                   ]\\\\n                 };\\\\n               generic_args =\\\\n               [(Types.Type\\\\n                   { Types.kind =\\\\n                     Types.Adt {\\\\n                       def_id =\\\\n                       { Types.index = (27, 21394); is_local = false;\\\\n                         krate = \\\\\\\"openssl3\\\\\\\";\\\\n                         path =\\\\n                         [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\");\\\\n                            disambiguator = 0 }\\\\n                           ]\\\\n                         };\\\\n                       generic_args = []; trait_refs = []}\\\\n                     })\\\\n                 ];\\\\n               trait_refs = []}\\\\n             }\\\\n           }\\\\n          ];\\\\n        bounds_impls = [];\\\\n        fn_span =\\\\n        { Types.filename =\\\\n          (Types.Real\\\\n             (Types.LocalPath\\\\n                \\\\\\\"rust/implementation/openssl3_impl/tunnel/ssl.rs\\\\\\\"));\\\\n          hi = { Types.col = \\\\\\\"62\\\\\\\"; line = \\\\\\\"45\\\\\\\" };\\\\n          lo = { Types.col = \\\\\\\"54\\\\\\\"; line = \\\\\\\"45\\\\\\\" } };\\\\n        from_hir_call = true;\\\\n        fun' =\\\\n        { Types.attributes = [];\\\\n          contents =\\\\n          Types.GlobalName {\\\\n            id =\\\\n            { Types.index = (2, 2381); is_local = false; krate = \\\\\\\"core\\\\\\\";\\\\n              path =\\\\n              [{ Types.data = (Types.TypeNs \\\\\\\"ptr\\\\\\\"); disambiguator = 0 };\\\\n                { Types.data = (Types.TypeNs \\\\\\\"non_null\\\\\\\"); disambiguator = 0 };\\\\n                { Types.data = Types.Impl; disambiguator = 3 };\\\\n                { Types.data = (Types.ValueNs \\\\\\\"as_ptr\\\\\\\"); disambiguator = 0 }]\\\\n              }};\\\\n          hir_id = None;\\\\n          span =\\\\n          { Types.filename =\\\\n            (Types.Real\\\\n               (Types.LocalPath\\\\n                  \\\\\\\"rust/implementation/openssl3_impl/tunnel/ssl.rs\\\\\\\"));\\\\n            hi = { Types.col = \\\\\\\"60\\\\\\\"; line = \\\\\\\"45\\\\\\\" };\\\\n            lo = { Types.col = \\\\\\\"54\\\\\\\"; line = \\\\\\\"45\\\\\\\" } };\\\\n          ty =\\\\n          { Types.kind =\\\\n            (Types.Arrow\\\\n               { Types.bound_vars = [];\\\\n                 value =\\\\n                 { Types.abi = Types.Abi {todo = \\\\\\\"Rust\\\\\\\"}; c_variadic = false;\\\\n                   inputs =\\\\n                   [{ Types.kind =\\\\n                      Types.Adt {\\\\n                        def_id =\\\\n                        { Types.index = (2, 2358); is_local = false;\\\\n                          krate = \\\\\\\"core\\\\\\\";\\\\n                          path =\\\\n                          [{ Types.data = (Types.TypeNs \\\\\\\"ptr\\\\\\\");\\\\n                             disambiguator = 0 };\\\\n                            { Types.data = (Types.TypeNs \\\\\\\"non_null\\\\\\\");\\\\n                              disambiguator = 0 };\\\\n                            { Types.data = (Types.TypeNs \\\\\\\"NonNull\\\\\\\");\\\\n                              disambiguator = 0 }\\\\n                            ]\\\\n                          };\\\\n                        generic_args =\\\\n                        [(Types.Type\\\\n                            { Types.kind =\\\\n                              Types.Adt {\\\\n                                def_id =\\\\n                                { Types.index = (27, 21394);\\\\n                                  is_local = false; krate = \\\\\\\"openssl3\\\\\\\";\\\\n                                  path =\\\\n                                  [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\");\\\\n                                     disambiguator = 0 }\\\\n                                    ]\\\\n                                  };\\\\n                                generic_args = []; trait_refs = []}\\\\n                              })\\\\n                          ];\\\\n                        trait_refs = []}\\\\n                      }\\\\n                     ];\\\\n                   output =\\\\n                   { Types.kind =\\\\n                     (Types.RawPtr\\\\n                        ({ Types.kind =\\\\n                           Types.Adt {\\\\n                             def_id =\\\\n                             { Types.index = (27, 21394); is_local = false;\\\\n                               krate = \\\\\\\"openssl3\\\\\\\";\\\\n                               path =\\\\n                               [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\");\\\\n                                  disambiguator = 0 }\\\\n                                 ]\\\\n                               };\\\\n                             generic_args = []; trait_refs = []}\\\\n                           },\\\\n                         true))\\\\n                     };\\\\n                   safety = Types.Safe }\\\\n                 })\\\\n            }\\\\n          };\\\\n        generic_args =\\\\n        [(Types.Type\\\\n            { Types.kind =\\\\n              Types.Adt {\\\\n                def_id =\\\\n                { Types.index = (27, 21394); is_local = false;\\\\n                  krate = \\\\\\\"openssl3\\\\\\\";\\\\n                  path =\\\\n                  [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\"); disambiguator = 0\\\\n                     }\\\\n                    ]\\\\n                  };\\\\n                generic_args = []; trait_refs = []}\\\\n              })\\\\n          ];\\\\n        trait = None;\\\\n        ty =\\\\n        { Types.kind =\\\\n          (Types.Arrow\\\\n             { Types.bound_vars = [];\\\\n               value =\\\\n               { Types.abi = Types.Abi {todo = \\\\\\\"Rust\\\\\\\"}; c_variadic = false;\\\\n                 inputs =\\\\n                 [{ Types.kind =\\\\n                    Types.Adt {\\\\n                      def_id =\\\\n                      { Types.index = (2, 2358); is_local = false;\\\\n                        krate = \\\\\\\"core\\\\\\\";\\\\n                        path =\\\\n                        [{ Types.data = (Types.TypeNs \\\\\\\"ptr\\\\\\\");\\\\n                           disambiguator = 0 };\\\\n                          { Types.data = (Types.TypeNs \\\\\\\"non_null\\\\\\\");\\\\n                            disambiguator = 0 };\\\\n                          { Types.data = (Types.TypeNs \\\\\\\"NonNull\\\\\\\");\\\\n                            disambiguator = 0 }\\\\n                          ]\\\\n                        };\\\\n                      generic_args =\\\\n                      [(Types.Type\\\\n                          { Types.kind =\\\\n                            Types.Adt {\\\\n                              def_id =\\\\n                              { Types.index = (27, 21394); is_local = false;\\\\n                                krate = \\\\\\\"openssl3\\\\\\\";\\\\n                                path =\\\\n                                [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\");\\\\n                                   disambiguator = 0 }\\\\n                                  ]\\\\n                                };\\\\n                              generic_args = []; trait_refs = []}\\\\n                            })\\\\n                        ];\\\\n                      trait_refs = []}\\\\n                    }\\\\n                   ];\\\\n                 output =\\\\n                 { Types.kind =\\\\n                   (Types.RawPtr\\\\n                      ({ Types.kind =\\\\n                         Types.Adt {\\\\n                           def_id =\\\\n                           { Types.index = (27, 21394); is_local = false;\\\\n                             krate = \\\\\\\"openssl3\\\\\\\";\\\\n                             path =\\\\n                             [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\");\\\\n                                disambiguator = 0 }\\\\n                               ]\\\\n                             };\\\\n                           generic_args = []; trait_refs = []}\\\\n                         },\\\\n                       true))\\\\n                   };\\\\n                 safety = Types.Safe }\\\\n               })\\\\n          }};\\\\n      hir_id = None;\\\\n      span =\\\\n      { Types.filename =\\\\n        (Types.Real\\\\n           (Types.LocalPath \\\\\\\"rust/implementation/openssl3_impl/tunnel/ssl.rs\\\\\\\"));\\\\n        hi = { Types.col = \\\\\\\"62\\\\\\\"; line = \\\\\\\"45\\\\\\\" };\\\\n        lo = { Types.col = \\\\\\\"47\\\\\\\"; line = \\\\\\\"45\\\\\\\" } };\\\\n      ty =\\\\n      { Types.kind =\\\\n        (Types.RawPtr\\\\n           ({ Types.kind =\\\\n              Types.Adt {\\\\n                def_id =\\\\n                { Types.index = (27, 21394); is_local = false;\\\\n                  krate = \\\\\\\"openssl3\\\\\\\";\\\\n                  path =\\\\n                  [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\"); disambiguator = 0\\\\n                     }\\\\n                    ]\\\\n                  };\\\\n                generic_args = []; trait_refs = []}\\\\n              },\\\\n            true))\\\\n        }\\\\n      }};\\\\n  hir_id = (Some (\\\\\\\"398\\\\\\\", \\\\\\\"19\\\\\\\"));\\\\n  span =\\\\n  { Types.filename =\\\\n    (Types.Real\\\\n       (Types.LocalPath \\\\\\\"rust/implementation/openssl3_impl/tunnel/ssl.rs\\\\\\\"));\\\\n    hi = { Types.col = \\\\\\\"62\\\\\\\"; line = \\\\\\\"45\\\\\\\" };\\\\n    lo = { Types.col = \\\\\\\"47\\\\\\\"; line = \\\\\\\"45\\\\\\\" } };\\\\n  ty =\\\\n  { Types.kind =\\\\n    (Types.RawPtr\\\\n       ({ Types.kind =\\\\n          Types.Adt {\\\\n            def_id =\\\\n            { Types.index = (27, 21394); is_local = false;\\\\n              krate = \\\\\\\"openssl3\\\\\\\";\\\\n              path =\\\\n              [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\"); disambiguator = 0 }] };\\\\n            generic_args = []; trait_refs = []}\\\\n          },\\\\n        false))\\\\n    }\\\\n  }\\\",\\n            ),\\n            core::convert::f_into(extra_data_index),\\n        )\\n    })\"))"

let get_extra_data_ref
      (#v_T #impl_765196419_: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()] i5: Core.Convert.t_Into impl_765196419_ i32)
      (self: t_Ssl)
      (extra_data_index: impl_765196419_)
     =
  Core.Option.impl__map #(Core.Ptr.Non_null.t_NonNull v_T)
    #v_T
    (get_extra_data_ptr #v_T #impl_765196419_ self extra_data_index
      <:
      Core.Option.t_Option (Core.Ptr.Non_null.t_NonNull v_T))
    (fun ptr ->
        let ptr:Core.Ptr.Non_null.t_NonNull v_T = ptr in
        Core.Ptr.Non_null.impl_3__as_ref #v_T ptr <: v_T)

let is_shutdown (self: t_Ssl) =
  let shutdown_state:u32 =
    cast (Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
          "rust_primitives::hax::failure(\n        \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n        \"openssl3::foreign_mod_3434::v_SSL_get_shutdown\",\n    )(\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"rust_primitives::hax::failure(\\n        \\\"(AST import) Fatal error: something we considered as impossible occurred! \\\\027[1mPlease report this by submitting an issue on GitHub!\\\\027[0m\\\\nDetails: Pointer, with [cast] being Types.MutToConstPointer\\\",\\n        \\\"{ Types.attributes = [];\\\\n  contents =\\\\n  Types.PointerCoercion {cast = Types.MutToConstPointer;\\\\n    source =\\\\n    { Types.attributes = [];\\\\n      contents =\\\\n      Types.Call {\\\\n        args =\\\\n        [{ Types.attributes = [];\\\\n           contents =\\\\n           Types.Field {\\\\n             field =\\\\n             { Types.index = (0, 392); is_local = true; krate = \\\\\\\"sandwich\\\\\\\";\\\\n               path =\\\\n               [{ Types.data = (Types.TypeNs \\\\\\\"implementation\\\\\\\");\\\\n                  disambiguator = 0 };\\\\n                 { Types.data = (Types.TypeNs \\\\\\\"openssl3_impl\\\\\\\");\\\\n                   disambiguator = 0 };\\\\n                 { Types.data = (Types.TypeNs \\\\\\\"tunnel\\\\\\\"); disambiguator = 0 };\\\\n                 { Types.data = (Types.TypeNs \\\\\\\"ssl\\\\\\\"); disambiguator = 0 };\\\\n                 { Types.data = (Types.TypeNs \\\\\\\"Ssl\\\\\\\"); disambiguator = 0 };\\\\n                 { Types.data = (Types.ValueNs \\\\\\\"0\\\\\\\"); disambiguator = 0 }]\\\\n               };\\\\n             lhs =\\\\n             { Types.attributes = [];\\\\n               contents =\\\\n               Types.Deref {\\\\n                 arg =\\\\n                 { Types.attributes = [];\\\\n                   contents =\\\\n                   Types.VarRef {\\\\n                     id =\\\\n                     { Types.id =\\\\n                       { Types.local_id = \\\\\\\"2\\\\\\\";\\\\n                         owner =\\\\n                         { Types.index = (0, 415); is_local = true;\\\\n                           krate = \\\\\\\"sandwich\\\\\\\";\\\\n                           path =\\\\n                           [{ Types.data = (Types.TypeNs \\\\\\\"implementation\\\\\\\");\\\\n                              disambiguator = 0 };\\\\n                             { Types.data = (Types.TypeNs \\\\\\\"openssl3_impl\\\\\\\");\\\\n                               disambiguator = 0 };\\\\n                             { Types.data = (Types.TypeNs \\\\\\\"tunnel\\\\\\\");\\\\n                               disambiguator = 0 };\\\\n                             { Types.data = (Types.TypeNs \\\\\\\"ssl\\\\\\\");\\\\n                               disambiguator = 0 };\\\\n                             { Types.data = Types.Impl; disambiguator = 2 };\\\\n                             { Types.data = (Types.ValueNs \\\\\\\"is_shutdown\\\\\\\");\\\\n                               disambiguator = 0 }\\\\n                             ]\\\\n                           }\\\\n                         };\\\\n                       name = \\\\\\\"self\\\\\\\" }};\\\\n                   hir_id = None;\\\\n                   span =\\\\n                   { Types.filename =\\\\n                     (Types.Real\\\\n                        (Types.LocalPath\\\\n                           \\\\\\\"rust/implementation/openssl3_impl/tunnel/ssl.rs\\\\\\\"));\\\\n                     hi = { Types.col = \\\\\\\"69\\\\\\\"; line = \\\\\\\"157\\\\\\\" };\\\\n                     lo = { Types.col = \\\\\\\"65\\\\\\\"; line = \\\\\\\"157\\\\\\\" } };\\\\n                   ty =\\\\n                   { Types.kind =\\\\n                     (Types.Ref\\\\n                        ({ Types.kind = Types.ReErased },\\\\n                         { Types.kind =\\\\n                           Types.Adt {\\\\n                             def_id =\\\\n                             { Types.index = (0, 390); is_local = true;\\\\n                               krate = \\\\\\\"sandwich\\\\\\\";\\\\n                               path =\\\\n                               [{ Types.data =\\\\n                                  (Types.TypeNs \\\\\\\"implementation\\\\\\\");\\\\n                                  disambiguator = 0 };\\\\n                                 { Types.data =\\\\n                                   (Types.TypeNs \\\\\\\"openssl3_impl\\\\\\\");\\\\n                                   disambiguator = 0 };\\\\n                                 { Types.data = (Types.TypeNs \\\\\\\"tunnel\\\\\\\");\\\\n                                   disambiguator = 0 };\\\\n                                 { Types.data = (Types.TypeNs \\\\\\\"ssl\\\\\\\");\\\\n                                   disambiguator = 0 };\\\\n                                 { Types.data = (Types.TypeNs \\\\\\\"Ssl\\\\\\\");\\\\n                                   disambiguator = 0 }\\\\n                                 ]\\\\n                               };\\\\n                             generic_args = []; trait_refs = []}\\\\n                           },\\\\n                         false))\\\\n                     }\\\\n                   }};\\\\n               hir_id = (Some (\\\\\\\"415\\\\\\\", \\\\\\\"13\\\\\\\"));\\\\n               span =\\\\n               { Types.filename =\\\\n                 (Types.Real\\\\n                    (Types.LocalPath\\\\n                       \\\\\\\"rust/implementation/openssl3_impl/tunnel/ssl.rs\\\\\\\"));\\\\n                 hi = { Types.col = \\\\\\\"69\\\\\\\"; line = \\\\\\\"157\\\\\\\" };\\\\n                 lo = { Types.col = \\\\\\\"65\\\\\\\"; line = \\\\\\\"157\\\\\\\" } };\\\\n               ty =\\\\n               { Types.kind =\\\\n                 Types.Adt {\\\\n                   def_id =\\\\n                   { Types.index = (0, 390); is_local = true;\\\\n                     krate = \\\\\\\"sandwich\\\\\\\";\\\\n                     path =\\\\n                     [{ Types.data = (Types.TypeNs \\\\\\\"implementation\\\\\\\");\\\\n                        disambiguator = 0 };\\\\n                       { Types.data = (Types.TypeNs \\\\\\\"openssl3_impl\\\\\\\");\\\\n                         disambiguator = 0 };\\\\n                       { Types.data = (Types.TypeNs \\\\\\\"tunnel\\\\\\\");\\\\n                         disambiguator = 0 };\\\\n                       { Types.data = (Types.TypeNs \\\\\\\"ssl\\\\\\\"); disambiguator = 0\\\\n                         };\\\\n                       { Types.data = (Types.TypeNs \\\\\\\"Ssl\\\\\\\"); disambiguator = 0\\\\n                         }\\\\n                       ]\\\\n                     };\\\\n                   generic_args = []; trait_refs = []}\\\\n                 }\\\\n               }};\\\\n           hir_id = (Some (\\\\\\\"415\\\\\\\", \\\\\\\"12\\\\\\\"));\\\\n           span =\\\\n           { Types.filename =\\\\n             (Types.Real\\\\n                (Types.LocalPath\\\\n                   \\\\\\\"rust/implementation/openssl3_impl/tunnel/ssl.rs\\\\\\\"));\\\\n             hi = { Types.col = \\\\\\\"71\\\\\\\"; line = \\\\\\\"157\\\\\\\" };\\\\n             lo = { Types.col = \\\\\\\"65\\\\\\\"; line = \\\\\\\"157\\\\\\\" } };\\\\n           ty =\\\\n           { Types.kind =\\\\n             Types.Adt {\\\\n               def_id =\\\\n               { Types.index = (2, 2358); is_local = false; krate = \\\\\\\"core\\\\\\\";\\\\n                 path =\\\\n                 [{ Types.data = (Types.TypeNs \\\\\\\"ptr\\\\\\\"); disambiguator = 0 };\\\\n                   { Types.data = (Types.TypeNs \\\\\\\"non_null\\\\\\\");\\\\n                     disambiguator = 0 };\\\\n                   { Types.data = (Types.TypeNs \\\\\\\"NonNull\\\\\\\"); disambiguator = 0\\\\n                     }\\\\n                   ]\\\\n                 };\\\\n               generic_args =\\\\n               [(Types.Type\\\\n                   { Types.kind =\\\\n                     Types.Adt {\\\\n                       def_id =\\\\n                       { Types.index = (27, 21394); is_local = false;\\\\n                         krate = \\\\\\\"openssl3\\\\\\\";\\\\n                         path =\\\\n                         [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\");\\\\n                            disambiguator = 0 }\\\\n                           ]\\\\n                         };\\\\n                       generic_args = []; trait_refs = []}\\\\n                     })\\\\n                 ];\\\\n               trait_refs = []}\\\\n             }\\\\n           }\\\\n          ];\\\\n        bounds_impls = [];\\\\n        fn_span =\\\\n        { Types.filename =\\\\n          (Types.Real\\\\n             (Types.LocalPath\\\\n                \\\\\\\"rust/implementation/openssl3_impl/tunnel/ssl.rs\\\\\\\"));\\\\n          hi = { Types.col = \\\\\\\"80\\\\\\\"; line = \\\\\\\"157\\\\\\\" };\\\\n          lo = { Types.col = \\\\\\\"72\\\\\\\"; line = \\\\\\\"157\\\\\\\" } };\\\\n        from_hir_call = true;\\\\n        fun' =\\\\n        { Types.attributes = [];\\\\n          contents =\\\\n          Types.GlobalName {\\\\n            id =\\\\n            { Types.index = (2, 2381); is_local = false; krate = \\\\\\\"core\\\\\\\";\\\\n              path =\\\\n              [{ Types.data = (Types.TypeNs \\\\\\\"ptr\\\\\\\"); disambiguator = 0 };\\\\n                { Types.data = (Types.TypeNs \\\\\\\"non_null\\\\\\\"); disambiguator = 0 };\\\\n                { Types.data = Types.Impl; disambiguator = 3 };\\\\n                { Types.data = (Types.ValueNs \\\\\\\"as_ptr\\\\\\\"); disambiguator = 0 }]\\\\n              }};\\\\n          hir_id = None;\\\\n          span =\\\\n          { Types.filename =\\\\n            (Types.Real\\\\n               (Types.LocalPath\\\\n                  \\\\\\\"rust/implementation/openssl3_impl/tunnel/ssl.rs\\\\\\\"));\\\\n            hi = { Types.col = \\\\\\\"78\\\\\\\"; line = \\\\\\\"157\\\\\\\" };\\\\n            lo = { Types.col = \\\\\\\"72\\\\\\\"; line = \\\\\\\"157\\\\\\\" } };\\\\n          ty =\\\\n          { Types.kind =\\\\n            (Types.Arrow\\\\n               { Types.bound_vars = [];\\\\n                 value =\\\\n                 { Types.abi = Types.Abi {todo = \\\\\\\"Rust\\\\\\\"}; c_variadic = false;\\\\n                   inputs =\\\\n                   [{ Types.kind =\\\\n                      Types.Adt {\\\\n                        def_id =\\\\n                        { Types.index = (2, 2358); is_local = false;\\\\n                          krate = \\\\\\\"core\\\\\\\";\\\\n                          path =\\\\n                          [{ Types.data = (Types.TypeNs \\\\\\\"ptr\\\\\\\");\\\\n                             disambiguator = 0 };\\\\n                            { Types.data = (Types.TypeNs \\\\\\\"non_null\\\\\\\");\\\\n                              disambiguator = 0 };\\\\n                            { Types.data = (Types.TypeNs \\\\\\\"NonNull\\\\\\\");\\\\n                              disambiguator = 0 }\\\\n                            ]\\\\n                          };\\\\n                        generic_args =\\\\n                        [(Types.Type\\\\n                            { Types.kind =\\\\n                              Types.Adt {\\\\n                                def_id =\\\\n                                { Types.index = (27, 21394);\\\\n                                  is_local = false; krate = \\\\\\\"openssl3\\\\\\\";\\\\n                                  path =\\\\n                                  [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\");\\\\n                                     disambiguator = 0 }\\\\n                                    ]\\\\n                                  };\\\\n                                generic_args = []; trait_refs = []}\\\\n                              })\\\\n                          ];\\\\n                        trait_refs = []}\\\\n                      }\\\\n                     ];\\\\n                   output =\\\\n                   { Types.kind =\\\\n                     (Types.RawPtr\\\\n                        ({ Types.kind =\\\\n                           Types.Adt {\\\\n                             def_id =\\\\n                             { Types.index = (27, 21394); is_local = false;\\\\n                               krate = \\\\\\\"openssl3\\\\\\\";\\\\n                               path =\\\\n                               [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\");\\\\n                                  disambiguator = 0 }\\\\n                                 ]\\\\n                               };\\\\n                             generic_args = []; trait_refs = []}\\\\n                           },\\\\n                         true))\\\\n                     };\\\\n                   safety = Types.Safe }\\\\n                 })\\\\n            }\\\\n          };\\\\n        generic_args =\\\\n        [(Types.Type\\\\n            { Types.kind =\\\\n              Types.Adt {\\\\n                def_id =\\\\n                { Types.index = (27, 21394); is_local = false;\\\\n                  krate = \\\\\\\"openssl3\\\\\\\";\\\\n                  path =\\\\n                  [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\"); disambiguator = 0\\\\n                     }\\\\n                    ]\\\\n                  };\\\\n                generic_args = []; trait_refs = []}\\\\n              })\\\\n          ];\\\\n        trait = None;\\\\n        ty =\\\\n        { Types.kind =\\\\n          (Types.Arrow\\\\n             { Types.bound_vars = [];\\\\n               value =\\\\n               { Types.abi = Types.Abi {todo = \\\\\\\"Rust\\\\\\\"}; c_variadic = false;\\\\n                 inputs =\\\\n                 [{ Types.kind =\\\\n                    Types.Adt {\\\\n                      def_id =\\\\n                      { Types.index = (2, 2358); is_local = false;\\\\n                        krate = \\\\\\\"core\\\\\\\";\\\\n                        path =\\\\n                        [{ Types.data = (Types.TypeNs \\\\\\\"ptr\\\\\\\");\\\\n                           disambiguator = 0 };\\\\n                          { Types.data = (Types.TypeNs \\\\\\\"non_null\\\\\\\");\\\\n                            disambiguator = 0 };\\\\n                          { Types.data = (Types.TypeNs \\\\\\\"NonNull\\\\\\\");\\\\n                            disambiguator = 0 }\\\\n                          ]\\\\n                        };\\\\n                      generic_args =\\\\n                      [(Types.Type\\\\n                          { Types.kind =\\\\n                            Types.Adt {\\\\n                              def_id =\\\\n                              { Types.index = (27, 21394); is_local = false;\\\\n                                krate = \\\\\\\"openssl3\\\\\\\";\\\\n                                path =\\\\n                                [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\");\\\\n                                   disambiguator = 0 }\\\\n                                  ]\\\\n                                };\\\\n                              generic_args = []; trait_refs = []}\\\\n                            })\\\\n                        ];\\\\n                      trait_refs = []}\\\\n                    }\\\\n                   ];\\\\n                 output =\\\\n                 { Types.kind =\\\\n                   (Types.RawPtr\\\\n                      ({ Types.kind =\\\\n                         Types.Adt {\\\\n                           def_id =\\\\n                           { Types.index = (27, 21394); is_local = false;\\\\n                             krate = \\\\\\\"openssl3\\\\\\\";\\\\n                             path =\\\\n                             [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\");\\\\n                                disambiguator = 0 }\\\\n                               ]\\\\n                             };\\\\n                           generic_args = []; trait_refs = []}\\\\n                         },\\\\n                       true))\\\\n                   };\\\\n                 safety = Types.Safe }\\\\n               })\\\\n          }};\\\\n      hir_id = None;\\\\n      span =\\\\n      { Types.filename =\\\\n        (Types.Real\\\\n           (Types.LocalPath \\\\\\\"rust/implementation/openssl3_impl/tunnel/ssl.rs\\\\\\\"));\\\\n        hi = { Types.col = \\\\\\\"80\\\\\\\"; line = \\\\\\\"157\\\\\\\" };\\\\n        lo = { Types.col = \\\\\\\"65\\\\\\\"; line = \\\\\\\"157\\\\\\\" } };\\\\n      ty =\\\\n      { Types.kind =\\\\n        (Types.RawPtr\\\\n           ({ Types.kind =\\\\n              Types.Adt {\\\\n                def_id =\\\\n                { Types.index = (27, 21394); is_local = false;\\\\n                  krate = \\\\\\\"openssl3\\\\\\\";\\\\n                  path =\\\\n                  [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\"); disambiguator = 0\\\\n                     }\\\\n                    ]\\\\n                  };\\\\n                generic_args = []; trait_refs = []}\\\\n              },\\\\n            true))\\\\n        }\\\\n      }};\\\\n  hir_id = (Some (\\\\\\\"415\\\\\\\", \\\\\\\"10\\\\\\\"));\\\\n  span =\\\\n  { Types.filename =\\\\n    (Types.Real\\\\n       (Types.LocalPath \\\\\\\"rust/implementation/openssl3_impl/tunnel/ssl.rs\\\\\\\"));\\\\n    hi = { Types.col = \\\\\\\"80\\\\\\\"; line = \\\\\\\"157\\\\\\\" };\\\\n    lo = { Types.col = \\\\\\\"65\\\\\\\"; line = \\\\\\\"157\\\\\\\" } };\\\\n  ty =\\\\n  { Types.kind =\\\\n    (Types.RawPtr\\\\n       ({ Types.kind =\\\\n          Types.Adt {\\\\n            def_id =\\\\n            { Types.index = (27, 21394); is_local = false;\\\\n              krate = \\\\\\\"openssl3\\\\\\\";\\\\n              path =\\\\n              [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\"); disambiguator = 0 }] };\\\\n            generic_args = []; trait_refs = []}\\\\n          },\\\\n        false))\\\\n    }\\\\n  }\\\",\\n    )\",\n        ),\n    )"

        <:
        i32)
    <:
    u32
  in
  (shutdown_state &. (Openssl3.v_SSL_SENT_SHUTDOWN |. Openssl3.v_SSL_RECEIVED_SHUTDOWN <: u32)
    <:
    u32) <>.
  0ul

let t_Mode_cast_to_repr (x: t_Mode) =
  match x with
  | Mode_Client  -> isz 0
  | Mode_Server  -> isz 1

let security_requirements (self: t_Context486924441) =
  Core.Borrow.f_borrow #t_Context486924441
    #Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements
    #FStar.Tactics.Typeclasses.solve
    self

let get_tunnel_security_requirements (self: t_Ssl) =
  get_extra_data_ref #Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements
    #i32
    self
    v_SSL_EX_DATA_TUNNEL_SECURITY_REQUIREMENTS_INDEX

let set_verify_mode (self: t_SslContext) (verify_mode: Sandwich.Tunnel.Tls.t_VerifyMode) =
  let flag:u32 =
    match verify_mode with
    | Sandwich.Tunnel.Tls.VerifyMode_None  -> Openssl3.v_SSL_VERIFY_NONE
    | Sandwich.Tunnel.Tls.VerifyMode_Peer  -> Openssl3.v_SSL_VERIFY_PEER
    | Sandwich.Tunnel.Tls.VerifyMode_Mutual  ->
      Openssl3.v_SSL_VERIFY_PEER |. Openssl3.v_SSL_VERIFY_FAIL_IF_NO_PEER_CERT
  in
  let _:Prims.unit =
    Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
      "rust_primitives::hax::failure(\n        \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n        \"openssl3::foreign_mod_3288::v_SSL_CTX_set_verify\",\n    )(\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::non_null::impl_3__as_ptr::<\\n        openssl3::t_ssl_ctx_st,\\n    >(proj_sandwich::implementation::openssl3_impl::tunnel::context::_0(deref(self)))\",\n        ),\n        cast(flag),\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::option::Option_Some(\\n        rust_primitives::hax::failure(\\n            \\\"(AST import) Fatal error: something we considered as impossible occurred! \\\\027[1mPlease report this by submitting an issue on GitHub!\\\\027[0m\\\\nDetails: Pointer, with [cast] being Types.UnsafeFnPointer\\\",\\n            \\\"{ Types.attributes = [];\\\\n  contents =\\\\n  Types.PointerCoercion {cast = Types.UnsafeFnPointer;\\\\n    source =\\\\n    { Types.attributes = [];\\\\n      contents =\\\\n      Types.PointerCoercion {cast = Types.ReifyFnPointer;\\\\n        source =\\\\n        { Types.attributes = [];\\\\n          contents =\\\\n          Types.GlobalName {\\\\n            id =\\\\n            { Types.index = (0, 468); is_local = true; krate = \\\\\\\"sandwich\\\\\\\";\\\\n              path =\\\\n              [{ Types.data = (Types.TypeNs \\\\\\\"implementation\\\\\\\");\\\\n                 disambiguator = 0 };\\\\n                { Types.data = (Types.TypeNs \\\\\\\"openssl3_impl\\\\\\\");\\\\n                  disambiguator = 0 };\\\\n                { Types.data = (Types.TypeNs \\\\\\\"tunnel\\\\\\\"); disambiguator = 0 };\\\\n                { Types.data = (Types.TypeNs \\\\\\\"verify_callback\\\\\\\");\\\\n                  disambiguator = 0 };\\\\n                { Types.data = (Types.ValueNs \\\\\\\"verify_callback\\\\\\\");\\\\n                  disambiguator = 0 }\\\\n                ]\\\\n              }};\\\\n          hir_id = None;\\\\n          span =\\\\n          { Types.filename =\\\\n            (Types.Real\\\\n               (Types.LocalPath\\\\n                  \\\\\\\"rust/implementation/openssl3_impl/tunnel/context.rs\\\\\\\"));\\\\n            hi = { Types.col = \\\\\\\"91\\\\\\\"; line = \\\\\\\"638\\\\\\\" };\\\\n            lo = { Types.col = \\\\\\\"76\\\\\\\"; line = \\\\\\\"638\\\\\\\" } };\\\\n          ty =\\\\n          { Types.kind =\\\\n            (Types.Arrow\\\\n               { Types.bound_vars = [];\\\\n                 value =\\\\n                 { Types.abi = Types.Abi {todo = \\\\\\\"C { unwind: false }\\\\\\\"};\\\\n                   c_variadic = false;\\\\n                   inputs =\\\\n                   [{ Types.kind = (Types.Int Types.I32) };\\\\n                     { Types.kind =\\\\n                       (Types.RawPtr\\\\n                          ({ Types.kind =\\\\n                             Types.Adt {\\\\n                               def_id =\\\\n                               { Types.index = (27, 21286); is_local = false;\\\\n                                 krate = \\\\\\\"openssl3\\\\\\\";\\\\n                                 path =\\\\n                                 [{ Types.data =\\\\n                                    (Types.TypeNs \\\\\\\"x509_store_ctx_st\\\\\\\");\\\\n                                    disambiguator = 0 }\\\\n                                   ]\\\\n                                 };\\\\n                               generic_args = []; trait_refs = []}\\\\n                             },\\\\n                           true))\\\\n                       }\\\\n                     ];\\\\n                   output = { Types.kind = (Types.Int Types.I32) };\\\\n                   safety = Types.Safe }\\\\n                 })\\\\n            }\\\\n          }};\\\\n      hir_id = None;\\\\n      span =\\\\n      { Types.filename =\\\\n        (Types.Real\\\\n           (Types.LocalPath\\\\n              \\\\\\\"rust/implementation/openssl3_impl/tunnel/context.rs\\\\\\\"));\\\\n        hi = { Types.col = \\\\\\\"91\\\\\\\"; line = \\\\\\\"638\\\\\\\" };\\\\n        lo = { Types.col = \\\\\\\"76\\\\\\\"; line = \\\\\\\"638\\\\\\\" } };\\\\n      ty =\\\\n      { Types.kind =\\\\n        (Types.Arrow\\\\n           { Types.bound_vars = [];\\\\n             value =\\\\n             { Types.abi = Types.Abi {todo = \\\\\\\"C { unwind: false }\\\\\\\"};\\\\n               c_variadic = false;\\\\n               inputs =\\\\n               [{ Types.kind = (Types.Int Types.I32) };\\\\n                 { Types.kind =\\\\n                   (Types.RawPtr\\\\n                      ({ Types.kind =\\\\n                         Types.Adt {\\\\n                           def_id =\\\\n                           { Types.index = (27, 21286); is_local = false;\\\\n                             krate = \\\\\\\"openssl3\\\\\\\";\\\\n                             path =\\\\n                             [{ Types.data =\\\\n                                (Types.TypeNs \\\\\\\"x509_store_ctx_st\\\\\\\");\\\\n                                disambiguator = 0 }\\\\n                               ]\\\\n                             };\\\\n                           generic_args = []; trait_refs = []}\\\\n                         },\\\\n                       true))\\\\n                   }\\\\n                 ];\\\\n               output = { Types.kind = (Types.Int Types.I32) };\\\\n               safety = Types.Safe }\\\\n             })\\\\n        }\\\\n      }};\\\\n  hir_id = (Some (\\\\\\\"347\\\\\\\", \\\\\\\"56\\\\\\\"));\\\\n  span =\\\\n  { Types.filename =\\\\n    (Types.Real\\\\n       (Types.LocalPath \\\\\\\"rust/implementation/openssl3_impl/tunnel/context.rs\\\\\\\"));\\\\n    hi = { Types.col = \\\\\\\"91\\\\\\\"; line = \\\\\\\"638\\\\\\\" };\\\\n    lo = { Types.col = \\\\\\\"76\\\\\\\"; line = \\\\\\\"638\\\\\\\" } };\\\\n  ty =\\\\n  { Types.kind =\\\\n    (Types.Arrow\\\\n       { Types.bound_vars = [];\\\\n         value =\\\\n         { Types.abi = Types.Abi {todo = \\\\\\\"C { unwind: false }\\\\\\\"};\\\\n           c_variadic = false;\\\\n           inputs =\\\\n           [{ Types.kind = (Types.Int Types.I32) };\\\\n             { Types.kind =\\\\n               (Types.RawPtr\\\\n                  ({ Types.kind =\\\\n                     Types.Adt {\\\\n                       def_id =\\\\n                       { Types.index = (27, 21286); is_local = false;\\\\n                         krate = \\\\\\\"openssl3\\\\\\\";\\\\n                         path =\\\\n                         [{ Types.data = (Types.TypeNs \\\\\\\"x509_store_ctx_st\\\\\\\");\\\\n                            disambiguator = 0 }\\\\n                           ]\\\\n                         };\\\\n                       generic_args = []; trait_refs = []}\\\\n                     },\\\\n                   true))\\\\n               }\\\\n             ];\\\\n           output = { Types.kind = (Types.Int Types.I32) };\\\\n           safety = Types.Unsafe }\\\\n         })\\\\n    }\\\\n  }\\\",\\n        ),\\n    )\",\n        ),\n    )"

  in
  ()

let tls_options_get_min_max_tls_version (tls_options: Sandwich_api_proto.Tls.t_TLSOptions) =
  match
    Protobuf.Message_field.impl__is_some #Sandwich_api_proto.Tls.t_TLSv12Config
      tls_options.Sandwich_api_proto.Tls.f_tls12,
    Protobuf.Message_field.impl__is_some #Sandwich_api_proto.Tls.t_TLSv13Config
      tls_options.Sandwich_api_proto.Tls.f_tls13
    <:
    (bool & bool)
  with
  | false, false ->
    (Sandwich.Tunnel.Tls.TlsVersion_Tls13 <: Sandwich.Tunnel.Tls.t_TlsVersion),
    (Sandwich.Tunnel.Tls.TlsVersion_Tls13 <: Sandwich.Tunnel.Tls.t_TlsVersion)
    <:
    (Sandwich.Tunnel.Tls.t_TlsVersion & Sandwich.Tunnel.Tls.t_TlsVersion)
  | true, false ->
    (Sandwich.Tunnel.Tls.TlsVersion_Tls12 <: Sandwich.Tunnel.Tls.t_TlsVersion),
    (Sandwich.Tunnel.Tls.TlsVersion_Tls12 <: Sandwich.Tunnel.Tls.t_TlsVersion)
    <:
    (Sandwich.Tunnel.Tls.t_TlsVersion & Sandwich.Tunnel.Tls.t_TlsVersion)
  | false, true ->
    (Sandwich.Tunnel.Tls.TlsVersion_Tls13 <: Sandwich.Tunnel.Tls.t_TlsVersion),
    (Sandwich.Tunnel.Tls.TlsVersion_Tls13 <: Sandwich.Tunnel.Tls.t_TlsVersion)
    <:
    (Sandwich.Tunnel.Tls.t_TlsVersion & Sandwich.Tunnel.Tls.t_TlsVersion)
  | true, true ->
    (Sandwich.Tunnel.Tls.TlsVersion_Tls12 <: Sandwich.Tunnel.Tls.t_TlsVersion),
    (Sandwich.Tunnel.Tls.TlsVersion_Tls13 <: Sandwich.Tunnel.Tls.t_TlsVersion)
    <:
    (Sandwich.Tunnel.Tls.t_TlsVersion & Sandwich.Tunnel.Tls.t_TlsVersion)

let get_verify_mode_from_mode_and_x509_verifier
      (mode: t_Mode)
      (x509_verifier: Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
     =
  if Core.Option.impl__is_none #Sandwich_api_proto.Verifiers.t_X509Verifier x509_verifier
  then Sandwich.Tunnel.Tls.VerifyMode_None <: Sandwich.Tunnel.Tls.t_VerifyMode
  else
    if mode =. (Mode_Client <: t_Mode)
    then Sandwich.Tunnel.Tls.VerifyMode_Peer <: Sandwich.Tunnel.Tls.t_VerifyMode
    else Sandwich.Tunnel.Tls.VerifyMode_Mutual <: Sandwich.Tunnel.Tls.t_VerifyMode

let add_extra_chain_cert
      (self: t_SslContext)
      (extra_certificate: Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_x509_st)
     =
  if
    (Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
        "rust_primitives::hax::failure(\n        \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n        \"openssl3::foreign_mod_3371::v_SSL_CTX_ctrl\",\n    )(\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::non_null::impl_3__as_ptr::<\\n        openssl3::t_ssl_ctx_st,\\n    >(proj_sandwich::implementation::openssl3_impl::tunnel::context::_0(deref(self)))\",\n        ),\n        cast(openssl3::v_SSL_CTRL_EXTRA_CHAIN_CERT),\n        0,\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::mut_ptr::impl__cast::<\\n        openssl3::t_x509_st,\\n        core::ffi::t_c_void,\\n    >(\\n        core::ptr::non_null::impl_3__as_ptr::<\\n            openssl3::t_x509_st,\\n        >(\\n            sandwich::support::pimpl::impl_2__as_nonnull::<\\n                lifetime!(something),\\n                openssl3::t_x509_st,\\n            >(&(extra_certificate)),\\n        ),\\n    )\",\n        ),\n    )"

      <:
      i64) =.
    1L
  then
    Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
      "{\n        let _: raw_pointer!() = {\n            sandwich::support::pimpl::impl_2__into_raw::<\n                lifetime!(something),\n                openssl3::t_x509_st,\n            >(extra_certificate)\n        };\n        { core::result::Result_Ok(Tuple0()) }\n    }"

  else
    let res:Alloc.String.t_String =
      Alloc.Fmt.format (Core.Fmt.impl_2__new_v1 (sz 1)
            (sz 1)
            (let list = ["failed to add an extra certificate to the certificate chain: "] in
              FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
              Rust_primitives.Hax.array_of_list 1 list)
            (let list =
                [
                  Core.Fmt.Rt.impl_1__new_display #Alloc.String.t_String
                    (Sandwich.Implementation.Openssl3_impl.Support.errstr ()
                      <:
                      Alloc.String.t_String)
                  <:
                  Core.Fmt.Rt.t_Argument
                ]
              in
              FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
              Rust_primitives.Hax.array_of_list 1 list)
          <:
          Core.Fmt.t_Arguments)
    in
    Core.Result.Result_Err
    (Core.Convert.f_into #(Sandwich_proto.Errors.t_CertificateError & Alloc.String.t_String)
        #Sandwich.Error.t_Error
        #FStar.Tactics.Typeclasses.solve
        ((Sandwich_proto.Errors.CertificateError_CERTIFICATEERROR_UNSUPPORTED
            <:
            Sandwich_proto.Errors.t_CertificateError),
          (Core.Hint.must_use #Alloc.String.t_String res <: Alloc.String.t_String)
          <:
          (Sandwich_proto.Errors.t_CertificateError & Alloc.String.t_String)))
    <:
    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let fill_certificate_trust_store_with_default_cas
      (self: t_SslContext)
      (x509_verifier: Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
     =
  match x509_verifier with
  | Core.Option.Option_Some x509 ->
    if
      x509.Sandwich_api_proto.Verifiers.f_load_cas_from_default_verify_path &&
      (Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
          "rust_primitives::hax::failure(\n        \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n        \"openssl3::foreign_mod_3437::v_SSL_CTX_set_default_verify_paths\",\n    )(\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::non_null::impl_3__as_ptr::<\\n        openssl3::t_ssl_ctx_st,\\n    >(proj_sandwich::implementation::openssl3_impl::tunnel::context::_0(deref(self)))\",\n        ),\n    )"

        <:
        i32) <>.
      1l
    then
      let res:Alloc.String.t_String =
        Alloc.Fmt.format (Core.Fmt.impl_2__new_v1 (sz 1)
              (sz 1)
              (let list =
                  [
                    "CAfile and CApath are NULL or the processing at one of the locations specified failed: "
                  ]
                in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                Rust_primitives.Hax.array_of_list 1 list)
              (let list =
                  [
                    Core.Fmt.Rt.impl_1__new_display #Alloc.String.t_String
                      (Sandwich.Implementation.Openssl3_impl.Support.errstr ()
                        <:
                        Alloc.String.t_String)
                    <:
                    Core.Fmt.Rt.t_Argument
                  ]
                in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                Rust_primitives.Hax.array_of_list 1 list)
            <:
            Core.Fmt.t_Arguments)
      in
      Core.Result.Result_Err
      (Core.Convert.f_into #(Sandwich_proto.Errors.t_CertificateError & Alloc.String.t_String)
          #Sandwich.Error.t_Error
          #FStar.Tactics.Typeclasses.solve
          ((Sandwich_proto.Errors.CertificateError_CERTIFICATEERROR_UNKNOWN
              <:
              Sandwich_proto.Errors.t_CertificateError),
            (Core.Hint.must_use #Alloc.String.t_String res <: Alloc.String.t_String)
            <:
            (Sandwich_proto.Errors.t_CertificateError & Alloc.String.t_String)))
      <:
      Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
    else
      Core.Result.Result_Ok (() <: Prims.unit)
      <:
      Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
  | _ ->
    Core.Result.Result_Ok (() <: Prims.unit)
    <:
    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let initialize_trusted_cert_store (self: t_SslContext) =
  match
    Core.Option.impl__ok_or #(Core.Ptr.Non_null.t_NonNull Openssl3.t_x509_store_st)
      #(Sandwich_proto.Errors.t_SystemError & string)
      (Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
          "rust_primitives::hax::failure(\"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\"core::ptr::non_null::impl_3__new\")::<openssl3::t_x509_store_st>(rust_primitives::hax::failure(\"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\"unsafe { openssl3::foreign_mod_2130::v_X509_STORE_new(Tuple0) }\"))"

        <:
        Core.Option.t_Option (Core.Ptr.Non_null.t_NonNull Openssl3.t_x509_store_st))
      ((Sandwich_proto.Errors.SystemError_SYSTEMERROR_MEMORY <: Sandwich_proto.Errors.t_SystemError),
        "failed to instantiate an X509_STORE"
        <:
        (Sandwich_proto.Errors.t_SystemError & string))
  with
  | Core.Result.Result_Ok x509_store ->
    let _:Prims.unit =
      Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
        "rust_primitives::hax::failure(\n        \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n        \"openssl3::foreign_mod_3177::v_SSL_CTX_set_cert_store\",\n    )(\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::non_null::impl_3__as_ptr::<\\n        openssl3::t_ssl_ctx_st,\\n    >(proj_sandwich::implementation::openssl3_impl::tunnel::context::_0(deref(self)))\",\n        ),\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::non_null::impl_3__as_ptr::<openssl3::t_x509_store_st>(x509_store)\",\n        ),\n    )"

    in
    let _:Prims.unit = () in
    Core.Result.Result_Ok (() <: Prims.unit)
    <:
    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
  | Core.Result.Result_Err err ->
    Core.Result.Result_Err (Core.Convert.f_from #FStar.Tactics.Typeclasses.solve err)
    <:
    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let set_alpn_protocols
      (#v_S #impl_995885649_: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()] i6: Core.Convert.t_AsRef v_S string)
      (#[FStar.Tactics.Typeclasses.tcresolve ()]
          i6:
          Core.Iter.Traits.Collect.t_IntoIterator impl_995885649_)
      (self: t_SslContext)
      (protocols: impl_995885649_)
     =
  let protos:Alloc.String.t_String = Alloc.String.impl__String__new () in
  let protos:Alloc.String.t_String =
    Core.Iter.Traits.Iterator.f_fold (Core.Iter.Traits.Collect.f_into_iter #i3.f_IntoIter
          #FStar.Tactics.Typeclasses.solve
          (Core.Iter.Traits.Collect.f_into_iter #impl_995885649_
              #FStar.Tactics.Typeclasses.solve
              protocols
            <:
            i3.f_IntoIter)
        <:
        i3.f_IntoIter)
      protos
      (fun protos proto ->
          let protos:Alloc.String.t_String = protos in
          let proto:v_S = proto in
          let proto:string =
            Core.Convert.f_as_ref #v_S #string #FStar.Tactics.Typeclasses.solve proto
          in
          match
            Core.Result.impl__map_err #u8
              #Core.Num.Error.t_TryFromIntError
              #(Sandwich_proto.Errors.t_ALPNError & string)
              (Core.Convert.f_try_into #usize
                  #u8
                  #FStar.Tactics.Typeclasses.solve
                  (Core.Str.impl__str__len proto <: usize)
                <:
                Core.Result.t_Result u8 Core.Num.Error.t_TryFromIntError)
              (fun temp_0_ ->
                  let _:Core.Num.Error.t_TryFromIntError = temp_0_ in
                  (Sandwich_proto.Errors.ALPNError_ALPNERROR_LENGTH_ERROR
                    <:
                    Sandwich_proto.Errors.t_ALPNError),
                  "ALPN length overflow"
                  <:
                  (Sandwich_proto.Errors.t_ALPNError & string))
          with
          | Core.Result.Result_Ok (x: u8) ->
            let! _:Prims.unit =
              if x =. 0uy
              then
                let! hoist3:Rust_primitives.Hax.t_Never =
                  Core.Ops.Control_flow.ControlFlow_Break
                  (Core.Result.Result_Err
                    (Core.Convert.f_into #(Sandwich_proto.Errors.t_ALPNError & string)
                        #Sandwich.Error.t_Error
                        #FStar.Tactics.Typeclasses.solve
                        ((Sandwich_proto.Errors.ALPNError_ALPNERROR_LENGTH_ERROR
                            <:
                            Sandwich_proto.Errors.t_ALPNError),
                          "ALPN length erro: empty"
                          <:
                          (Sandwich_proto.Errors.t_ALPNError & string)))
                    <:
                    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
                  <:
                  Core.Ops.Control_flow.t_ControlFlow
                    (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
                    Rust_primitives.Hax.t_Never
                in
                Core.Ops.Control_flow.ControlFlow_Continue (Rust_primitives.Hax.never_to_any hoist3)
                <:
                Core.Ops.Control_flow.t_ControlFlow
                  (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error) Prims.unit
              else
                Core.Ops.Control_flow.ControlFlow_Continue ()
                <:
                Core.Ops.Control_flow.t_ControlFlow
                  (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error) Prims.unit
            in
            let! _:Prims.unit =
              if Core.Str.impl__str__contains #char proto '\x00'
              then
                let! hoist4:Rust_primitives.Hax.t_Never =
                  Core.Ops.Control_flow.ControlFlow_Break
                  (Core.Result.Result_Err
                    (Core.Convert.f_into #(Sandwich_proto.Errors.t_ALPNError & string)
                        #Sandwich.Error.t_Error
                        #FStar.Tactics.Typeclasses.solve
                        ((Sandwich_proto.Errors.ALPNError_ALPNERROR_INVALID_STRING
                            <:
                            Sandwich_proto.Errors.t_ALPNError),
                          "string cannot contain null bytes"
                          <:
                          (Sandwich_proto.Errors.t_ALPNError & string)))
                    <:
                    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
                  <:
                  Core.Ops.Control_flow.t_ControlFlow
                    (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
                    Rust_primitives.Hax.t_Never
                in
                Core.Ops.Control_flow.ControlFlow_Continue (Rust_primitives.Hax.never_to_any hoist4)
                <:
                Core.Ops.Control_flow.t_ControlFlow
                  (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error) Prims.unit
              else
                Core.Ops.Control_flow.ControlFlow_Continue ()
                <:
                Core.Ops.Control_flow.t_ControlFlow
                  (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error) Prims.unit
            in
            Core.Ops.Control_flow.ControlFlow_Continue
            (let protos:Alloc.String.t_String =
                Alloc.String.impl__String__push protos (cast (x <: u8) <: char)
              in
              let protos:Alloc.String.t_String = Alloc.String.impl__String__push_str protos proto in
              protos)
            <:
            Core.Ops.Control_flow.t_ControlFlow
              (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error) Alloc.String.t_String
          | Core.Result.Result_Err err ->
            let! _:Prims.unit =
              Core.Ops.Control_flow.ControlFlow_Break
              (Core.Result.Result_Err (Core.Convert.f_from #FStar.Tactics.Typeclasses.solve err)
                <:
                Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
              <:
              Core.Ops.Control_flow.t_ControlFlow
                (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error) Prims.unit
            in
            Core.Ops.Control_flow.ControlFlow_Continue protos
            <:
            Core.Ops.Control_flow.t_ControlFlow
              (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error) Alloc.String.t_String)
  in
  match
    Core.Result.impl__map_err #u32
      #Core.Num.Error.t_TryFromIntError
      #(Sandwich_proto.Errors.t_SystemError & string)
      (Core.Convert.f_try_into #usize
          #u32
          #FStar.Tactics.Typeclasses.solve
          (Alloc.String.impl__String__len protos <: usize)
        <:
        Core.Result.t_Result u32 Core.Num.Error.t_TryFromIntError)
      (fun temp_0_ ->
          let _:Core.Num.Error.t_TryFromIntError = temp_0_ in
          (Sandwich_proto.Errors.SystemError_SYSTEMERROR_INTEGER_OVERFLOW
            <:
            Sandwich_proto.Errors.t_SystemError),
          "protos string is too large"
          <:
          (Sandwich_proto.Errors.t_SystemError & string))
  with
  | Core.Result.Result_Ok (len: u32) ->
    (match
        Core.Result.impl__map_err #Alloc.Ffi.C_str.t_CString
          #Alloc.Ffi.C_str.t_NulError
          #(Sandwich_proto.Errors.t_SystemError & Alloc.String.t_String)
          (Alloc.Ffi.C_str.impl__CString__new #(t_Slice u8)
              (Alloc.String.impl__String__as_bytes protos <: t_Slice u8)
            <:
            Core.Result.t_Result Alloc.Ffi.C_str.t_CString Alloc.Ffi.C_str.t_NulError)
          (fun e ->
              let e:Alloc.Ffi.C_str.t_NulError = e in
              let res:Alloc.String.t_String =
                Alloc.Fmt.format (Core.Fmt.impl_2__new_v1 (sz 1)
                      (sz 1)
                      (let list = ["failed to create a CString: "] in
                        FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                        Rust_primitives.Hax.array_of_list 1 list)
                      (let list =
                          [
                            Core.Fmt.Rt.impl_1__new_display #Alloc.Ffi.C_str.t_NulError e
                            <:
                            Core.Fmt.Rt.t_Argument
                          ]
                        in
                        FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                        Rust_primitives.Hax.array_of_list 1 list)
                    <:
                    Core.Fmt.t_Arguments)
              in
              (Sandwich_proto.Errors.SystemError_SYSTEMERROR_MEMORY
                <:
                Sandwich_proto.Errors.t_SystemError),
              Core.Hint.must_use #Alloc.String.t_String res
              <:
              (Sandwich_proto.Errors.t_SystemError & Alloc.String.t_String))
      with
      | Core.Result.Result_Ok cstr ->
        if
          (Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
              "rust_primitives::hax::failure(\n        \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n        \"openssl3::foreign_mod_3103::v_SSL_CTX_set_alpn_protos\",\n    )(\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::non_null::impl_3__as_ptr::<\\n        openssl3::t_ssl_ctx_st,\\n    >(proj_sandwich::implementation::openssl3_impl::tunnel::context::_0(deref(self)))\",\n        ),\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::const_ptr::impl__cast::<\\n        int,\\n        int,\\n    >(core::ffi::c_str::impl__CStr__as_ptr(&(deref(core::ops::deref::f_deref(&(cstr))))))\",\n        ),\n        len,\n    )"

            <:
            i32) =.
          0l
        then
          Core.Result.Result_Ok (() <: Prims.unit)
          <:
          Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
        else
          Core.Result.Result_Err
          (Core.Convert.f_into #Sandwich_proto.Errors.t_ALPNError
              #Sandwich.Error.t_Error
              #FStar.Tactics.Typeclasses.solve
              (Sandwich_proto.Errors.ALPNError_ALPNERROR_INVALID_STRING
                <:
                Sandwich_proto.Errors.t_ALPNError))
          <:
          Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
      | Core.Result.Result_Err err ->
        Core.Result.Result_Err (Core.Convert.f_from #FStar.Tactics.Typeclasses.solve err)
        <:
        Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
  | Core.Result.Result_Err err ->
    Core.Result.Result_Err (Core.Convert.f_from #FStar.Tactics.Typeclasses.solve err)
    <:
    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let set_certificate
      (self: t_SslContext)
      (certificate: Core.Ptr.Non_null.t_NonNull Openssl3.t_x509_st)
     =
  if
    (Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
        "rust_primitives::hax::failure(\n        \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n        \"openssl3::foreign_mod_3294::v_SSL_CTX_use_certificate\",\n    )(\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::non_null::impl_3__as_ptr::<\\n        openssl3::t_ssl_ctx_st,\\n    >(proj_sandwich::implementation::openssl3_impl::tunnel::context::_0(deref(self)))\",\n        ),\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::non_null::impl_3__as_ptr::<openssl3::t_x509_st>(certificate)\",\n        ),\n    )"

      <:
      i32) =.
    1l
  then
    Core.Result.Result_Ok (() <: Prims.unit)
    <:
    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
  else
    let res:Alloc.String.t_String =
      Alloc.Fmt.format (Core.Fmt.impl_2__new_v1 (sz 1)
            (sz 1)
            (let list = ["failed to use certificate for authentication: "] in
              FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
              Rust_primitives.Hax.array_of_list 1 list)
            (let list =
                [
                  Core.Fmt.Rt.impl_1__new_display #Alloc.String.t_String
                    (Sandwich.Implementation.Openssl3_impl.Support.errstr ()
                      <:
                      Alloc.String.t_String)
                  <:
                  Core.Fmt.Rt.t_Argument
                ]
              in
              FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
              Rust_primitives.Hax.array_of_list 1 list)
          <:
          Core.Fmt.t_Arguments)
    in
    Core.Result.Result_Err
    (Core.Convert.f_into #(Sandwich_proto.Errors.t_CertificateError & Alloc.String.t_String)
        #Sandwich.Error.t_Error
        #FStar.Tactics.Typeclasses.solve
        ((Sandwich_proto.Errors.CertificateError_CERTIFICATEERROR_UNSUPPORTED
            <:
            Sandwich_proto.Errors.t_CertificateError),
          (Core.Hint.must_use #Alloc.String.t_String res <: Alloc.String.t_String)
          <:
          (Sandwich_proto.Errors.t_CertificateError & Alloc.String.t_String)))
    <:
    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let set_default_cipher_list (self: t_SslContext) =
  match
    Core.Option.impl__ok_or #(Core.Ptr.Non_null.t_NonNull i8)
      #(Sandwich_proto.Errors.t_SystemError & string)
      (Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
          "rust_primitives::hax::failure(\"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\"core::ptr::non_null::impl_3__new\")::<int>(rust_primitives::hax::failure(\"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\"core::ptr::const_ptr::impl__cast_mut::<\\n        int,\\n    >(unsafe { openssl3::foreign_mod_3562::v_OSSL_default_cipher_list(Tuple0) })\"))"

        <:
        Core.Option.t_Option (Core.Ptr.Non_null.t_NonNull i8))
      ((Sandwich_proto.Errors.SystemError_SYSTEMERROR_BACKEND <: Sandwich_proto.Errors.t_SystemError
        ),
        "`OSSL_default_cipher_list` returned NULL"
        <:
        (Sandwich_proto.Errors.t_SystemError & string))
  with
  | Core.Result.Result_Ok cstr ->
    if
      (Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
          "rust_primitives::hax::failure(\n        \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n        \"openssl3::foreign_mod_3169::v_SSL_CTX_set_cipher_list\",\n    )(\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::non_null::impl_3__as_ptr::<\\n        openssl3::t_ssl_ctx_st,\\n    >(proj_sandwich::implementation::openssl3_impl::tunnel::context::_0(deref(self)))\",\n        ),\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"rust_primitives::hax::failure(\\n        \\\"(AST import) Fatal error: something we considered as impossible occurred! \\\\027[1mPlease report this by submitting an issue on GitHub!\\\\027[0m\\\\nDetails: Pointer, with [cast] being Types.MutToConstPointer\\\",\\n        \\\"{ Types.attributes = [];\\\\n  contents =\\\\n  Types.PointerCoercion {cast = Types.MutToConstPointer;\\\\n    source =\\\\n    { Types.attributes = [];\\\\n      contents =\\\\n      Types.Call {\\\\n        args =\\\\n        [{ Types.attributes = [];\\\\n           contents =\\\\n           Types.VarRef {\\\\n             id =\\\\n             { Types.id =\\\\n               { Types.local_id = \\\\\\\"44\\\\\\\";\\\\n                 owner =\\\\n                 { Types.index = (0, 322); is_local = true;\\\\n                   krate = \\\\\\\"sandwich\\\\\\\";\\\\n                   path =\\\\n                   [{ Types.data = (Types.TypeNs \\\\\\\"implementation\\\\\\\");\\\\n                      disambiguator = 0 };\\\\n                     { Types.data = (Types.TypeNs \\\\\\\"openssl3_impl\\\\\\\");\\\\n                       disambiguator = 0 };\\\\n                     { Types.data = (Types.TypeNs \\\\\\\"tunnel\\\\\\\");\\\\n                       disambiguator = 0 };\\\\n                     { Types.data = (Types.TypeNs \\\\\\\"context\\\\\\\");\\\\n                       disambiguator = 0 };\\\\n                     { Types.data = Types.Impl; disambiguator = 4 };\\\\n                     { Types.data = (Types.ValueNs \\\\\\\"set_default_cipher_list\\\\\\\");\\\\n                       disambiguator = 0 }\\\\n                     ]\\\\n                   }\\\\n                 };\\\\n               name = \\\\\\\"cstr\\\\\\\" }};\\\\n           hir_id = (Some (\\\\\\\"322\\\\\\\", \\\\\\\"59\\\\\\\"));\\\\n           span =\\\\n           { Types.filename =\\\\n             (Types.Real\\\\n                (Types.LocalPath\\\\n                   \\\\\\\"rust/implementation/openssl3_impl/tunnel/context.rs\\\\\\\"));\\\\n             hi = { Types.col = \\\\\\\"75\\\\\\\"; line = \\\\\\\"270\\\\\\\" };\\\\n             lo = { Types.col = \\\\\\\"71\\\\\\\"; line = \\\\\\\"270\\\\\\\" } };\\\\n           ty =\\\\n           { Types.kind =\\\\n             Types.Adt {\\\\n               def_id =\\\\n               { Types.index = (2, 2358); is_local = false; krate = \\\\\\\"core\\\\\\\";\\\\n                 path =\\\\n                 [{ Types.data = (Types.TypeNs \\\\\\\"ptr\\\\\\\"); disambiguator = 0 };\\\\n                   { Types.data = (Types.TypeNs \\\\\\\"non_null\\\\\\\");\\\\n                     disambiguator = 0 };\\\\n                   { Types.data = (Types.TypeNs \\\\\\\"NonNull\\\\\\\"); disambiguator = 0\\\\n                     }\\\\n                   ]\\\\n                 };\\\\n               generic_args =\\\\n               [(Types.Type { Types.kind = (Types.Int Types.I8) })];\\\\n               trait_refs = []}\\\\n             }\\\\n           }\\\\n          ];\\\\n        bounds_impls = [];\\\\n        fn_span =\\\\n        { Types.filename =\\\\n          (Types.Real\\\\n             (Types.LocalPath\\\\n                \\\\\\\"rust/implementation/openssl3_impl/tunnel/context.rs\\\\\\\"));\\\\n          hi = { Types.col = \\\\\\\"84\\\\\\\"; line = \\\\\\\"270\\\\\\\" };\\\\n          lo = { Types.col = \\\\\\\"76\\\\\\\"; line = \\\\\\\"270\\\\\\\" } };\\\\n        from_hir_call = true;\\\\n        fun' =\\\\n        { Types.attributes = [];\\\\n          contents =\\\\n          Types.GlobalName {\\\\n            id =\\\\n            { Types.index = (2, 2381); is_local = false; krate = \\\\\\\"core\\\\\\\";\\\\n              path =\\\\n              [{ Types.data = (Types.TypeNs \\\\\\\"ptr\\\\\\\"); disambiguator = 0 };\\\\n                { Types.data = (Types.TypeNs \\\\\\\"non_null\\\\\\\"); disambiguator = 0 };\\\\n                { Types.data = Types.Impl; disambiguator = 3 };\\\\n                { Types.data = (Types.ValueNs \\\\\\\"as_ptr\\\\\\\"); disambiguator = 0 }]\\\\n              }};\\\\n          hir_id = None;\\\\n          span =\\\\n          { Types.filename =\\\\n            (Types.Real\\\\n               (Types.LocalPath\\\\n                  \\\\\\\"rust/implementation/openssl3_impl/tunnel/context.rs\\\\\\\"));\\\\n            hi = { Types.col = \\\\\\\"82\\\\\\\"; line = \\\\\\\"270\\\\\\\" };\\\\n            lo = { Types.col = \\\\\\\"76\\\\\\\"; line = \\\\\\\"270\\\\\\\" } };\\\\n          ty =\\\\n          { Types.kind =\\\\n            (Types.Arrow\\\\n               { Types.bound_vars = [];\\\\n                 value =\\\\n                 { Types.abi = Types.Abi {todo = \\\\\\\"Rust\\\\\\\"}; c_variadic = false;\\\\n                   inputs =\\\\n                   [{ Types.kind =\\\\n                      Types.Adt {\\\\n                        def_id =\\\\n                        { Types.index = (2, 2358); is_local = false;\\\\n                          krate = \\\\\\\"core\\\\\\\";\\\\n                          path =\\\\n                          [{ Types.data = (Types.TypeNs \\\\\\\"ptr\\\\\\\");\\\\n                             disambiguator = 0 };\\\\n                            { Types.data = (Types.TypeNs \\\\\\\"non_null\\\\\\\");\\\\n                              disambiguator = 0 };\\\\n                            { Types.data = (Types.TypeNs \\\\\\\"NonNull\\\\\\\");\\\\n                              disambiguator = 0 }\\\\n                            ]\\\\n                          };\\\\n                        generic_args =\\\\n                        [(Types.Type { Types.kind = (Types.Int Types.I8) })];\\\\n                        trait_refs = []}\\\\n                      }\\\\n                     ];\\\\n                   output =\\\\n                   { Types.kind =\\\\n                     (Types.RawPtr\\\\n                        ({ Types.kind = (Types.Int Types.I8) }, true))\\\\n                     };\\\\n                   safety = Types.Safe }\\\\n                 })\\\\n            }\\\\n          };\\\\n        generic_args = [(Types.Type { Types.kind = (Types.Int Types.I8) })];\\\\n        trait = None;\\\\n        ty =\\\\n        { Types.kind =\\\\n          (Types.Arrow\\\\n             { Types.bound_vars = [];\\\\n               value =\\\\n               { Types.abi = Types.Abi {todo = \\\\\\\"Rust\\\\\\\"}; c_variadic = false;\\\\n                 inputs =\\\\n                 [{ Types.kind =\\\\n                    Types.Adt {\\\\n                      def_id =\\\\n                      { Types.index = (2, 2358); is_local = false;\\\\n                        krate = \\\\\\\"core\\\\\\\";\\\\n                        path =\\\\n                        [{ Types.data = (Types.TypeNs \\\\\\\"ptr\\\\\\\");\\\\n                           disambiguator = 0 };\\\\n                          { Types.data = (Types.TypeNs \\\\\\\"non_null\\\\\\\");\\\\n                            disambiguator = 0 };\\\\n                          { Types.data = (Types.TypeNs \\\\\\\"NonNull\\\\\\\");\\\\n                            disambiguator = 0 }\\\\n                          ]\\\\n                        };\\\\n                      generic_args =\\\\n                      [(Types.Type { Types.kind = (Types.Int Types.I8) })];\\\\n                      trait_refs = []}\\\\n                    }\\\\n                   ];\\\\n                 output =\\\\n                 { Types.kind =\\\\n                   (Types.RawPtr\\\\n                      ({ Types.kind = (Types.Int Types.I8) }, true))\\\\n                   };\\\\n                 safety = Types.Safe }\\\\n               })\\\\n          }};\\\\n      hir_id = None;\\\\n      span =\\\\n      { Types.filename =\\\\n        (Types.Real\\\\n           (Types.LocalPath\\\\n              \\\\\\\"rust/implementation/openssl3_impl/tunnel/context.rs\\\\\\\"));\\\\n        hi = { Types.col = \\\\\\\"84\\\\\\\"; line = \\\\\\\"270\\\\\\\" };\\\\n        lo = { Types.col = \\\\\\\"71\\\\\\\"; line = \\\\\\\"270\\\\\\\" } };\\\\n      ty =\\\\n      { Types.kind =\\\\n        (Types.RawPtr ({ Types.kind = (Types.Int Types.I8) }, true)) }\\\\n      }};\\\\n  hir_id = (Some (\\\\\\\"322\\\\\\\", \\\\\\\"57\\\\\\\"));\\\\n  span =\\\\n  { Types.filename =\\\\n    (Types.Real\\\\n       (Types.LocalPath \\\\\\\"rust/implementation/openssl3_impl/tunnel/context.rs\\\\\\\"));\\\\n    hi = { Types.col = \\\\\\\"84\\\\\\\"; line = \\\\\\\"270\\\\\\\" };\\\\n    lo = { Types.col = \\\\\\\"71\\\\\\\"; line = \\\\\\\"270\\\\\\\" } };\\\\n  ty =\\\\n  { Types.kind =\\\\n    (Types.RawPtr ({ Types.kind = (Types.Int Types.I8) }, false)) }\\\\n  }\\\",\\n    )\",\n        ),\n    )"

        <:
        i32) =.
      1l
    then
      Core.Result.Result_Ok (() <: Prims.unit)
      <:
      Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
    else
      let res:Alloc.String.t_String =
        Alloc.Fmt.format (Core.Fmt.impl_2__new_v1 (sz 1)
              (sz 1)
              (let list = ["failed to set the cipher list: "] in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                Rust_primitives.Hax.array_of_list 1 list)
              (let list =
                  [
                    Core.Fmt.Rt.impl_1__new_display #Alloc.String.t_String
                      (Sandwich.Implementation.Openssl3_impl.Support.errstr ()
                        <:
                        Alloc.String.t_String)
                    <:
                    Core.Fmt.Rt.t_Argument
                  ]
                in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                Rust_primitives.Hax.array_of_list 1 list)
            <:
            Core.Fmt.t_Arguments)
      in
      Core.Result.Result_Err
      (Core.Convert.f_into #(Sandwich_proto.Errors.t_TLSConfigurationError & Alloc.String.t_String)
          #Sandwich.Error.t_Error
          #FStar.Tactics.Typeclasses.solve
          ((Sandwich_proto.Errors.TLSConfigurationError_TLSCONFIGURATIONERROR_UNSUPPORTED_CIPHERSUITE
              <:
              Sandwich_proto.Errors.t_TLSConfigurationError),
            (Core.Hint.must_use #Alloc.String.t_String res <: Alloc.String.t_String)
            <:
            (Sandwich_proto.Errors.t_TLSConfigurationError & Alloc.String.t_String)))
      <:
      Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
  | Core.Result.Result_Err err ->
    Core.Result.Result_Err (Core.Convert.f_from #FStar.Tactics.Typeclasses.solve err)
    <:
    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let set_default_ciphersuites (self: t_SslContext) =
  match
    Core.Option.impl__ok_or #(Core.Ptr.Non_null.t_NonNull i8)
      #(Sandwich_proto.Errors.t_SystemError & string)
      (Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
          "rust_primitives::hax::failure(\"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\"core::ptr::non_null::impl_3__new\")::<int>(rust_primitives::hax::failure(\"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\"core::ptr::const_ptr::impl__cast_mut::<\\n        int,\\n    >(unsafe { openssl3::foreign_mod_3563::v_OSSL_default_ciphersuites(Tuple0) })\"))"

        <:
        Core.Option.t_Option (Core.Ptr.Non_null.t_NonNull i8))
      ((Sandwich_proto.Errors.SystemError_SYSTEMERROR_BACKEND <: Sandwich_proto.Errors.t_SystemError
        ),
        "`OSSL_default_ciphersuites` returned NULL"
        <:
        (Sandwich_proto.Errors.t_SystemError & string))
  with
  | Core.Result.Result_Ok cstr ->
    if
      (Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
          "rust_primitives::hax::failure(\n        \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n        \"openssl3::foreign_mod_3209::v_SSL_CTX_set_ciphersuites\",\n    )(\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::non_null::impl_3__as_ptr::<\\n        openssl3::t_ssl_ctx_st,\\n    >(proj_sandwich::implementation::openssl3_impl::tunnel::context::_0(deref(self)))\",\n        ),\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"rust_primitives::hax::failure(\\n        \\\"(AST import) Fatal error: something we considered as impossible occurred! \\\\027[1mPlease report this by submitting an issue on GitHub!\\\\027[0m\\\\nDetails: Pointer, with [cast] being Types.MutToConstPointer\\\",\\n        \\\"{ Types.attributes = [];\\\\n  contents =\\\\n  Types.PointerCoercion {cast = Types.MutToConstPointer;\\\\n    source =\\\\n    { Types.attributes = [];\\\\n      contents =\\\\n      Types.Call {\\\\n        args =\\\\n        [{ Types.attributes = [];\\\\n           contents =\\\\n           Types.VarRef {\\\\n             id =\\\\n             { Types.id =\\\\n               { Types.local_id = \\\\\\\"44\\\\\\\";\\\\n                 owner =\\\\n                 { Types.index = (0, 326); is_local = true;\\\\n                   krate = \\\\\\\"sandwich\\\\\\\";\\\\n                   path =\\\\n                   [{ Types.data = (Types.TypeNs \\\\\\\"implementation\\\\\\\");\\\\n                      disambiguator = 0 };\\\\n                     { Types.data = (Types.TypeNs \\\\\\\"openssl3_impl\\\\\\\");\\\\n                       disambiguator = 0 };\\\\n                     { Types.data = (Types.TypeNs \\\\\\\"tunnel\\\\\\\");\\\\n                       disambiguator = 0 };\\\\n                     { Types.data = (Types.TypeNs \\\\\\\"context\\\\\\\");\\\\n                       disambiguator = 0 };\\\\n                     { Types.data = Types.Impl; disambiguator = 4 };\\\\n                     { Types.data =\\\\n                       (Types.ValueNs \\\\\\\"set_default_ciphersuites\\\\\\\");\\\\n                       disambiguator = 0 }\\\\n                     ]\\\\n                   }\\\\n                 };\\\\n               name = \\\\\\\"cstr\\\\\\\" }};\\\\n           hir_id = (Some (\\\\\\\"326\\\\\\\", \\\\\\\"59\\\\\\\"));\\\\n           span =\\\\n           { Types.filename =\\\\n             (Types.Real\\\\n                (Types.LocalPath\\\\n                   \\\\\\\"rust/implementation/openssl3_impl/tunnel/context.rs\\\\\\\"));\\\\n             hi = { Types.col = \\\\\\\"76\\\\\\\"; line = \\\\\\\"314\\\\\\\" };\\\\n             lo = { Types.col = \\\\\\\"72\\\\\\\"; line = \\\\\\\"314\\\\\\\" } };\\\\n           ty =\\\\n           { Types.kind =\\\\n             Types.Adt {\\\\n               def_id =\\\\n               { Types.index = (2, 2358); is_local = false; krate = \\\\\\\"core\\\\\\\";\\\\n                 path =\\\\n                 [{ Types.data = (Types.TypeNs \\\\\\\"ptr\\\\\\\"); disambiguator = 0 };\\\\n                   { Types.data = (Types.TypeNs \\\\\\\"non_null\\\\\\\");\\\\n                     disambiguator = 0 };\\\\n                   { Types.data = (Types.TypeNs \\\\\\\"NonNull\\\\\\\"); disambiguator = 0\\\\n                     }\\\\n                   ]\\\\n                 };\\\\n               generic_args =\\\\n               [(Types.Type { Types.kind = (Types.Int Types.I8) })];\\\\n               trait_refs = []}\\\\n             }\\\\n           }\\\\n          ];\\\\n        bounds_impls = [];\\\\n        fn_span =\\\\n        { Types.filename =\\\\n          (Types.Real\\\\n             (Types.LocalPath\\\\n                \\\\\\\"rust/implementation/openssl3_impl/tunnel/context.rs\\\\\\\"));\\\\n          hi = { Types.col = \\\\\\\"85\\\\\\\"; line = \\\\\\\"314\\\\\\\" };\\\\n          lo = { Types.col = \\\\\\\"77\\\\\\\"; line = \\\\\\\"314\\\\\\\" } };\\\\n        from_hir_call = true;\\\\n        fun' =\\\\n        { Types.attributes = [];\\\\n          contents =\\\\n          Types.GlobalName {\\\\n            id =\\\\n            { Types.index = (2, 2381); is_local = false; krate = \\\\\\\"core\\\\\\\";\\\\n              path =\\\\n              [{ Types.data = (Types.TypeNs \\\\\\\"ptr\\\\\\\"); disambiguator = 0 };\\\\n                { Types.data = (Types.TypeNs \\\\\\\"non_null\\\\\\\"); disambiguator = 0 };\\\\n                { Types.data = Types.Impl; disambiguator = 3 };\\\\n                { Types.data = (Types.ValueNs \\\\\\\"as_ptr\\\\\\\"); disambiguator = 0 }]\\\\n              }};\\\\n          hir_id = None;\\\\n          span =\\\\n          { Types.filename =\\\\n            (Types.Real\\\\n               (Types.LocalPath\\\\n                  \\\\\\\"rust/implementation/openssl3_impl/tunnel/context.rs\\\\\\\"));\\\\n            hi = { Types.col = \\\\\\\"83\\\\\\\"; line = \\\\\\\"314\\\\\\\" };\\\\n            lo = { Types.col = \\\\\\\"77\\\\\\\"; line = \\\\\\\"314\\\\\\\" } };\\\\n          ty =\\\\n          { Types.kind =\\\\n            (Types.Arrow\\\\n               { Types.bound_vars = [];\\\\n                 value =\\\\n                 { Types.abi = Types.Abi {todo = \\\\\\\"Rust\\\\\\\"}; c_variadic = false;\\\\n                   inputs =\\\\n                   [{ Types.kind =\\\\n                      Types.Adt {\\\\n                        def_id =\\\\n                        { Types.index = (2, 2358); is_local = false;\\\\n                          krate = \\\\\\\"core\\\\\\\";\\\\n                          path =\\\\n                          [{ Types.data = (Types.TypeNs \\\\\\\"ptr\\\\\\\");\\\\n                             disambiguator = 0 };\\\\n                            { Types.data = (Types.TypeNs \\\\\\\"non_null\\\\\\\");\\\\n                              disambiguator = 0 };\\\\n                            { Types.data = (Types.TypeNs \\\\\\\"NonNull\\\\\\\");\\\\n                              disambiguator = 0 }\\\\n                            ]\\\\n                          };\\\\n                        generic_args =\\\\n                        [(Types.Type { Types.kind = (Types.Int Types.I8) })];\\\\n                        trait_refs = []}\\\\n                      }\\\\n                     ];\\\\n                   output =\\\\n                   { Types.kind =\\\\n                     (Types.RawPtr\\\\n                        ({ Types.kind = (Types.Int Types.I8) }, true))\\\\n                     };\\\\n                   safety = Types.Safe }\\\\n                 })\\\\n            }\\\\n          };\\\\n        generic_args = [(Types.Type { Types.kind = (Types.Int Types.I8) })];\\\\n        trait = None;\\\\n        ty =\\\\n        { Types.kind =\\\\n          (Types.Arrow\\\\n             { Types.bound_vars = [];\\\\n               value =\\\\n               { Types.abi = Types.Abi {todo = \\\\\\\"Rust\\\\\\\"}; c_variadic = false;\\\\n                 inputs =\\\\n                 [{ Types.kind =\\\\n                    Types.Adt {\\\\n                      def_id =\\\\n                      { Types.index = (2, 2358); is_local = false;\\\\n                        krate = \\\\\\\"core\\\\\\\";\\\\n                        path =\\\\n                        [{ Types.data = (Types.TypeNs \\\\\\\"ptr\\\\\\\");\\\\n                           disambiguator = 0 };\\\\n                          { Types.data = (Types.TypeNs \\\\\\\"non_null\\\\\\\");\\\\n                            disambiguator = 0 };\\\\n                          { Types.data = (Types.TypeNs \\\\\\\"NonNull\\\\\\\");\\\\n                            disambiguator = 0 }\\\\n                          ]\\\\n                        };\\\\n                      generic_args =\\\\n                      [(Types.Type { Types.kind = (Types.Int Types.I8) })];\\\\n                      trait_refs = []}\\\\n                    }\\\\n                   ];\\\\n                 output =\\\\n                 { Types.kind =\\\\n                   (Types.RawPtr\\\\n                      ({ Types.kind = (Types.Int Types.I8) }, true))\\\\n                   };\\\\n                 safety = Types.Safe }\\\\n               })\\\\n          }};\\\\n      hir_id = None;\\\\n      span =\\\\n      { Types.filename =\\\\n        (Types.Real\\\\n           (Types.LocalPath\\\\n              \\\\\\\"rust/implementation/openssl3_impl/tunnel/context.rs\\\\\\\"));\\\\n        hi = { Types.col = \\\\\\\"85\\\\\\\"; line = \\\\\\\"314\\\\\\\" };\\\\n        lo = { Types.col = \\\\\\\"72\\\\\\\"; line = \\\\\\\"314\\\\\\\" } };\\\\n      ty =\\\\n      { Types.kind =\\\\n        (Types.RawPtr ({ Types.kind = (Types.Int Types.I8) }, true)) }\\\\n      }};\\\\n  hir_id = (Some (\\\\\\\"326\\\\\\\", \\\\\\\"57\\\\\\\"));\\\\n  span =\\\\n  { Types.filename =\\\\n    (Types.Real\\\\n       (Types.LocalPath \\\\\\\"rust/implementation/openssl3_impl/tunnel/context.rs\\\\\\\"));\\\\n    hi = { Types.col = \\\\\\\"85\\\\\\\"; line = \\\\\\\"314\\\\\\\" };\\\\n    lo = { Types.col = \\\\\\\"72\\\\\\\"; line = \\\\\\\"314\\\\\\\" } };\\\\n  ty =\\\\n  { Types.kind =\\\\n    (Types.RawPtr ({ Types.kind = (Types.Int Types.I8) }, false)) }\\\\n  }\\\",\\n    )\",\n        ),\n    )"

        <:
        i32) =.
      1l
    then
      Core.Result.Result_Ok (() <: Prims.unit)
      <:
      Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
    else
      let res:Alloc.String.t_String =
        Alloc.Fmt.format (Core.Fmt.impl_2__new_v1 (sz 1)
              (sz 1)
              (let list = ["failed to set the ciphersuites: "] in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                Rust_primitives.Hax.array_of_list 1 list)
              (let list =
                  [
                    Core.Fmt.Rt.impl_1__new_display #Alloc.String.t_String
                      (Sandwich.Implementation.Openssl3_impl.Support.errstr ()
                        <:
                        Alloc.String.t_String)
                    <:
                    Core.Fmt.Rt.t_Argument
                  ]
                in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                Rust_primitives.Hax.array_of_list 1 list)
            <:
            Core.Fmt.t_Arguments)
      in
      Core.Result.Result_Err
      (Core.Convert.f_into #(Sandwich_proto.Errors.t_TLSConfigurationError & Alloc.String.t_String)
          #Sandwich.Error.t_Error
          #FStar.Tactics.Typeclasses.solve
          ((Sandwich_proto.Errors.TLSConfigurationError_TLSCONFIGURATIONERROR_UNSUPPORTED_CIPHERSUITE
              <:
              Sandwich_proto.Errors.t_TLSConfigurationError),
            (Core.Hint.must_use #Alloc.String.t_String res <: Alloc.String.t_String)
            <:
            (Sandwich_proto.Errors.t_TLSConfigurationError & Alloc.String.t_String)))
      <:
      Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
  | Core.Result.Result_Err err ->
    Core.Result.Result_Err (Core.Convert.f_from #FStar.Tactics.Typeclasses.solve err)
    <:
    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let set_default_parameters (self: t_SslContext) =
  let _:Prims.unit =
    Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
      "rust_primitives::hax::failure(\n        \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n        \"openssl3::foreign_mod_3429::v_SSL_CTX_set_quiet_shutdown\",\n    )(\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::non_null::impl_3__as_ptr::<\\n        openssl3::t_ssl_ctx_st,\\n    >(proj_sandwich::implementation::openssl3_impl::tunnel::context::_0(deref(self)))\",\n        ),\n        sandwich::implementation::openssl3_impl::tunnel::context::impl_4__set_default_parameters__DISABLED,\n    )"

  in
  let _:Prims.unit = () in
  let _:Prims.unit = disable_session_cache_mode self in
  let _:Prims.unit = set_mode_release_buffers self in
  initialize_trusted_cert_store self

let set_kes
      (#impl_488124255_: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()] i5: Core.Convert.t_AsRef impl_488124255_ string)
      (self: t_SslContext)
      (kes: t_Slice impl_488124255_)
     =
  if Core.Slice.impl__is_empty #impl_488124255_ kes
  then
    Core.Result.Result_Err
    (Core.Convert.f_into #(Sandwich_proto.Errors.t_KEMError & string)
        #Sandwich.Error.t_Error
        #FStar.Tactics.Typeclasses.solve
        ((Sandwich_proto.Errors.KEMError_KEMERROR_INVALID <: Sandwich_proto.Errors.t_KEMError),
          "no KE specified"
          <:
          (Sandwich_proto.Errors.t_KEMError & string)))
    <:
    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
  else
    match
      Core.Result.impl__map_err #Alloc.Ffi.C_str.t_CString
        #Alloc.Ffi.C_str.t_NulError
        #(Sandwich_proto.Errors.t_SystemError & Alloc.String.t_String)
        (Alloc.Ffi.C_str.impl__CString__new #Alloc.String.t_String
            (Alloc.Slice.impl__join #string
                #string
                (Core.Ops.Deref.f_deref #(Alloc.Vec.t_Vec string Alloc.Alloc.t_Global)
                    #FStar.Tactics.Typeclasses.solve
                    (Core.Iter.Traits.Iterator.f_collect #(Core.Iter.Adapters.Map.t_Map
                            (Core.Slice.Iter.t_Iter impl_488124255_) (impl_488124255_ -> string))
                        #FStar.Tactics.Typeclasses.solve
                        #(Alloc.Vec.t_Vec string Alloc.Alloc.t_Global)
                        (Core.Iter.Traits.Iterator.f_map #(Core.Slice.Iter.t_Iter impl_488124255_)
                            #FStar.Tactics.Typeclasses.solve
                            #string
                            (Core.Slice.impl__iter #impl_488124255_ kes
                              <:
                              Core.Slice.Iter.t_Iter impl_488124255_)
                            (fun s ->
                                let s:impl_488124255_ = s in
                                Core.Convert.f_as_ref #impl_488124255_
                                  #string
                                  #FStar.Tactics.Typeclasses.solve
                                  s
                                <:
                                string)
                          <:
                          Core.Iter.Adapters.Map.t_Map (Core.Slice.Iter.t_Iter impl_488124255_)
                            (impl_488124255_ -> string))
                      <:
                      Alloc.Vec.t_Vec string Alloc.Alloc.t_Global)
                  <:
                  t_Slice string)
                ":"
              <:
              Alloc.String.t_String)
          <:
          Core.Result.t_Result Alloc.Ffi.C_str.t_CString Alloc.Ffi.C_str.t_NulError)
        (fun e ->
            let e:Alloc.Ffi.C_str.t_NulError = e in
            let res:Alloc.String.t_String =
              Alloc.Fmt.format (Core.Fmt.impl_2__new_v1 (sz 1)
                    (sz 1)
                    (let list = ["failed to create the string list of KEs: "] in
                      FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                      Rust_primitives.Hax.array_of_list 1 list)
                    (let list =
                        [
                          Core.Fmt.Rt.impl_1__new_display #Alloc.Ffi.C_str.t_NulError e
                          <:
                          Core.Fmt.Rt.t_Argument
                        ]
                      in
                      FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                      Rust_primitives.Hax.array_of_list 1 list)
                  <:
                  Core.Fmt.t_Arguments)
            in
            (Sandwich_proto.Errors.SystemError_SYSTEMERROR_MEMORY
              <:
              Sandwich_proto.Errors.t_SystemError),
            Core.Hint.must_use #Alloc.String.t_String res
            <:
            (Sandwich_proto.Errors.t_SystemError & Alloc.String.t_String))
    with
    | Core.Result.Result_Ok list ->
      if
        (Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
            "rust_primitives::hax::failure(\n        \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n        \"openssl3::foreign_mod_3371::v_SSL_CTX_ctrl\",\n    )(\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::non_null::impl_3__as_ptr::<\\n        openssl3::t_ssl_ctx_st,\\n    >(proj_sandwich::implementation::openssl3_impl::tunnel::context::_0(deref(self)))\",\n        ),\n        cast(openssl3::v_SSL_CTRL_SET_GROUPS_LIST),\n        0,\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::mut_ptr::impl__cast::<\\n        int,\\n        core::ffi::t_c_void,\\n    >(\\n        core::ptr::const_ptr::impl__cast_mut::<\\n            int,\\n        >(\\n            core::ffi::c_str::impl__CStr__as_ptr(\\n                &(deref(core::ops::deref::f_deref(&(list)))),\\n            ),\\n        ),\\n    )\",\n        ),\n    )"

          <:
          i64) =.
        1L
      then
        Core.Result.Result_Ok (() <: Prims.unit)
        <:
        Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
      else
        Core.Result.Result_Err
        (Core.Convert.f_into #(Sandwich_proto.Errors.t_KEMError & Alloc.String.t_String)
            #Sandwich.Error.t_Error
            #FStar.Tactics.Typeclasses.solve
            ((Sandwich_proto.Errors.KEMError_KEMERROR_INVALID <: Sandwich_proto.Errors.t_KEMError),
              (Sandwich.Implementation.Openssl3_impl.Support.errstr () <: Alloc.String.t_String)
              <:
              (Sandwich_proto.Errors.t_KEMError & Alloc.String.t_String)))
        <:
        Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
    | Core.Result.Result_Err err ->
      Core.Result.Result_Err (Core.Convert.f_from #FStar.Tactics.Typeclasses.solve err)
      <:
      Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let set_maximum_tls_version (self: t_SslContext) (version: Sandwich.Tunnel.Tls.t_TlsVersion) =
  if
    (Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
        "rust_primitives::hax::failure(\n        \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n        \"openssl3::foreign_mod_3371::v_SSL_CTX_ctrl\",\n    )(\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::non_null::impl_3__as_ptr::<\\n        openssl3::t_ssl_ctx_st,\\n    >(proj_sandwich::implementation::openssl3_impl::tunnel::context::_0(deref(self)))\",\n        ),\n        cast(openssl3::v_SSL_CTRL_SET_MAX_PROTO_VERSION),\n        core::convert::f_into(version),\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::null_mut::<core::ffi::t_c_void>(Tuple0)\",\n        ),\n    )"

      <:
      i64) =.
    1L
  then
    Core.Result.Result_Ok (() <: Prims.unit)
    <:
    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
  else
    let res:Alloc.String.t_String =
      Alloc.Fmt.format (Core.Fmt.impl_2__new_v1 (sz 1)
            (sz 1)
            (let list = ["failed to set the maximum TLS version: "] in
              FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
              Rust_primitives.Hax.array_of_list 1 list)
            (let list =
                [
                  Core.Fmt.Rt.impl_1__new_display #Alloc.String.t_String
                    (Sandwich.Implementation.Openssl3_impl.Support.errstr ()
                      <:
                      Alloc.String.t_String)
                  <:
                  Core.Fmt.Rt.t_Argument
                ]
              in
              FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
              Rust_primitives.Hax.array_of_list 1 list)
          <:
          Core.Fmt.t_Arguments)
    in
    Core.Result.Result_Err
    (Core.Convert.f_into #(Sandwich_proto.Errors.t_TLSConfigurationError & Alloc.String.t_String)
        #Sandwich.Error.t_Error
        #FStar.Tactics.Typeclasses.solve
        ((Sandwich_proto.Errors.TLSConfigurationError_TLSCONFIGURATIONERROR_UNSUPPORTED_PROTOCOL_VERSION
            <:
            Sandwich_proto.Errors.t_TLSConfigurationError),
          (Core.Hint.must_use #Alloc.String.t_String res <: Alloc.String.t_String)
          <:
          (Sandwich_proto.Errors.t_TLSConfigurationError & Alloc.String.t_String)))
    <:
    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let set_minimum_tls_version (self: t_SslContext) (version: Sandwich.Tunnel.Tls.t_TlsVersion) =
  if
    (Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
        "rust_primitives::hax::failure(\n        \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n        \"openssl3::foreign_mod_3371::v_SSL_CTX_ctrl\",\n    )(\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::non_null::impl_3__as_ptr::<\\n        openssl3::t_ssl_ctx_st,\\n    >(proj_sandwich::implementation::openssl3_impl::tunnel::context::_0(deref(self)))\",\n        ),\n        cast(openssl3::v_SSL_CTRL_SET_MIN_PROTO_VERSION),\n        core::convert::f_into(version),\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::null_mut::<core::ffi::t_c_void>(Tuple0)\",\n        ),\n    )"

      <:
      i64) =.
    1L
  then
    Core.Result.Result_Ok (() <: Prims.unit)
    <:
    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
  else
    let res:Alloc.String.t_String =
      Alloc.Fmt.format (Core.Fmt.impl_2__new_v1 (sz 1)
            (sz 1)
            (let list = ["failed to set the minimum TLS version: "] in
              FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
              Rust_primitives.Hax.array_of_list 1 list)
            (let list =
                [
                  Core.Fmt.Rt.impl_1__new_display #Alloc.String.t_String
                    (Sandwich.Implementation.Openssl3_impl.Support.errstr ()
                      <:
                      Alloc.String.t_String)
                  <:
                  Core.Fmt.Rt.t_Argument
                ]
              in
              FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
              Rust_primitives.Hax.array_of_list 1 list)
          <:
          Core.Fmt.t_Arguments)
    in
    Core.Result.Result_Err
    (Core.Convert.f_into #(Sandwich_proto.Errors.t_TLSConfigurationError & Alloc.String.t_String)
        #Sandwich.Error.t_Error
        #FStar.Tactics.Typeclasses.solve
        ((Sandwich_proto.Errors.TLSConfigurationError_TLSCONFIGURATIONERROR_UNSUPPORTED_PROTOCOL_VERSION
            <:
            Sandwich_proto.Errors.t_TLSConfigurationError),
          (Core.Hint.must_use #Alloc.String.t_String res <: Alloc.String.t_String)
          <:
          (Sandwich_proto.Errors.t_TLSConfigurationError & Alloc.String.t_String)))
    <:
    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let set_min_and_max_tls_version
      (self: t_SslContext)
      (tls_options: Sandwich_api_proto.Tls.t_TLSOptions)
     =
  let min_version, max_version:(Sandwich.Tunnel.Tls.t_TlsVersion & Sandwich.Tunnel.Tls.t_TlsVersion)
  =
    tls_options_get_min_max_tls_version tls_options
  in
  match set_minimum_tls_version self min_version with
  | Core.Result.Result_Ok _ -> set_maximum_tls_version self max_version
  | Core.Result.Result_Err err ->
    Core.Result.Result_Err err <: Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let set_private_key
      (self: t_SslContext)
      (private_key: Core.Ptr.Non_null.t_NonNull Openssl3.t_evp_pkey_st)
     =
  if
    (Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
        "rust_primitives::hax::failure(\n        \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n        \"openssl3::foreign_mod_3292::v_SSL_CTX_use_PrivateKey\",\n    )(\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::non_null::impl_3__as_ptr::<\\n        openssl3::t_ssl_ctx_st,\\n    >(proj_sandwich::implementation::openssl3_impl::tunnel::context::_0(deref(self)))\",\n        ),\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::non_null::impl_3__as_ptr::<openssl3::t_evp_pkey_st>(private_key)\",\n        ),\n    )"

      <:
      i32) <>.
    1l
  then
    let res:Alloc.String.t_String =
      Alloc.Fmt.format (Core.Fmt.impl_2__new_v1 (sz 1)
            (sz 1)
            (let list = ["failed to use private key for authentication: "] in
              FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
              Rust_primitives.Hax.array_of_list 1 list)
            (let list =
                [
                  Core.Fmt.Rt.impl_1__new_display #Alloc.String.t_String
                    (Sandwich.Implementation.Openssl3_impl.Support.errstr ()
                      <:
                      Alloc.String.t_String)
                  <:
                  Core.Fmt.Rt.t_Argument
                ]
              in
              FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
              Rust_primitives.Hax.array_of_list 1 list)
          <:
          Core.Fmt.t_Arguments)
    in
    Core.Result.Result_Err
    (Core.Convert.f_into #(Sandwich_proto.Errors.t_PrivateKeyError & Alloc.String.t_String)
        #Sandwich.Error.t_Error
        #FStar.Tactics.Typeclasses.solve
        ((Sandwich_proto.Errors.PrivateKeyError_PRIVATEKEYERROR_UNSUPPORTED
            <:
            Sandwich_proto.Errors.t_PrivateKeyError),
          (Core.Hint.must_use #Alloc.String.t_String res <: Alloc.String.t_String)
          <:
          (Sandwich_proto.Errors.t_PrivateKeyError & Alloc.String.t_String)))
    <:
    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
  else
    if
      (Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
          "rust_primitives::hax::failure(\n        \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n        \"openssl3::foreign_mod_3305::v_SSL_CTX_check_private_key\",\n    )(\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"rust_primitives::hax::failure(\\n        \\\"(AST import) Fatal error: something we considered as impossible occurred! \\\\027[1mPlease report this by submitting an issue on GitHub!\\\\027[0m\\\\nDetails: Pointer, with [cast] being Types.MutToConstPointer\\\",\\n        \\\"{ Types.attributes = [];\\\\n  contents =\\\\n  Types.PointerCoercion {cast = Types.MutToConstPointer;\\\\n    source =\\\\n    { Types.attributes = [];\\\\n      contents =\\\\n      Types.Call {\\\\n        args =\\\\n        [{ Types.attributes = [];\\\\n           contents =\\\\n           Types.Field {\\\\n             field =\\\\n             { Types.index = (0, 306); is_local = true; krate = \\\\\\\"sandwich\\\\\\\";\\\\n               path =\\\\n               [{ Types.data = (Types.TypeNs \\\\\\\"implementation\\\\\\\");\\\\n                  disambiguator = 0 };\\\\n                 { Types.data = (Types.TypeNs \\\\\\\"openssl3_impl\\\\\\\");\\\\n                   disambiguator = 0 };\\\\n                 { Types.data = (Types.TypeNs \\\\\\\"tunnel\\\\\\\"); disambiguator = 0 };\\\\n                 { Types.data = (Types.TypeNs \\\\\\\"context\\\\\\\"); disambiguator = 0 };\\\\n                 { Types.data = (Types.TypeNs \\\\\\\"SslContext\\\\\\\");\\\\n                   disambiguator = 0 };\\\\n                 { Types.data = (Types.ValueNs \\\\\\\"0\\\\\\\"); disambiguator = 0 }]\\\\n               };\\\\n             lhs =\\\\n             { Types.attributes = [];\\\\n               contents =\\\\n               Types.Deref {\\\\n                 arg =\\\\n                 { Types.attributes = [];\\\\n                   contents =\\\\n                   Types.VarRef {\\\\n                     id =\\\\n                     { Types.id =\\\\n                       { Types.local_id = \\\\\\\"2\\\\\\\";\\\\n                         owner =\\\\n                         { Types.index = (0, 338); is_local = true;\\\\n                           krate = \\\\\\\"sandwich\\\\\\\";\\\\n                           path =\\\\n                           [{ Types.data = (Types.TypeNs \\\\\\\"implementation\\\\\\\");\\\\n                              disambiguator = 0 };\\\\n                             { Types.data = (Types.TypeNs \\\\\\\"openssl3_impl\\\\\\\");\\\\n                               disambiguator = 0 };\\\\n                             { Types.data = (Types.TypeNs \\\\\\\"tunnel\\\\\\\");\\\\n                               disambiguator = 0 };\\\\n                             { Types.data = (Types.TypeNs \\\\\\\"context\\\\\\\");\\\\n                               disambiguator = 0 };\\\\n                             { Types.data = Types.Impl; disambiguator = 4 };\\\\n                             { Types.data = (Types.ValueNs \\\\\\\"set_private_key\\\\\\\");\\\\n                               disambiguator = 0 }\\\\n                             ]\\\\n                           }\\\\n                         };\\\\n                       name = \\\\\\\"self\\\\\\\" }};\\\\n                   hir_id = None;\\\\n                   span =\\\\n                   { Types.filename =\\\\n                     (Types.Real\\\\n                        (Types.LocalPath\\\\n                           \\\\\\\"rust/implementation/openssl3_impl/tunnel/context.rs\\\\\\\"));\\\\n                     hi = { Types.col = \\\\\\\"60\\\\\\\"; line = \\\\\\\"475\\\\\\\" };\\\\n                     lo = { Types.col = \\\\\\\"56\\\\\\\"; line = \\\\\\\"475\\\\\\\" } };\\\\n                   ty =\\\\n                   { Types.kind =\\\\n                     (Types.Ref\\\\n                        ({ Types.kind = Types.ReErased },\\\\n                         { Types.kind =\\\\n                           Types.Adt {\\\\n                             def_id =\\\\n                             { Types.index = (0, 304); is_local = true;\\\\n                               krate = \\\\\\\"sandwich\\\\\\\";\\\\n                               path =\\\\n                               [{ Types.data =\\\\n                                  (Types.TypeNs \\\\\\\"implementation\\\\\\\");\\\\n                                  disambiguator = 0 };\\\\n                                 { Types.data =\\\\n                                   (Types.TypeNs \\\\\\\"openssl3_impl\\\\\\\");\\\\n                                   disambiguator = 0 };\\\\n                                 { Types.data = (Types.TypeNs \\\\\\\"tunnel\\\\\\\");\\\\n                                   disambiguator = 0 };\\\\n                                 { Types.data = (Types.TypeNs \\\\\\\"context\\\\\\\");\\\\n                                   disambiguator = 0 };\\\\n                                 { Types.data = (Types.TypeNs \\\\\\\"SslContext\\\\\\\");\\\\n                                   disambiguator = 0 }\\\\n                                 ]\\\\n                               };\\\\n                             generic_args = []; trait_refs = []}\\\\n                           },\\\\n                         false))\\\\n                     }\\\\n                   }};\\\\n               hir_id = (Some (\\\\\\\"338\\\\\\\", \\\\\\\"86\\\\\\\"));\\\\n               span =\\\\n               { Types.filename =\\\\n                 (Types.Real\\\\n                    (Types.LocalPath\\\\n                       \\\\\\\"rust/implementation/openssl3_impl/tunnel/context.rs\\\\\\\"));\\\\n                 hi = { Types.col = \\\\\\\"60\\\\\\\"; line = \\\\\\\"475\\\\\\\" };\\\\n                 lo = { Types.col = \\\\\\\"56\\\\\\\"; line = \\\\\\\"475\\\\\\\" } };\\\\n               ty =\\\\n               { Types.kind =\\\\n                 Types.Adt {\\\\n                   def_id =\\\\n                   { Types.index = (0, 304); is_local = true;\\\\n                     krate = \\\\\\\"sandwich\\\\\\\";\\\\n                     path =\\\\n                     [{ Types.data = (Types.TypeNs \\\\\\\"implementation\\\\\\\");\\\\n                        disambiguator = 0 };\\\\n                       { Types.data = (Types.TypeNs \\\\\\\"openssl3_impl\\\\\\\");\\\\n                         disambiguator = 0 };\\\\n                       { Types.data = (Types.TypeNs \\\\\\\"tunnel\\\\\\\");\\\\n                         disambiguator = 0 };\\\\n                       { Types.data = (Types.TypeNs \\\\\\\"context\\\\\\\");\\\\n                         disambiguator = 0 };\\\\n                       { Types.data = (Types.TypeNs \\\\\\\"SslContext\\\\\\\");\\\\n                         disambiguator = 0 }\\\\n                       ]\\\\n                     };\\\\n                   generic_args = []; trait_refs = []}\\\\n                 }\\\\n               }};\\\\n           hir_id = (Some (\\\\\\\"338\\\\\\\", \\\\\\\"85\\\\\\\"));\\\\n           span =\\\\n           { Types.filename =\\\\n             (Types.Real\\\\n                (Types.LocalPath\\\\n                   \\\\\\\"rust/implementation/openssl3_impl/tunnel/context.rs\\\\\\\"));\\\\n             hi = { Types.col = \\\\\\\"62\\\\\\\"; line = \\\\\\\"475\\\\\\\" };\\\\n             lo = { Types.col = \\\\\\\"56\\\\\\\"; line = \\\\\\\"475\\\\\\\" } };\\\\n           ty =\\\\n           { Types.kind =\\\\n             Types.Adt {\\\\n               def_id =\\\\n               { Types.index = (2, 2358); is_local = false; krate = \\\\\\\"core\\\\\\\";\\\\n                 path =\\\\n                 [{ Types.data = (Types.TypeNs \\\\\\\"ptr\\\\\\\"); disambiguator = 0 };\\\\n                   { Types.data = (Types.TypeNs \\\\\\\"non_null\\\\\\\");\\\\n                     disambiguator = 0 };\\\\n                   { Types.data = (Types.TypeNs \\\\\\\"NonNull\\\\\\\"); disambiguator = 0\\\\n                     }\\\\n                   ]\\\\n                 };\\\\n               generic_args =\\\\n               [(Types.Type\\\\n                   { Types.kind =\\\\n                     Types.Adt {\\\\n                       def_id =\\\\n                       { Types.index = (27, 21403); is_local = false;\\\\n                         krate = \\\\\\\"openssl3\\\\\\\";\\\\n                         path =\\\\n                         [{ Types.data = (Types.TypeNs \\\\\\\"ssl_ctx_st\\\\\\\");\\\\n                            disambiguator = 0 }\\\\n                           ]\\\\n                         };\\\\n                       generic_args = []; trait_refs = []}\\\\n                     })\\\\n                 ];\\\\n               trait_refs = []}\\\\n             }\\\\n           }\\\\n          ];\\\\n        bounds_impls = [];\\\\n        fn_span =\\\\n        { Types.filename =\\\\n          (Types.Real\\\\n             (Types.LocalPath\\\\n                \\\\\\\"rust/implementation/openssl3_impl/tunnel/context.rs\\\\\\\"));\\\\n          hi = { Types.col = \\\\\\\"71\\\\\\\"; line = \\\\\\\"475\\\\\\\" };\\\\n          lo = { Types.col = \\\\\\\"63\\\\\\\"; line = \\\\\\\"475\\\\\\\" } };\\\\n        from_hir_call = true;\\\\n        fun' =\\\\n        { Types.attributes = [];\\\\n          contents =\\\\n          Types.GlobalName {\\\\n            id =\\\\n            { Types.index = (2, 2381); is_local = false; krate = \\\\\\\"core\\\\\\\";\\\\n              path =\\\\n              [{ Types.data = (Types.TypeNs \\\\\\\"ptr\\\\\\\"); disambiguator = 0 };\\\\n                { Types.data = (Types.TypeNs \\\\\\\"non_null\\\\\\\"); disambiguator = 0 };\\\\n                { Types.data = Types.Impl; disambiguator = 3 };\\\\n                { Types.data = (Types.ValueNs \\\\\\\"as_ptr\\\\\\\"); disambiguator = 0 }]\\\\n              }};\\\\n          hir_id = None;\\\\n          span =\\\\n          { Types.filename =\\\\n            (Types.Real\\\\n               (Types.LocalPath\\\\n                  \\\\\\\"rust/implementation/openssl3_impl/tunnel/context.rs\\\\\\\"));\\\\n            hi = { Types.col = \\\\\\\"69\\\\\\\"; line = \\\\\\\"475\\\\\\\" };\\\\n            lo = { Types.col = \\\\\\\"63\\\\\\\"; line = \\\\\\\"475\\\\\\\" } };\\\\n          ty =\\\\n          { Types.kind =\\\\n            (Types.Arrow\\\\n               { Types.bound_vars = [];\\\\n                 value =\\\\n                 { Types.abi = Types.Abi {todo = \\\\\\\"Rust\\\\\\\"}; c_variadic = false;\\\\n                   inputs =\\\\n                   [{ Types.kind =\\\\n                      Types.Adt {\\\\n                        def_id =\\\\n                        { Types.index = (2, 2358); is_local = false;\\\\n                          krate = \\\\\\\"core\\\\\\\";\\\\n                          path =\\\\n                          [{ Types.data = (Types.TypeNs \\\\\\\"ptr\\\\\\\");\\\\n                             disambiguator = 0 };\\\\n                            { Types.data = (Types.TypeNs \\\\\\\"non_null\\\\\\\");\\\\n                              disambiguator = 0 };\\\\n                            { Types.data = (Types.TypeNs \\\\\\\"NonNull\\\\\\\");\\\\n                              disambiguator = 0 }\\\\n                            ]\\\\n                          };\\\\n                        generic_args =\\\\n                        [(Types.Type\\\\n                            { Types.kind =\\\\n                              Types.Adt {\\\\n                                def_id =\\\\n                                { Types.index = (27, 21403);\\\\n                                  is_local = false; krate = \\\\\\\"openssl3\\\\\\\";\\\\n                                  path =\\\\n                                  [{ Types.data = (Types.TypeNs \\\\\\\"ssl_ctx_st\\\\\\\");\\\\n                                     disambiguator = 0 }\\\\n                                    ]\\\\n                                  };\\\\n                                generic_args = []; trait_refs = []}\\\\n                              })\\\\n                          ];\\\\n                        trait_refs = []}\\\\n                      }\\\\n                     ];\\\\n                   output =\\\\n                   { Types.kind =\\\\n                     (Types.RawPtr\\\\n                        ({ Types.kind =\\\\n                           Types.Adt {\\\\n                             def_id =\\\\n                             { Types.index = (27, 21403); is_local = false;\\\\n                               krate = \\\\\\\"openssl3\\\\\\\";\\\\n                               path =\\\\n                               [{ Types.data = (Types.TypeNs \\\\\\\"ssl_ctx_st\\\\\\\");\\\\n                                  disambiguator = 0 }\\\\n                                 ]\\\\n                               };\\\\n                             generic_args = []; trait_refs = []}\\\\n                           },\\\\n                         true))\\\\n                     };\\\\n                   safety = Types.Safe }\\\\n                 })\\\\n            }\\\\n          };\\\\n        generic_args =\\\\n        [(Types.Type\\\\n            { Types.kind =\\\\n              Types.Adt {\\\\n                def_id =\\\\n                { Types.index = (27, 21403); is_local = false;\\\\n                  krate = \\\\\\\"openssl3\\\\\\\";\\\\n                  path =\\\\n                  [{ Types.data = (Types.TypeNs \\\\\\\"ssl_ctx_st\\\\\\\");\\\\n                     disambiguator = 0 }\\\\n                    ]\\\\n                  };\\\\n                generic_args = []; trait_refs = []}\\\\n              })\\\\n          ];\\\\n        trait = None;\\\\n        ty =\\\\n        { Types.kind =\\\\n          (Types.Arrow\\\\n             { Types.bound_vars = [];\\\\n               value =\\\\n               { Types.abi = Types.Abi {todo = \\\\\\\"Rust\\\\\\\"}; c_variadic = false;\\\\n                 inputs =\\\\n                 [{ Types.kind =\\\\n                    Types.Adt {\\\\n                      def_id =\\\\n                      { Types.index = (2, 2358); is_local = false;\\\\n                        krate = \\\\\\\"core\\\\\\\";\\\\n                        path =\\\\n                        [{ Types.data = (Types.TypeNs \\\\\\\"ptr\\\\\\\");\\\\n                           disambiguator = 0 };\\\\n                          { Types.data = (Types.TypeNs \\\\\\\"non_null\\\\\\\");\\\\n                            disambiguator = 0 };\\\\n                          { Types.data = (Types.TypeNs \\\\\\\"NonNull\\\\\\\");\\\\n                            disambiguator = 0 }\\\\n                          ]\\\\n                        };\\\\n                      generic_args =\\\\n                      [(Types.Type\\\\n                          { Types.kind =\\\\n                            Types.Adt {\\\\n                              def_id =\\\\n                              { Types.index = (27, 21403); is_local = false;\\\\n                                krate = \\\\\\\"openssl3\\\\\\\";\\\\n                                path =\\\\n                                [{ Types.data = (Types.TypeNs \\\\\\\"ssl_ctx_st\\\\\\\");\\\\n                                   disambiguator = 0 }\\\\n                                  ]\\\\n                                };\\\\n                              generic_args = []; trait_refs = []}\\\\n                            })\\\\n                        ];\\\\n                      trait_refs = []}\\\\n                    }\\\\n                   ];\\\\n                 output =\\\\n                 { Types.kind =\\\\n                   (Types.RawPtr\\\\n                      ({ Types.kind =\\\\n                         Types.Adt {\\\\n                           def_id =\\\\n                           { Types.index = (27, 21403); is_local = false;\\\\n                             krate = \\\\\\\"openssl3\\\\\\\";\\\\n                             path =\\\\n                             [{ Types.data = (Types.TypeNs \\\\\\\"ssl_ctx_st\\\\\\\");\\\\n                                disambiguator = 0 }\\\\n                               ]\\\\n                             };\\\\n                           generic_args = []; trait_refs = []}\\\\n                         },\\\\n                       true))\\\\n                   };\\\\n                 safety = Types.Safe }\\\\n               })\\\\n          }};\\\\n      hir_id = None;\\\\n      span =\\\\n      { Types.filename =\\\\n        (Types.Real\\\\n           (Types.LocalPath\\\\n              \\\\\\\"rust/implementation/openssl3_impl/tunnel/context.rs\\\\\\\"));\\\\n        hi = { Types.col = \\\\\\\"71\\\\\\\"; line = \\\\\\\"475\\\\\\\" };\\\\n        lo = { Types.col = \\\\\\\"56\\\\\\\"; line = \\\\\\\"475\\\\\\\" } };\\\\n      ty =\\\\n      { Types.kind =\\\\n        (Types.RawPtr\\\\n           ({ Types.kind =\\\\n              Types.Adt {\\\\n                def_id =\\\\n                { Types.index = (27, 21403); is_local = false;\\\\n                  krate = \\\\\\\"openssl3\\\\\\\";\\\\n                  path =\\\\n                  [{ Types.data = (Types.TypeNs \\\\\\\"ssl_ctx_st\\\\\\\");\\\\n                     disambiguator = 0 }\\\\n                    ]\\\\n                  };\\\\n                generic_args = []; trait_refs = []}\\\\n              },\\\\n            true))\\\\n        }\\\\n      }};\\\\n  hir_id = (Some (\\\\\\\"338\\\\\\\", \\\\\\\"83\\\\\\\"));\\\\n  span =\\\\n  { Types.filename =\\\\n    (Types.Real\\\\n       (Types.LocalPath \\\\\\\"rust/implementation/openssl3_impl/tunnel/context.rs\\\\\\\"));\\\\n    hi = { Types.col = \\\\\\\"71\\\\\\\"; line = \\\\\\\"475\\\\\\\" };\\\\n    lo = { Types.col = \\\\\\\"56\\\\\\\"; line = \\\\\\\"475\\\\\\\" } };\\\\n  ty =\\\\n  { Types.kind =\\\\n    (Types.RawPtr\\\\n       ({ Types.kind =\\\\n          Types.Adt {\\\\n            def_id =\\\\n            { Types.index = (27, 21403); is_local = false;\\\\n              krate = \\\\\\\"openssl3\\\\\\\";\\\\n              path =\\\\n              [{ Types.data = (Types.TypeNs \\\\\\\"ssl_ctx_st\\\\\\\"); disambiguator = 0\\\\n                 }\\\\n                ]\\\\n              };\\\\n            generic_args = []; trait_refs = []}\\\\n          },\\\\n        false))\\\\n    }\\\\n  }\\\",\\n    )\",\n        ),\n    )"

        <:
        i32) =.
      1l
    then
      Core.Result.Result_Ok (() <: Prims.unit)
      <:
      Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
    else
      let res:Alloc.String.t_String =
        Alloc.Fmt.format (Core.Fmt.impl_2__new_v1 (sz 1)
              (sz 1)
              (let list = ["private key does not match certificate: "] in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                Rust_primitives.Hax.array_of_list 1 list)
              (let list =
                  [
                    Core.Fmt.Rt.impl_1__new_display #Alloc.String.t_String
                      (Sandwich.Implementation.Openssl3_impl.Support.errstr ()
                        <:
                        Alloc.String.t_String)
                    <:
                    Core.Fmt.Rt.t_Argument
                  ]
                in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                Rust_primitives.Hax.array_of_list 1 list)
            <:
            Core.Fmt.t_Arguments)
      in
      Core.Result.Result_Err
      (Core.Convert.f_into #(Sandwich_proto.Errors.t_TLSConfigurationError & Alloc.String.t_String)
          #Sandwich.Error.t_Error
          #FStar.Tactics.Typeclasses.solve
          ((Sandwich_proto.Errors.TLSConfigurationError_TLSCONFIGURATIONERROR_PRIVATE_KEY_INCONSISTENT_WITH_CERTIFICATE
              <:
              Sandwich_proto.Errors.t_TLSConfigurationError),
            (Core.Hint.must_use #Alloc.String.t_String res <: Alloc.String.t_String)
            <:
            (Sandwich_proto.Errors.t_TLSConfigurationError & Alloc.String.t_String)))
      <:
      Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let set_trust (self: t_SslContext) (mode: t_Mode) =
  if
    (Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
        "rust_primitives::hax::failure(\n        \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n        \"openssl3::foreign_mod_3316::v_SSL_CTX_set_trust\",\n    )(\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::non_null::impl_3__as_ptr::<\\n        openssl3::t_ssl_ctx_st,\\n    >(proj_sandwich::implementation::openssl3_impl::tunnel::context::_0(deref(self)))\",\n        ),\n        cast(\n            (match (mode) {\n                sandwich::tunnel::context::Mode_Client => {\n                    openssl3::v_X509_TRUST_SSL_CLIENT\n                }\n                sandwich::tunnel::context::Mode_Server => {\n                    openssl3::v_X509_TRUST_SSL_SERVER\n                }\n            }),\n        ),\n    )"

      <:
      i32) =.
    1l
  then
    Core.Result.Result_Ok (() <: Prims.unit)
    <:
    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
  else
    let res:Alloc.String.t_String =
      Alloc.Fmt.format (Core.Fmt.impl_2__new_v1 (sz 1)
            (sz 1)
            (let list = ["failed to set the trust parameter: "] in
              FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
              Rust_primitives.Hax.array_of_list 1 list)
            (let list =
                [
                  Core.Fmt.Rt.impl_1__new_display #Alloc.String.t_String
                    (Sandwich.Implementation.Openssl3_impl.Support.errstr ()
                      <:
                      Alloc.String.t_String)
                  <:
                  Core.Fmt.Rt.t_Argument
                ]
              in
              FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
              Rust_primitives.Hax.array_of_list 1 list)
          <:
          Core.Fmt.t_Arguments)
    in
    Core.Result.Result_Err
    (Core.Convert.f_into #(Sandwich_proto.Errors.t_SystemError & Alloc.String.t_String)
        #Sandwich.Error.t_Error
        #FStar.Tactics.Typeclasses.solve
        ((Sandwich_proto.Errors.SystemError_SYSTEMERROR_BACKEND
            <:
            Sandwich_proto.Errors.t_SystemError),
          (Core.Hint.must_use #Alloc.String.t_String res <: Alloc.String.t_String)
          <:
          (Sandwich_proto.Errors.t_SystemError & Alloc.String.t_String)))
    <:
    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let new_ssl_context (ctx: Sandwich.t_Context) (mode: t_Mode) =
  Core.Option.impl__ok_or_else #(Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_ctx_st)
    #Sandwich.Error.t_Error
    (Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
        "rust_primitives::hax::failure(\"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\"sandwich::support::pimpl::impl_2__new\")::<lifetime!(something),openssl3::t_ssl_ctx_st>(rust_primitives::hax::failure(\"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\"openssl3::foreign_mod_3171::v_SSL_CTX_new_ex(\\n        core::ptr::non_null::impl_3__as_ptr::<\\n            openssl3::t_ossl_lib_ctx_st,\\n        >(\\n            sandwich::implementation::openssl3_impl::impl_3__as_nonnull::<\\n                lifetime!(something),\\n            >(&(deref(sandwich::impl__Context__get_openssl3_lib_ctx(&(deref(ctx)))))),\\n        ),\\n        core::ptr::null::<int>(Tuple0),\\n        (match (mode) {\\n            sandwich::tunnel::context::Mode_Client => {\\n                openssl3::foreign_mod_3379::v_TLS_client_method(Tuple0)\\n            }\\n            sandwich::tunnel::context::Mode_Server => {\\n                openssl3::foreign_mod_3378::v_TLS_server_method(Tuple0)\\n            }\\n        }),\\n    )\"),rust_primitives::hax::failure(\"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\"(|ptr| { openssl3::foreign_mod_3173::v_SSL_CTX_free(ptr) })\"))"

      <:
      Core.Option.t_Option (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_ctx_st))
    (fun temp_0_ ->
        let _:Prims.unit = temp_0_ in
        Core.Convert.f_into #(Sandwich_proto.Errors.t_SystemError & string)
          #Sandwich.Error.t_Error
          #FStar.Tactics.Typeclasses.solve
          ((Sandwich_proto.Errors.SystemError_SYSTEMERROR_MEMORY
              <:
              Sandwich_proto.Errors.t_SystemError),
            "failed to instantiate a new `SSL_CTX`"
            <:
            (Sandwich_proto.Errors.t_SystemError & string))
        <:
        Sandwich.Error.t_Error)

let ssl_context_new_ssl (ssl_context: Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_ctx_st) =
  Core.Option.impl__ok_or_else #(Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_st)
    #Sandwich.Error.t_Error
    (Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
        "rust_primitives::hax::failure(\"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\"sandwich::support::pimpl::impl_2__new\")::<lifetime!(something),openssl3::t_ssl_st>(rust_primitives::hax::failure(\"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\"openssl3::foreign_mod_3308::v_SSL_new(\\n        core::ptr::non_null::impl_3__as_ptr::<\\n            openssl3::t_ssl_ctx_st,\\n        >(\\n            sandwich::support::pimpl::impl_2__as_nonnull::<\\n                lifetime!(something),\\n                openssl3::t_ssl_ctx_st,\\n            >(&(deref(ssl_context))),\\n        ),\\n    )\"),rust_primitives::hax::failure(\"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\"(|x| { { openssl3::foreign_mod_3348::v_SSL_free(x) } })\"))"

      <:
      Core.Option.t_Option (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_st))
    (fun temp_0_ ->
        let _:Prims.unit = temp_0_ in
        let res:Alloc.String.t_String =
          Alloc.Fmt.format (Core.Fmt.impl_2__new_v1 (sz 1)
                (sz 1)
                (let list = ["failed to instantiate a new SSL: "] in
                  FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                  Rust_primitives.Hax.array_of_list 1 list)
                (let list =
                    [
                      Core.Fmt.Rt.impl_1__new_display #Alloc.String.t_String
                        (Sandwich.Implementation.Openssl3_impl.Support.errstr ()
                          <:
                          Alloc.String.t_String)
                      <:
                      Core.Fmt.Rt.t_Argument
                    ]
                  in
                  FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                  Rust_primitives.Hax.array_of_list 1 list)
              <:
              Core.Fmt.t_Arguments)
        in
        Core.Convert.f_into #(Sandwich_proto.Errors.t_SystemError & Alloc.String.t_String)
          #Sandwich.Error.t_Error
          #FStar.Tactics.Typeclasses.solve
          ((Sandwich_proto.Errors.SystemError_SYSTEMERROR_MEMORY
              <:
              Sandwich_proto.Errors.t_SystemError),
            (Core.Hint.must_use #Alloc.String.t_String res <: Alloc.String.t_String)
            <:
            (Sandwich_proto.Errors.t_SystemError & Alloc.String.t_String)))

let new_ssl (self: t_Context486924441) =
  match ssl_context_new_ssl self.Sandwich.Implementation.Openssl3_impl.Tunnel.Context.f_ssl_ctx with
  | Core.Result.Result_Ok ssl ->
    let _:Prims.unit =
      match self.Sandwich.Implementation.Openssl3_impl.Tunnel.Context.f_mode with
      | Mode_Client  ->
        Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
          "rust_primitives::hax::failure(\n        \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n        \"openssl3::foreign_mod_3419::v_SSL_set_connect_state\",\n    )(\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::non_null::impl_3__as_ptr::<\\n        openssl3::t_ssl_st,\\n    >(\\n        sandwich::support::pimpl::impl_2__as_nonnull::<\\n            lifetime!(something),\\n            openssl3::t_ssl_st,\\n        >(&(ssl)),\\n    )\",\n        ),\n    )"

      | Mode_Server  ->
        Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
          "rust_primitives::hax::failure(\n        \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n        \"openssl3::foreign_mod_3420::v_SSL_set_accept_state\",\n    )(\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::non_null::impl_3__as_ptr::<\\n        openssl3::t_ssl_st,\\n    >(\\n        sandwich::support::pimpl::impl_2__as_nonnull::<\\n            lifetime!(something),\\n            openssl3::t_ssl_st,\\n        >(&(ssl)),\\n    )\",\n        ),\n    )"

    in
    Core.Result.Result_Ok ssl
    <:
    Core.Result.t_Result (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_st) Sandwich.Error.t_Error
  | Core.Result.Result_Err err ->
    Core.Result.Result_Err err
    <:
    Core.Result.t_Result (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_st) Sandwich.Error.t_Error

let is_err
      (#v_Enum: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()] i1: Protobuf.Enums.t_Enum v_Enum)
      (self: t_ProtoStateErrorBase v_Enum)
     = Core.Option.impl__is_some #Sandwich.Error.t_Error self.Sandwich.Tunnel._1

let value
      (#v_Enum: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()] i2: Protobuf.Enums.t_Enum v_Enum)
      (self: t_ProtoStateErrorBase v_Enum)
     = self.Sandwich.Tunnel._0

let build_ciphersuites_list
      (#v_S #impl_995885649_: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()] i2: Core.Convert.t_AsRef v_S string)
      (#[FStar.Tactics.Typeclasses.tcresolve ()]
          i3:
          Core.Iter.Traits.Collect.t_IntoIterator impl_995885649_)
      (ciphers: impl_995885649_)
      (invalid_chars: string)
     =
  let output:Alloc.String.t_String = Alloc.String.impl__String__new () in
  let error:Core.Option.t_Option (Core.Result.t_Result Alloc.String.t_String Sandwich.Error.t_Error)
  =
    Core.Option.Option_None
    <:
    Core.Option.t_Option (Core.Result.t_Result Alloc.String.t_String Sandwich.Error.t_Error)
  in
  let error, output:(Core.Option.t_Option
    (Core.Result.t_Result Alloc.String.t_String Sandwich.Error.t_Error) &
    Alloc.String.t_String) =
    Core.Iter.Traits.Iterator.f_fold (Core.Iter.Traits.Collect.f_into_iter #i3.f_IntoIter
          #FStar.Tactics.Typeclasses.solve
          (Core.Iter.Traits.Collect.f_into_iter #impl_995885649_
              #FStar.Tactics.Typeclasses.solve
              ciphers
            <:
            i3.f_IntoIter)
        <:
        i3.f_IntoIter)
      (error, output
        <:
        (Core.Option.t_Option (Core.Result.t_Result Alloc.String.t_String Sandwich.Error.t_Error) &
          Alloc.String.t_String))
      (fun temp_0_ c ->
          let error, output:(Core.Option.t_Option
            (Core.Result.t_Result Alloc.String.t_String Sandwich.Error.t_Error) &
            Alloc.String.t_String) =
            temp_0_
          in
          let c:v_S = c in
          if
            Core.Option.impl__is_none #(Core.Result.t_Result Alloc.String.t_String
                  Sandwich.Error.t_Error)
              error
            <:
            bool
          then
            if
              Sandwich.Support.contains_any_of (Core.Convert.f_as_ref #v_S
                    #string
                    #FStar.Tactics.Typeclasses.solve
                    c
                  <:
                  string)
                invalid_chars
              <:
              bool
            then
              (Core.Option.Option_Some
                (Core.Result.Result_Err
                  (Core.Convert.f_into #Sandwich_proto.Errors.t_TLSConfigurationError
                      #Sandwich.Error.t_Error
                      #FStar.Tactics.Typeclasses.solve
                      (Sandwich_proto.Errors.TLSConfigurationError_TLSCONFIGURATIONERROR_UNSUPPORTED_CONTROL_CHARACTERS
                        <:
                        Sandwich_proto.Errors.t_TLSConfigurationError)
                    <:
                    Sandwich.Error.t_Error)
                  <:
                  Core.Result.t_Result Alloc.String.t_String Sandwich.Error.t_Error)
                <:
                Core.Option.t_Option
                (Core.Result.t_Result Alloc.String.t_String Sandwich.Error.t_Error)),
              output
              <:
              (Core.Option.t_Option
                (Core.Result.t_Result Alloc.String.t_String Sandwich.Error.t_Error) &
                Alloc.String.t_String)
            else
              let output:Alloc.String.t_String =
                Alloc.String.impl__String__push_str output
                  (Core.Convert.f_as_ref #v_S #string #FStar.Tactics.Typeclasses.solve c <: string)
              in
              let output:Alloc.String.t_String = Alloc.String.impl__String__push output ':' in
              error, output
              <:
              (Core.Option.t_Option
                (Core.Result.t_Result Alloc.String.t_String Sandwich.Error.t_Error) &
                Alloc.String.t_String)
          else
            error, output
            <:
            (Core.Option.t_Option
              (Core.Result.t_Result Alloc.String.t_String Sandwich.Error.t_Error) &
              Alloc.String.t_String))
  in
  let tmp0, out:(Alloc.String.t_String & Core.Option.t_Option char) =
    Alloc.String.impl__String__pop output
  in
  let output:Alloc.String.t_String = tmp0 in
  let _:Core.Option.t_Option char = out in
  Core.Option.impl__unwrap_or #(Core.Result.t_Result Alloc.String.t_String Sandwich.Error.t_Error)
    error
    (Core.Result.Result_Ok output
      <:
      Core.Result.t_Result Alloc.String.t_String Sandwich.Error.t_Error)

let set_cipher_list
      (#v_S #impl_995885649_: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()] i2: Core.Convert.t_AsRef v_S string)
      (#[FStar.Tactics.Typeclasses.tcresolve ()]
          i3:
          Core.Iter.Traits.Collect.t_IntoIterator impl_995885649_)
      (self: t_SslContext)
      (ciphers: impl_995885649_)
     =
  match
    build_ciphersuites_list #string
      #(Core.Iter.Adapters.Filter_map.t_FilterMap i3.f_IntoIter (v_S -> Core.Option.t_Option string)
      )
      (Core.Iter.Traits.Iterator.f_filter_map #i3.f_IntoIter
          #FStar.Tactics.Typeclasses.solve
          #string
          (Core.Iter.Traits.Collect.f_into_iter #impl_995885649_
              #FStar.Tactics.Typeclasses.solve
              ciphers
            <:
            i3.f_IntoIter)
          Sandwich.Implementation.Openssl3_impl.Support.cipher_name
        <:
        Core.Iter.Adapters.Filter_map.t_FilterMap i3.f_IntoIter (v_S -> Core.Option.t_Option string)
      )
      "!+@-"
  with
  | Core.Result.Result_Ok ciphersuites ->
    (match
        Core.Result.impl__map_err #Alloc.Ffi.C_str.t_CString
          #Alloc.Ffi.C_str.t_NulError
          #(Sandwich_proto.Errors.t_SystemError & Alloc.String.t_String)
          (Alloc.Ffi.C_str.impl__CString__new #Alloc.String.t_String ciphersuites
            <:
            Core.Result.t_Result Alloc.Ffi.C_str.t_CString Alloc.Ffi.C_str.t_NulError)
          (fun e ->
              let e:Alloc.Ffi.C_str.t_NulError = e in
              let res:Alloc.String.t_String =
                Alloc.Fmt.format (Core.Fmt.impl_2__new_v1 (sz 1)
                      (sz 1)
                      (let list = ["failed to build a `CString`: "] in
                        FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                        Rust_primitives.Hax.array_of_list 1 list)
                      (let list =
                          [
                            Core.Fmt.Rt.impl_1__new_display #Alloc.Ffi.C_str.t_NulError e
                            <:
                            Core.Fmt.Rt.t_Argument
                          ]
                        in
                        FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                        Rust_primitives.Hax.array_of_list 1 list)
                    <:
                    Core.Fmt.t_Arguments)
              in
              (Sandwich_proto.Errors.SystemError_SYSTEMERROR_MEMORY
                <:
                Sandwich_proto.Errors.t_SystemError),
              Core.Hint.must_use #Alloc.String.t_String res
              <:
              (Sandwich_proto.Errors.t_SystemError & Alloc.String.t_String))
      with
      | Core.Result.Result_Ok cstr ->
        if
          (Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
              "rust_primitives::hax::failure(\n        \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n        \"openssl3::foreign_mod_3169::v_SSL_CTX_set_cipher_list\",\n    )(\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::non_null::impl_3__as_ptr::<\\n        openssl3::t_ssl_ctx_st,\\n    >(proj_sandwich::implementation::openssl3_impl::tunnel::context::_0(deref(self)))\",\n        ),\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ffi::c_str::impl__CStr__as_ptr(&(deref(core::ops::deref::f_deref(&(cstr)))))\",\n        ),\n    )"

            <:
            i32) =.
          1l
        then
          Core.Result.Result_Ok (() <: Prims.unit)
          <:
          Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
        else
          let res:Alloc.String.t_String =
            Alloc.Fmt.format (Core.Fmt.impl_2__new_v1 (sz 1)
                  (sz 1)
                  (let list = ["failed to set the cipher list: "] in
                    FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                    Rust_primitives.Hax.array_of_list 1 list)
                  (let list =
                      [
                        Core.Fmt.Rt.impl_1__new_display #Alloc.String.t_String
                          (Sandwich.Implementation.Openssl3_impl.Support.errstr ()
                            <:
                            Alloc.String.t_String)
                        <:
                        Core.Fmt.Rt.t_Argument
                      ]
                    in
                    FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                    Rust_primitives.Hax.array_of_list 1 list)
                <:
                Core.Fmt.t_Arguments)
          in
          Core.Result.Result_Err
          (Core.Convert.f_into #(Sandwich_proto.Errors.t_TLSConfigurationError &
                Alloc.String.t_String)
              #Sandwich.Error.t_Error
              #FStar.Tactics.Typeclasses.solve
              ((Sandwich_proto.Errors.TLSConfigurationError_TLSCONFIGURATIONERROR_UNSUPPORTED_CIPHERSUITE
                  <:
                  Sandwich_proto.Errors.t_TLSConfigurationError),
                (Core.Hint.must_use #Alloc.String.t_String res <: Alloc.String.t_String)
                <:
                (Sandwich_proto.Errors.t_TLSConfigurationError & Alloc.String.t_String)))
          <:
          Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
      | Core.Result.Result_Err err ->
        Core.Result.Result_Err (Core.Convert.f_from #FStar.Tactics.Typeclasses.solve err)
        <:
        Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
  | Core.Result.Result_Err err ->
    Core.Result.Result_Err err <: Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let configure_tls12
      (self: t_SslContext)
      (tls12_config: Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSv12Config)
     =
  match tls12_config with
  | Core.Option.Option_Some config ->
    if
      Alloc.Vec.impl_1__is_empty #Alloc.String.t_String
        #Alloc.Alloc.t_Global
        config.Sandwich_api_proto.Tls.f_ciphersuite
    then
      match set_default_cipher_list self with
      | Core.Result.Result_Ok _ ->
        Core.Result.Result_Ok (() <: Prims.unit)
        <:
        Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
      | Core.Result.Result_Err err ->
        Core.Result.Result_Err err <: Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
    else
      (match
          set_cipher_list #Alloc.String.t_String
            #(Alloc.Vec.t_Vec Alloc.String.t_String Alloc.Alloc.t_Global)
            self
            config.Sandwich_api_proto.Tls.f_ciphersuite
        with
        | Core.Result.Result_Ok _ ->
          Core.Result.Result_Ok (() <: Prims.unit)
          <:
          Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
        | Core.Result.Result_Err err ->
          Core.Result.Result_Err err <: Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
  | _ ->
    Core.Result.Result_Ok (() <: Prims.unit)
    <:
    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let set_ciphersuites
      (#v_S #impl_995885649_: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()] i4: Core.Convert.t_AsRef v_S string)
      (#[FStar.Tactics.Typeclasses.tcresolve ()]
          i4:
          Core.Iter.Traits.Collect.t_IntoIterator impl_995885649_)
      (self: t_SslContext)
      (ciphers: impl_995885649_)
     =
  match build_ciphersuites_list #v_S #impl_995885649_ ciphers "!+@-" with
  | Core.Result.Result_Ok control_string ->
    (match
        Core.Result.impl__map_err #Alloc.Ffi.C_str.t_CString
          #Alloc.Ffi.C_str.t_NulError
          #(Sandwich_proto.Errors.t_SystemError & Alloc.String.t_String)
          (Alloc.Ffi.C_str.impl__CString__new #Alloc.String.t_String control_string
            <:
            Core.Result.t_Result Alloc.Ffi.C_str.t_CString Alloc.Ffi.C_str.t_NulError)
          (fun e ->
              let e:Alloc.Ffi.C_str.t_NulError = e in
              let res:Alloc.String.t_String =
                Alloc.Fmt.format (Core.Fmt.impl_2__new_v1 (sz 1)
                      (sz 1)
                      (let list = ["failed to build a `CString`: "] in
                        FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                        Rust_primitives.Hax.array_of_list 1 list)
                      (let list =
                          [
                            Core.Fmt.Rt.impl_1__new_display #Alloc.Ffi.C_str.t_NulError e
                            <:
                            Core.Fmt.Rt.t_Argument
                          ]
                        in
                        FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                        Rust_primitives.Hax.array_of_list 1 list)
                    <:
                    Core.Fmt.t_Arguments)
              in
              (Sandwich_proto.Errors.SystemError_SYSTEMERROR_MEMORY
                <:
                Sandwich_proto.Errors.t_SystemError),
              Core.Hint.must_use #Alloc.String.t_String res
              <:
              (Sandwich_proto.Errors.t_SystemError & Alloc.String.t_String))
      with
      | Core.Result.Result_Ok cstr ->
        if
          (Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
              "rust_primitives::hax::failure(\n        \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n        \"openssl3::foreign_mod_3209::v_SSL_CTX_set_ciphersuites\",\n    )(\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::non_null::impl_3__as_ptr::<\\n        openssl3::t_ssl_ctx_st,\\n    >(proj_sandwich::implementation::openssl3_impl::tunnel::context::_0(deref(self)))\",\n        ),\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ffi::c_str::impl__CStr__as_ptr(&(deref(core::ops::deref::f_deref(&(cstr)))))\",\n        ),\n    )"

            <:
            i32) =.
          1l
        then
          Core.Result.Result_Ok (() <: Prims.unit)
          <:
          Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
        else
          let res:Alloc.String.t_String =
            Alloc.Fmt.format (Core.Fmt.impl_2__new_v1 (sz 1)
                  (sz 1)
                  (let list = ["failed to set the ciphersuites: "] in
                    FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                    Rust_primitives.Hax.array_of_list 1 list)
                  (let list =
                      [
                        Core.Fmt.Rt.impl_1__new_display #Alloc.String.t_String
                          (Sandwich.Implementation.Openssl3_impl.Support.errstr ()
                            <:
                            Alloc.String.t_String)
                        <:
                        Core.Fmt.Rt.t_Argument
                      ]
                    in
                    FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                    Rust_primitives.Hax.array_of_list 1 list)
                <:
                Core.Fmt.t_Arguments)
          in
          Core.Result.Result_Err
          (Core.Convert.f_into #(Sandwich_proto.Errors.t_TLSConfigurationError &
                Alloc.String.t_String)
              #Sandwich.Error.t_Error
              #FStar.Tactics.Typeclasses.solve
              ((Sandwich_proto.Errors.TLSConfigurationError_TLSCONFIGURATIONERROR_UNSUPPORTED_CIPHERSUITE
                  <:
                  Sandwich_proto.Errors.t_TLSConfigurationError),
                (Core.Hint.must_use #Alloc.String.t_String res <: Alloc.String.t_String)
                <:
                (Sandwich_proto.Errors.t_TLSConfigurationError & Alloc.String.t_String)))
          <:
          Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
      | Core.Result.Result_Err err ->
        Core.Result.Result_Err (Core.Convert.f_from #FStar.Tactics.Typeclasses.solve err)
        <:
        Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
  | Core.Result.Result_Err err ->
    Core.Result.Result_Err err <: Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let configure_tls13
      (self: t_SslContext)
      (tls13_config: Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSv13Config)
     =
  match tls13_config with
  | Core.Option.Option_Some config ->
    (match
        set_kes #Alloc.String.t_String
          self
          (Core.Ops.Deref.f_deref #(Alloc.Vec.t_Vec Alloc.String.t_String Alloc.Alloc.t_Global)
              #FStar.Tactics.Typeclasses.solve
              config.Sandwich_api_proto.Tls.f_ke
            <:
            t_Slice Alloc.String.t_String)
      with
      | Core.Result.Result_Ok _ ->
        if
          Alloc.Vec.impl_1__is_empty #Alloc.String.t_String
            #Alloc.Alloc.t_Global
            config.Sandwich_api_proto.Tls.f_ciphersuite
        then
          match set_default_ciphersuites self with
          | Core.Result.Result_Ok _ ->
            Core.Result.Result_Ok (() <: Prims.unit)
            <:
            Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
          | Core.Result.Result_Err err ->
            Core.Result.Result_Err err <: Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
        else
          (match
              set_ciphersuites #Alloc.String.t_String
                #(Alloc.Vec.t_Vec Alloc.String.t_String Alloc.Alloc.t_Global)
                self
                config.Sandwich_api_proto.Tls.f_ciphersuite
            with
            | Core.Result.Result_Ok _ ->
              Core.Result.Result_Ok (() <: Prims.unit)
              <:
              Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
            | Core.Result.Result_Err err ->
              Core.Result.Result_Err err <: Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      | Core.Result.Result_Err err ->
        Core.Result.Result_Err err <: Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
  | _ ->
    Core.Result.Result_Ok (() <: Prims.unit)
    <:
    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let configuration_get_mode_and_options
      (configuration: Sandwich_api_proto.Configuration.t_Configuration)
     =
  Core.Option.impl__ok_or #(t_Mode & Sandwich_api_proto.Tls.t_TLSOptions)
    #Sandwich.Error.t_Error
    (Core.Option.impl__and_then #Sandwich_api_proto.Configuration.Configuration.t_Opts
        #(t_Mode & Sandwich_api_proto.Tls.t_TLSOptions)
        (Core.Option.impl__as_ref #Sandwich_api_proto.Configuration.Configuration.t_Opts
            configuration.Sandwich_api_proto.Configuration.f_opts
          <:
          Core.Option.t_Option Sandwich_api_proto.Configuration.Configuration.t_Opts)
        (fun opts ->
            let opts:Sandwich_api_proto.Configuration.Configuration.t_Opts = opts in
            match opts with
            | Sandwich_api_proto.Configuration.Configuration.Opts_Client opt ->
              Core.Option.impl__map #Sandwich_api_proto.Tls.t_TLSOptions
                #(t_Mode & Sandwich_api_proto.Tls.t_TLSOptions)
                (Core.Option.impl__and_then #Sandwich_api_proto.Tls.t_TLSClientOptions
                    #Sandwich_api_proto.Tls.t_TLSOptions
                    (Core.Option.impl__and_then #Sandwich_api_proto.Configuration.Client_options.t_Opts
                        #Sandwich_api_proto.Tls.t_TLSClientOptions
                        (Core.Option.impl__as_ref #Sandwich_api_proto.Configuration.Client_options.t_Opts
                            opt.Sandwich_api_proto.Configuration.f_opts
                          <:
                          Core.Option.t_Option
                          Sandwich_api_proto.Configuration.Client_options.t_Opts)
                        (fun proto ->
                            let proto:Sandwich_api_proto.Configuration.Client_options.t_Opts =
                              proto
                            in
                            match proto with
                            | Sandwich_api_proto.Configuration.Client_options.Opts_Tls tls ->
                              Core.Option.Option_Some tls
                              <:
                              Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSClientOptions
                            | _ ->
                              Core.Option.Option_None
                              <:
                              Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSClientOptions)
                      <:
                      Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSClientOptions)
                    (fun opts ->
                        let opts:Sandwich_api_proto.Tls.t_TLSClientOptions = opts in
                        Protobuf.Message_field.impl__as_ref #Sandwich_api_proto.Tls.t_TLSOptions
                          opts.Sandwich_api_proto.Tls.f_common_options
                        <:
                        Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSOptions)
                  <:
                  Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSOptions)
                (fun tls ->
                    let tls:Sandwich_api_proto.Tls.t_TLSOptions = tls in
                    (Mode_Client <: t_Mode), tls <: (t_Mode & Sandwich_api_proto.Tls.t_TLSOptions))
              <:
              Core.Option.t_Option (t_Mode & Sandwich_api_proto.Tls.t_TLSOptions)
            | Sandwich_api_proto.Configuration.Configuration.Opts_Server opt ->
              Core.Option.impl__map #Sandwich_api_proto.Tls.t_TLSOptions
                #(t_Mode & Sandwich_api_proto.Tls.t_TLSOptions)
                (Core.Option.impl__and_then #Sandwich_api_proto.Tls.t_TLSServerOptions
                    #Sandwich_api_proto.Tls.t_TLSOptions
                    (Core.Option.impl__and_then #Sandwich_api_proto.Configuration.Server_options.t_Opts
                        #Sandwich_api_proto.Tls.t_TLSServerOptions
                        (Core.Option.impl__as_ref #Sandwich_api_proto.Configuration.Server_options.t_Opts
                            opt.Sandwich_api_proto.Configuration.f_opts
                          <:
                          Core.Option.t_Option
                          Sandwich_api_proto.Configuration.Server_options.t_Opts)
                        (fun proto ->
                            let proto:Sandwich_api_proto.Configuration.Server_options.t_Opts =
                              proto
                            in
                            match proto with
                            | Sandwich_api_proto.Configuration.Server_options.Opts_Tls tls ->
                              Core.Option.Option_Some tls
                              <:
                              Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSServerOptions
                            | _ ->
                              Core.Option.Option_None
                              <:
                              Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSServerOptions)
                      <:
                      Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSServerOptions)
                    (fun opts ->
                        let opts:Sandwich_api_proto.Tls.t_TLSServerOptions = opts in
                        Protobuf.Message_field.impl__as_ref #Sandwich_api_proto.Tls.t_TLSOptions
                          opts.Sandwich_api_proto.Tls.f_common_options
                        <:
                        Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSOptions)
                  <:
                  Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSOptions)
                (fun tls ->
                    let tls:Sandwich_api_proto.Tls.t_TLSOptions = tls in
                    (Mode_Server <: t_Mode), tls <: (t_Mode & Sandwich_api_proto.Tls.t_TLSOptions))
              <:
              Core.Option.t_Option (t_Mode & Sandwich_api_proto.Tls.t_TLSOptions)
            | _ ->
              Rust_primitives.Hax.never_to_any (Core.Panicking.panic "internal error: entered unreachable code"

                  <:
                  Rust_primitives.Hax.t_Never)
              <:
              Core.Option.t_Option (t_Mode & Sandwich_api_proto.Tls.t_TLSOptions))
      <:
      Core.Option.t_Option (t_Mode & Sandwich_api_proto.Tls.t_TLSOptions))
    (Core.Convert.f_into #Sandwich_proto.Errors.t_TLSConfigurationError
        #Sandwich.Error.t_Error
        #FStar.Tactics.Typeclasses.solve
        (Sandwich_proto.Errors.TLSConfigurationError_TLSCONFIGURATIONERROR_EMPTY
          <:
          Sandwich_proto.Errors.t_TLSConfigurationError)
      <:
      Sandwich.Error.t_Error)

let tls_options_get_x509_verifier (tls_options: Sandwich_api_proto.Tls.t_TLSOptions) =
  Core.Result.impl__and_then #Sandwich_api_proto.Tls.Tlsoptions.t_Peer_verifier
    #Sandwich.Error.t_Error
    #(Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
    (Core.Option.impl__ok_or #Sandwich_api_proto.Tls.Tlsoptions.t_Peer_verifier
        #Sandwich.Error.t_Error
        (Core.Option.impl__as_ref #Sandwich_api_proto.Tls.Tlsoptions.t_Peer_verifier
            tls_options.Sandwich_api_proto.Tls.f_peer_verifier
          <:
          Core.Option.t_Option Sandwich_api_proto.Tls.Tlsoptions.t_Peer_verifier)
        (Core.Convert.f_into #(Sandwich_proto.Errors.t_TLSConfigurationError & string)
            #Sandwich.Error.t_Error
            #FStar.Tactics.Typeclasses.solve
            ((Sandwich_proto.Errors.TLSConfigurationError_TLSCONFIGURATIONERROR_EMPTY
                <:
                Sandwich_proto.Errors.t_TLSConfigurationError),
              "no verifier specified"
              <:
              (Sandwich_proto.Errors.t_TLSConfigurationError & string))
          <:
          Sandwich.Error.t_Error)
      <:
      Core.Result.t_Result Sandwich_api_proto.Tls.Tlsoptions.t_Peer_verifier Sandwich.Error.t_Error)
    (fun v ->
        let v:Sandwich_api_proto.Tls.Tlsoptions.t_Peer_verifier = v in
        match v with
        | Sandwich_api_proto.Tls.Tlsoptions.Peer_verifier_X509Verifier x509 ->
          Core.Result.Result_Ok
          (Core.Option.Option_Some x509
            <:
            Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
          <:
          Core.Result.t_Result (Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
            Sandwich.Error.t_Error
        | Sandwich_api_proto.Tls.Tlsoptions.Peer_verifier_EmptyVerifier _ ->
          Core.Result.Result_Ok
          (Core.Option.Option_None
            <:
            Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
          <:
          Core.Result.t_Result (Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
            Sandwich.Error.t_Error
        | _ ->
          Rust_primitives.Hax.never_to_any (Core.Panicking.panic "internal error: entered unreachable code"

              <:
              Rust_primitives.Hax.t_Never)
          <:
          Core.Result.t_Result (Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
            Sandwich.Error.t_Error)

let x509_verifier_verify_emptiness
      (x509_verifier: Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
     =
  match x509_verifier with
  | Core.Option.Option_Some x509 ->
    if
      Alloc.Vec.impl_1__is_empty #Sandwich_api_proto.Certificate.t_Certificate
        #Alloc.Alloc.t_Global
        x509.Sandwich_api_proto.Verifiers.f_trusted_cas &&
      ~.x509.Sandwich_api_proto.Verifiers.f_load_cas_from_default_verify_path
    then
      Core.Result.Result_Err
      (Core.Convert.f_into #(Sandwich_proto.Errors.t_TLSConfigurationError & string)
          #Sandwich.Error.t_Error
          #FStar.Tactics.Typeclasses.solve
          ((Sandwich_proto.Errors.TLSConfigurationError_TLSCONFIGURATIONERROR_EMPTY
              <:
              Sandwich_proto.Errors.t_TLSConfigurationError),
            "X.509 verifier empty"
            <:
            (Sandwich_proto.Errors.t_TLSConfigurationError & string)))
      <:
      Core.Result.t_Result (Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
        Sandwich.Error.t_Error
    else
      Core.Result.Result_Ok x509_verifier
      <:
      Core.Result.t_Result (Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
        Sandwich.Error.t_Error
  | _ ->
    Core.Result.Result_Ok
    (Core.Option.Option_None <: Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
    <:
    Core.Result.t_Result (Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
      Sandwich.Error.t_Error

let set_server_name_indication
      (#impl_488124255_: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()] i9: Core.Convert.t_AsRef impl_488124255_ string)
      (self: t_Ssl)
      (sni: impl_488124255_)
     =
  let sni:string =
    Core.Convert.f_as_ref #impl_488124255_ #string #FStar.Tactics.Typeclasses.solve sni
  in
  if Core.Str.impl__str__is_empty sni
  then
    Core.Result.Result_Ok (() <: Prims.unit)
    <:
    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
  else
    match
      Core.Result.impl__map_err #Alloc.Ffi.C_str.t_CString
        #Alloc.Ffi.C_str.t_NulError
        #(Sandwich_proto.Errors.t_SystemError & Alloc.String.t_String)
        (Alloc.Ffi.C_str.impl__CString__new #string sni
          <:
          Core.Result.t_Result Alloc.Ffi.C_str.t_CString Alloc.Ffi.C_str.t_NulError)
        (fun e ->
            let e:Alloc.Ffi.C_str.t_NulError = e in
            let res:Alloc.String.t_String =
              Alloc.Fmt.format (Core.Fmt.impl_2__new_v1 (sz 2)
                    (sz 2)
                    (let list = ["failed to create a c-string for the SNI '"; "': "] in
                      FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                      Rust_primitives.Hax.array_of_list 2 list)
                    (let list =
                        [
                          Core.Fmt.Rt.impl_1__new_display #string sni <: Core.Fmt.Rt.t_Argument;
                          Core.Fmt.Rt.impl_1__new_display #Alloc.Ffi.C_str.t_NulError e
                          <:
                          Core.Fmt.Rt.t_Argument
                        ]
                      in
                      FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                      Rust_primitives.Hax.array_of_list 2 list)
                  <:
                  Core.Fmt.t_Arguments)
            in
            (Sandwich_proto.Errors.SystemError_SYSTEMERROR_MEMORY
              <:
              Sandwich_proto.Errors.t_SystemError),
            Core.Hint.must_use #Alloc.String.t_String res
            <:
            (Sandwich_proto.Errors.t_SystemError & Alloc.String.t_String))
    with
    | Core.Result.Result_Ok cstring ->
      if
        (Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
            "rust_primitives::hax::failure(\n        \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n        \"openssl3::foreign_mod_3369::v_SSL_ctrl\",\n    )(\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::non_null::impl_3__as_ptr::<\\n        openssl3::t_ssl_st,\\n    >(proj_sandwich::implementation::openssl3_impl::tunnel::ssl::_0(deref(self)))\",\n        ),\n        cast(openssl3::v_SSL_CTRL_SET_TLSEXT_HOSTNAME),\n        cast(openssl3::v_TLSEXT_NAMETYPE_host_name),\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::const_ptr::impl__cast_mut::<\\n        core::ffi::t_c_void,\\n    >(\\n        core::ptr::const_ptr::impl__cast::<\\n            int,\\n            core::ffi::t_c_void,\\n        >(\\n            core::ffi::c_str::impl__CStr__as_ptr(\\n                &(deref(core::ops::deref::f_deref(&(cstring)))),\\n            ),\\n        ),\\n    )\",\n        ),\n    )"

          <:
          i64) =.
        1L
      then
        Core.Result.Result_Ok (() <: Prims.unit)
        <:
        Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
      else
        let res:Alloc.String.t_String =
          Alloc.Fmt.format (Core.Fmt.impl_2__new_v1 (sz 2)
                (sz 2)
                (let list = ["failed to set the SNI to '"; "': "] in
                  FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                  Rust_primitives.Hax.array_of_list 2 list)
                (match
                    (Sandwich.Implementation.Openssl3_impl.Support.errstr ()
                      <:
                      Alloc.String.t_String),
                    sni
                    <:
                    (Alloc.String.t_String & string)
                  with
                  | args ->
                    let list =
                      [
                        Core.Fmt.Rt.impl_1__new_display #string args._2 <: Core.Fmt.Rt.t_Argument;
                        Core.Fmt.Rt.impl_1__new_display #Alloc.String.t_String args._1
                        <:
                        Core.Fmt.Rt.t_Argument
                      ]
                    in
                    FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                    Rust_primitives.Hax.array_of_list 2 list)
              <:
              Core.Fmt.t_Arguments)
        in
        Core.Result.Result_Err
        (Core.Convert.f_into #(Sandwich_proto.Errors.t_TunnelError & Alloc.String.t_String)
            #Sandwich.Error.t_Error
            #FStar.Tactics.Typeclasses.solve
            ((Sandwich_proto.Errors.TunnelError_TUNNELERROR_VERIFIER
                <:
                Sandwich_proto.Errors.t_TunnelError),
              (Core.Hint.must_use #Alloc.String.t_String res <: Alloc.String.t_String)
              <:
              (Sandwich_proto.Errors.t_TunnelError & Alloc.String.t_String)))
        <:
        Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
    | Core.Result.Result_Err err ->
      Core.Result.Result_Err (Core.Convert.f_from #FStar.Tactics.Typeclasses.solve err)
      <:
      Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let verify_tunnel_verifier
      (tunnel_verifier: Core.Option.t_Option Sandwich_api_proto.Verifiers.t_TunnelVerifier)
      (security_requirements: Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements)
     =
  match tunnel_verifier with
  | Core.Option.Option_Some tunnel_verifier ->
    Sandwich.Tunnel.Tls.f_run_sanitizer_checks #Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements
      #Sandwich_api_proto.Verifiers.t_TunnelVerifier
      #FStar.Tactics.Typeclasses.solve
      security_requirements
      tunnel_verifier
  | _ ->
    Core.Result.Result_Err
    (Core.Convert.f_into #(Sandwich_proto.Errors.t_TunnelError & string)
        #Sandwich.Error.t_Error
        #FStar.Tactics.Typeclasses.solve
        ((Sandwich_proto.Errors.TunnelError_TUNNELERROR_VERIFIER
            <:
            Sandwich_proto.Errors.t_TunnelError),
          "empty verifier"
          <:
          (Sandwich_proto.Errors.t_TunnelError & string)))
    <:
    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let get_ssl (self: t_Bio) =
  Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
    "{\n        let mut ssl: raw_pointer!() = {\n            core::ptr::null_mut::<openssl3::t_ssl_st>(Tuple0)\n        };\n        {\n            (if core::cmp::PartialEq::eq(\n                unsafe {\n                    openssl3::foreign_mod_550::v_BIO_ctrl(\n                        core::ptr::non_null::impl_3__as_ptr::<\n                            openssl3::t_bio_st,\n                        >(\n                            proj_sandwich::implementation::openssl3_impl::tunnel::bio_method::_0(\n                                deref(self),\n                            ),\n                        ),\n                        cast(openssl3::v_BIO_C_GET_SSL),\n                        0,\n                        core::ptr::mut_ptr::impl__cast::<\n                            raw_pointer!(),\n                            core::ffi::t_c_void,\n                        >(address_of),\n                    )\n                },\n                1,\n            ) {\n                {\n                    core::result::Result_Ok(unsafe {\n                        core::ptr::non_null::impl_3__new_unchecked::<\n                            openssl3::t_ssl_st,\n                        >(ssl)\n                    })\n                }\n            } else {\n                {\n                    core::result::Result_Err(\n                        sandwich_proto::io::IOError_IOERROR_SYSTEM_ERROR(),\n                    )\n                }\n            })\n        }\n    }"

let bio_reflect_io_error
      (#impl_1033358885_ #impl_1033358885_ #impl_765196419_: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()]
          i3:
          Core.Ops.Function.t_FnOnce impl_1033358885_ Prims.unit)
      (#[FStar.Tactics.Typeclasses.tcresolve ()]
          i4:
          Core.Ops.Function.t_FnOnce impl_720525265_ Prims.unit)
      (#[FStar.Tactics.Typeclasses.tcresolve ()] i5: Core.Convert.t_Into impl_765196419_ i32)
      (error: Sandwich_proto.Io.t_IOError)
      (on_retry: impl_1033358885_)
      (on_close: impl_720525265_)
      (default_return_value: impl_765196419_)
     =
  match error with
  | Sandwich_proto.Io.IOError_IOERROR_IN_PROGRESS
  | Sandwich_proto.Io.IOError_IOERROR_WOULD_BLOCK  ->
    Core.Ops.Function.f_call_once #impl_1033358885_
      #Prims.unit
      #FStar.Tactics.Typeclasses.solve
      on_retry
      (() <: Prims.unit)
  | Sandwich_proto.Io.IOError_IOERROR_CLOSED
  | Sandwich_proto.Io.IOError_IOERROR_REFUSED  ->
    Core.Ops.Function.f_call_once #impl_720525265_
      #Prims.unit
      #FStar.Tactics.Typeclasses.solve
      on_close
      (() <: Prims.unit)
  | _ ->
    Core.Convert.f_into #impl_765196419_ #i32 #FStar.Tactics.Typeclasses.solve default_return_value

let get_state (self: t_Ssl) =
  if
    (Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
        "rust_primitives::hax::failure(\n        \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n        \"openssl3::foreign_mod_3451::v_SSL_get_state\",\n    )(\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"rust_primitives::hax::failure(\\n        \\\"(AST import) Fatal error: something we considered as impossible occurred! \\\\027[1mPlease report this by submitting an issue on GitHub!\\\\027[0m\\\\nDetails: Pointer, with [cast] being Types.MutToConstPointer\\\",\\n        \\\"{ Types.attributes = [];\\\\n  contents =\\\\n  Types.PointerCoercion {cast = Types.MutToConstPointer;\\\\n    source =\\\\n    { Types.attributes = [];\\\\n      contents =\\\\n      Types.Call {\\\\n        args =\\\\n        [{ Types.attributes = [];\\\\n           contents =\\\\n           Types.Field {\\\\n             field =\\\\n             { Types.index = (0, 392); is_local = true; krate = \\\\\\\"sandwich\\\\\\\";\\\\n               path =\\\\n               [{ Types.data = (Types.TypeNs \\\\\\\"implementation\\\\\\\");\\\\n                  disambiguator = 0 };\\\\n                 { Types.data = (Types.TypeNs \\\\\\\"openssl3_impl\\\\\\\");\\\\n                   disambiguator = 0 };\\\\n                 { Types.data = (Types.TypeNs \\\\\\\"tunnel\\\\\\\"); disambiguator = 0 };\\\\n                 { Types.data = (Types.TypeNs \\\\\\\"ssl\\\\\\\"); disambiguator = 0 };\\\\n                 { Types.data = (Types.TypeNs \\\\\\\"Ssl\\\\\\\"); disambiguator = 0 };\\\\n                 { Types.data = (Types.ValueNs \\\\\\\"0\\\\\\\"); disambiguator = 0 }]\\\\n               };\\\\n             lhs =\\\\n             { Types.attributes = [];\\\\n               contents =\\\\n               Types.Deref {\\\\n                 arg =\\\\n                 { Types.attributes = [];\\\\n                   contents =\\\\n                   Types.VarRef {\\\\n                     id =\\\\n                     { Types.id =\\\\n                       { Types.local_id = \\\\\\\"2\\\\\\\";\\\\n                         owner =\\\\n                         { Types.index = (0, 414); is_local = true;\\\\n                           krate = \\\\\\\"sandwich\\\\\\\";\\\\n                           path =\\\\n                           [{ Types.data = (Types.TypeNs \\\\\\\"implementation\\\\\\\");\\\\n                              disambiguator = 0 };\\\\n                             { Types.data = (Types.TypeNs \\\\\\\"openssl3_impl\\\\\\\");\\\\n                               disambiguator = 0 };\\\\n                             { Types.data = (Types.TypeNs \\\\\\\"tunnel\\\\\\\");\\\\n                               disambiguator = 0 };\\\\n                             { Types.data = (Types.TypeNs \\\\\\\"ssl\\\\\\\");\\\\n                               disambiguator = 0 };\\\\n                             { Types.data = Types.Impl; disambiguator = 2 };\\\\n                             { Types.data = (Types.ValueNs \\\\\\\"get_state\\\\\\\");\\\\n                               disambiguator = 0 }\\\\n                             ]\\\\n                           }\\\\n                         };\\\\n                       name = \\\\\\\"self\\\\\\\" }};\\\\n                   hir_id = None;\\\\n                   span =\\\\n                   { Types.filename =\\\\n                     (Types.Real\\\\n                        (Types.LocalPath\\\\n                           \\\\\\\"rust/implementation/openssl3_impl/tunnel/ssl.rs\\\\\\\"));\\\\n                     hi = { Types.col = \\\\\\\"48\\\\\\\"; line = \\\\\\\"146\\\\\\\" };\\\\n                     lo = { Types.col = \\\\\\\"44\\\\\\\"; line = \\\\\\\"146\\\\\\\" } };\\\\n                   ty =\\\\n                   { Types.kind =\\\\n                     (Types.Ref\\\\n                        ({ Types.kind = Types.ReErased },\\\\n                         { Types.kind =\\\\n                           Types.Adt {\\\\n                             def_id =\\\\n                             { Types.index = (0, 390); is_local = true;\\\\n                               krate = \\\\\\\"sandwich\\\\\\\";\\\\n                               path =\\\\n                               [{ Types.data =\\\\n                                  (Types.TypeNs \\\\\\\"implementation\\\\\\\");\\\\n                                  disambiguator = 0 };\\\\n                                 { Types.data =\\\\n                                   (Types.TypeNs \\\\\\\"openssl3_impl\\\\\\\");\\\\n                                   disambiguator = 0 };\\\\n                                 { Types.data = (Types.TypeNs \\\\\\\"tunnel\\\\\\\");\\\\n                                   disambiguator = 0 };\\\\n                                 { Types.data = (Types.TypeNs \\\\\\\"ssl\\\\\\\");\\\\n                                   disambiguator = 0 };\\\\n                                 { Types.data = (Types.TypeNs \\\\\\\"Ssl\\\\\\\");\\\\n                                   disambiguator = 0 }\\\\n                                 ]\\\\n                               };\\\\n                             generic_args = []; trait_refs = []}\\\\n                           },\\\\n                         false))\\\\n                     }\\\\n                   }};\\\\n               hir_id = (Some (\\\\\\\"414\\\\\\\", \\\\\\\"13\\\\\\\"));\\\\n               span =\\\\n               { Types.filename =\\\\n                 (Types.Real\\\\n                    (Types.LocalPath\\\\n                       \\\\\\\"rust/implementation/openssl3_impl/tunnel/ssl.rs\\\\\\\"));\\\\n                 hi = { Types.col = \\\\\\\"48\\\\\\\"; line = \\\\\\\"146\\\\\\\" };\\\\n                 lo = { Types.col = \\\\\\\"44\\\\\\\"; line = \\\\\\\"146\\\\\\\" } };\\\\n               ty =\\\\n               { Types.kind =\\\\n                 Types.Adt {\\\\n                   def_id =\\\\n                   { Types.index = (0, 390); is_local = true;\\\\n                     krate = \\\\\\\"sandwich\\\\\\\";\\\\n                     path =\\\\n                     [{ Types.data = (Types.TypeNs \\\\\\\"implementation\\\\\\\");\\\\n                        disambiguator = 0 };\\\\n                       { Types.data = (Types.TypeNs \\\\\\\"openssl3_impl\\\\\\\");\\\\n                         disambiguator = 0 };\\\\n                       { Types.data = (Types.TypeNs \\\\\\\"tunnel\\\\\\\");\\\\n                         disambiguator = 0 };\\\\n                       { Types.data = (Types.TypeNs \\\\\\\"ssl\\\\\\\"); disambiguator = 0\\\\n                         };\\\\n                       { Types.data = (Types.TypeNs \\\\\\\"Ssl\\\\\\\"); disambiguator = 0\\\\n                         }\\\\n                       ]\\\\n                     };\\\\n                   generic_args = []; trait_refs = []}\\\\n                 }\\\\n               }};\\\\n           hir_id = (Some (\\\\\\\"414\\\\\\\", \\\\\\\"12\\\\\\\"));\\\\n           span =\\\\n           { Types.filename =\\\\n             (Types.Real\\\\n                (Types.LocalPath\\\\n                   \\\\\\\"rust/implementation/openssl3_impl/tunnel/ssl.rs\\\\\\\"));\\\\n             hi = { Types.col = \\\\\\\"50\\\\\\\"; line = \\\\\\\"146\\\\\\\" };\\\\n             lo = { Types.col = \\\\\\\"44\\\\\\\"; line = \\\\\\\"146\\\\\\\" } };\\\\n           ty =\\\\n           { Types.kind =\\\\n             Types.Adt {\\\\n               def_id =\\\\n               { Types.index = (2, 2358); is_local = false; krate = \\\\\\\"core\\\\\\\";\\\\n                 path =\\\\n                 [{ Types.data = (Types.TypeNs \\\\\\\"ptr\\\\\\\"); disambiguator = 0 };\\\\n                   { Types.data = (Types.TypeNs \\\\\\\"non_null\\\\\\\");\\\\n                     disambiguator = 0 };\\\\n                   { Types.data = (Types.TypeNs \\\\\\\"NonNull\\\\\\\"); disambiguator = 0\\\\n                     }\\\\n                   ]\\\\n                 };\\\\n               generic_args =\\\\n               [(Types.Type\\\\n                   { Types.kind =\\\\n                     Types.Adt {\\\\n                       def_id =\\\\n                       { Types.index = (27, 21394); is_local = false;\\\\n                         krate = \\\\\\\"openssl3\\\\\\\";\\\\n                         path =\\\\n                         [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\");\\\\n                            disambiguator = 0 }\\\\n                           ]\\\\n                         };\\\\n                       generic_args = []; trait_refs = []}\\\\n                     })\\\\n                 ];\\\\n               trait_refs = []}\\\\n             }\\\\n           }\\\\n          ];\\\\n        bounds_impls = [];\\\\n        fn_span =\\\\n        { Types.filename =\\\\n          (Types.Real\\\\n             (Types.LocalPath\\\\n                \\\\\\\"rust/implementation/openssl3_impl/tunnel/ssl.rs\\\\\\\"));\\\\n          hi = { Types.col = \\\\\\\"59\\\\\\\"; line = \\\\\\\"146\\\\\\\" };\\\\n          lo = { Types.col = \\\\\\\"51\\\\\\\"; line = \\\\\\\"146\\\\\\\" } };\\\\n        from_hir_call = true;\\\\n        fun' =\\\\n        { Types.attributes = [];\\\\n          contents =\\\\n          Types.GlobalName {\\\\n            id =\\\\n            { Types.index = (2, 2381); is_local = false; krate = \\\\\\\"core\\\\\\\";\\\\n              path =\\\\n              [{ Types.data = (Types.TypeNs \\\\\\\"ptr\\\\\\\"); disambiguator = 0 };\\\\n                { Types.data = (Types.TypeNs \\\\\\\"non_null\\\\\\\"); disambiguator = 0 };\\\\n                { Types.data = Types.Impl; disambiguator = 3 };\\\\n                { Types.data = (Types.ValueNs \\\\\\\"as_ptr\\\\\\\"); disambiguator = 0 }]\\\\n              }};\\\\n          hir_id = None;\\\\n          span =\\\\n          { Types.filename =\\\\n            (Types.Real\\\\n               (Types.LocalPath\\\\n                  \\\\\\\"rust/implementation/openssl3_impl/tunnel/ssl.rs\\\\\\\"));\\\\n            hi = { Types.col = \\\\\\\"57\\\\\\\"; line = \\\\\\\"146\\\\\\\" };\\\\n            lo = { Types.col = \\\\\\\"51\\\\\\\"; line = \\\\\\\"146\\\\\\\" } };\\\\n          ty =\\\\n          { Types.kind =\\\\n            (Types.Arrow\\\\n               { Types.bound_vars = [];\\\\n                 value =\\\\n                 { Types.abi = Types.Abi {todo = \\\\\\\"Rust\\\\\\\"}; c_variadic = false;\\\\n                   inputs =\\\\n                   [{ Types.kind =\\\\n                      Types.Adt {\\\\n                        def_id =\\\\n                        { Types.index = (2, 2358); is_local = false;\\\\n                          krate = \\\\\\\"core\\\\\\\";\\\\n                          path =\\\\n                          [{ Types.data = (Types.TypeNs \\\\\\\"ptr\\\\\\\");\\\\n                             disambiguator = 0 };\\\\n                            { Types.data = (Types.TypeNs \\\\\\\"non_null\\\\\\\");\\\\n                              disambiguator = 0 };\\\\n                            { Types.data = (Types.TypeNs \\\\\\\"NonNull\\\\\\\");\\\\n                              disambiguator = 0 }\\\\n                            ]\\\\n                          };\\\\n                        generic_args =\\\\n                        [(Types.Type\\\\n                            { Types.kind =\\\\n                              Types.Adt {\\\\n                                def_id =\\\\n                                { Types.index = (27, 21394);\\\\n                                  is_local = false; krate = \\\\\\\"openssl3\\\\\\\";\\\\n                                  path =\\\\n                                  [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\");\\\\n                                     disambiguator = 0 }\\\\n                                    ]\\\\n                                  };\\\\n                                generic_args = []; trait_refs = []}\\\\n                              })\\\\n                          ];\\\\n                        trait_refs = []}\\\\n                      }\\\\n                     ];\\\\n                   output =\\\\n                   { Types.kind =\\\\n                     (Types.RawPtr\\\\n                        ({ Types.kind =\\\\n                           Types.Adt {\\\\n                             def_id =\\\\n                             { Types.index = (27, 21394); is_local = false;\\\\n                               krate = \\\\\\\"openssl3\\\\\\\";\\\\n                               path =\\\\n                               [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\");\\\\n                                  disambiguator = 0 }\\\\n                                 ]\\\\n                               };\\\\n                             generic_args = []; trait_refs = []}\\\\n                           },\\\\n                         true))\\\\n                     };\\\\n                   safety = Types.Safe }\\\\n                 })\\\\n            }\\\\n          };\\\\n        generic_args =\\\\n        [(Types.Type\\\\n            { Types.kind =\\\\n              Types.Adt {\\\\n                def_id =\\\\n                { Types.index = (27, 21394); is_local = false;\\\\n                  krate = \\\\\\\"openssl3\\\\\\\";\\\\n                  path =\\\\n                  [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\"); disambiguator = 0\\\\n                     }\\\\n                    ]\\\\n                  };\\\\n                generic_args = []; trait_refs = []}\\\\n              })\\\\n          ];\\\\n        trait = None;\\\\n        ty =\\\\n        { Types.kind =\\\\n          (Types.Arrow\\\\n             { Types.bound_vars = [];\\\\n               value =\\\\n               { Types.abi = Types.Abi {todo = \\\\\\\"Rust\\\\\\\"}; c_variadic = false;\\\\n                 inputs =\\\\n                 [{ Types.kind =\\\\n                    Types.Adt {\\\\n                      def_id =\\\\n                      { Types.index = (2, 2358); is_local = false;\\\\n                        krate = \\\\\\\"core\\\\\\\";\\\\n                        path =\\\\n                        [{ Types.data = (Types.TypeNs \\\\\\\"ptr\\\\\\\");\\\\n                           disambiguator = 0 };\\\\n                          { Types.data = (Types.TypeNs \\\\\\\"non_null\\\\\\\");\\\\n                            disambiguator = 0 };\\\\n                          { Types.data = (Types.TypeNs \\\\\\\"NonNull\\\\\\\");\\\\n                            disambiguator = 0 }\\\\n                          ]\\\\n                        };\\\\n                      generic_args =\\\\n                      [(Types.Type\\\\n                          { Types.kind =\\\\n                            Types.Adt {\\\\n                              def_id =\\\\n                              { Types.index = (27, 21394); is_local = false;\\\\n                                krate = \\\\\\\"openssl3\\\\\\\";\\\\n                                path =\\\\n                                [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\");\\\\n                                   disambiguator = 0 }\\\\n                                  ]\\\\n                                };\\\\n                              generic_args = []; trait_refs = []}\\\\n                            })\\\\n                        ];\\\\n                      trait_refs = []}\\\\n                    }\\\\n                   ];\\\\n                 output =\\\\n                 { Types.kind =\\\\n                   (Types.RawPtr\\\\n                      ({ Types.kind =\\\\n                         Types.Adt {\\\\n                           def_id =\\\\n                           { Types.index = (27, 21394); is_local = false;\\\\n                             krate = \\\\\\\"openssl3\\\\\\\";\\\\n                             path =\\\\n                             [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\");\\\\n                                disambiguator = 0 }\\\\n                               ]\\\\n                             };\\\\n                           generic_args = []; trait_refs = []}\\\\n                         },\\\\n                       true))\\\\n                   };\\\\n                 safety = Types.Safe }\\\\n               })\\\\n          }};\\\\n      hir_id = None;\\\\n      span =\\\\n      { Types.filename =\\\\n        (Types.Real\\\\n           (Types.LocalPath \\\\\\\"rust/implementation/openssl3_impl/tunnel/ssl.rs\\\\\\\"));\\\\n        hi = { Types.col = \\\\\\\"59\\\\\\\"; line = \\\\\\\"146\\\\\\\" };\\\\n        lo = { Types.col = \\\\\\\"44\\\\\\\"; line = \\\\\\\"146\\\\\\\" } };\\\\n      ty =\\\\n      { Types.kind =\\\\n        (Types.RawPtr\\\\n           ({ Types.kind =\\\\n              Types.Adt {\\\\n                def_id =\\\\n                { Types.index = (27, 21394); is_local = false;\\\\n                  krate = \\\\\\\"openssl3\\\\\\\";\\\\n                  path =\\\\n                  [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\"); disambiguator = 0\\\\n                     }\\\\n                    ]\\\\n                  };\\\\n                generic_args = []; trait_refs = []}\\\\n              },\\\\n            true))\\\\n        }\\\\n      }};\\\\n  hir_id = (Some (\\\\\\\"414\\\\\\\", \\\\\\\"10\\\\\\\"));\\\\n  span =\\\\n  { Types.filename =\\\\n    (Types.Real\\\\n       (Types.LocalPath \\\\\\\"rust/implementation/openssl3_impl/tunnel/ssl.rs\\\\\\\"));\\\\n    hi = { Types.col = \\\\\\\"59\\\\\\\"; line = \\\\\\\"146\\\\\\\" };\\\\n    lo = { Types.col = \\\\\\\"44\\\\\\\"; line = \\\\\\\"146\\\\\\\" } };\\\\n  ty =\\\\n  { Types.kind =\\\\n    (Types.RawPtr\\\\n       ({ Types.kind =\\\\n          Types.Adt {\\\\n            def_id =\\\\n            { Types.index = (27, 21394); is_local = false;\\\\n              krate = \\\\\\\"openssl3\\\\\\\";\\\\n              path =\\\\n              [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\"); disambiguator = 0 }] };\\\\n            generic_args = []; trait_refs = []}\\\\n          },\\\\n        false))\\\\n    }\\\\n  }\\\",\\n    )\",\n        ),\n    )"

      <:
      u32) =.
    Openssl3.v_OSSL_HANDSHAKE_STATE_TLS_ST_OK
  then
    Sandwich_proto.Tunnel.HandshakeState_HANDSHAKESTATE_DONE
    <:
    Sandwich_proto.Tunnel.t_HandshakeState
  else
    Sandwich_proto.Tunnel.HandshakeState_HANDSHAKESTATE_IN_PROGRESS
    <:
    Sandwich_proto.Tunnel.t_HandshakeState

let close690884291 (self: t_Ssl) =
  let _:i32 =
    Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
      "rust_primitives::hax::failure(\n        \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n        \"openssl3::foreign_mod_3395::v_SSL_shutdown\",\n    )(\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::non_null::impl_3__as_ptr::<\\n        openssl3::t_ssl_st,\\n    >(proj_sandwich::implementation::openssl3_impl::tunnel::ssl::_0(deref(self)))\",\n        ),\n    )"

  in
  Core.Result.Result_Ok (() <: Prims.unit)
  <:
  Core.Result.t_Result Prims.unit (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError)

let get_tunnel (self: t_Bio) =
  Rust_primitives.Hax.failure "(RefMut) The mutation of this \027[1m&mut\027[0m is not allowed here."
    "{core::option::impl__map::<core::ptr::non_null::t_NonNull<sandwich::implementation::openssl3_impl::tunnel::ssl::t_Tunnel<lifetime!(something)>>,&mut sandwich::implementation::openssl3_impl::tunnel::ssl::t_Tunnel<lifetime!(something)>,arrow!(core::ptr::non_null::t_NonNull<sandwich::implementation::openssl3_impl::tunnel::ssl::t_Tunnel<lifetime!(something)>> -> &mut sandwich::implementation::openssl3_impl::tunnel::ssl::t_Tunnel<lifetime!(something)>)>(rust_primitives::hax::failure(\"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\"core::ptr::non_null::impl_3__new\")::<sandwich::implementation::openssl3_impl::tunnel::ssl::t_Tunnel<lifetime!(something)>>(rust_primitives::hax::failure(\"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\"core::ptr::mut_ptr::impl__cast::<\\n        core::ffi::t_c_void,\\n        sandwich::implementation::openssl3_impl::tunnel::ssl::t_Tunnel<\\n            lifetime!(something),\\n        >,\\n    >(unsafe {\\n        openssl3::foreign_mod_531::v_BIO_get_data(\\n            core::ptr::non_null::impl_3__as_ptr::<\\n                openssl3::t_bio_st,\\n            >(\\n                proj_sandwich::implementation::openssl3_impl::tunnel::bio_method::_0(\\n                    deref(self),\\n                ),\\n            ),\\n        )\\n    })\")),(|mut p| {&mut (deref(unsafe {core::ptr::non_null::impl_3__as_mut::<sandwich::implementation::openssl3_impl::tunnel::ssl::t_Tunnel<lifetime!(something)>,lifetime!(something)>(&mut (p))}))}))}"

let synchronize_states (self: t_Bio) (tun: t_Tunnel77328211) =
  let tun, hax_temp_output:(t_Tunnel77328211 & Prims.unit) =
    if
      tun.Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.f_state <>.
      (Sandwich_proto.Tunnel.State_STATE_HANDSHAKE_DONE <: Sandwich_proto.Tunnel.t_State)
    then
      match get_ssl self with
      | Core.Result.Result_Ok ssl ->
        let _:Prims.unit =
          if true
          then
            let _:Prims.unit =
              Hax_lib.v_assert (ssl =.
                  (Sandwich.Support.Pimpl.impl_2__as_nonnull #Openssl3.t_ssl_st
                      tun.Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.f_ssl
                    <:
                    Core.Ptr.Non_null.t_NonNull Openssl3.t_ssl_st)
                  <:
                  bool)
            in
            ()
        in
        if
          (Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
              "rust_primitives::hax::failure(\n        \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n        \"openssl3::foreign_mod_3451::v_SSL_get_state\",\n    )(\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"rust_primitives::hax::failure(\\n        \\\"(AST import) Fatal error: something we considered as impossible occurred! \\\\027[1mPlease report this by submitting an issue on GitHub!\\\\027[0m\\\\nDetails: Pointer, with [cast] being Types.MutToConstPointer\\\",\\n        \\\"{ Types.attributes = [];\\\\n  contents =\\\\n  Types.PointerCoercion {cast = Types.MutToConstPointer;\\\\n    source =\\\\n    { Types.attributes = [];\\\\n      contents =\\\\n      Types.Call {\\\\n        args =\\\\n        [{ Types.attributes = [];\\\\n           contents =\\\\n           Types.VarRef {\\\\n             id =\\\\n             { Types.id =\\\\n               { Types.local_id = \\\\\\\"18\\\\\\\";\\\\n                 owner =\\\\n                 { Types.index = (0, 237); is_local = true;\\\\n                   krate = \\\\\\\"sandwich\\\\\\\";\\\\n                   path =\\\\n                   [{ Types.data = (Types.TypeNs \\\\\\\"implementation\\\\\\\");\\\\n                      disambiguator = 0 };\\\\n                     { Types.data = (Types.TypeNs \\\\\\\"openssl3_impl\\\\\\\");\\\\n                       disambiguator = 0 };\\\\n                     { Types.data = (Types.TypeNs \\\\\\\"tunnel\\\\\\\");\\\\n                       disambiguator = 0 };\\\\n                     { Types.data = (Types.TypeNs \\\\\\\"bio_method\\\\\\\");\\\\n                       disambiguator = 0 };\\\\n                     { Types.data = Types.Impl; disambiguator = 1 };\\\\n                     { Types.data = (Types.ValueNs \\\\\\\"synchronize_states\\\\\\\");\\\\n                       disambiguator = 0 }\\\\n                     ]\\\\n                   }\\\\n                 };\\\\n               name = \\\\\\\"ssl\\\\\\\" }};\\\\n           hir_id = (Some (\\\\\\\"237\\\\\\\", \\\\\\\"59\\\\\\\"));\\\\n           span =\\\\n           { Types.filename =\\\\n             (Types.Real\\\\n                (Types.LocalPath\\\\n                   \\\\\\\"rust/implementation/openssl3_impl/tunnel/bio_method.rs\\\\\\\"));\\\\n             hi = { Types.col = \\\\\\\"55\\\\\\\"; line = \\\\\\\"100\\\\\\\" };\\\\n             lo = { Types.col = \\\\\\\"52\\\\\\\"; line = \\\\\\\"100\\\\\\\" } };\\\\n           ty =\\\\n           { Types.kind =\\\\n             Types.Adt {\\\\n               def_id =\\\\n               { Types.index = (2, 2358); is_local = false; krate = \\\\\\\"core\\\\\\\";\\\\n                 path =\\\\n                 [{ Types.data = (Types.TypeNs \\\\\\\"ptr\\\\\\\"); disambiguator = 0 };\\\\n                   { Types.data = (Types.TypeNs \\\\\\\"non_null\\\\\\\");\\\\n                     disambiguator = 0 };\\\\n                   { Types.data = (Types.TypeNs \\\\\\\"NonNull\\\\\\\"); disambiguator = 0\\\\n                     }\\\\n                   ]\\\\n                 };\\\\n               generic_args =\\\\n               [(Types.Type\\\\n                   { Types.kind =\\\\n                     Types.Adt {\\\\n                       def_id =\\\\n                       { Types.index = (27, 21394); is_local = false;\\\\n                         krate = \\\\\\\"openssl3\\\\\\\";\\\\n                         path =\\\\n                         [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\");\\\\n                            disambiguator = 0 }\\\\n                           ]\\\\n                         };\\\\n                       generic_args = []; trait_refs = []}\\\\n                     })\\\\n                 ];\\\\n               trait_refs = []}\\\\n             }\\\\n           }\\\\n          ];\\\\n        bounds_impls = [];\\\\n        fn_span =\\\\n        { Types.filename =\\\\n          (Types.Real\\\\n             (Types.LocalPath\\\\n                \\\\\\\"rust/implementation/openssl3_impl/tunnel/bio_method.rs\\\\\\\"));\\\\n          hi = { Types.col = \\\\\\\"64\\\\\\\"; line = \\\\\\\"100\\\\\\\" };\\\\n          lo = { Types.col = \\\\\\\"56\\\\\\\"; line = \\\\\\\"100\\\\\\\" } };\\\\n        from_hir_call = true;\\\\n        fun' =\\\\n        { Types.attributes = [];\\\\n          contents =\\\\n          Types.GlobalName {\\\\n            id =\\\\n            { Types.index = (2, 2381); is_local = false; krate = \\\\\\\"core\\\\\\\";\\\\n              path =\\\\n              [{ Types.data = (Types.TypeNs \\\\\\\"ptr\\\\\\\"); disambiguator = 0 };\\\\n                { Types.data = (Types.TypeNs \\\\\\\"non_null\\\\\\\"); disambiguator = 0 };\\\\n                { Types.data = Types.Impl; disambiguator = 3 };\\\\n                { Types.data = (Types.ValueNs \\\\\\\"as_ptr\\\\\\\"); disambiguator = 0 }]\\\\n              }};\\\\n          hir_id = None;\\\\n          span =\\\\n          { Types.filename =\\\\n            (Types.Real\\\\n               (Types.LocalPath\\\\n                  \\\\\\\"rust/implementation/openssl3_impl/tunnel/bio_method.rs\\\\\\\"));\\\\n            hi = { Types.col = \\\\\\\"62\\\\\\\"; line = \\\\\\\"100\\\\\\\" };\\\\n            lo = { Types.col = \\\\\\\"56\\\\\\\"; line = \\\\\\\"100\\\\\\\" } };\\\\n          ty =\\\\n          { Types.kind =\\\\n            (Types.Arrow\\\\n               { Types.bound_vars = [];\\\\n                 value =\\\\n                 { Types.abi = Types.Abi {todo = \\\\\\\"Rust\\\\\\\"}; c_variadic = false;\\\\n                   inputs =\\\\n                   [{ Types.kind =\\\\n                      Types.Adt {\\\\n                        def_id =\\\\n                        { Types.index = (2, 2358); is_local = false;\\\\n                          krate = \\\\\\\"core\\\\\\\";\\\\n                          path =\\\\n                          [{ Types.data = (Types.TypeNs \\\\\\\"ptr\\\\\\\");\\\\n                             disambiguator = 0 };\\\\n                            { Types.data = (Types.TypeNs \\\\\\\"non_null\\\\\\\");\\\\n                              disambiguator = 0 };\\\\n                            { Types.data = (Types.TypeNs \\\\\\\"NonNull\\\\\\\");\\\\n                              disambiguator = 0 }\\\\n                            ]\\\\n                          };\\\\n                        generic_args =\\\\n                        [(Types.Type\\\\n                            { Types.kind =\\\\n                              Types.Adt {\\\\n                                def_id =\\\\n                                { Types.index = (27, 21394);\\\\n                                  is_local = false; krate = \\\\\\\"openssl3\\\\\\\";\\\\n                                  path =\\\\n                                  [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\");\\\\n                                     disambiguator = 0 }\\\\n                                    ]\\\\n                                  };\\\\n                                generic_args = []; trait_refs = []}\\\\n                              })\\\\n                          ];\\\\n                        trait_refs = []}\\\\n                      }\\\\n                     ];\\\\n                   output =\\\\n                   { Types.kind =\\\\n                     (Types.RawPtr\\\\n                        ({ Types.kind =\\\\n                           Types.Adt {\\\\n                             def_id =\\\\n                             { Types.index = (27, 21394); is_local = false;\\\\n                               krate = \\\\\\\"openssl3\\\\\\\";\\\\n                               path =\\\\n                               [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\");\\\\n                                  disambiguator = 0 }\\\\n                                 ]\\\\n                               };\\\\n                             generic_args = []; trait_refs = []}\\\\n                           },\\\\n                         true))\\\\n                     };\\\\n                   safety = Types.Safe }\\\\n                 })\\\\n            }\\\\n          };\\\\n        generic_args =\\\\n        [(Types.Type\\\\n            { Types.kind =\\\\n              Types.Adt {\\\\n                def_id =\\\\n                { Types.index = (27, 21394); is_local = false;\\\\n                  krate = \\\\\\\"openssl3\\\\\\\";\\\\n                  path =\\\\n                  [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\"); disambiguator = 0\\\\n                     }\\\\n                    ]\\\\n                  };\\\\n                generic_args = []; trait_refs = []}\\\\n              })\\\\n          ];\\\\n        trait = None;\\\\n        ty =\\\\n        { Types.kind =\\\\n          (Types.Arrow\\\\n             { Types.bound_vars = [];\\\\n               value =\\\\n               { Types.abi = Types.Abi {todo = \\\\\\\"Rust\\\\\\\"}; c_variadic = false;\\\\n                 inputs =\\\\n                 [{ Types.kind =\\\\n                    Types.Adt {\\\\n                      def_id =\\\\n                      { Types.index = (2, 2358); is_local = false;\\\\n                        krate = \\\\\\\"core\\\\\\\";\\\\n                        path =\\\\n                        [{ Types.data = (Types.TypeNs \\\\\\\"ptr\\\\\\\");\\\\n                           disambiguator = 0 };\\\\n                          { Types.data = (Types.TypeNs \\\\\\\"non_null\\\\\\\");\\\\n                            disambiguator = 0 };\\\\n                          { Types.data = (Types.TypeNs \\\\\\\"NonNull\\\\\\\");\\\\n                            disambiguator = 0 }\\\\n                          ]\\\\n                        };\\\\n                      generic_args =\\\\n                      [(Types.Type\\\\n                          { Types.kind =\\\\n                            Types.Adt {\\\\n                              def_id =\\\\n                              { Types.index = (27, 21394); is_local = false;\\\\n                                krate = \\\\\\\"openssl3\\\\\\\";\\\\n                                path =\\\\n                                [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\");\\\\n                                   disambiguator = 0 }\\\\n                                  ]\\\\n                                };\\\\n                              generic_args = []; trait_refs = []}\\\\n                            })\\\\n                        ];\\\\n                      trait_refs = []}\\\\n                    }\\\\n                   ];\\\\n                 output =\\\\n                 { Types.kind =\\\\n                   (Types.RawPtr\\\\n                      ({ Types.kind =\\\\n                         Types.Adt {\\\\n                           def_id =\\\\n                           { Types.index = (27, 21394); is_local = false;\\\\n                             krate = \\\\\\\"openssl3\\\\\\\";\\\\n                             path =\\\\n                             [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\");\\\\n                                disambiguator = 0 }\\\\n                               ]\\\\n                             };\\\\n                           generic_args = []; trait_refs = []}\\\\n                         },\\\\n                       true))\\\\n                   };\\\\n                 safety = Types.Safe }\\\\n               })\\\\n          }};\\\\n      hir_id = None;\\\\n      span =\\\\n      { Types.filename =\\\\n        (Types.Real\\\\n           (Types.LocalPath\\\\n              \\\\\\\"rust/implementation/openssl3_impl/tunnel/bio_method.rs\\\\\\\"));\\\\n        hi = { Types.col = \\\\\\\"64\\\\\\\"; line = \\\\\\\"100\\\\\\\" };\\\\n        lo = { Types.col = \\\\\\\"52\\\\\\\"; line = \\\\\\\"100\\\\\\\" } };\\\\n      ty =\\\\n      { Types.kind =\\\\n        (Types.RawPtr\\\\n           ({ Types.kind =\\\\n              Types.Adt {\\\\n                def_id =\\\\n                { Types.index = (27, 21394); is_local = false;\\\\n                  krate = \\\\\\\"openssl3\\\\\\\";\\\\n                  path =\\\\n                  [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\"); disambiguator = 0\\\\n                     }\\\\n                    ]\\\\n                  };\\\\n                generic_args = []; trait_refs = []}\\\\n              },\\\\n            true))\\\\n        }\\\\n      }};\\\\n  hir_id = (Some (\\\\\\\"237\\\\\\\", \\\\\\\"57\\\\\\\"));\\\\n  span =\\\\n  { Types.filename =\\\\n    (Types.Real\\\\n       (Types.LocalPath\\\\n          \\\\\\\"rust/implementation/openssl3_impl/tunnel/bio_method.rs\\\\\\\"));\\\\n    hi = { Types.col = \\\\\\\"64\\\\\\\"; line = \\\\\\\"100\\\\\\\" };\\\\n    lo = { Types.col = \\\\\\\"52\\\\\\\"; line = \\\\\\\"100\\\\\\\" } };\\\\n  ty =\\\\n  { Types.kind =\\\\n    (Types.RawPtr\\\\n       ({ Types.kind =\\\\n          Types.Adt {\\\\n            def_id =\\\\n            { Types.index = (27, 21394); is_local = false;\\\\n              krate = \\\\\\\"openssl3\\\\\\\";\\\\n              path =\\\\n              [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\"); disambiguator = 0 }] };\\\\n            generic_args = []; trait_refs = []}\\\\n          },\\\\n        false))\\\\n    }\\\\n  }\\\",\\n    )\",\n        ),\n    )"

            <:
            u32) =.
          Openssl3.v_OSSL_HANDSHAKE_STATE_TLS_ST_OK
        then
          let tun:t_Tunnel77328211 =
            {
              tun with
              Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.f_state
              =
              Sandwich_proto.Tunnel.State_STATE_HANDSHAKE_DONE <: Sandwich_proto.Tunnel.t_State
            }
            <:
            t_Tunnel77328211
          in
          tun, () <: (t_Tunnel77328211 & Prims.unit)
        else tun, () <: (t_Tunnel77328211 & Prims.unit)
      | _ -> tun, () <: (t_Tunnel77328211 & Prims.unit)
    else tun, () <: (t_Tunnel77328211 & Prims.unit)
  in
  tun

let attach_security_requirements (self: Core.Pin.t_Pin t_Tunnel77328211) =
  if
    (Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
        "rust_primitives::hax::failure(\n        \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n        \"openssl3::foreign_mod_3460::v_SSL_set_ex_data\",\n    )(\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::non_null::impl_3__as_ptr::<\\n        openssl3::t_ssl_st,\\n    >(\\n        sandwich::support::pimpl::impl_2__as_nonnull::<\\n            lifetime!(something),\\n            openssl3::t_ssl_st,\\n        >(\\n            &(proj_sandwich::implementation::openssl3_impl::tunnel::ssl::f_ssl(\\n                deref(core::ops::deref::f_deref(&(self))),\\n            )),\\n        ),\\n    )\",\n        ),\n        sandwich::implementation::openssl3_impl::tunnel::ssl::v_SSL_EX_DATA_TUNNEL_SECURITY_REQUIREMENTS_INDEX,\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::const_ptr::impl__cast_mut::<core::ffi::t_c_void>(cast(address_of))\",\n        ),\n    )"

      <:
      i32) =.
    1l
  then
    Core.Result.Result_Ok (() <: Prims.unit)
    <:
    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
  else
    let res:Alloc.String.t_String =
      Alloc.Fmt.format (Core.Fmt.impl_2__new_v1 (sz 1)
            (sz 1)
            (let list = ["`SSL_set_ex_data` failed: "] in
              FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
              Rust_primitives.Hax.array_of_list 1 list)
            (let list =
                [
                  Core.Fmt.Rt.impl_1__new_display #Alloc.String.t_String
                    (Sandwich.Implementation.Openssl3_impl.Support.errstr ()
                      <:
                      Alloc.String.t_String)
                  <:
                  Core.Fmt.Rt.t_Argument
                ]
              in
              FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
              Rust_primitives.Hax.array_of_list 1 list)
          <:
          Core.Fmt.t_Arguments)
    in
    Core.Result.Result_Err
    (Core.Convert.f_into #(Sandwich_proto.Errors.t_SystemError & Alloc.String.t_String)
        #Sandwich.Error.t_Error
        #FStar.Tactics.Typeclasses.solve
        ((Sandwich_proto.Errors.SystemError_SYSTEMERROR_BACKEND
            <:
            Sandwich_proto.Errors.t_SystemError),
          (Core.Hint.must_use #Alloc.String.t_String res <: Alloc.String.t_String)
          <:
          (Sandwich_proto.Errors.t_SystemError & Alloc.String.t_String)))
    <:
    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let attach_to_bio (self: Core.Pin.t_Pin t_Tunnel77328211) =
  match
    Core.Option.impl__ok_or #(Core.Ptr.Non_null.t_NonNull Openssl3.t_bio_st)
      #(Sandwich_proto.Errors.t_SystemError & string)
      (get_attached_bio (t_Ssl
            (Sandwich.Support.Pimpl.impl_2__as_nonnull #Openssl3.t_ssl_st
                (Core.Ops.Deref.f_deref #(Core.Pin.t_Pin t_Tunnel77328211)
                    #FStar.Tactics.Typeclasses.solve
                    self
                  <:
                  t_Tunnel77328211)
                  .Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.f_ssl
              <:
              Core.Ptr.Non_null.t_NonNull Openssl3.t_ssl_st)
            <:
            t_Ssl)
        <:
        Core.Option.t_Option (Core.Ptr.Non_null.t_NonNull Openssl3.t_bio_st))
      ((Sandwich_proto.Errors.SystemError_SYSTEMERROR_BACKEND <: Sandwich_proto.Errors.t_SystemError
        ),
        "no BIO attached to the current SSL object"
        <:
        (Sandwich_proto.Errors.t_SystemError & string))
  with
  | Core.Result.Result_Ok bio ->
    let _:Prims.unit =
      Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
        "rust_primitives::hax::failure(\n        \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n        \"openssl3::foreign_mod_530::v_BIO_set_data\",\n    )(\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::non_null::impl_3__as_ptr::<openssl3::t_bio_st>(bio)\",\n        ),\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::const_ptr::impl__cast_mut::<core::ffi::t_c_void>(cast(address_of))\",\n        ),\n    )"

    in
    Core.Result.Result_Ok (() <: Prims.unit)
    <:
    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
  | Core.Result.Result_Err err ->
    Core.Result.Result_Err (Core.Convert.f_from #FStar.Tactics.Typeclasses.solve err)
    <:
    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let state771356817 (self: t_Tunnel77328211) =
  Core.Convert.f_into #Sandwich_proto.Tunnel.t_State
    #(t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_State)
    #FStar.Tactics.Typeclasses.solve
    self.Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.f_state

let update_state (self: t_Tunnel77328211) =
  let self, hax_temp_output:(t_Tunnel77328211 & Prims.unit) =
    if
      is_shutdown (t_Ssl
          (Sandwich.Support.Pimpl.impl_2__as_nonnull #Openssl3.t_ssl_st
              self.Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.f_ssl
            <:
            Core.Ptr.Non_null.t_NonNull Openssl3.t_ssl_st)
          <:
          t_Ssl)
    then
      let self:t_Tunnel77328211 =
        {
          self with
          Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.f_state
          =
          Sandwich_proto.Tunnel.State_STATE_DISCONNECTED <: Sandwich_proto.Tunnel.t_State
        }
        <:
        t_Tunnel77328211
      in
      self, () <: (t_Tunnel77328211 & Prims.unit)
    else self, () <: (t_Tunnel77328211 & Prims.unit)
  in
  self

let close995496454 (self: t_Tunnel77328211) =
  if
    self.Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.f_state =.
    (Sandwich_proto.Tunnel.State_STATE_DISCONNECTED <: Sandwich_proto.Tunnel.t_State)
  then
    self,
    (Core.Result.Result_Ok (() <: Prims.unit)
      <:
      Core.Result.t_Result Prims.unit (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))
    <:
    (t_Tunnel77328211 &
      Core.Result.t_Result Prims.unit (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))
  else
    let result:Core.Result.t_Result Prims.unit
      (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError) =
      close690884291 (t_Ssl
          (Sandwich.Support.Pimpl.impl_2__as_nonnull #Openssl3.t_ssl_st
              self.Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.f_ssl
            <:
            Core.Ptr.Non_null.t_NonNull Openssl3.t_ssl_st)
          <:
          t_Ssl)
    in
    let self:t_Tunnel77328211 = update_state self in
    if
      self.Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.f_state =.
      (Sandwich_proto.Tunnel.State_STATE_DISCONNECTED <: Sandwich_proto.Tunnel.t_State)
    then
      self,
      (Core.Result.Result_Ok (() <: Prims.unit)
        <:
        Core.Result.t_Result Prims.unit (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))
      <:
      (t_Tunnel77328211 &
        Core.Result.t_Result Prims.unit (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))
    else
      self, result
      <:
      (t_Tunnel77328211 &
        Core.Result.t_Result Prims.unit (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))

let rewrap
      (#v_Inner: Type0)
      (#v_Other: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()] i2: Core.Convert.t_From t_Tunnel70284935 v_Inner)
      (inner, other: (v_Inner & v_Other))
     =
  Core.Convert.f_into #v_Inner #t_Tunnel70284935 #FStar.Tactics.Typeclasses.solve inner, other
  <:
  (t_Tunnel70284935 & v_Other)

let close700377666 (self: t_Tunnel70284935) =
  match self with
  | (Tunnel70284935_OpenSSL3 t: t_Tunnel70284935) ->
    rewrap #t_Tunnel77328211
      #(Core.Result.t_Result Prims.unit (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))
      (close995496454 (Core.Pin.impl_5__into_inner #(Alloc.Boxed.t_Box t_Tunnel77328211
                  Alloc.Alloc.t_Global)
              t
            <:
            t_Tunnel77328211)
        <:
        (t_Tunnel77328211 &
          Core.Result.t_Result Prims.unit
            (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError)))

let state468029348 (self: t_Tunnel70284935) =
  match self with
  | (Tunnel70284935_OpenSSL3 t: t_Tunnel70284935) ->
    state771356817 (Core.Ops.Deref.f_deref #(Core.Pin.t_Pin
            (Alloc.Boxed.t_Box t_Tunnel77328211 Alloc.Alloc.t_Global))
          #FStar.Tactics.Typeclasses.solve
          t
        <:
        t_Tunnel77328211)

let flush (self: t_Bio) =
  Rust_primitives.Hax.failure "(RefMut) The mutation of this \027[1m&mut\027[0m is not allowed here."
    "{\n        let tun: &mut sandwich::implementation::openssl3_impl::tunnel::ssl::t_Tunnel<\n            lifetime!(something),\n        > = {\n            (match (core::option::impl__ok_or::<\n                &mut sandwich::implementation::openssl3_impl::tunnel::ssl::t_Tunnel<\n                    lifetime!(something),\n                >,\n                sandwich_proto::io::t_IOError,\n            >(\n                sandwich::implementation::openssl3_impl::tunnel::bio_method::impl__Bio__get_tunnel::<\n                    lifetime!(something),\n                >(&(deref(self))),\n                sandwich_proto::io::IOError_IOERROR_SYSTEM_ERROR(),\n            )) {\n                core::result::Result_Ok(ok) => ok,\n                core::result::Result_Err(err) => (return core::result::Result_Err(err)),\n            })\n        };\n        {\n            core::result::impl__map_err::<\n                tuple0,\n                std::io::error::t_Error,\n                sandwich_proto::io::t_IOError,\n                arrow!(std::io::error::t_Error -> sandwich_proto::io::t_IOError),\n            >(\n                std::io::f_flush(\n                    &mut (proj_sandwich::implementation::openssl3_impl::tunnel::ssl::f_io(\n                        deref(tun),\n                    )),\n                ),\n                (|e| { sandwich::io::error::f_into_io_error(e) }),\n            )\n        }\n    }"

(* item error backend: (reject_RawOrMutPointer) ExplicitRejection { reason: "a node of kind [Raw_pointer] have been found in the AST" }
Last available AST for this item:

/// BIO control callback.
#[cfg(feature = "tunnel")]
#[cfg(feature = "openssl3")]
#[deny(bare_trait_objects)]
#[feature(register_tool)]
#[register_tool(_hax)]
unsafe fn bio_ctrl(
    bio: raw_pointer!(),
    cmd: int,
    larg: int,
    _pargs: raw_pointer!(),
) -> int {
    {
        (match (cast(cmd)) {
            9 => {
                let _: tuple0 = {
                    openssl3::foreign_mod_534::v_BIO_set_shutdown(bio, cast(larg))
                };
                { 1 }
            }
            8 => cast(openssl3::foreign_mod_535::v_BIO_get_shutdown(bio)),
            11 => {
                (if core::result::impl__is_err::<
                    tuple0,
                    sandwich_proto::io::t_IOError,
                >(
                    &(sandwich::implementation::openssl3_impl::tunnel::bio_method::impl__Bio__flush(
                        &(sandwich::implementation::openssl3_impl::tunnel::bio_method::Bio(
                            core::ptr::non_null::impl_3__new_unchecked::<
                                openssl3::t_bio_st,
                            >(bio),
                        )),
                    )),
                ) {
                    { 0 }
                } else {
                    { 1 }
                })
            }
            _ => 0,
        })
    }
}


Last AST:
/** print_rust: pitem: not implemented  (item: { Concrete_ident.T.def_id =
  { Concrete_ident.Imported.krate = "sandwich";
    path =
    [{ Concrete_ident.Imported.data =
       (Concrete_ident.Imported.TypeNs "tunnel"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "rec_bundle");
        disambiguator = 473063542 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.ValueNs "bio_ctrl"); disambiguator = 0 }
      ]
    };
  kind = Concrete_ident.Kind.Value }) */
const _: () = ();
 *)

let read279365663 (self: t_Bio) (buffer: t_Slice u8) =
  Rust_primitives.Hax.failure "(RefMut) The mutation of this \027[1m&mut\027[0m is not allowed here."
    "{\n        let tun: &mut sandwich::implementation::openssl3_impl::tunnel::ssl::t_Tunnel<\n            lifetime!(something),\n        > = {\n            (match (core::option::impl__ok_or::<\n                &mut sandwich::implementation::openssl3_impl::tunnel::ssl::t_Tunnel<\n                    lifetime!(something),\n                >,\n                sandwich_proto::io::t_IOError,\n            >(\n                sandwich::implementation::openssl3_impl::tunnel::bio_method::impl__Bio__get_tunnel::<\n                    lifetime!(something),\n                >(&(deref(self))),\n                sandwich_proto::io::IOError_IOERROR_SYSTEM_ERROR(),\n            )) {\n                core::result::Result_Ok(ok) => ok,\n                core::result::Result_Err(err) => {\n                    (return Tuple2(buffer, core::result::Result_Err(err)))\n                }\n            })\n        };\n        {\n            let _: tuple0 = {\n                sandwich::implementation::openssl3_impl::tunnel::bio_method::impl__Bio__synchronize_states(\n                    &(deref(self)),\n                    &mut (deref(tun)),\n                )\n            };\n            {\n                let _: tuple0 = {\n                    sandwich::tunnel::io::f_set_state(\n                        &mut (proj_sandwich::implementation::openssl3_impl::tunnel::ssl::f_io(\n                            deref(tun),\n                        )),\n                        proj_sandwich::implementation::openssl3_impl::tunnel::ssl::f_state(\n                            deref(tun),\n                        ),\n                    )\n                };\n                {\n                    let hax_temp_output: core::result::t_Result<\n                        int,\n                        sandwich_proto::io::t_IOError,\n                    > = {\n                        {\n                            core::result::impl__map_err::<\n                                int,\n                                std::io::error::t_Error,\n                                sandwich_proto::io::t_IOError,\n                                arrow!(\n                                    std::io::error::t_Error -> sandwich_proto::io::t_IOError\n                                ),\n                            >(\n                                std::io::f_read(\n                                    &mut (proj_sandwich::implementation::openssl3_impl::tunnel::ssl::f_io(\n                                        deref(tun),\n                                    )),\n                                    &mut (buffer),\n                                ),\n                                (|e| { sandwich::io::error::f_into_io_error(e) }),\n                            )\n                        }\n                    };\n                    Tuple2(buffer, hax_temp_output)\n                }\n            }\n        }\n    }"

let write840835472 (self: t_Bio) (buffer: t_Slice u8) =
  Rust_primitives.Hax.failure "(RefMut) The mutation of this \027[1m&mut\027[0m is not allowed here."
    "{\n        let tun: &mut sandwich::implementation::openssl3_impl::tunnel::ssl::t_Tunnel<\n            lifetime!(something),\n        > = {\n            (match (core::option::impl__ok_or::<\n                &mut sandwich::implementation::openssl3_impl::tunnel::ssl::t_Tunnel<\n                    lifetime!(something),\n                >,\n                sandwich_proto::io::t_IOError,\n            >(\n                sandwich::implementation::openssl3_impl::tunnel::bio_method::impl__Bio__get_tunnel::<\n                    lifetime!(something),\n                >(&(deref(self))),\n                sandwich_proto::io::IOError_IOERROR_SYSTEM_ERROR(),\n            )) {\n                core::result::Result_Ok(ok) => ok,\n                core::result::Result_Err(err) => (return core::result::Result_Err(err)),\n            })\n        };\n        {\n            let _: tuple0 = {\n                sandwich::implementation::openssl3_impl::tunnel::bio_method::impl__Bio__synchronize_states(\n                    &(deref(self)),\n                    &mut (deref(tun)),\n                )\n            };\n            {\n                let _: tuple0 = {\n                    sandwich::tunnel::io::f_set_state(\n                        &mut (proj_sandwich::implementation::openssl3_impl::tunnel::ssl::f_io(\n                            deref(tun),\n                        )),\n                        proj_sandwich::implementation::openssl3_impl::tunnel::ssl::f_state(\n                            deref(tun),\n                        ),\n                    )\n                };\n                {\n                    core::result::impl__map_err::<\n                        int,\n                        std::io::error::t_Error,\n                        sandwich_proto::io::t_IOError,\n                        arrow!(std::io::error::t_Error -> sandwich_proto::io::t_IOError),\n                    >(\n                        std::io::f_write(\n                            &mut (proj_sandwich::implementation::openssl3_impl::tunnel::ssl::f_io(\n                                deref(tun),\n                            )),\n                            &(deref(buffer)),\n                        ),\n                        (|e| { sandwich::io::error::f_into_io_error(e) }),\n                    )\n                }\n            }\n        }\n    }"

(* item error backend: (reject_RawOrMutPointer) ExplicitRejection { reason: "a node of kind [Raw_pointer] have been found in the AST" }
Last available AST for this item:

/// BIO read callback.
#[cfg(feature = "tunnel")]
#[cfg(feature = "openssl3")]
#[deny(bare_trait_objects)]
#[feature(register_tool)]
#[register_tool(_hax)]
unsafe fn bio_read(
    bio: raw_pointer!(),
    data: raw_pointer!(),
    len: int,
    written: raw_pointer!(),
) -> int {
    {
        let bio: sandwich::implementation::openssl3_impl::tunnel::bio_method::t_Bio = {
            sandwich::implementation::openssl3_impl::tunnel::bio_method::Bio(
                core::ptr::non_null::impl_3__new_unchecked::<openssl3::t_bio_st>(bio),
            )
        };
        {
            let _: tuple0 = {
                sandwich::implementation::openssl3_impl::tunnel::bio_method::impl__Bio__clear_retry_flag(
                    &(bio),
                )
            };
            {
                (match (sandwich::implementation::openssl3_impl::tunnel::bio_method::impl__Bio__read(
                    &(bio),
                    &mut (deref(
                        core::slice::raw::from_raw_parts_mut::<
                            lifetime!(something),
                            int,
                        >(core::ptr::mut_ptr::impl__cast::<int, int>(data), len),
                    )),
                )) {
                    core::result::Result_Ok(n) => {
                        let _: tuple0 = { (deref(written) = n) };
                        { 1 }
                    }
                    core::result::Result_Err(e) => {
                        sandwich::implementation::openssl3_impl::tunnel::bio_method::bio_reflect_io_error::<
                            arrow!(tuple0 -> int),
                            arrow!(tuple0 -> int),
                            int,
                        >(
                            e,
                            (|_| {
                                {
                                    let _: tuple0 = {
                                        sandwich::implementation::openssl3_impl::tunnel::bio_method::impl__Bio__set_retry_read_flag(
                                            &(bio),
                                        )
                                    };
                                    { 1 }
                                }
                            }),
                            (|_| {
                                {
                                    let _: tuple0 = {
                                        sandwich::implementation::openssl3_impl::tunnel::bio_method::impl__Bio__declare_closed(
                                            &(bio),
                                        )
                                    };
                                    { 1 }
                                }
                            }),
                            1,
                        )
                    }
                })
            }
        }
    }
}


Last AST:
/** print_rust: pitem: not implemented  (item: { Concrete_ident.T.def_id =
  { Concrete_ident.Imported.krate = "sandwich";
    path =
    [{ Concrete_ident.Imported.data =
       (Concrete_ident.Imported.TypeNs "tunnel"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "rec_bundle");
        disambiguator = 473063542 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.ValueNs "bio_read"); disambiguator = 0 }
      ]
    };
  kind = Concrete_ident.Kind.Value }) */
const _: () = ();
 *)

(* item error backend: (reject_RawOrMutPointer) ExplicitRejection { reason: "a node of kind [Raw_pointer] have been found in the AST" }
Last available AST for this item:

/// BIO write callback.
#[cfg(feature = "tunnel")]
#[cfg(feature = "openssl3")]
#[deny(bare_trait_objects)]
#[feature(register_tool)]
#[register_tool(_hax)]
unsafe fn bio_write(
    bio: raw_pointer!(),
    data: raw_pointer!(),
    len: int,
    written: raw_pointer!(),
) -> int {
    {
        let bio: sandwich::implementation::openssl3_impl::tunnel::bio_method::t_Bio = {
            sandwich::implementation::openssl3_impl::tunnel::bio_method::Bio(
                core::ptr::non_null::impl_3__new_unchecked::<openssl3::t_bio_st>(bio),
            )
        };
        {
            let _: tuple0 = {
                sandwich::implementation::openssl3_impl::tunnel::bio_method::impl__Bio__clear_retry_flag(
                    &(bio),
                )
            };
            {
                (match (sandwich::implementation::openssl3_impl::tunnel::bio_method::impl__Bio__write(
                    &(bio),
                    &(deref(
                        core::slice::raw::from_raw_parts::<
                            lifetime!(something),
                            int,
                        >(core::ptr::const_ptr::impl__cast::<int, int>(data), len),
                    )),
                )) {
                    core::result::Result_Ok(n) => {
                        let _: tuple0 = { (deref(written) = n) };
                        { 1 }
                    }
                    core::result::Result_Err(e) => {
                        sandwich::implementation::openssl3_impl::tunnel::bio_method::bio_reflect_io_error::<
                            arrow!(tuple0 -> int),
                            arrow!(tuple0 -> int),
                            int,
                        >(
                            e,
                            (|_| {
                                {
                                    let _: tuple0 = {
                                        sandwich::implementation::openssl3_impl::tunnel::bio_method::impl__Bio__set_retry_write_flag(
                                            &(bio),
                                        )
                                    };
                                    { 1 }
                                }
                            }),
                            (|_| {
                                {
                                    let _: tuple0 = {
                                        sandwich::implementation::openssl3_impl::tunnel::bio_method::impl__Bio__declare_closed(
                                            &(bio),
                                        )
                                    };
                                    { 1 }
                                }
                            }),
                            1,
                        )
                    }
                })
            }
        }
    }
}


Last AST:
/** print_rust: pitem: not implemented  (item: { Concrete_ident.T.def_id =
  { Concrete_ident.Imported.krate = "sandwich";
    path =
    [{ Concrete_ident.Imported.data =
       (Concrete_ident.Imported.TypeNs "tunnel"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "rec_bundle");
        disambiguator = 473063542 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.ValueNs "bio_write"); disambiguator = 0 }
      ]
    };
  kind = Concrete_ident.Kind.Value }) */
const _: () = ();
 *)

let create_and_attach_bio (self: t_Ssl) =
  match Sandwich.Implementation.Openssl3_impl.Support.new_BIO v_BIO_METHOD with
  | Core.Result.Result_Ok bio ->
    Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
      "{\n        let ptr: raw_pointer!() = {\n            core::ptr::non_null::impl_3__as_ptr::<\n                openssl3::t_bio_st,\n            >(\n                sandwich::support::pimpl::impl_2__as_nonnull::<\n                    lifetime!(something),\n                    openssl3::t_bio_st,\n                >(&(bio)),\n            )\n        };\n        {\n            let _: tuple0 = {\n                {\n                    let _: tuple0 = {\n                        openssl3::foreign_mod_532::v_BIO_set_init(ptr, 1)\n                    };\n                    {\n                        let _: tuple0 = {\n                            openssl3::foreign_mod_3205::v_SSL_set_bio(\n                                core::ptr::non_null::impl_3__as_ptr::<\n                                    openssl3::t_ssl_st,\n                                >(\n                                    proj_sandwich::implementation::openssl3_impl::tunnel::ssl::_0(\n                                        deref(self),\n                                    ),\n                                ),\n                                ptr,\n                                ptr,\n                            )\n                        };\n                        Tuple0\n                    }\n                }\n            };\n            {\n                let _: raw_pointer!() = {\n                    sandwich::support::pimpl::impl_2__into_raw::<\n                        lifetime!(something),\n                        openssl3::t_bio_st,\n                    >(bio)\n                };\n                { core::result::Result_Ok(Tuple0()) }\n            }\n        }\n    }"

  | Core.Result.Result_Err err ->
    Core.Result.Result_Err err <: Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let get_last_recorded_error
      (#impl_765196419_: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()] i7: Core.Convert.t_Into impl_765196419_ i32)
      (self: t_Ssl)
      (ret: impl_765196419_)
     =
  let err:i32 =
    Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
      "rust_primitives::hax::failure(\n        \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n        \"openssl3::foreign_mod_3374::v_SSL_get_error\",\n    )(\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"address_of\",\n        ),\n        core::convert::f_into(ret),\n    )"

  in
  Core.Result.impl__map_err #Sandwich.Implementation.Openssl3_impl.Error.t_SslError
    #Prims.unit
    #i32
    (Core.Convert.f_try_from #Sandwich.Implementation.Openssl3_impl.Error.t_SslError
        #i32
        #FStar.Tactics.Typeclasses.solve
        err
      <:
      Core.Result.t_Result Sandwich.Implementation.Openssl3_impl.Error.t_SslError Prims.unit)
    (fun temp_0_ ->
        let _:Prims.unit = temp_0_ in
        err)

let get_error_from_record_stage (self: t_Ssl) (err: i32) =
  match get_last_recorded_error #i32 self err with
  | Core.Result.Result_Ok ssl_error ->
    if
      ssl_error =.
      (Sandwich.Implementation.Openssl3_impl.Error.SslError_Syscall
        <:
        Sandwich.Implementation.Openssl3_impl.Error.t_SslError) &&
      err =. 0l
    then Sandwich_proto.Tunnel.RecordError_RECORDERROR_CLOSED <: Sandwich_proto.Tunnel.t_RecordError
    else
      Core.Convert.f_into #Sandwich.Implementation.Openssl3_impl.Error.t_SslError
        #Sandwich_proto.Tunnel.t_RecordError
        #FStar.Tactics.Typeclasses.solve
        ssl_error
  | _ ->
    Sandwich_proto.Tunnel.RecordError_RECORDERROR_UNKNOWN <: Sandwich_proto.Tunnel.t_RecordError

let handle_ssl_error_ssl (self: t_Ssl) =
  let error:Sandwich.Implementation.Openssl3_impl.Error.t_Error =
    Core.Convert.f_from #Sandwich.Implementation.Openssl3_impl.Error.t_Error
      #u64
      #FStar.Tactics.Typeclasses.solve
      (Sandwich.Implementation.Openssl3_impl.Support.peek_last_error () <: u64)
  in
  if
    (Sandwich.Implementation.Openssl3_impl.Error.impl__Error__library error
      <:
      Sandwich.Implementation.Openssl3_impl.Error.t_ErrorLibrary) <>.
    (Sandwich.Implementation.Openssl3_impl.Error.ErrorLibrary_Ssl
      <:
      Sandwich.Implementation.Openssl3_impl.Error.t_ErrorLibrary)
  then
    let res:Alloc.String.t_String =
      Alloc.Fmt.format (Core.Fmt.impl_2__new_v1 (sz 3)
            (sz 2)
            (let list = ["unexpected error from OpenSSL: "; " ("; ")"] in
              FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 3);
              Rust_primitives.Hax.array_of_list 3 list)
            (match
                (Sandwich.Implementation.Openssl3_impl.Support.errstr () <: Alloc.String.t_String),
                error
                <:
                (Alloc.String.t_String & Sandwich.Implementation.Openssl3_impl.Error.t_Error)
              with
              | args ->
                let list =
                  [
                    Core.Fmt.Rt.impl_1__new_debug #Sandwich.Implementation.Openssl3_impl.Error.t_Error
                      args._2
                    <:
                    Core.Fmt.Rt.t_Argument;
                    Core.Fmt.Rt.impl_1__new_display #Alloc.String.t_String args._1
                    <:
                    Core.Fmt.Rt.t_Argument
                  ]
                in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                Rust_primitives.Hax.array_of_list 2 list)
          <:
          Core.Fmt.t_Arguments)
    in
    (Core.Result.Result_Err
      (Core.Convert.f_into #(Sandwich_proto.Errors.t_HandshakeError & Alloc.String.t_String)
          #Sandwich.Error.t_Error
          #FStar.Tactics.Typeclasses.solve
          ((Sandwich_proto.Errors.HandshakeError_HANDSHAKEERROR_UNKNOWN_ERROR
              <:
              Sandwich_proto.Errors.t_HandshakeError),
            (Core.Hint.must_use #Alloc.String.t_String res <: Alloc.String.t_String)
            <:
            (Sandwich_proto.Errors.t_HandshakeError & Alloc.String.t_String)))
      <:
      Core.Result.t_Result Sandwich_proto.Tunnel.t_HandshakeState Sandwich.Error.t_Error),
    (Core.Option.Option_None <: Core.Option.t_Option Sandwich_proto.Tunnel.t_State)
    <:
    (Core.Result.t_Result Sandwich_proto.Tunnel.t_HandshakeState Sandwich.Error.t_Error &
      Core.Option.t_Option Sandwich_proto.Tunnel.t_State)
  else
    match Sandwich.Implementation.Openssl3_impl.Error.impl__Error__reason error with
    | 258ul ->
      let res:Alloc.String.t_String =
        Alloc.Fmt.format (Core.Fmt.impl_2__new_v1 (sz 3)
              (sz 2)
              (let list = ["unsupported TLS protocol. error: "; " ("; ")"] in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 3);
                Rust_primitives.Hax.array_of_list 3 list)
              (match
                  (Sandwich.Implementation.Openssl3_impl.Support.errstr () <: Alloc.String.t_String),
                  error
                  <:
                  (Alloc.String.t_String & Sandwich.Implementation.Openssl3_impl.Error.t_Error)
                with
                | args ->
                  let list =
                    [
                      Core.Fmt.Rt.impl_1__new_debug #Sandwich.Implementation.Openssl3_impl.Error.t_Error
                        args._2
                      <:
                      Core.Fmt.Rt.t_Argument;
                      Core.Fmt.Rt.impl_1__new_display #Alloc.String.t_String args._1
                      <:
                      Core.Fmt.Rt.t_Argument
                    ]
                  in
                  FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                  Rust_primitives.Hax.array_of_list 2 list)
            <:
            Core.Fmt.t_Arguments)
      in
      (Core.Result.Result_Err
        (Core.Convert.f_into #(Sandwich_proto.Errors.t_HandshakeError & Alloc.String.t_String)
            #Sandwich.Error.t_Error
            #FStar.Tactics.Typeclasses.solve
            ((Sandwich_proto.Errors.HandshakeError_HANDSHAKEERROR_UNSUPPORTED_PROTOCOL
                <:
                Sandwich_proto.Errors.t_HandshakeError),
              (Core.Hint.must_use #Alloc.String.t_String res <: Alloc.String.t_String)
              <:
              (Sandwich_proto.Errors.t_HandshakeError & Alloc.String.t_String)))
        <:
        Core.Result.t_Result Sandwich_proto.Tunnel.t_HandshakeState Sandwich.Error.t_Error),
      (Core.Option.Option_None <: Core.Option.t_Option Sandwich_proto.Tunnel.t_State)
      <:
      (Core.Result.t_Result Sandwich_proto.Tunnel.t_HandshakeState Sandwich.Error.t_Error &
        Core.Option.t_Option Sandwich_proto.Tunnel.t_State)
    | 193ul ->
      let res:Alloc.String.t_String =
        Alloc.Fmt.format (Core.Fmt.impl_2__new_v1 (sz 3)
              (sz 2)
              (let list = ["no shared cipher. error: "; " ("; ")"] in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 3);
                Rust_primitives.Hax.array_of_list 3 list)
              (match
                  (Sandwich.Implementation.Openssl3_impl.Support.errstr () <: Alloc.String.t_String),
                  error
                  <:
                  (Alloc.String.t_String & Sandwich.Implementation.Openssl3_impl.Error.t_Error)
                with
                | args ->
                  let list =
                    [
                      Core.Fmt.Rt.impl_1__new_debug #Sandwich.Implementation.Openssl3_impl.Error.t_Error
                        args._2
                      <:
                      Core.Fmt.Rt.t_Argument;
                      Core.Fmt.Rt.impl_1__new_display #Alloc.String.t_String args._1
                      <:
                      Core.Fmt.Rt.t_Argument
                    ]
                  in
                  FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                  Rust_primitives.Hax.array_of_list 2 list)
            <:
            Core.Fmt.t_Arguments)
      in
      (Core.Result.Result_Err
        (Core.Convert.f_into #(Sandwich_proto.Errors.t_HandshakeError & Alloc.String.t_String)
            #Sandwich.Error.t_Error
            #FStar.Tactics.Typeclasses.solve
            ((Sandwich_proto.Errors.HandshakeError_HANDSHAKEERROR_NO_SHARED_CIPHER
                <:
                Sandwich_proto.Errors.t_HandshakeError),
              (Core.Hint.must_use #Alloc.String.t_String res <: Alloc.String.t_String)
              <:
              (Sandwich_proto.Errors.t_HandshakeError & Alloc.String.t_String)))
        <:
        Core.Result.t_Result Sandwich_proto.Tunnel.t_HandshakeState Sandwich.Error.t_Error),
      (Core.Option.Option_None <: Core.Option.t_Option Sandwich_proto.Tunnel.t_State)
      <:
      (Core.Result.t_Result Sandwich_proto.Tunnel.t_HandshakeState Sandwich.Error.t_Error &
        Core.Option.t_Option Sandwich_proto.Tunnel.t_State)
    | 101ul ->
      let res:Alloc.String.t_String =
        Alloc.Fmt.format (Core.Fmt.impl_2__new_v1 (sz 3)
              (sz 2)
              (let list = ["no suitable key share found. error: "; " ("; ")"] in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 3);
                Rust_primitives.Hax.array_of_list 3 list)
              (match
                  (Sandwich.Implementation.Openssl3_impl.Support.errstr () <: Alloc.String.t_String),
                  error
                  <:
                  (Alloc.String.t_String & Sandwich.Implementation.Openssl3_impl.Error.t_Error)
                with
                | args ->
                  let list =
                    [
                      Core.Fmt.Rt.impl_1__new_debug #Sandwich.Implementation.Openssl3_impl.Error.t_Error
                        args._2
                      <:
                      Core.Fmt.Rt.t_Argument;
                      Core.Fmt.Rt.impl_1__new_display #Alloc.String.t_String args._1
                      <:
                      Core.Fmt.Rt.t_Argument
                    ]
                  in
                  FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                  Rust_primitives.Hax.array_of_list 2 list)
            <:
            Core.Fmt.t_Arguments)
      in
      (Core.Result.Result_Err
        (Core.Convert.f_into #(Sandwich_proto.Errors.t_HandshakeError & Alloc.String.t_String)
            #Sandwich.Error.t_Error
            #FStar.Tactics.Typeclasses.solve
            ((Sandwich_proto.Errors.HandshakeError_HANDSHAKEERROR_NO_SUITABLE_KEY_SHARE
                <:
                Sandwich_proto.Errors.t_HandshakeError),
              (Core.Hint.must_use #Alloc.String.t_String res <: Alloc.String.t_String)
              <:
              (Sandwich_proto.Errors.t_HandshakeError & Alloc.String.t_String)))
        <:
        Core.Result.t_Result Sandwich_proto.Tunnel.t_HandshakeState Sandwich.Error.t_Error),
      (Core.Option.Option_None <: Core.Option.t_Option Sandwich_proto.Tunnel.t_State)
      <:
      (Core.Result.t_Result Sandwich_proto.Tunnel.t_HandshakeState Sandwich.Error.t_Error &
        Core.Option.t_Option Sandwich_proto.Tunnel.t_State)
    | 134ul ->
      let verify_result:u32 =
        cast (Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
              "rust_primitives::hax::failure(\n        \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n        \"openssl3::foreign_mod_3453::v_SSL_get_verify_result\",\n    )(\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"rust_primitives::hax::failure(\\n        \\\"(AST import) Fatal error: something we considered as impossible occurred! \\\\027[1mPlease report this by submitting an issue on GitHub!\\\\027[0m\\\\nDetails: Pointer, with [cast] being Types.MutToConstPointer\\\",\\n        \\\"{ Types.attributes = [];\\\\n  contents =\\\\n  Types.PointerCoercion {cast = Types.MutToConstPointer;\\\\n    source =\\\\n    { Types.attributes = [];\\\\n      contents =\\\\n      Types.Call {\\\\n        args =\\\\n        [{ Types.attributes = [];\\\\n           contents =\\\\n           Types.Field {\\\\n             field =\\\\n             { Types.index = (0, 392); is_local = true; krate = \\\\\\\"sandwich\\\\\\\";\\\\n               path =\\\\n               [{ Types.data = (Types.TypeNs \\\\\\\"implementation\\\\\\\");\\\\n                  disambiguator = 0 };\\\\n                 { Types.data = (Types.TypeNs \\\\\\\"openssl3_impl\\\\\\\");\\\\n                   disambiguator = 0 };\\\\n                 { Types.data = (Types.TypeNs \\\\\\\"tunnel\\\\\\\"); disambiguator = 0 };\\\\n                 { Types.data = (Types.TypeNs \\\\\\\"ssl\\\\\\\"); disambiguator = 0 };\\\\n                 { Types.data = (Types.TypeNs \\\\\\\"Ssl\\\\\\\"); disambiguator = 0 };\\\\n                 { Types.data = (Types.ValueNs \\\\\\\"0\\\\\\\"); disambiguator = 0 }]\\\\n               };\\\\n             lhs =\\\\n             { Types.attributes = [];\\\\n               contents =\\\\n               Types.Deref {\\\\n                 arg =\\\\n                 { Types.attributes = [];\\\\n                   contents =\\\\n                   Types.VarRef {\\\\n                     id =\\\\n                     { Types.id =\\\\n                       { Types.local_id = \\\\\\\"2\\\\\\\";\\\\n                         owner =\\\\n                         { Types.index = (0, 423); is_local = true;\\\\n                           krate = \\\\\\\"sandwich\\\\\\\";\\\\n                           path =\\\\n                           [{ Types.data = (Types.TypeNs \\\\\\\"implementation\\\\\\\");\\\\n                              disambiguator = 0 };\\\\n                             { Types.data = (Types.TypeNs \\\\\\\"openssl3_impl\\\\\\\");\\\\n                               disambiguator = 0 };\\\\n                             { Types.data = (Types.TypeNs \\\\\\\"tunnel\\\\\\\");\\\\n                               disambiguator = 0 };\\\\n                             { Types.data = (Types.TypeNs \\\\\\\"ssl\\\\\\\");\\\\n                               disambiguator = 0 };\\\\n                             { Types.data = Types.Impl; disambiguator = 2 };\\\\n                             { Types.data =\\\\n                               (Types.ValueNs \\\\\\\"handle_ssl_error_ssl\\\\\\\");\\\\n                               disambiguator = 0 }\\\\n                             ]\\\\n                           }\\\\n                         };\\\\n                       name = \\\\\\\"self\\\\\\\" }};\\\\n                   hir_id = None;\\\\n                   span =\\\\n                   { Types.filename =\\\\n                     (Types.Real\\\\n                        (Types.LocalPath\\\\n                           \\\\\\\"rust/implementation/openssl3_impl/tunnel/ssl.rs\\\\\\\"));\\\\n                     hi = { Types.col = \\\\\\\"73\\\\\\\"; line = \\\\\\\"339\\\\\\\" };\\\\n                     lo = { Types.col = \\\\\\\"69\\\\\\\"; line = \\\\\\\"339\\\\\\\" } };\\\\n                   ty =\\\\n                   { Types.kind =\\\\n                     (Types.Ref\\\\n                        ({ Types.kind = Types.ReErased },\\\\n                         { Types.kind =\\\\n                           Types.Adt {\\\\n                             def_id =\\\\n                             { Types.index = (0, 390); is_local = true;\\\\n                               krate = \\\\\\\"sandwich\\\\\\\";\\\\n                               path =\\\\n                               [{ Types.data =\\\\n                                  (Types.TypeNs \\\\\\\"implementation\\\\\\\");\\\\n                                  disambiguator = 0 };\\\\n                                 { Types.data =\\\\n                                   (Types.TypeNs \\\\\\\"openssl3_impl\\\\\\\");\\\\n                                   disambiguator = 0 };\\\\n                                 { Types.data = (Types.TypeNs \\\\\\\"tunnel\\\\\\\");\\\\n                                   disambiguator = 0 };\\\\n                                 { Types.data = (Types.TypeNs \\\\\\\"ssl\\\\\\\");\\\\n                                   disambiguator = 0 };\\\\n                                 { Types.data = (Types.TypeNs \\\\\\\"Ssl\\\\\\\");\\\\n                                   disambiguator = 0 }\\\\n                                 ]\\\\n                               };\\\\n                             generic_args = []; trait_refs = []}\\\\n                           },\\\\n                         false))\\\\n                     }\\\\n                   }};\\\\n               hir_id = (Some (\\\\\\\"423\\\\\\\", \\\\\\\"432\\\\\\\"));\\\\n               span =\\\\n               { Types.filename =\\\\n                 (Types.Real\\\\n                    (Types.LocalPath\\\\n                       \\\\\\\"rust/implementation/openssl3_impl/tunnel/ssl.rs\\\\\\\"));\\\\n                 hi = { Types.col = \\\\\\\"73\\\\\\\"; line = \\\\\\\"339\\\\\\\" };\\\\n                 lo = { Types.col = \\\\\\\"69\\\\\\\"; line = \\\\\\\"339\\\\\\\" } };\\\\n               ty =\\\\n               { Types.kind =\\\\n                 Types.Adt {\\\\n                   def_id =\\\\n                   { Types.index = (0, 390); is_local = true;\\\\n                     krate = \\\\\\\"sandwich\\\\\\\";\\\\n                     path =\\\\n                     [{ Types.data = (Types.TypeNs \\\\\\\"implementation\\\\\\\");\\\\n                        disambiguator = 0 };\\\\n                       { Types.data = (Types.TypeNs \\\\\\\"openssl3_impl\\\\\\\");\\\\n                         disambiguator = 0 };\\\\n                       { Types.data = (Types.TypeNs \\\\\\\"tunnel\\\\\\\");\\\\n                         disambiguator = 0 };\\\\n                       { Types.data = (Types.TypeNs \\\\\\\"ssl\\\\\\\"); disambiguator = 0\\\\n                         };\\\\n                       { Types.data = (Types.TypeNs \\\\\\\"Ssl\\\\\\\"); disambiguator = 0\\\\n                         }\\\\n                       ]\\\\n                     };\\\\n                   generic_args = []; trait_refs = []}\\\\n                 }\\\\n               }};\\\\n           hir_id = (Some (\\\\\\\"423\\\\\\\", \\\\\\\"431\\\\\\\"));\\\\n           span =\\\\n           { Types.filename =\\\\n             (Types.Real\\\\n                (Types.LocalPath\\\\n                   \\\\\\\"rust/implementation/openssl3_impl/tunnel/ssl.rs\\\\\\\"));\\\\n             hi = { Types.col = \\\\\\\"75\\\\\\\"; line = \\\\\\\"339\\\\\\\" };\\\\n             lo = { Types.col = \\\\\\\"69\\\\\\\"; line = \\\\\\\"339\\\\\\\" } };\\\\n           ty =\\\\n           { Types.kind =\\\\n             Types.Adt {\\\\n               def_id =\\\\n               { Types.index = (2, 2358); is_local = false; krate = \\\\\\\"core\\\\\\\";\\\\n                 path =\\\\n                 [{ Types.data = (Types.TypeNs \\\\\\\"ptr\\\\\\\"); disambiguator = 0 };\\\\n                   { Types.data = (Types.TypeNs \\\\\\\"non_null\\\\\\\");\\\\n                     disambiguator = 0 };\\\\n                   { Types.data = (Types.TypeNs \\\\\\\"NonNull\\\\\\\"); disambiguator = 0\\\\n                     }\\\\n                   ]\\\\n                 };\\\\n               generic_args =\\\\n               [(Types.Type\\\\n                   { Types.kind =\\\\n                     Types.Adt {\\\\n                       def_id =\\\\n                       { Types.index = (27, 21394); is_local = false;\\\\n                         krate = \\\\\\\"openssl3\\\\\\\";\\\\n                         path =\\\\n                         [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\");\\\\n                            disambiguator = 0 }\\\\n                           ]\\\\n                         };\\\\n                       generic_args = []; trait_refs = []}\\\\n                     })\\\\n                 ];\\\\n               trait_refs = []}\\\\n             }\\\\n           }\\\\n          ];\\\\n        bounds_impls = [];\\\\n        fn_span =\\\\n        { Types.filename =\\\\n          (Types.Real\\\\n             (Types.LocalPath\\\\n                \\\\\\\"rust/implementation/openssl3_impl/tunnel/ssl.rs\\\\\\\"));\\\\n          hi = { Types.col = \\\\\\\"84\\\\\\\"; line = \\\\\\\"339\\\\\\\" };\\\\n          lo = { Types.col = \\\\\\\"76\\\\\\\"; line = \\\\\\\"339\\\\\\\" } };\\\\n        from_hir_call = true;\\\\n        fun' =\\\\n        { Types.attributes = [];\\\\n          contents =\\\\n          Types.GlobalName {\\\\n            id =\\\\n            { Types.index = (2, 2381); is_local = false; krate = \\\\\\\"core\\\\\\\";\\\\n              path =\\\\n              [{ Types.data = (Types.TypeNs \\\\\\\"ptr\\\\\\\"); disambiguator = 0 };\\\\n                { Types.data = (Types.TypeNs \\\\\\\"non_null\\\\\\\"); disambiguator = 0 };\\\\n                { Types.data = Types.Impl; disambiguator = 3 };\\\\n                { Types.data = (Types.ValueNs \\\\\\\"as_ptr\\\\\\\"); disambiguator = 0 }]\\\\n              }};\\\\n          hir_id = None;\\\\n          span =\\\\n          { Types.filename =\\\\n            (Types.Real\\\\n               (Types.LocalPath\\\\n                  \\\\\\\"rust/implementation/openssl3_impl/tunnel/ssl.rs\\\\\\\"));\\\\n            hi = { Types.col = \\\\\\\"82\\\\\\\"; line = \\\\\\\"339\\\\\\\" };\\\\n            lo = { Types.col = \\\\\\\"76\\\\\\\"; line = \\\\\\\"339\\\\\\\" } };\\\\n          ty =\\\\n          { Types.kind =\\\\n            (Types.Arrow\\\\n               { Types.bound_vars = [];\\\\n                 value =\\\\n                 { Types.abi = Types.Abi {todo = \\\\\\\"Rust\\\\\\\"}; c_variadic = false;\\\\n                   inputs =\\\\n                   [{ Types.kind =\\\\n                      Types.Adt {\\\\n                        def_id =\\\\n                        { Types.index = (2, 2358); is_local = false;\\\\n                          krate = \\\\\\\"core\\\\\\\";\\\\n                          path =\\\\n                          [{ Types.data = (Types.TypeNs \\\\\\\"ptr\\\\\\\");\\\\n                             disambiguator = 0 };\\\\n                            { Types.data = (Types.TypeNs \\\\\\\"non_null\\\\\\\");\\\\n                              disambiguator = 0 };\\\\n                            { Types.data = (Types.TypeNs \\\\\\\"NonNull\\\\\\\");\\\\n                              disambiguator = 0 }\\\\n                            ]\\\\n                          };\\\\n                        generic_args =\\\\n                        [(Types.Type\\\\n                            { Types.kind =\\\\n                              Types.Adt {\\\\n                                def_id =\\\\n                                { Types.index = (27, 21394);\\\\n                                  is_local = false; krate = \\\\\\\"openssl3\\\\\\\";\\\\n                                  path =\\\\n                                  [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\");\\\\n                                     disambiguator = 0 }\\\\n                                    ]\\\\n                                  };\\\\n                                generic_args = []; trait_refs = []}\\\\n                              })\\\\n                          ];\\\\n                        trait_refs = []}\\\\n                      }\\\\n                     ];\\\\n                   output =\\\\n                   { Types.kind =\\\\n                     (Types.RawPtr\\\\n                        ({ Types.kind =\\\\n                           Types.Adt {\\\\n                             def_id =\\\\n                             { Types.index = (27, 21394); is_local = false;\\\\n                               krate = \\\\\\\"openssl3\\\\\\\";\\\\n                               path =\\\\n                               [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\");\\\\n                                  disambiguator = 0 }\\\\n                                 ]\\\\n                               };\\\\n                             generic_args = []; trait_refs = []}\\\\n                           },\\\\n                         true))\\\\n                     };\\\\n                   safety = Types.Safe }\\\\n                 })\\\\n            }\\\\n          };\\\\n        generic_args =\\\\n        [(Types.Type\\\\n            { Types.kind =\\\\n              Types.Adt {\\\\n                def_id =\\\\n                { Types.index = (27, 21394); is_local = false;\\\\n                  krate = \\\\\\\"openssl3\\\\\\\";\\\\n                  path =\\\\n                  [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\"); disambiguator = 0\\\\n                     }\\\\n                    ]\\\\n                  };\\\\n                generic_args = []; trait_refs = []}\\\\n              })\\\\n          ];\\\\n        trait = None;\\\\n        ty =\\\\n        { Types.kind =\\\\n          (Types.Arrow\\\\n             { Types.bound_vars = [];\\\\n               value =\\\\n               { Types.abi = Types.Abi {todo = \\\\\\\"Rust\\\\\\\"}; c_variadic = false;\\\\n                 inputs =\\\\n                 [{ Types.kind =\\\\n                    Types.Adt {\\\\n                      def_id =\\\\n                      { Types.index = (2, 2358); is_local = false;\\\\n                        krate = \\\\\\\"core\\\\\\\";\\\\n                        path =\\\\n                        [{ Types.data = (Types.TypeNs \\\\\\\"ptr\\\\\\\");\\\\n                           disambiguator = 0 };\\\\n                          { Types.data = (Types.TypeNs \\\\\\\"non_null\\\\\\\");\\\\n                            disambiguator = 0 };\\\\n                          { Types.data = (Types.TypeNs \\\\\\\"NonNull\\\\\\\");\\\\n                            disambiguator = 0 }\\\\n                          ]\\\\n                        };\\\\n                      generic_args =\\\\n                      [(Types.Type\\\\n                          { Types.kind =\\\\n                            Types.Adt {\\\\n                              def_id =\\\\n                              { Types.index = (27, 21394); is_local = false;\\\\n                                krate = \\\\\\\"openssl3\\\\\\\";\\\\n                                path =\\\\n                                [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\");\\\\n                                   disambiguator = 0 }\\\\n                                  ]\\\\n                                };\\\\n                              generic_args = []; trait_refs = []}\\\\n                            })\\\\n                        ];\\\\n                      trait_refs = []}\\\\n                    }\\\\n                   ];\\\\n                 output =\\\\n                 { Types.kind =\\\\n                   (Types.RawPtr\\\\n                      ({ Types.kind =\\\\n                         Types.Adt {\\\\n                           def_id =\\\\n                           { Types.index = (27, 21394); is_local = false;\\\\n                             krate = \\\\\\\"openssl3\\\\\\\";\\\\n                             path =\\\\n                             [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\");\\\\n                                disambiguator = 0 }\\\\n                               ]\\\\n                             };\\\\n                           generic_args = []; trait_refs = []}\\\\n                         },\\\\n                       true))\\\\n                   };\\\\n                 safety = Types.Safe }\\\\n               })\\\\n          }};\\\\n      hir_id = None;\\\\n      span =\\\\n      { Types.filename =\\\\n        (Types.Real\\\\n           (Types.LocalPath \\\\\\\"rust/implementation/openssl3_impl/tunnel/ssl.rs\\\\\\\"));\\\\n        hi = { Types.col = \\\\\\\"84\\\\\\\"; line = \\\\\\\"339\\\\\\\" };\\\\n        lo = { Types.col = \\\\\\\"69\\\\\\\"; line = \\\\\\\"339\\\\\\\" } };\\\\n      ty =\\\\n      { Types.kind =\\\\n        (Types.RawPtr\\\\n           ({ Types.kind =\\\\n              Types.Adt {\\\\n                def_id =\\\\n                { Types.index = (27, 21394); is_local = false;\\\\n                  krate = \\\\\\\"openssl3\\\\\\\";\\\\n                  path =\\\\n                  [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\"); disambiguator = 0\\\\n                     }\\\\n                    ]\\\\n                  };\\\\n                generic_args = []; trait_refs = []}\\\\n              },\\\\n            true))\\\\n        }\\\\n      }};\\\\n  hir_id = (Some (\\\\\\\"423\\\\\\\", \\\\\\\"429\\\\\\\"));\\\\n  span =\\\\n  { Types.filename =\\\\n    (Types.Real\\\\n       (Types.LocalPath \\\\\\\"rust/implementation/openssl3_impl/tunnel/ssl.rs\\\\\\\"));\\\\n    hi = { Types.col = \\\\\\\"84\\\\\\\"; line = \\\\\\\"339\\\\\\\" };\\\\n    lo = { Types.col = \\\\\\\"69\\\\\\\"; line = \\\\\\\"339\\\\\\\" } };\\\\n  ty =\\\\n  { Types.kind =\\\\n    (Types.RawPtr\\\\n       ({ Types.kind =\\\\n          Types.Adt {\\\\n            def_id =\\\\n            { Types.index = (27, 21394); is_local = false;\\\\n              krate = \\\\\\\"openssl3\\\\\\\";\\\\n              path =\\\\n              [{ Types.data = (Types.TypeNs \\\\\\\"ssl_st\\\\\\\"); disambiguator = 0 }] };\\\\n            generic_args = []; trait_refs = []}\\\\n          },\\\\n        false))\\\\n    }\\\\n  }\\\",\\n    )\",\n        ),\n    )"

            <:
            i64)
        <:
        u32
      in
      let (err: Sandwich.Error.t_Error):Sandwich.Error.t_Error =
        match verify_result with
        | 10ul ->
          Core.Convert.f_into #Sandwich_proto.Errors.t_HandshakeError
            #Sandwich.Error.t_Error
            #FStar.Tactics.Typeclasses.solve
            (Sandwich_proto.Errors.HandshakeError_HANDSHAKEERROR_CERTIFICATE_EXPIRED
              <:
              Sandwich_proto.Errors.t_HandshakeError)
        | 23ul ->
          Core.Convert.f_into #Sandwich_proto.Errors.t_HandshakeError
            #Sandwich.Error.t_Error
            #FStar.Tactics.Typeclasses.solve
            (Sandwich_proto.Errors.HandshakeError_HANDSHAKEERROR_CERTIFICATE_REVOKED
              <:
              Sandwich_proto.Errors.t_HandshakeError)
        | 7ul ->
          Core.Convert.f_into #Sandwich_proto.Errors.t_HandshakeError
            #Sandwich.Error.t_Error
            #FStar.Tactics.Typeclasses.solve
            (Sandwich_proto.Errors.HandshakeError_HANDSHAKEERROR_CERTIFICATE_SIGNATURE_VERIFICATION_FAILED
              <:
              Sandwich_proto.Errors.t_HandshakeError)
        | 92ul ->
          Core.Convert.f_into #Sandwich_proto.Errors.t_HandshakeError
            #Sandwich.Error.t_Error
            #FStar.Tactics.Typeclasses.solve
            (Sandwich_proto.Errors.HandshakeError_HANDSHAKEERROR_CERTIFICATE_VERIFICATION_FAILED
              <:
              Sandwich_proto.Errors.t_HandshakeError)
        | 62ul ->
          Core.Convert.f_into #(Sandwich_proto.Errors.t_HandshakeError & string)
            #Sandwich.Error.t_Error
            #FStar.Tactics.Typeclasses.solve
            ((Sandwich_proto.Errors.HandshakeError_HANDSHAKEERROR_INVALID_SERVER_NAME
                <:
                Sandwich_proto.Errors.t_HandshakeError),
              "hostname mismatches"
              <:
              (Sandwich_proto.Errors.t_HandshakeError & string))
        | 63ul ->
          Core.Convert.f_into #(Sandwich_proto.Errors.t_HandshakeError & string)
            #Sandwich.Error.t_Error
            #FStar.Tactics.Typeclasses.solve
            ((Sandwich_proto.Errors.HandshakeError_HANDSHAKEERROR_INVALID_SERVER_NAME
                <:
                Sandwich_proto.Errors.t_HandshakeError),
              "email mismatches"
              <:
              (Sandwich_proto.Errors.t_HandshakeError & string))
        | 64ul ->
          Core.Convert.f_into #(Sandwich_proto.Errors.t_HandshakeError & string)
            #Sandwich.Error.t_Error
            #FStar.Tactics.Typeclasses.solve
            ((Sandwich_proto.Errors.HandshakeError_HANDSHAKEERROR_INVALID_SERVER_NAME
                <:
                Sandwich_proto.Errors.t_HandshakeError),
              "ip address mismatches"
              <:
              (Sandwich_proto.Errors.t_HandshakeError & string))
        | 22ul ->
          Core.Convert.f_into #Sandwich_proto.Errors.t_HandshakeError
            #Sandwich.Error.t_Error
            #FStar.Tactics.Typeclasses.solve
            (Sandwich_proto.Errors.HandshakeError_HANDSHAKEERROR_DEPTH_EXCEEDED
              <:
              Sandwich_proto.Errors.t_HandshakeError)
        | 9ul
        | 27ul
        | 28ul ->
          Core.Convert.f_into #(Sandwich_proto.Errors.t_HandshakeError & string)
            #Sandwich.Error.t_Error
            #FStar.Tactics.Typeclasses.solve
            ((Sandwich_proto.Errors.HandshakeError_HANDSHAKEERROR_INVALID_CERTIFICATE
                <:
                Sandwich_proto.Errors.t_HandshakeError),
              "certificate not yet valid, untrusted or rejected"
              <:
              (Sandwich_proto.Errors.t_HandshakeError & string))
        | _ ->
          let res:Alloc.String.t_String =
            Alloc.Fmt.format (Core.Fmt.impl_2__new_v1 (sz 2)
                  (sz 2)
                  (let list = ["verification failed: verify code is "; ", error: "] in
                    FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                    Rust_primitives.Hax.array_of_list 2 list)
                  (match
                      (Sandwich.Implementation.Openssl3_impl.Support.errstr ()
                        <:
                        Alloc.String.t_String),
                      verify_result
                      <:
                      (Alloc.String.t_String & u32)
                    with
                    | args ->
                      let list =
                        [
                          Core.Fmt.Rt.impl_1__new_display #u32 args._2 <: Core.Fmt.Rt.t_Argument;
                          Core.Fmt.Rt.impl_1__new_display #Alloc.String.t_String args._1
                          <:
                          Core.Fmt.Rt.t_Argument
                        ]
                      in
                      FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                      Rust_primitives.Hax.array_of_list 2 list)
                <:
                Core.Fmt.t_Arguments)
          in
          Core.Convert.f_into #(Sandwich_proto.Errors.t_HandshakeError & Alloc.String.t_String)
            #Sandwich.Error.t_Error
            #FStar.Tactics.Typeclasses.solve
            ((Sandwich_proto.Errors.HandshakeError_HANDSHAKEERROR_UNKNOWN_ERROR
                <:
                Sandwich_proto.Errors.t_HandshakeError),
              (Core.Hint.must_use #Alloc.String.t_String res <: Alloc.String.t_String)
              <:
              (Sandwich_proto.Errors.t_HandshakeError & Alloc.String.t_String))
      in
      (Core.Result.Result_Err err
        <:
        Core.Result.t_Result Sandwich_proto.Tunnel.t_HandshakeState Sandwich.Error.t_Error),
      (Core.Option.Option_None <: Core.Option.t_Option Sandwich_proto.Tunnel.t_State)
      <:
      (Core.Result.t_Result Sandwich_proto.Tunnel.t_HandshakeState Sandwich.Error.t_Error &
        Core.Option.t_Option Sandwich_proto.Tunnel.t_State)
    | _ ->
      let res:Alloc.String.t_String =
        Alloc.Fmt.format (Core.Fmt.impl_2__new_v1 (sz 3)
              (sz 2)
              (let list = ["unexpected SSL error from OpenSSL: "; " ("; ")"] in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 3);
                Rust_primitives.Hax.array_of_list 3 list)
              (match
                  (Sandwich.Implementation.Openssl3_impl.Support.errstr () <: Alloc.String.t_String),
                  error
                  <:
                  (Alloc.String.t_String & Sandwich.Implementation.Openssl3_impl.Error.t_Error)
                with
                | args ->
                  let list =
                    [
                      Core.Fmt.Rt.impl_1__new_debug #Sandwich.Implementation.Openssl3_impl.Error.t_Error
                        args._2
                      <:
                      Core.Fmt.Rt.t_Argument;
                      Core.Fmt.Rt.impl_1__new_display #Alloc.String.t_String args._1
                      <:
                      Core.Fmt.Rt.t_Argument
                    ]
                  in
                  FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                  Rust_primitives.Hax.array_of_list 2 list)
            <:
            Core.Fmt.t_Arguments)
      in
      (Core.Result.Result_Err
        (Core.Convert.f_into #(Sandwich_proto.Errors.t_HandshakeError & Alloc.String.t_String)
            #Sandwich.Error.t_Error
            #FStar.Tactics.Typeclasses.solve
            ((Sandwich_proto.Errors.HandshakeError_HANDSHAKEERROR_UNKNOWN_ERROR
                <:
                Sandwich_proto.Errors.t_HandshakeError),
              (Core.Hint.must_use #Alloc.String.t_String res <: Alloc.String.t_String)
              <:
              (Sandwich_proto.Errors.t_HandshakeError & Alloc.String.t_String)))
        <:
        Core.Result.t_Result Sandwich_proto.Tunnel.t_HandshakeState Sandwich.Error.t_Error),
      (Core.Option.Option_None <: Core.Option.t_Option Sandwich_proto.Tunnel.t_State)
      <:
      (Core.Result.t_Result Sandwich_proto.Tunnel.t_HandshakeState Sandwich.Error.t_Error &
        Core.Option.t_Option Sandwich_proto.Tunnel.t_State)

let do_handshake (self: t_Ssl) =
  let handshake_error:i32 =
    Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
      "rust_primitives::hax::failure(\n        \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n        \"openssl3::foreign_mod_3388::v_SSL_do_handshake\",\n    )(\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::non_null::impl_3__as_ptr::<\\n        openssl3::t_ssl_st,\\n    >(proj_sandwich::implementation::openssl3_impl::tunnel::ssl::_0(deref(self)))\",\n        ),\n    )"

  in
  if handshake_error =. 1l
  then
    (Core.Result.Result_Ok
      (Sandwich_proto.Tunnel.HandshakeState_HANDSHAKESTATE_DONE
        <:
        Sandwich_proto.Tunnel.t_HandshakeState)
      <:
      Core.Result.t_Result Sandwich_proto.Tunnel.t_HandshakeState Sandwich.Error.t_Error),
    (Core.Option.Option_Some
      (Sandwich_proto.Tunnel.State_STATE_HANDSHAKE_DONE <: Sandwich_proto.Tunnel.t_State)
      <:
      Core.Option.t_Option Sandwich_proto.Tunnel.t_State)
    <:
    (Core.Result.t_Result Sandwich_proto.Tunnel.t_HandshakeState Sandwich.Error.t_Error &
      Core.Option.t_Option Sandwich_proto.Tunnel.t_State)
  else
    match get_last_recorded_error #i32 self handshake_error with
    | Core.Result.Result_Ok ssl_error ->
      let ssl_error:Sandwich.Implementation.Openssl3_impl.Error.t_SslError = ssl_error in
      (match ssl_error with
        | Sandwich.Implementation.Openssl3_impl.Error.SslError_WantRead  ->
          (Core.Result.Result_Ok
            (Sandwich_proto.Tunnel.HandshakeState_HANDSHAKESTATE_WANT_READ
              <:
              Sandwich_proto.Tunnel.t_HandshakeState)
            <:
            Core.Result.t_Result Sandwich_proto.Tunnel.t_HandshakeState Sandwich.Error.t_Error),
          (Core.Option.Option_Some
            (Sandwich_proto.Tunnel.State_STATE_HANDSHAKE_IN_PROGRESS
              <:
              Sandwich_proto.Tunnel.t_State)
            <:
            Core.Option.t_Option Sandwich_proto.Tunnel.t_State)
          <:
          (Core.Result.t_Result Sandwich_proto.Tunnel.t_HandshakeState Sandwich.Error.t_Error &
            Core.Option.t_Option Sandwich_proto.Tunnel.t_State)
        | Sandwich.Implementation.Openssl3_impl.Error.SslError_WantWrite  ->
          (Core.Result.Result_Ok
            (Sandwich_proto.Tunnel.HandshakeState_HANDSHAKESTATE_WANT_WRITE
              <:
              Sandwich_proto.Tunnel.t_HandshakeState)
            <:
            Core.Result.t_Result Sandwich_proto.Tunnel.t_HandshakeState Sandwich.Error.t_Error),
          (Core.Option.Option_Some
            (Sandwich_proto.Tunnel.State_STATE_HANDSHAKE_IN_PROGRESS
              <:
              Sandwich_proto.Tunnel.t_State)
            <:
            Core.Option.t_Option Sandwich_proto.Tunnel.t_State)
          <:
          (Core.Result.t_Result Sandwich_proto.Tunnel.t_HandshakeState Sandwich.Error.t_Error &
            Core.Option.t_Option Sandwich_proto.Tunnel.t_State)
        | Sandwich.Implementation.Openssl3_impl.Error.SslError_ZeroReturn  ->
          (Core.Result.Result_Ok
            (Sandwich_proto.Tunnel.HandshakeState_HANDSHAKESTATE_IN_PROGRESS
              <:
              Sandwich_proto.Tunnel.t_HandshakeState)
            <:
            Core.Result.t_Result Sandwich_proto.Tunnel.t_HandshakeState Sandwich.Error.t_Error),
          (Core.Option.Option_Some
            (Sandwich_proto.Tunnel.State_STATE_HANDSHAKE_IN_PROGRESS
              <:
              Sandwich_proto.Tunnel.t_State)
            <:
            Core.Option.t_Option Sandwich_proto.Tunnel.t_State)
          <:
          (Core.Result.t_Result Sandwich_proto.Tunnel.t_HandshakeState Sandwich.Error.t_Error &
            Core.Option.t_Option Sandwich_proto.Tunnel.t_State)
        | Sandwich.Implementation.Openssl3_impl.Error.SslError_WantAccept
        | Sandwich.Implementation.Openssl3_impl.Error.SslError_WantConnect  ->
          (Core.Result.Result_Ok
            (Sandwich_proto.Tunnel.HandshakeState_HANDSHAKESTATE_IN_PROGRESS
              <:
              Sandwich_proto.Tunnel.t_HandshakeState)
            <:
            Core.Result.t_Result Sandwich_proto.Tunnel.t_HandshakeState Sandwich.Error.t_Error),
          (Core.Option.Option_Some
            (Sandwich_proto.Tunnel.State_STATE_NOT_CONNECTED <: Sandwich_proto.Tunnel.t_State)
            <:
            Core.Option.t_Option Sandwich_proto.Tunnel.t_State)
          <:
          (Core.Result.t_Result Sandwich_proto.Tunnel.t_HandshakeState Sandwich.Error.t_Error &
            Core.Option.t_Option Sandwich_proto.Tunnel.t_State)
        | Sandwich.Implementation.Openssl3_impl.Error.SslError_Ssl  -> handle_ssl_error_ssl self
        | _ ->
          let res:Alloc.String.t_String =
            Alloc.Fmt.format (Core.Fmt.impl_2__new_v1 (sz 3)
                  (sz 2)
                  (let list = ["unexpected SSL error from OpenSSL: "; " ("; ")"] in
                    FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 3);
                    Rust_primitives.Hax.array_of_list 3 list)
                  (match
                      (Sandwich.Implementation.Openssl3_impl.Support.errstr ()
                        <:
                        Alloc.String.t_String),
                      ssl_error
                      <:
                      (Alloc.String.t_String &
                        Sandwich.Implementation.Openssl3_impl.Error.t_SslError)
                    with
                    | args ->
                      let list =
                        [
                          Core.Fmt.Rt.impl_1__new_debug #Sandwich.Implementation.Openssl3_impl.Error.t_SslError
                            args._2
                          <:
                          Core.Fmt.Rt.t_Argument;
                          Core.Fmt.Rt.impl_1__new_display #Alloc.String.t_String args._1
                          <:
                          Core.Fmt.Rt.t_Argument
                        ]
                      in
                      FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                      Rust_primitives.Hax.array_of_list 2 list)
                <:
                Core.Fmt.t_Arguments)
          in
          (Core.Result.Result_Err
            (Core.Convert.f_into #(Sandwich_proto.Errors.t_HandshakeError & Alloc.String.t_String)
                #Sandwich.Error.t_Error
                #FStar.Tactics.Typeclasses.solve
                ((Sandwich_proto.Errors.HandshakeError_HANDSHAKEERROR_UNKNOWN_ERROR
                    <:
                    Sandwich_proto.Errors.t_HandshakeError),
                  (Core.Hint.must_use #Alloc.String.t_String res <: Alloc.String.t_String)
                  <:
                  (Sandwich_proto.Errors.t_HandshakeError & Alloc.String.t_String)))
            <:
            Core.Result.t_Result Sandwich_proto.Tunnel.t_HandshakeState Sandwich.Error.t_Error),
          (Core.Option.Option_None <: Core.Option.t_Option Sandwich_proto.Tunnel.t_State)
          <:
          (Core.Result.t_Result Sandwich_proto.Tunnel.t_HandshakeState Sandwich.Error.t_Error &
            Core.Option.t_Option Sandwich_proto.Tunnel.t_State))
    | Core.Result.Result_Err error_code ->
      let res:Alloc.String.t_String =
        Alloc.Fmt.format (Core.Fmt.impl_2__new_v1 (sz 2)
              (sz 2)
              (let list = ["unexpected `SSL_ERROR_SSL` (code "; ") from OpenSSL: "] in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                Rust_primitives.Hax.array_of_list 2 list)
              (match
                  (Sandwich.Implementation.Openssl3_impl.Support.errstr () <: Alloc.String.t_String),
                  error_code
                  <:
                  (Alloc.String.t_String & i32)
                with
                | args ->
                  let list =
                    [
                      Core.Fmt.Rt.impl_1__new_display #i32 args._2 <: Core.Fmt.Rt.t_Argument;
                      Core.Fmt.Rt.impl_1__new_display #Alloc.String.t_String args._1
                      <:
                      Core.Fmt.Rt.t_Argument
                    ]
                  in
                  FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                  Rust_primitives.Hax.array_of_list 2 list)
            <:
            Core.Fmt.t_Arguments)
      in
      (Core.Result.Result_Err
        (Core.Convert.f_into #(Sandwich_proto.Errors.t_HandshakeError & Alloc.String.t_String)
            #Sandwich.Error.t_Error
            #FStar.Tactics.Typeclasses.solve
            ((Sandwich_proto.Errors.HandshakeError_HANDSHAKEERROR_UNKNOWN_ERROR
                <:
                Sandwich_proto.Errors.t_HandshakeError),
              (Core.Hint.must_use #Alloc.String.t_String res <: Alloc.String.t_String)
              <:
              (Sandwich_proto.Errors.t_HandshakeError & Alloc.String.t_String)))
        <:
        Core.Result.t_Result Sandwich_proto.Tunnel.t_HandshakeState Sandwich.Error.t_Error),
      (Core.Option.Option_None <: Core.Option.t_Option Sandwich_proto.Tunnel.t_State)
      <:
      (Core.Result.t_Result Sandwich_proto.Tunnel.t_HandshakeState Sandwich.Error.t_Error &
        Core.Option.t_Option Sandwich_proto.Tunnel.t_State)

let read796983554 (self: t_Ssl) (buffer: t_Slice u8) =
  match
    Core.Result.impl__map_err #i32
      #Core.Num.Error.t_TryFromIntError
      #Sandwich_proto.Tunnel.t_RecordError
      (Core.Convert.f_try_into #usize
          #i32
          #FStar.Tactics.Typeclasses.solve
          (Core.Slice.impl__len #u8 buffer <: usize)
        <:
        Core.Result.t_Result i32 Core.Num.Error.t_TryFromIntError)
      (fun temp_0_ ->
          let _:Core.Num.Error.t_TryFromIntError = temp_0_ in
          Sandwich_proto.Tunnel.RecordError_RECORDERROR_TOO_BIG
          <:
          Sandwich_proto.Tunnel.t_RecordError)
  with
  | Core.Result.Result_Ok (buf_len: i32) ->
    let err:i32 =
      Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
        "rust_primitives::hax::failure(\n        \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n        \"openssl3::foreign_mod_3360::v_SSL_read\",\n    )(\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::non_null::impl_3__as_ptr::<\\n        openssl3::t_ssl_st,\\n    >(proj_sandwich::implementation::openssl3_impl::tunnel::ssl::_0(deref(self)))\",\n        ),\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::mut_ptr::impl__cast::<\\n        int,\\n        core::ffi::t_c_void,\\n    >(core::slice::impl__as_mut_ptr::<int>(&mut (deref(buffer))))\",\n        ),\n        buf_len,\n    )"

    in
    if err >. 0l
    then
      buffer,
      (Core.Result.Result_Ok (cast (err <: i32) <: usize)
        <:
        Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))
      <:
      (t_Slice u8 &
        Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))
    else
      let hax_temp_output:Core.Result.t_Result usize
        (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError) =
        Core.Result.Result_Err
        (Core.Convert.f_into #Sandwich_proto.Tunnel.t_RecordError
            #(t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError)
            #FStar.Tactics.Typeclasses.solve
            (get_error_from_record_stage self err <: Sandwich_proto.Tunnel.t_RecordError))
        <:
        Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError)
      in
      buffer, hax_temp_output
      <:
      (t_Slice u8 &
        Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))
  | Core.Result.Result_Err err ->
    buffer,
    (Core.Result.Result_Err (Core.Convert.f_from #FStar.Tactics.Typeclasses.solve err)
      <:
      Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))
    <:
    (t_Slice u8 &
      Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))

let write106684250 (self: t_Ssl) (buffer: t_Slice u8) =
  match
    Core.Result.impl__map_err #i32
      #Core.Num.Error.t_TryFromIntError
      #Sandwich_proto.Tunnel.t_RecordError
      (Core.Convert.f_try_into #usize
          #i32
          #FStar.Tactics.Typeclasses.solve
          (Core.Slice.impl__len #u8 buffer <: usize)
        <:
        Core.Result.t_Result i32 Core.Num.Error.t_TryFromIntError)
      (fun temp_0_ ->
          let _:Core.Num.Error.t_TryFromIntError = temp_0_ in
          Sandwich_proto.Tunnel.RecordError_RECORDERROR_TOO_BIG
          <:
          Sandwich_proto.Tunnel.t_RecordError)
  with
  | Core.Result.Result_Ok (buf_len: i32) ->
    let err:i32 =
      Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
        "rust_primitives::hax::failure(\n        \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n        \"openssl3::foreign_mod_3366::v_SSL_write\",\n    )(\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::non_null::impl_3__as_ptr::<\\n        openssl3::t_ssl_st,\\n    >(proj_sandwich::implementation::openssl3_impl::tunnel::ssl::_0(deref(self)))\",\n        ),\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::const_ptr::impl__cast::<\\n        int,\\n        core::ffi::t_c_void,\\n    >(core::slice::impl__as_ptr::<int>(&(deref(buffer))))\",\n        ),\n        buf_len,\n    )"

    in
    if err >. 0l
    then
      Core.Result.Result_Ok (cast (err <: i32) <: usize)
      <:
      Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError)
    else
      Core.Result.Result_Err
      (Core.Convert.f_into #Sandwich_proto.Tunnel.t_RecordError
          #(t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError)
          #FStar.Tactics.Typeclasses.solve
          (get_error_from_record_stage self err <: Sandwich_proto.Tunnel.t_RecordError))
      <:
      Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError)
  | Core.Result.Result_Err err ->
    Core.Result.Result_Err (Core.Convert.f_from #FStar.Tactics.Typeclasses.solve err)
    <:
    Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError)

let handshake866067863 (self: t_Tunnel77328211) =
  if
    self.Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.f_state =.
    (Sandwich_proto.Tunnel.State_STATE_HANDSHAKE_DONE <: Sandwich_proto.Tunnel.t_State)
  then
    self,
    (Core.Result.Result_Ok
      (Core.Convert.f_into #Sandwich_proto.Tunnel.t_HandshakeState
          #(t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_HandshakeState)
          #FStar.Tactics.Typeclasses.solve
          (Sandwich_proto.Tunnel.HandshakeState_HANDSHAKESTATE_DONE
            <:
            Sandwich_proto.Tunnel.t_HandshakeState))
      <:
      Core.Result.t_Result (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_HandshakeState)
        Sandwich.Error.t_Error)
    <:
    (t_Tunnel77328211 &
      Core.Result.t_Result (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_HandshakeState)
        Sandwich.Error.t_Error)
  else
    let ssl_wrapped:t_Ssl =
      t_Ssl
      (Sandwich.Support.Pimpl.impl_2__as_nonnull #Openssl3.t_ssl_st
          self.Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.f_ssl)
      <:
      t_Ssl
    in
    let state:Sandwich_proto.Tunnel.t_HandshakeState = get_state ssl_wrapped in
    if
      state =.
      (Sandwich_proto.Tunnel.HandshakeState_HANDSHAKESTATE_DONE
        <:
        Sandwich_proto.Tunnel.t_HandshakeState)
    then
      let self:t_Tunnel77328211 =
        {
          self with
          Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.f_state
          =
          Sandwich_proto.Tunnel.State_STATE_HANDSHAKE_DONE <: Sandwich_proto.Tunnel.t_State
        }
        <:
        t_Tunnel77328211
      in
      self,
      (Core.Result.Result_Ok
        (Core.Convert.f_into #Sandwich_proto.Tunnel.t_HandshakeState
            #(t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_HandshakeState)
            #FStar.Tactics.Typeclasses.solve
            state)
        <:
        Core.Result.t_Result (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_HandshakeState)
          Sandwich.Error.t_Error)
      <:
      (t_Tunnel77328211 &
        Core.Result.t_Result (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_HandshakeState)
          Sandwich.Error.t_Error)
    else
      let handshake_state, tunnel_state:(Core.Result.t_Result Sandwich_proto.Tunnel.t_HandshakeState
          Sandwich.Error.t_Error &
        Core.Option.t_Option Sandwich_proto.Tunnel.t_State) =
        do_handshake ssl_wrapped
      in
      let self:t_Tunnel77328211 =
        match tunnel_state with
        | Core.Option.Option_Some tunnel_state ->
          let self:t_Tunnel77328211 =
            { self with Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.f_state = tunnel_state }
            <:
            t_Tunnel77328211
          in
          self
        | _ -> self
      in
      self,
      Core.Result.impl__map #Sandwich_proto.Tunnel.t_HandshakeState
        #Sandwich.Error.t_Error
        #(t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_HandshakeState)
        handshake_state
        Core.Convert.From.from
      <:
      (t_Tunnel77328211 &
        Core.Result.t_Result (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_HandshakeState)
          Sandwich.Error.t_Error)

let read182962880 (self: t_Tunnel77328211) (buf: t_Slice u8) =
  let tmp0, out:(t_Slice u8 &
    Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError)) =
    read796983554 (t_Ssl
        (Sandwich.Support.Pimpl.impl_2__as_nonnull #Openssl3.t_ssl_st
            self.Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.f_ssl
          <:
          Core.Ptr.Non_null.t_NonNull Openssl3.t_ssl_st)
        <:
        t_Ssl)
      buf
  in
  let buf:t_Slice u8 = tmp0 in
  let result:Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError)
  =
    out
  in
  let self:t_Tunnel77328211 = update_state self in
  let hax_temp_output:(t_Tunnel77328211 &
    Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError)) =
    if
      self.Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.f_state =.
      (Sandwich_proto.Tunnel.State_STATE_DISCONNECTED <: Sandwich_proto.Tunnel.t_State)
    then
      self,
      (Core.Result.Result_Err
        (Core.Convert.f_into #Sandwich_proto.Tunnel.t_RecordError
            #(t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError)
            #FStar.Tactics.Typeclasses.solve
            (Sandwich_proto.Tunnel.RecordError_RECORDERROR_CLOSED
              <:
              Sandwich_proto.Tunnel.t_RecordError))
        <:
        Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))
      <:
      (t_Tunnel77328211 &
        Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))
    else
      self, result
      <:
      (t_Tunnel77328211 &
        Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))
  in
  buf, hax_temp_output
  <:
  (t_Slice u8 &
    (t_Tunnel77328211 &
      Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError)))

let write696175305 (self: t_Tunnel77328211) (buf: t_Slice u8) =
  let result:Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError)
  =
    write106684250 (t_Ssl
        (Sandwich.Support.Pimpl.impl_2__as_nonnull #Openssl3.t_ssl_st
            self.Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.f_ssl
          <:
          Core.Ptr.Non_null.t_NonNull Openssl3.t_ssl_st)
        <:
        t_Ssl)
      buf
  in
  let self:t_Tunnel77328211 = update_state self in
  if
    self.Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.f_state =.
    (Sandwich_proto.Tunnel.State_STATE_DISCONNECTED <: Sandwich_proto.Tunnel.t_State)
  then
    self,
    (Core.Result.Result_Err
      (Core.Convert.f_into #Sandwich_proto.Tunnel.t_RecordError
          #(t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError)
          #FStar.Tactics.Typeclasses.solve
          (Sandwich_proto.Tunnel.RecordError_RECORDERROR_CLOSED
            <:
            Sandwich_proto.Tunnel.t_RecordError))
      <:
      Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))
    <:
    (t_Tunnel77328211 &
      Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))
  else
    self, result
    <:
    (t_Tunnel77328211 &
      Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))

let set_subject_alternative_names
      (self: t_Ssl)
      (tunnel_verifier: Core.Option.t_Option Sandwich_api_proto.Verifiers.t_TunnelVerifier)
     =
  match
    Core.Option.impl__and_then #Sandwich_api_proto.Verifiers.t_TunnelVerifier
      #Sandwich_api_proto.Verifiers.Tunnel_verifier.t_Verifier
      tunnel_verifier
      (fun tv ->
          let tv:Sandwich_api_proto.Verifiers.t_TunnelVerifier = tv in
          Core.Option.impl__as_ref #Sandwich_api_proto.Verifiers.Tunnel_verifier.t_Verifier
            tv.Sandwich_api_proto.Verifiers.f_verifier
          <:
          Core.Option.t_Option Sandwich_api_proto.Verifiers.Tunnel_verifier.t_Verifier)
  with
  | Core.Option.Option_Some
    (Sandwich_api_proto.Verifiers.Tunnel_verifier.Verifier_SanVerifier san_verifier) ->
    (match
        Core.Convert.f_try_from #Sandwich.Implementation.Openssl3_impl.Tunnel.X509_verify_param.t_X509VerifyParam
          #(Core.Ptr.Non_null.t_NonNull Openssl3.t_ssl_st)
          #FStar.Tactics.Typeclasses.solve
          self.Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl._0
      with
      | Core.Result.Result_Ok x509_verify_param ->
        let _:Prims.unit =
          Rust_primitives.Hax.failure "(FunctionalizeLoops) something is not implemented yet.This is discussed in issue https://github.com/hacspec/hax/issues/405.\nPlease upvote or comment this issue if you see this error message.\nLoop without mutation"
            "{\n        for san in (core::iter::traits::collect::f_into_iter(\n            core::slice::impl__iter::<\n                sandwich_api_proto::verifiers::t_SANMatcher,\n            >(\n                core::ops::deref::f_deref(\n                    proj_sandwich_api_proto::verifiers::f_alt_names(san_verifier),\n                ),\n            ),\n        )) {\n            (match (core::option::impl__as_ref::<\n                sandwich_api_proto::verifiers::sanmatcher::t_San,\n            >(proj_sandwich_api_proto::verifiers::f_san(san))) {\n                core::option::Option_Some(san) => {\n                    (match (sandwich::implementation::openssl3_impl::tunnel::x509_verify_param::impl_3__add_san(\n                        x509_verify_param,\n                        san,\n                    )) {\n                        core::result::Result_Ok(_) => {\n                            core::ops::control_flow::ControlFlow_Continue(Tuple0)\n                        }\n                        core::result::Result_Err(err) => {\n                            core::ops::control_flow::ControlFlow_Break(\n                                core::result::Result_Err(err),\n                            )\n                        }\n                    })\n                }\n                _ => {\n                    #[note(\n                        \"rhs.typ=core::ops::control_flow::t_ControlFlow<core::result::t_Result<tuple0, sandwich::error::t_Error>, rust_primitives::hax::t_Never>\"\n                    )]\n                    #[monadic_let(\n                        MException<core::result::t_Result<tuple0,\n                        sandwich::error::t_Error>>\n                    )]\n                    let _: rust_primitives::hax::t_Never = {\n                        core::ops::control_flow::ControlFlow_Break(\n                            core::result::Result_Err(\n                                core::convert::f_into(\n                                    Tuple2(\n                                        sandwich_proto::errors::TunnelError_TUNNELERROR_VERIFIER(),\n                                        \"empty SANMatcher\",\n                                    ),\n                                ),\n                            ),\n                        )\n                    };\n                    core::ops::control_flow::ControlFlow_Continue(Tuple0)\n                }\n            })\n        }\n    }"

        in
        Core.Result.Result_Ok (() <: Prims.unit)
        <:
        Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
      | Core.Result.Result_Err err ->
        Core.Result.Result_Err err <: Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
  | _ ->
    Core.Result.Result_Ok (() <: Prims.unit)
    <:
    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let prepare_ssl (self: t_TunnelBuilder) =
  let tunnel_verifier:Core.Option.t_Option Sandwich_api_proto.Verifiers.t_TunnelVerifier =
    Protobuf.Message_field.impl__as_ref #Sandwich_api_proto.Verifiers.t_TunnelVerifier
      self.Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.f_configuration
        .Sandwich_api_proto.Tunnel.f_verifier
  in
  let security_requirements:Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements =
    security_requirements self.Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.f_ssl_ctx
  in
  match verify_tunnel_verifier tunnel_verifier security_requirements with
  | Core.Result.Result_Ok _ ->
    (match new_ssl self.Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.f_ssl_ctx with
      | Core.Result.Result_Ok ssl ->
        let ssl_wrapped:t_Ssl =
          t_Ssl (Sandwich.Support.Pimpl.impl_2__as_nonnull #Openssl3.t_ssl_st ssl) <: t_Ssl
        in
        (match set_subject_alternative_names ssl_wrapped tunnel_verifier with
          | Core.Result.Result_Ok _ ->
            (match
                set_server_name_indication #Alloc.String.t_String
                  ssl_wrapped
                  self.Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.f_configuration
                    .Sandwich_api_proto.Tunnel.f_server_name_indication
              with
              | Core.Result.Result_Ok _ ->
                (match create_and_attach_bio ssl_wrapped with
                  | Core.Result.Result_Ok _ ->
                    Core.Result.Result_Ok ssl
                    <:
                    Core.Result.t_Result (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_st)
                      Sandwich.Error.t_Error
                  | Core.Result.Result_Err err ->
                    Core.Result.Result_Err err
                    <:
                    Core.Result.t_Result (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_st)
                      Sandwich.Error.t_Error)
              | Core.Result.Result_Err err ->
                Core.Result.Result_Err err
                <:
                Core.Result.t_Result (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_st)
                  Sandwich.Error.t_Error)
          | Core.Result.Result_Err err ->
            Core.Result.Result_Err err
            <:
            Core.Result.t_Result (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_st)
              Sandwich.Error.t_Error)
      | Core.Result.Result_Err err ->
        Core.Result.Result_Err err
        <:
        Core.Result.t_Result (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_st)
          Sandwich.Error.t_Error)
  | Core.Result.Result_Err err ->
    Core.Result.Result_Err err
    <:
    Core.Result.t_Result (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_st) Sandwich.Error.t_Error

let build (self: t_TunnelBuilder) =
  match prepare_ssl self with
  | Core.Result.Result_Ok ssl ->
    let ssl:Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_st = ssl in
    let tun:Core.Pin.t_Pin (Alloc.Boxed.t_Box t_Tunnel77328211 Alloc.Alloc.t_Global) =
      Alloc.Boxed.impl__pin #t_Tunnel77328211
        ({
            f__ssl_ctx = self.Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.f_ssl_ctx;
            f_ssl = ssl;
            f_io = self.Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.f_io;
            f_security_requirements
            =
            Core.Clone.f_clone #Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements
              #FStar.Tactics.Typeclasses.solve
              (security_requirements self.Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.f_ssl_ctx
                <:
                Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements)
            <:
            Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements;
            f_state
            =
            Sandwich_proto.Tunnel.State_STATE_NOT_CONNECTED <: Sandwich_proto.Tunnel.t_State
          }
          <:
          t_Tunnel77328211)
    in
    (match
        attach_security_requirements (Core.Pin.impl_6__as_ref #(Alloc.Boxed.t_Box t_Tunnel77328211
                  Alloc.Alloc.t_Global)
              tun
            <:
            Core.Pin.t_Pin t_Tunnel77328211)
      with
      | Core.Result.Result_Err e ->
        Core.Result.Result_Err
        (e,
          (Core.Pin.impl_6__into_inner_unchecked #(Alloc.Boxed.t_Box t_Tunnel77328211
                  Alloc.Alloc.t_Global)
              tun)
            .Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.f_io
          <:
          (Sandwich.Error.t_Error & Sandwich.Tunnel.Io.t_BoxedIO))
        <:
        Core.Result.t_Result
          (Core.Pin.t_Pin (Alloc.Boxed.t_Box t_Tunnel77328211 Alloc.Alloc.t_Global))
          (Sandwich.Error.t_Error & Sandwich.Tunnel.Io.t_BoxedIO)
      | _ ->
        match
          attach_to_bio (Core.Pin.impl_6__as_ref #(Alloc.Boxed.t_Box t_Tunnel77328211
                    Alloc.Alloc.t_Global)
                tun
              <:
              Core.Pin.t_Pin t_Tunnel77328211)
        with
        | Core.Result.Result_Err e ->
          Core.Result.Result_Err
          (e,
            (Core.Pin.impl_6__into_inner_unchecked #(Alloc.Boxed.t_Box t_Tunnel77328211
                    Alloc.Alloc.t_Global)
                tun)
              .Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.f_io
            <:
            (Sandwich.Error.t_Error & Sandwich.Tunnel.Io.t_BoxedIO))
          <:
          Core.Result.t_Result
            (Core.Pin.t_Pin (Alloc.Boxed.t_Box t_Tunnel77328211 Alloc.Alloc.t_Global))
            (Sandwich.Error.t_Error & Sandwich.Tunnel.Io.t_BoxedIO)
        | _ ->
          Core.Result.Result_Ok tun
          <:
          Core.Result.t_Result
            (Core.Pin.t_Pin (Alloc.Boxed.t_Box t_Tunnel77328211 Alloc.Alloc.t_Global))
            (Sandwich.Error.t_Error & Sandwich.Tunnel.Io.t_BoxedIO))
  | Core.Result.Result_Err e ->
    Core.Result.Result_Err
    (e, self.Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl.f_io
      <:
      (Sandwich.Error.t_Error & Sandwich.Tunnel.Io.t_BoxedIO))
    <:
    Core.Result.t_Result (Core.Pin.t_Pin (Alloc.Boxed.t_Box t_Tunnel77328211 Alloc.Alloc.t_Global))
      (Sandwich.Error.t_Error & Sandwich.Tunnel.Io.t_BoxedIO)

let new_tunnel235737456
      (self: t_Context486924441)
      (io: Sandwich.Tunnel.Io.t_BoxedIO)
      (configuration: Sandwich_api_proto.Tunnel.t_TunnelConfiguration)
     = build ({ f_ssl_ctx = self; f_io = io; f_configuration = configuration } <: t_TunnelBuilder)

let handshake492868715 (self: t_Tunnel70284935) =
  match self with
  | (Tunnel70284935_OpenSSL3 t: t_Tunnel70284935) ->
    rewrap #t_Tunnel77328211
      #(Core.Result.t_Result (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_HandshakeState)
          Sandwich.Error.t_Error)
      (handshake866067863 (Core.Pin.impl_5__into_inner #(Alloc.Boxed.t_Box t_Tunnel77328211
                  Alloc.Alloc.t_Global)
              t
            <:
            t_Tunnel77328211)
        <:
        (t_Tunnel77328211 &
          Core.Result.t_Result (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_HandshakeState)
            Sandwich.Error.t_Error))

let read355100115 (self: t_Tunnel70284935) (buf: t_Slice u8) =
  let buf, hax_temp_output:(t_Slice u8 &
    (t_Tunnel70284935 &
      Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))) =
    match self with
    | (Tunnel70284935_OpenSSL3 t: t_Tunnel70284935) ->
      let tmp0, out:(t_Slice u8 &
        (t_Tunnel77328211 &
          Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))) =
        read182962880 (Core.Pin.impl_5__into_inner #(Alloc.Boxed.t_Box t_Tunnel77328211
                  Alloc.Alloc.t_Global)
              t
            <:
            t_Tunnel77328211)
          buf
      in
      let buf:t_Slice u8 = tmp0 in
      buf,
      rewrap #t_Tunnel77328211
        #(Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))
        out
      <:
      (t_Slice u8 &
        (t_Tunnel70284935 &
          Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError)))
  in
  buf, hax_temp_output
  <:
  (t_Slice u8 &
    (t_Tunnel70284935 &
      Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError)))

let write350444783 (self: t_Tunnel70284935) (buf: t_Slice u8) =
  match self with
  | (Tunnel70284935_OpenSSL3 t: t_Tunnel70284935) ->
    rewrap #t_Tunnel77328211
      #(Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))
      (write696175305 (Core.Pin.impl_5__into_inner #(Alloc.Boxed.t_Box t_Tunnel77328211
                  Alloc.Alloc.t_Global)
              t
            <:
            t_Tunnel77328211)
          buf
        <:
        (t_Tunnel77328211 &
          Core.Result.t_Result usize (t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError)))

let new_tunnel499954878
      (self: t_Context665818913)
      (io: Sandwich.Tunnel.Io.t_BoxedIO)
      (configuration: Sandwich_api_proto.Tunnel.t_TunnelConfiguration)
     =
  match self with
  | (Context665818913_OpenSSL3 c: t_Context665818913) ->
    match new_tunnel235737456 c io configuration with
    | Core.Result.Result_Ok hoist34 ->
      Core.Result.Result_Ok (Tunnel70284935_OpenSSL3 hoist34 <: t_Tunnel70284935)
      <:
      Core.Result.t_Result t_Tunnel70284935 (Sandwich.Error.t_Error & Sandwich.Tunnel.Io.t_BoxedIO)
    | Core.Result.Result_Err err ->
      Core.Result.Result_Err err
      <:
      Core.Result.t_Result t_Tunnel70284935 (Sandwich.Error.t_Error & Sandwich.Tunnel.Io.t_BoxedIO)

let configuration_read_certificate (cert: Sandwich_api_proto.Certificate.t_Certificate) =
  Core.Result.impl__and_then #Sandwich_api_proto.Certificate.Certificate.t_Source
    #Sandwich.Error.t_Error
    #(Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat &
      Sandwich.Support.Data_source.t_DataSource)
    (Core.Option.impl__ok_or_else #Sandwich_api_proto.Certificate.Certificate.t_Source
        #Sandwich.Error.t_Error
        (Core.Option.impl__as_ref #Sandwich_api_proto.Certificate.Certificate.t_Source
            cert.Sandwich_api_proto.Certificate.f_source
          <:
          Core.Option.t_Option Sandwich_api_proto.Certificate.Certificate.t_Source)
        (fun temp_0_ ->
            let _:Prims.unit = temp_0_ in
            Core.Convert.f_into #Sandwich_proto.Errors.t_DataSourceError
              #Sandwich.Error.t_Error
              #FStar.Tactics.Typeclasses.solve
              (Sandwich_proto.Errors.DataSourceError_DATASOURCEERROR_EMPTY
                <:
                Sandwich_proto.Errors.t_DataSourceError)
            <:
            Sandwich.Error.t_Error)
      <:
      Core.Result.t_Result Sandwich_api_proto.Certificate.Certificate.t_Source
        Sandwich.Error.t_Error)
    (fun oneof ->
        let oneof:Sandwich_api_proto.Certificate.Certificate.t_Source = oneof in
        match oneof with
        | Sandwich_api_proto.Certificate.Certificate.Source_Static asn1ds ->
          Core.Result.impl__and_then #Sandwich.Support.Data_source.t_DataSource
            #Sandwich.Error.t_Error
            #(Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat &
              Sandwich.Support.Data_source.t_DataSource)
            (Core.Result.impl__and_then #Sandwich_api_proto.Data_source.t_DataSource
                #Sandwich.Error.t_Error
                #Sandwich.Support.Data_source.t_DataSource
                (Core.Option.impl__ok_or_else #Sandwich_api_proto.Data_source.t_DataSource
                    #Sandwich.Error.t_Error
                    (Protobuf.Message_field.impl__as_ref #Sandwich_api_proto.Data_source.t_DataSource
                        asn1ds.Sandwich_api_proto.Data_source.f_data
                      <:
                      Core.Option.t_Option Sandwich_api_proto.Data_source.t_DataSource)
                    (fun temp_0_ ->
                        let _:Prims.unit = temp_0_ in
                        Core.Convert.f_into #Sandwich_proto.Errors.t_DataSourceError
                          #Sandwich.Error.t_Error
                          #FStar.Tactics.Typeclasses.solve
                          (Sandwich_proto.Errors.DataSourceError_DATASOURCEERROR_EMPTY
                            <:
                            Sandwich_proto.Errors.t_DataSourceError)
                        <:
                        Sandwich.Error.t_Error)
                  <:
                  Core.Result.t_Result Sandwich_api_proto.Data_source.t_DataSource
                    Sandwich.Error.t_Error)
                Core.Convert.TryFrom.try_from
              <:
              Core.Result.t_Result Sandwich.Support.Data_source.t_DataSource Sandwich.Error.t_Error)
            (fun ds ->
                let ds:Sandwich.Support.Data_source.t_DataSource = ds in
                Core.Result.impl__map #Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat
                  #Sandwich.Error.t_Error
                  #(Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat &
                    Sandwich.Support.Data_source.t_DataSource)
                  (Core.Result.impl__map_err #Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat
                      #i32
                      #Sandwich.Error.t_Error
                      (Protobuf.Enum_or_unknown.impl_1__enum_value #Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat
                          asn1ds.Sandwich_api_proto.Data_source.f_format
                        <:
                        Core.Result.t_Result Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat
                          i32)
                      (fun temp_0_ ->
                          let _:i32 = temp_0_ in
                          Core.Convert.f_into #Sandwich_proto.Errors.t_ASN1Error
                            #Sandwich.Error.t_Error
                            #FStar.Tactics.Typeclasses.solve
                            (Sandwich_proto.Errors.ASN1Error_ASN1ERROR_INVALID_FORMAT
                              <:
                              Sandwich_proto.Errors.t_ASN1Error)
                          <:
                          Sandwich.Error.t_Error)
                    <:
                    Core.Result.t_Result Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat
                      Sandwich.Error.t_Error)
                  (fun f ->
                      let f:Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat = f in
                      f, ds
                      <:
                      (Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat &
                        Sandwich.Support.Data_source.t_DataSource))
                <:
                Core.Result.t_Result
                  (Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat &
                    Sandwich.Support.Data_source.t_DataSource) Sandwich.Error.t_Error)
          <:
          Core.Result.t_Result
            (Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat &
              Sandwich.Support.Data_source.t_DataSource) Sandwich.Error.t_Error
        | _ ->
          Core.Result.Result_Err
          (Core.Convert.f_into #Sandwich_proto.Errors.t_DataSourceError
              #Sandwich.Error.t_Error
              #FStar.Tactics.Typeclasses.solve
              (Sandwich_proto.Errors.DataSourceError_DATASOURCEERROR_EMPTY
                <:
                Sandwich_proto.Errors.t_DataSourceError)
            <:
            Sandwich.Error.t_Error)
          <:
          Core.Result.t_Result
            (Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat &
              Sandwich.Support.Data_source.t_DataSource) Sandwich.Error.t_Error)

let fill_certificate_trust_store
      (self: t_SslContext)
      (lib_ctx: Sandwich.Implementation.Openssl3_impl.t_LibCtx)
      (x509_verifier: Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
     =
  match x509_verifier with
  | Core.Option.Option_Some x509_verifier ->
    (match
        Core.Option.impl__ok_or #(Core.Ptr.Non_null.t_NonNull Openssl3.t_x509_store_st)
          #(Sandwich_proto.Errors.t_SystemError & string)
          (Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
              "rust_primitives::hax::failure(\"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\"core::ptr::non_null::impl_3__new\")::<openssl3::t_x509_store_st>(rust_primitives::hax::failure(\"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\"unsafe {\\n        openssl3::foreign_mod_3176::v_SSL_CTX_get_cert_store(\\n            rust_primitives::hax::failure(\\n                \\\"(AST import) Fatal error: something we considered as impossible occurred! \\\\027[1mPlease report this by submitting an issue on GitHub!\\\\027[0m\\\\nDetails: Pointer, with [cast] being Types.MutToConstPointer\\\",\\n                \\\"{ Types.attributes = [];\\\\n  contents =\\\\n  Types.PointerCoercion {cast = Types.MutToConstPointer;\\\\n    source =\\\\n    { Types.attributes = [];\\\\n      contents =\\\\n      Types.Call {\\\\n        args =\\\\n        [{ Types.attributes = [];\\\\n           contents =\\\\n           Types.Field {\\\\n             field =\\\\n             { Types.index = (0, 306); is_local = true; krate = \\\\\\\"sandwich\\\\\\\";\\\\n               path =\\\\n               [{ Types.data = (Types.TypeNs \\\\\\\"implementation\\\\\\\");\\\\n                  disambiguator = 0 };\\\\n                 { Types.data = (Types.TypeNs \\\\\\\"openssl3_impl\\\\\\\");\\\\n                   disambiguator = 0 };\\\\n                 { Types.data = (Types.TypeNs \\\\\\\"tunnel\\\\\\\"); disambiguator = 0 };\\\\n                 { Types.data = (Types.TypeNs \\\\\\\"context\\\\\\\"); disambiguator = 0 };\\\\n                 { Types.data = (Types.TypeNs \\\\\\\"SslContext\\\\\\\");\\\\n                   disambiguator = 0 };\\\\n                 { Types.data = (Types.ValueNs \\\\\\\"0\\\\\\\"); disambiguator = 0 }]\\\\n               };\\\\n             lhs =\\\\n             { Types.attributes = [];\\\\n               contents =\\\\n               Types.Deref {\\\\n                 arg =\\\\n                 { Types.attributes = [];\\\\n                   contents =\\\\n                   Types.VarRef {\\\\n                     id =\\\\n                     { Types.id =\\\\n                       { Types.local_id = \\\\\\\"2\\\\\\\";\\\\n                         owner =\\\\n                         { Types.index = (0, 345); is_local = true;\\\\n                           krate = \\\\\\\"sandwich\\\\\\\";\\\\n                           path =\\\\n                           [{ Types.data = (Types.TypeNs \\\\\\\"implementation\\\\\\\");\\\\n                              disambiguator = 0 };\\\\n                             { Types.data = (Types.TypeNs \\\\\\\"openssl3_impl\\\\\\\");\\\\n                               disambiguator = 0 };\\\\n                             { Types.data = (Types.TypeNs \\\\\\\"tunnel\\\\\\\");\\\\n                               disambiguator = 0 };\\\\n                             { Types.data = (Types.TypeNs \\\\\\\"context\\\\\\\");\\\\n                               disambiguator = 0 };\\\\n                             { Types.data = Types.Impl; disambiguator = 4 };\\\\n                             { Types.data =\\\\n                               (Types.ValueNs \\\\\\\"fill_certificate_trust_store\\\\\\\");\\\\n                               disambiguator = 0 }\\\\n                             ]\\\\n                           }\\\\n                         };\\\\n                       name = \\\\\\\"self\\\\\\\" }};\\\\n                   hir_id = None;\\\\n                   span =\\\\n                   { Types.filename =\\\\n                     (Types.Real\\\\n                        (Types.LocalPath\\\\n                           \\\\\\\"rust/implementation/openssl3_impl/tunnel/context.rs\\\\\\\"));\\\\n                     hi = { Types.col = \\\\\\\"79\\\\\\\"; line = \\\\\\\"580\\\\\\\" };\\\\n                     lo = { Types.col = \\\\\\\"75\\\\\\\"; line = \\\\\\\"580\\\\\\\" } };\\\\n                   ty =\\\\n                   { Types.kind =\\\\n                     (Types.Ref\\\\n                        ({ Types.kind = Types.ReErased },\\\\n                         { Types.kind =\\\\n                           Types.Adt {\\\\n                             def_id =\\\\n                             { Types.index = (0, 304); is_local = true;\\\\n                               krate = \\\\\\\"sandwich\\\\\\\";\\\\n                               path =\\\\n                               [{ Types.data =\\\\n                                  (Types.TypeNs \\\\\\\"implementation\\\\\\\");\\\\n                                  disambiguator = 0 };\\\\n                                 { Types.data =\\\\n                                   (Types.TypeNs \\\\\\\"openssl3_impl\\\\\\\");\\\\n                                   disambiguator = 0 };\\\\n                                 { Types.data = (Types.TypeNs \\\\\\\"tunnel\\\\\\\");\\\\n                                   disambiguator = 0 };\\\\n                                 { Types.data = (Types.TypeNs \\\\\\\"context\\\\\\\");\\\\n                                   disambiguator = 0 };\\\\n                                 { Types.data = (Types.TypeNs \\\\\\\"SslContext\\\\\\\");\\\\n                                   disambiguator = 0 }\\\\n                                 ]\\\\n                               };\\\\n                             generic_args = []; trait_refs = []}\\\\n                           },\\\\n                         false))\\\\n                     }\\\\n                   }};\\\\n               hir_id = (Some (\\\\\\\"345\\\\\\\", \\\\\\\"38\\\\\\\"));\\\\n               span =\\\\n               { Types.filename =\\\\n                 (Types.Real\\\\n                    (Types.LocalPath\\\\n                       \\\\\\\"rust/implementation/openssl3_impl/tunnel/context.rs\\\\\\\"));\\\\n                 hi = { Types.col = \\\\\\\"79\\\\\\\"; line = \\\\\\\"580\\\\\\\" };\\\\n                 lo = { Types.col = \\\\\\\"75\\\\\\\"; line = \\\\\\\"580\\\\\\\" } };\\\\n               ty =\\\\n               { Types.kind =\\\\n                 Types.Adt {\\\\n                   def_id =\\\\n                   { Types.index = (0, 304); is_local = true;\\\\n                     krate = \\\\\\\"sandwich\\\\\\\";\\\\n                     path =\\\\n                     [{ Types.data = (Types.TypeNs \\\\\\\"implementation\\\\\\\");\\\\n                        disambiguator = 0 };\\\\n                       { Types.data = (Types.TypeNs \\\\\\\"openssl3_impl\\\\\\\");\\\\n                         disambiguator = 0 };\\\\n                       { Types.data = (Types.TypeNs \\\\\\\"tunnel\\\\\\\");\\\\n                         disambiguator = 0 };\\\\n                       { Types.data = (Types.TypeNs \\\\\\\"context\\\\\\\");\\\\n                         disambiguator = 0 };\\\\n                       { Types.data = (Types.TypeNs \\\\\\\"SslContext\\\\\\\");\\\\n                         disambiguator = 0 }\\\\n                       ]\\\\n                     };\\\\n                   generic_args = []; trait_refs = []}\\\\n                 }\\\\n               }};\\\\n           hir_id = (Some (\\\\\\\"345\\\\\\\", \\\\\\\"37\\\\\\\"));\\\\n           span =\\\\n           { Types.filename =\\\\n             (Types.Real\\\\n                (Types.LocalPath\\\\n                   \\\\\\\"rust/implementation/openssl3_impl/tunnel/context.rs\\\\\\\"));\\\\n             hi = { Types.col = \\\\\\\"81\\\\\\\"; line = \\\\\\\"580\\\\\\\" };\\\\n             lo = { Types.col = \\\\\\\"75\\\\\\\"; line = \\\\\\\"580\\\\\\\" } };\\\\n           ty =\\\\n           { Types.kind =\\\\n             Types.Adt {\\\\n               def_id =\\\\n               { Types.index = (2, 2358); is_local = false; krate = \\\\\\\"core\\\\\\\";\\\\n                 path =\\\\n                 [{ Types.data = (Types.TypeNs \\\\\\\"ptr\\\\\\\"); disambiguator = 0 };\\\\n                   { Types.data = (Types.TypeNs \\\\\\\"non_null\\\\\\\");\\\\n                     disambiguator = 0 };\\\\n                   { Types.data = (Types.TypeNs \\\\\\\"NonNull\\\\\\\"); disambiguator = 0\\\\n                     }\\\\n                   ]\\\\n                 };\\\\n               generic_args =\\\\n               [(Types.Type\\\\n                   { Types.kind =\\\\n                     Types.Adt {\\\\n                       def_id =\\\\n                       { Types.index = (27, 21403); is_local = false;\\\\n                         krate = \\\\\\\"openssl3\\\\\\\";\\\\n                         path =\\\\n                         [{ Types.data = (Types.TypeNs \\\\\\\"ssl_ctx_st\\\\\\\");\\\\n                            disambiguator = 0 }\\\\n                           ]\\\\n                         };\\\\n                       generic_args = []; trait_refs = []}\\\\n                     })\\\\n                 ];\\\\n               trait_refs = []}\\\\n             }\\\\n           }\\\\n          ];\\\\n        bounds_impls = [];\\\\n        fn_span =\\\\n        { Types.filename =\\\\n          (Types.Real\\\\n             (Types.LocalPath\\\\n                \\\\\\\"rust/implementation/openssl3_impl/tunnel/context.rs\\\\\\\"));\\\\n          hi = { Types.col = \\\\\\\"90\\\\\\\"; line = \\\\\\\"580\\\\\\\" };\\\\n          lo = { Types.col = \\\\\\\"82\\\\\\\"; line = \\\\\\\"580\\\\\\\" } };\\\\n        from_hir_call = true;\\\\n        fun' =\\\\n        { Types.attributes = [];\\\\n          contents =\\\\n          Types.GlobalName {\\\\n            id =\\\\n            { Types.index = (2, 2381); is_local = false; krate = \\\\\\\"core\\\\\\\";\\\\n              path =\\\\n              [{ Types.data = (Types.TypeNs \\\\\\\"ptr\\\\\\\"); disambiguator = 0 };\\\\n                { Types.data = (Types.TypeNs \\\\\\\"non_null\\\\\\\"); disambiguator = 0 };\\\\n                { Types.data = Types.Impl; disambiguator = 3 };\\\\n                { Types.data = (Types.ValueNs \\\\\\\"as_ptr\\\\\\\"); disambiguator = 0 }]\\\\n              }};\\\\n          hir_id = None;\\\\n          span =\\\\n          { Types.filename =\\\\n            (Types.Real\\\\n               (Types.LocalPath\\\\n                  \\\\\\\"rust/implementation/openssl3_impl/tunnel/context.rs\\\\\\\"));\\\\n            hi = { Types.col = \\\\\\\"88\\\\\\\"; line = \\\\\\\"580\\\\\\\" };\\\\n            lo = { Types.col = \\\\\\\"82\\\\\\\"; line = \\\\\\\"580\\\\\\\" } };\\\\n          ty =\\\\n          { Types.kind =\\\\n            (Types.Arrow\\\\n               { Types.bound_vars = [];\\\\n                 value =\\\\n                 { Types.abi = Types.Abi {todo = \\\\\\\"Rust\\\\\\\"}; c_variadic = false;\\\\n                   inputs =\\\\n                   [{ Types.kind =\\\\n                      Types.Adt {\\\\n                        def_id =\\\\n                        { Types.index = (2, 2358); is_local = false;\\\\n                          krate = \\\\\\\"core\\\\\\\";\\\\n                          path =\\\\n                          [{ Types.data = (Types.TypeNs \\\\\\\"ptr\\\\\\\");\\\\n                             disambiguator = 0 };\\\\n                            { Types.data = (Types.TypeNs \\\\\\\"non_null\\\\\\\");\\\\n                              disambiguator = 0 };\\\\n                            { Types.data = (Types.TypeNs \\\\\\\"NonNull\\\\\\\");\\\\n                              disambiguator = 0 }\\\\n                            ]\\\\n                          };\\\\n                        generic_args =\\\\n                        [(Types.Type\\\\n                            { Types.kind =\\\\n                              Types.Adt {\\\\n                                def_id =\\\\n                                { Types.index = (27, 21403);\\\\n                                  is_local = false; krate = \\\\\\\"openssl3\\\\\\\";\\\\n                                  path =\\\\n                                  [{ Types.data = (Types.TypeNs \\\\\\\"ssl_ctx_st\\\\\\\");\\\\n                                     disambiguator = 0 }\\\\n                                    ]\\\\n                                  };\\\\n                                generic_args = []; trait_refs = []}\\\\n                              })\\\\n                          ];\\\\n                        trait_refs = []}\\\\n                      }\\\\n                     ];\\\\n                   output =\\\\n                   { Types.kind =\\\\n                     (Types.RawPtr\\\\n                        ({ Types.kind =\\\\n                           Types.Adt {\\\\n                             def_id =\\\\n                             { Types.index = (27, 21403); is_local = false;\\\\n                               krate = \\\\\\\"openssl3\\\\\\\";\\\\n                               path =\\\\n                               [{ Types.data = (Types.TypeNs \\\\\\\"ssl_ctx_st\\\\\\\");\\\\n                                  disambiguator = 0 }\\\\n                                 ]\\\\n                               };\\\\n                             generic_args = []; trait_refs = []}\\\\n                           },\\\\n                         true))\\\\n                     };\\\\n                   safety = Types.Safe }\\\\n                 })\\\\n            }\\\\n          };\\\\n        generic_args =\\\\n        [(Types.Type\\\\n            { Types.kind =\\\\n              Types.Adt {\\\\n                def_id =\\\\n                { Types.index = (27, 21403); is_local = false;\\\\n                  krate = \\\\\\\"openssl3\\\\\\\";\\\\n                  path =\\\\n                  [{ Types.data = (Types.TypeNs \\\\\\\"ssl_ctx_st\\\\\\\");\\\\n                     disambiguator = 0 }\\\\n                    ]\\\\n                  };\\\\n                generic_args = []; trait_refs = []}\\\\n              })\\\\n          ];\\\\n        trait = None;\\\\n        ty =\\\\n        { Types.kind =\\\\n          (Types.Arrow\\\\n             { Types.bound_vars = [];\\\\n               value =\\\\n               { Types.abi = Types.Abi {todo = \\\\\\\"Rust\\\\\\\"}; c_variadic = false;\\\\n                 inputs =\\\\n                 [{ Types.kind =\\\\n                    Types.Adt {\\\\n                      def_id =\\\\n                      { Types.index = (2, 2358); is_local = false;\\\\n                        krate = \\\\\\\"core\\\\\\\";\\\\n                        path =\\\\n                        [{ Types.data = (Types.TypeNs \\\\\\\"ptr\\\\\\\");\\\\n                           disambiguator = 0 };\\\\n                          { Types.data = (Types.TypeNs \\\\\\\"non_null\\\\\\\");\\\\n                            disambiguator = 0 };\\\\n                          { Types.data = (Types.TypeNs \\\\\\\"NonNull\\\\\\\");\\\\n                            disambiguator = 0 }\\\\n                          ]\\\\n                        };\\\\n                      generic_args =\\\\n                      [(Types.Type\\\\n                          { Types.kind =\\\\n                            Types.Adt {\\\\n                              def_id =\\\\n                              { Types.index = (27, 21403); is_local = false;\\\\n                                krate = \\\\\\\"openssl3\\\\\\\";\\\\n                                path =\\\\n                                [{ Types.data = (Types.TypeNs \\\\\\\"ssl_ctx_st\\\\\\\");\\\\n                                   disambiguator = 0 }\\\\n                                  ]\\\\n                                };\\\\n                              generic_args = []; trait_refs = []}\\\\n                            })\\\\n                        ];\\\\n                      trait_refs = []}\\\\n                    }\\\\n                   ];\\\\n                 output =\\\\n                 { Types.kind =\\\\n                   (Types.RawPtr\\\\n                      ({ Types.kind =\\\\n                         Types.Adt {\\\\n                           def_id =\\\\n                           { Types.index = (27, 21403); is_local = false;\\\\n                             krate = \\\\\\\"openssl3\\\\\\\";\\\\n                             path =\\\\n                             [{ Types.data = (Types.TypeNs \\\\\\\"ssl_ctx_st\\\\\\\");\\\\n                                disambiguator = 0 }\\\\n                               ]\\\\n                             };\\\\n                           generic_args = []; trait_refs = []}\\\\n                         },\\\\n                       true))\\\\n                   };\\\\n                 safety = Types.Safe }\\\\n               })\\\\n          }};\\\\n      hir_id = None;\\\\n      span =\\\\n      { Types.filename =\\\\n        (Types.Real\\\\n           (Types.LocalPath\\\\n              \\\\\\\"rust/implementation/openssl3_impl/tunnel/context.rs\\\\\\\"));\\\\n        hi = { Types.col = \\\\\\\"90\\\\\\\"; line = \\\\\\\"580\\\\\\\" };\\\\n        lo = { Types.col = \\\\\\\"75\\\\\\\"; line = \\\\\\\"580\\\\\\\" } };\\\\n      ty =\\\\n      { Types.kind =\\\\n        (Types.RawPtr\\\\n           ({ Types.kind =\\\\n              Types.Adt {\\\\n                def_id =\\\\n                { Types.index = (27, 21403); is_local = false;\\\\n                  krate = \\\\\\\"openssl3\\\\\\\";\\\\n                  path =\\\\n                  [{ Types.data = (Types.TypeNs \\\\\\\"ssl_ctx_st\\\\\\\");\\\\n                     disambiguator = 0 }\\\\n                    ]\\\\n                  };\\\\n                generic_args = []; trait_refs = []}\\\\n              },\\\\n            true))\\\\n        }\\\\n      }};\\\\n  hir_id = (Some (\\\\\\\"345\\\\\\\", \\\\\\\"35\\\\\\\"));\\\\n  span =\\\\n  { Types.filename =\\\\n    (Types.Real\\\\n       (Types.LocalPath \\\\\\\"rust/implementation/openssl3_impl/tunnel/context.rs\\\\\\\"));\\\\n    hi = { Types.col = \\\\\\\"90\\\\\\\"; line = \\\\\\\"580\\\\\\\" };\\\\n    lo = { Types.col = \\\\\\\"75\\\\\\\"; line = \\\\\\\"580\\\\\\\" } };\\\\n  ty =\\\\n  { Types.kind =\\\\n    (Types.RawPtr\\\\n       ({ Types.kind =\\\\n          Types.Adt {\\\\n            def_id =\\\\n            { Types.index = (27, 21403); is_local = false;\\\\n              krate = \\\\\\\"openssl3\\\\\\\";\\\\n              path =\\\\n              [{ Types.data = (Types.TypeNs \\\\\\\"ssl_ctx_st\\\\\\\"); disambiguator = 0\\\\n                 }\\\\n                ]\\\\n              };\\\\n            generic_args = []; trait_refs = []}\\\\n          },\\\\n        false))\\\\n    }\\\\n  }\\\",\\n            ),\\n        )\\n    }\"))"

            <:
            Core.Option.t_Option (Core.Ptr.Non_null.t_NonNull Openssl3.t_x509_store_st))
          ((Sandwich_proto.Errors.SystemError_SYSTEMERROR_MEMORY
              <:
              Sandwich_proto.Errors.t_SystemError),
            "SSL_CTX does not have a certificate store"
            <:
            (Sandwich_proto.Errors.t_SystemError & string))
      with
      | Core.Result.Result_Ok store ->
        let _:Prims.unit =
          Rust_primitives.Hax.failure "(FunctionalizeLoops) something is not implemented yet.This is discussed in issue https://github.com/hacspec/hax/issues/405.\nPlease upvote or comment this issue if you see this error message.\nLoop without mutation"
            "{\n        for certificate in (core::iter::traits::collect::f_into_iter(\n            core::slice::impl__iter::<\n                sandwich_api_proto::certificate::t_Certificate,\n            >(\n                core::ops::deref::f_deref(\n                    proj_sandwich_api_proto::verifiers::f_trusted_cas(x509_verifier),\n                ),\n            ),\n        )) {\n            (match (sandwich::tunnel::tls::support::configuration_read_certificate(\n                certificate,\n            )) {\n                core::result::Result_Ok(Tuple2(format, data_source)) => {\n                    (match (sandwich::implementation::openssl3_impl::support::v_BIO_from_buffer::<\n                        sandwich::support::data_source::t_DataSource,\n                    >(data_source)) {\n                        core::result::Result_Ok(bio) => {\n                            core::ops::control_flow::ControlFlow_Continue({\n                                while core::ops::bit::Not::not(\n                                    sandwich::implementation::openssl3_impl::support::is_BIO_eof(\n                                        sandwich::support::pimpl::impl_2__as_nonnull::<\n                                            openssl3::t_bio_st,\n                                        >(bio),\n                                    ),\n                                ) {\n                                    (match (sandwich::implementation::openssl3_impl::support::v_X509_from_BIO(\n                                        lib_ctx,\n                                        sandwich::support::pimpl::impl_2__as_nonnull::<\n                                            openssl3::t_bio_st,\n                                        >(bio),\n                                        format,\n                                    )) {\n                                        core::result::Result_Ok(x509) => {\n                                            core::ops::control_flow::ControlFlow_Continue({\n                                                let _: int = {\n                                                    rust_primitives::hax::failure(\n                                                        \"(RefMut) Fatal error: something we considered as impossible occurred! \\027[1mPlease report this by submitting an issue on GitHub!\\027[0m\\nDetails: expected an arrow type here\",\n                                                        \"rust_primitives::hax::failure(\\n        \\\"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\\\\\"a node of kind [Raw_pointer] have been found in the AST\\\\\\\" }\\\",\\n        \\\"openssl3::foreign_mod_2222::v_X509_STORE_add_cert\\\",\\n    )(\\n        rust_primitives::hax::failure(\\n            \\\"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\\\\\"a node of kind [Raw_pointer] have been found in the AST\\\\\\\" }\\\",\\n            \\\"core::ptr::non_null::impl_3__as_ptr::<openssl3::t_x509_store_st>(store)\\\",\\n        ),\\n        rust_primitives::hax::failure(\\n            \\\"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\\\\\"a node of kind [Raw_pointer] have been found in the AST\\\\\\\" }\\\",\\n            \\\"core::ptr::non_null::impl_3__as_ptr::<\\\\n        openssl3::t_x509_st,\\\\n    >(\\\\n        sandwich::support::pimpl::impl_2__as_nonnull::<\\\\n            lifetime!(something),\\\\n            openssl3::t_x509_st,\\\\n        >(&(x509)),\\\\n    )\\\",\\n        ),\\n    )\",\n                                                    )\n                                                };\n                                                Tuple0\n                                            })\n                                        }\n                                        core::result::Result_Err(err) => {\n                                            core::ops::control_flow::ControlFlow_Break(\n                                                core::result::Result_Err(err),\n                                            )\n                                        }\n                                    })\n                                }\n                            })\n                        }\n                        core::result::Result_Err(err) => {\n                            core::ops::control_flow::ControlFlow_Break(\n                                core::result::Result_Err(err),\n                            )\n                        }\n                    })\n                }\n                core::result::Result_Err(err) => {\n                    core::ops::control_flow::ControlFlow_Break(\n                        core::result::Result_Err(err),\n                    )\n                }\n            })\n        }\n    }"

        in
        Core.Result.Result_Ok (() <: Prims.unit)
        <:
        Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
      | Core.Result.Result_Err err ->
        Core.Result.Result_Err (Core.Convert.f_from #FStar.Tactics.Typeclasses.solve err)
        <:
        Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
  | _ ->
    Core.Result.Result_Ok (() <: Prims.unit)
    <:
    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let configuration_read_private_key (private_key: Sandwich_api_proto.Private_key.t_PrivateKey) =
  Core.Result.impl__and_then #Sandwich_api_proto.Private_key.Private_key.t_Source
    #Sandwich.Error.t_Error
    #(Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat &
      Sandwich.Support.Data_source.t_DataSource)
    (Core.Option.impl__ok_or_else #Sandwich_api_proto.Private_key.Private_key.t_Source
        #Sandwich.Error.t_Error
        (Core.Option.impl__as_ref #Sandwich_api_proto.Private_key.Private_key.t_Source
            private_key.Sandwich_api_proto.Private_key.f_source
          <:
          Core.Option.t_Option Sandwich_api_proto.Private_key.Private_key.t_Source)
        (fun temp_0_ ->
            let _:Prims.unit = temp_0_ in
            Core.Convert.f_into #Sandwich_proto.Errors.t_DataSourceError
              #Sandwich.Error.t_Error
              #FStar.Tactics.Typeclasses.solve
              (Sandwich_proto.Errors.DataSourceError_DATASOURCEERROR_EMPTY
                <:
                Sandwich_proto.Errors.t_DataSourceError)
            <:
            Sandwich.Error.t_Error)
      <:
      Core.Result.t_Result Sandwich_api_proto.Private_key.Private_key.t_Source
        Sandwich.Error.t_Error)
    (fun oneof ->
        let oneof:Sandwich_api_proto.Private_key.Private_key.t_Source = oneof in
        match oneof with
        | Sandwich_api_proto.Private_key.Private_key.Source_Static asn1ds ->
          Core.Result.impl__and_then #Sandwich.Support.Data_source.t_DataSource
            #Sandwich.Error.t_Error
            #(Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat &
              Sandwich.Support.Data_source.t_DataSource)
            (Core.Result.impl__and_then #Sandwich_api_proto.Data_source.t_DataSource
                #Sandwich.Error.t_Error
                #Sandwich.Support.Data_source.t_DataSource
                (Core.Option.impl__ok_or_else #Sandwich_api_proto.Data_source.t_DataSource
                    #Sandwich.Error.t_Error
                    (Protobuf.Message_field.impl__as_ref #Sandwich_api_proto.Data_source.t_DataSource
                        asn1ds.Sandwich_api_proto.Data_source.f_data
                      <:
                      Core.Option.t_Option Sandwich_api_proto.Data_source.t_DataSource)
                    (fun temp_0_ ->
                        let _:Prims.unit = temp_0_ in
                        Core.Convert.f_into #Sandwich_proto.Errors.t_DataSourceError
                          #Sandwich.Error.t_Error
                          #FStar.Tactics.Typeclasses.solve
                          (Sandwich_proto.Errors.DataSourceError_DATASOURCEERROR_EMPTY
                            <:
                            Sandwich_proto.Errors.t_DataSourceError)
                        <:
                        Sandwich.Error.t_Error)
                  <:
                  Core.Result.t_Result Sandwich_api_proto.Data_source.t_DataSource
                    Sandwich.Error.t_Error)
                Core.Convert.TryFrom.try_from
              <:
              Core.Result.t_Result Sandwich.Support.Data_source.t_DataSource Sandwich.Error.t_Error)
            (fun ds ->
                let ds:Sandwich.Support.Data_source.t_DataSource = ds in
                Core.Result.impl__map #Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat
                  #Sandwich.Error.t_Error
                  #(Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat &
                    Sandwich.Support.Data_source.t_DataSource)
                  (Core.Result.impl__map_err #Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat
                      #i32
                      #Sandwich.Error.t_Error
                      (Protobuf.Enum_or_unknown.impl_1__enum_value #Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat
                          asn1ds.Sandwich_api_proto.Data_source.f_format
                        <:
                        Core.Result.t_Result Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat
                          i32)
                      (fun temp_0_ ->
                          let _:i32 = temp_0_ in
                          Core.Convert.f_into #Sandwich_proto.Errors.t_ASN1Error
                            #Sandwich.Error.t_Error
                            #FStar.Tactics.Typeclasses.solve
                            (Sandwich_proto.Errors.ASN1Error_ASN1ERROR_INVALID_FORMAT
                              <:
                              Sandwich_proto.Errors.t_ASN1Error)
                          <:
                          Sandwich.Error.t_Error)
                    <:
                    Core.Result.t_Result Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat
                      Sandwich.Error.t_Error)
                  (fun f ->
                      let f:Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat = f in
                      f, ds
                      <:
                      (Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat &
                        Sandwich.Support.Data_source.t_DataSource))
                <:
                Core.Result.t_Result
                  (Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat &
                    Sandwich.Support.Data_source.t_DataSource) Sandwich.Error.t_Error)
          <:
          Core.Result.t_Result
            (Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat &
              Sandwich.Support.Data_source.t_DataSource) Sandwich.Error.t_Error
        | _ ->
          Core.Result.Result_Err
          (Core.Convert.f_into #Sandwich_proto.Errors.t_DataSourceError
              #Sandwich.Error.t_Error
              #FStar.Tactics.Typeclasses.solve
              (Sandwich_proto.Errors.DataSourceError_DATASOURCEERROR_EMPTY
                <:
                Sandwich_proto.Errors.t_DataSourceError)
            <:
            Sandwich.Error.t_Error)
          <:
          Core.Result.t_Result
            (Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat &
              Sandwich.Support.Data_source.t_DataSource) Sandwich.Error.t_Error)

let set_identity
      (self: t_SslContext)
      (lib_ctx: Sandwich.Implementation.Openssl3_impl.t_LibCtx)
      (identity: Core.Option.t_Option Sandwich_api_proto.Tls.t_X509Identity)
     =
  match identity with
  | Core.Option.Option_Some identity ->
    (match
        Core.Result.impl__map_err #(Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat &
            Sandwich.Support.Data_source.t_DataSource)
          #Sandwich.Error.t_Error
          #Sandwich.Error.t_Error
          (Core.Result.impl__and_then #Sandwich_api_proto.Certificate.t_Certificate
              #Sandwich.Error.t_Error
              #(Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat &
                Sandwich.Support.Data_source.t_DataSource)
              (Core.Option.impl__ok_or #Sandwich_api_proto.Certificate.t_Certificate
                  #Sandwich.Error.t_Error
                  (Protobuf.Message_field.impl__as_ref #Sandwich_api_proto.Certificate.t_Certificate
                      identity.Sandwich_api_proto.Tls.f_certificate
                    <:
                    Core.Option.t_Option Sandwich_api_proto.Certificate.t_Certificate)
                  (Core.Convert.f_into #Sandwich_proto.Errors.t_CertificateError
                      #Sandwich.Error.t_Error
                      #FStar.Tactics.Typeclasses.solve
                      (Sandwich_proto.Errors.CertificateError_CERTIFICATEERROR_MALFORMED
                        <:
                        Sandwich_proto.Errors.t_CertificateError)
                    <:
                    Sandwich.Error.t_Error)
                <:
                Core.Result.t_Result Sandwich_api_proto.Certificate.t_Certificate
                  Sandwich.Error.t_Error)
              configuration_read_certificate
            <:
            Core.Result.t_Result
              (Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat &
                Sandwich.Support.Data_source.t_DataSource) Sandwich.Error.t_Error)
          (fun e ->
              let e:Sandwich.Error.t_Error = e in
              e >>!
              (Sandwich_proto.Errors.TLSConfigurationError_TLSCONFIGURATIONERROR_INVALID
                <:
                Sandwich_proto.Errors.t_TLSConfigurationError)
              <:
              Sandwich.Error.t_Error)
      with
      | Core.Result.Result_Ok (certificate_chain_format, data_source) ->
        (match
            Sandwich.Implementation.Openssl3_impl.Support.v_BIO_from_buffer #Sandwich.Support.Data_source.t_DataSource
              data_source
          with
          | Core.Result.Result_Ok cert_chain_bio ->
            (match
                Sandwich.Implementation.Openssl3_impl.Support.v_X509_from_BIO lib_ctx
                  (Sandwich.Support.Pimpl.impl_2__as_nonnull #Openssl3.t_bio_st cert_chain_bio
                    <:
                    Core.Ptr.Non_null.t_NonNull Openssl3.t_bio_st)
                  certificate_chain_format
              with
              | Core.Result.Result_Ok leaf_certificate ->
                (match
                    set_certificate self
                      (Sandwich.Support.Pimpl.impl_2__as_nonnull #Openssl3.t_x509_st
                          leaf_certificate
                        <:
                        Core.Ptr.Non_null.t_NonNull Openssl3.t_x509_st)
                  with
                  | Core.Result.Result_Ok _ ->
                    (match
                        Core.Result.impl__map_err #(Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat &
                            Sandwich.Support.Data_source.t_DataSource)
                          #Sandwich.Error.t_Error
                          #Sandwich.Error.t_Error
                          (Core.Result.impl__and_then #Sandwich_api_proto.Private_key.t_PrivateKey
                              #Sandwich.Error.t_Error
                              #(Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat &
                                Sandwich.Support.Data_source.t_DataSource)
                              (Core.Option.impl__ok_or #Sandwich_api_proto.Private_key.t_PrivateKey
                                  #Sandwich.Error.t_Error
                                  (Protobuf.Message_field.impl__as_ref #Sandwich_api_proto.Private_key.t_PrivateKey
                                      identity.Sandwich_api_proto.Tls.f_private_key
                                    <:
                                    Core.Option.t_Option Sandwich_api_proto.Private_key.t_PrivateKey
                                  )
                                  (Core.Convert.f_into #Sandwich_proto.Errors.t_PrivateKeyError
                                      #Sandwich.Error.t_Error
                                      #FStar.Tactics.Typeclasses.solve
                                      (Sandwich_proto.Errors.PrivateKeyError_PRIVATEKEYERROR_MALFORMED
                                        <:
                                        Sandwich_proto.Errors.t_PrivateKeyError)
                                    <:
                                    Sandwich.Error.t_Error)
                                <:
                                Core.Result.t_Result Sandwich_api_proto.Private_key.t_PrivateKey
                                  Sandwich.Error.t_Error)
                              configuration_read_private_key
                            <:
                            Core.Result.t_Result
                              (Sandwich_api_proto.Encoding_format.t_ASN1EncodingFormat &
                                Sandwich.Support.Data_source.t_DataSource) Sandwich.Error.t_Error)
                          (fun e ->
                              let e:Sandwich.Error.t_Error = e in
                              e >>!
                              (Sandwich_proto.Errors.TLSConfigurationError_TLSCONFIGURATIONERROR_INVALID
                                <:
                                Sandwich_proto.Errors.t_TLSConfigurationError)
                              <:
                              Sandwich.Error.t_Error)
                      with
                      | Core.Result.Result_Ok (format, data_source) ->
                        (match
                            Sandwich.Implementation.Openssl3_impl.Support.v_BIO_from_buffer #Sandwich.Support.Data_source.t_DataSource
                              data_source
                          with
                          | Core.Result.Result_Ok bio ->
                            (match
                                Sandwich.Implementation.Openssl3_impl.Support.v_EVP_PKEY_from_BIO lib_ctx
                                  (Sandwich.Support.Pimpl.impl_2__as_nonnull #Openssl3.t_bio_st bio
                                    <:
                                    Core.Ptr.Non_null.t_NonNull Openssl3.t_bio_st)
                                  format
                              with
                              | Core.Result.Result_Ok private_key ->
                                (match
                                    set_private_key self
                                      (Sandwich.Support.Pimpl.impl_2__as_nonnull #Openssl3.t_evp_pkey_st
                                          private_key
                                        <:
                                        Core.Ptr.Non_null.t_NonNull Openssl3.t_evp_pkey_st)
                                  with
                                  | Core.Result.Result_Ok _ ->
                                    let _:Prims.unit =
                                      Rust_primitives.Hax.failure "(FunctionalizeLoops) something is not implemented yet.This is discussed in issue https://github.com/hacspec/hax/issues/405.\nPlease upvote or comment this issue if you see this error message.\nLoop without mutation"
                                        "{\n        while core::ops::bit::Not::not(\n            sandwich::implementation::openssl3_impl::support::is_BIO_eof(\n                sandwich::support::pimpl::impl_2__as_nonnull::<\n                    openssl3::t_bio_st,\n                >(cert_chain_bio),\n            ),\n        ) {\n            (match (sandwich::implementation::openssl3_impl::support::v_X509_from_BIO(\n                lib_ctx,\n                sandwich::support::pimpl::impl_2__as_nonnull::<\n                    openssl3::t_bio_st,\n                >(cert_chain_bio),\n                certificate_chain_format,\n            )) {\n                core::result::Result_Ok(certificate_in_chain) => {\n                    (match (sandwich::implementation::openssl3_impl::tunnel::context::impl__SslContext__add_extra_chain_cert(\n                        self,\n                        certificate_in_chain,\n                    )) {\n                        core::result::Result_Ok(_) => {\n                            core::ops::control_flow::ControlFlow_Continue(Tuple0)\n                        }\n                        core::result::Result_Err(err) => {\n                            core::ops::control_flow::ControlFlow_Break(\n                                core::result::Result_Err(err),\n                            )\n                        }\n                    })\n                }\n                core::result::Result_Err(err) => {\n                    core::ops::control_flow::ControlFlow_Break(\n                        core::result::Result_Err(err),\n                    )\n                }\n            })\n        }\n    }"

                                    in
                                    Core.Result.Result_Ok (() <: Prims.unit)
                                    <:
                                    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
                                  | Core.Result.Result_Err err ->
                                    Core.Result.Result_Err err
                                    <:
                                    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
                              | Core.Result.Result_Err err ->
                                Core.Result.Result_Err err
                                <:
                                Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
                          | Core.Result.Result_Err err ->
                            Core.Result.Result_Err err
                            <:
                            Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
                      | Core.Result.Result_Err err ->
                        Core.Result.Result_Err err
                        <:
                        Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
                  | Core.Result.Result_Err err ->
                    Core.Result.Result_Err err
                    <:
                    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
              | Core.Result.Result_Err err ->
                Core.Result.Result_Err err <: Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
            )
          | Core.Result.Result_Err err ->
            Core.Result.Result_Err err <: Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      | Core.Result.Result_Err err ->
        Core.Result.Result_Err err <: Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
  | _ ->
    Core.Result.Result_Ok (() <: Prims.unit)
    <:
    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let try_from263357434
      (ctx: Sandwich.t_Context)
      (configuration: Sandwich_api_proto.Configuration.t_Configuration)
     =
  let lib_ctx:Sandwich.Implementation.Openssl3_impl.t_LibCtx =
    Core.Borrow.f_borrow #Sandwich.t_Context
      #Sandwich.Implementation.Openssl3_impl.t_LibCtx
      #FStar.Tactics.Typeclasses.solve
      ctx
  in
  match configuration_get_mode_and_options configuration with
  | Core.Result.Result_Ok (mode, tls_options) ->
    (match new_ssl_context ctx mode with
      | Core.Result.Result_Ok ssl_ctx ->
        let ssl_ctx_wrapped:t_SslContext =
          t_SslContext (Sandwich.Support.Pimpl.impl_2__as_nonnull #Openssl3.t_ssl_ctx_st ssl_ctx)
          <:
          t_SslContext
        in
        (match set_default_parameters ssl_ctx_wrapped with
          | Core.Result.Result_Ok _ ->
            (match set_trust ssl_ctx_wrapped mode with
              | Core.Result.Result_Ok _ ->
                (match set_min_and_max_tls_version ssl_ctx_wrapped tls_options with
                  | Core.Result.Result_Ok _ ->
                    (match
                        configure_tls12 ssl_ctx_wrapped
                          (Protobuf.Message_field.impl__as_ref #Sandwich_api_proto.Tls.t_TLSv12Config
                              tls_options.Sandwich_api_proto.Tls.f_tls12
                            <:
                            Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSv12Config)
                      with
                      | Core.Result.Result_Ok _ ->
                        (match
                            configure_tls13 ssl_ctx_wrapped
                              (Protobuf.Message_field.impl__as_ref #Sandwich_api_proto.Tls.t_TLSv13Config
                                  tls_options.Sandwich_api_proto.Tls.f_tls13
                                <:
                                Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSv13Config)
                          with
                          | Core.Result.Result_Ok _ ->
                            (match
                                set_alpn_protocols #Alloc.String.t_String
                                  #(Core.Slice.Iter.t_Iter Alloc.String.t_String)
                                  ssl_ctx_wrapped
                                  (Core.Slice.impl__iter #Alloc.String.t_String
                                      (Core.Ops.Deref.f_deref #(Alloc.Vec.t_Vec
                                              Alloc.String.t_String Alloc.Alloc.t_Global)
                                          #FStar.Tactics.Typeclasses.solve
                                          tls_options.Sandwich_api_proto.Tls.f_alpn_protocols
                                        <:
                                        t_Slice Alloc.String.t_String)
                                    <:
                                    Core.Slice.Iter.t_Iter Alloc.String.t_String)
                              with
                              | Core.Result.Result_Ok _ ->
                                (match
                                    Core.Convert.f_try_from #Sandwich.Implementation.Openssl3_impl.Tunnel.X509_verify_param.t_X509VerifyParam
                                      #(Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_ctx_st)
                                      #FStar.Tactics.Typeclasses.solve
                                      ssl_ctx
                                  with
                                  | Core.Result.Result_Ok x509_verify_param ->
                                    (match
                                        Sandwich.Implementation.Openssl3_impl.Tunnel.X509_verify_param.impl_3__set_default_parameters
                                          x509_verify_param
                                      with
                                      | Core.Result.Result_Ok _ ->
                                        (match
                                            Core.Result.impl__and_then #(Core.Option.t_Option
                                                Sandwich_api_proto.Verifiers.t_X509Verifier)
                                              #Sandwich.Error.t_Error
                                              #(Core.Option.t_Option
                                                Sandwich_api_proto.Verifiers.t_X509Verifier)
                                              (tls_options_get_x509_verifier tls_options
                                                <:
                                                Core.Result.t_Result
                                                  (Core.Option.t_Option
                                                    Sandwich_api_proto.Verifiers.t_X509Verifier)
                                                  Sandwich.Error.t_Error)
                                              x509_verifier_verify_emptiness
                                          with
                                          | Core.Result.Result_Ok x509_verifier ->
                                            let _:Prims.unit =
                                              Sandwich.Implementation.Openssl3_impl.Tunnel.X509_verify_param.impl_3__update_certificate_chain_validation_depth_from_x509_verifier
                                                x509_verify_param
                                                x509_verifier
                                            in
                                            (match
                                                set_identity ssl_ctx_wrapped
                                                  lib_ctx
                                                  (Protobuf.Message_field.impl__as_ref #Sandwich_api_proto.Tls.t_X509Identity
                                                      tls_options.Sandwich_api_proto.Tls.f_identity
                                                    <:
                                                    Core.Option.t_Option
                                                    Sandwich_api_proto.Tls.t_X509Identity)
                                              with
                                              | Core.Result.Result_Ok _ ->
                                                (match
                                                    fill_certificate_trust_store ssl_ctx_wrapped
                                                      lib_ctx
                                                      x509_verifier
                                                  with
                                                  | Core.Result.Result_Ok _ ->
                                                    (match
                                                        fill_certificate_trust_store_with_default_cas
                                                          ssl_ctx_wrapped
                                                          x509_verifier
                                                      with
                                                      | Core.Result.Result_Ok _ ->
                                                        let verify_mode:Sandwich.Tunnel.Tls.t_VerifyMode
                                                        =
                                                          get_verify_mode_from_mode_and_x509_verifier
                                                            mode
                                                            x509_verifier
                                                        in
                                                        let _:Prims.unit =
                                                          set_verify_mode ssl_ctx_wrapped
                                                            verify_mode
                                                        in
                                                        let security_requirements:Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements
                                                        =
                                                          Core.Option.impl__unwrap_or_default #Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements
                                                            (Core.Option.impl__map #Sandwich_api_proto.Verifiers.t_X509Verifier
                                                                #Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements
                                                                x509_verifier
                                                                Core.Convert.From.from
                                                              <:
                                                              Core.Option.t_Option
                                                              Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements
                                                            )
                                                        in
                                                        Core.Result.Result_Ok
                                                        ({
                                                            f__lib_ctx = lib_ctx;
                                                            f_mode = mode;
                                                            f_security_requirements
                                                            =
                                                            security_requirements;
                                                            f_ssl_ctx = ssl_ctx
                                                          }
                                                          <:
                                                          t_Context486924441)
                                                        <:
                                                        Core.Result.t_Result t_Context486924441
                                                          Sandwich.Error.t_Error
                                                      | Core.Result.Result_Err err ->
                                                        Core.Result.Result_Err err
                                                        <:
                                                        Core.Result.t_Result t_Context486924441
                                                          Sandwich.Error.t_Error)
                                                  | Core.Result.Result_Err err ->
                                                    Core.Result.Result_Err err
                                                    <:
                                                    Core.Result.t_Result t_Context486924441
                                                      Sandwich.Error.t_Error)
                                              | Core.Result.Result_Err err ->
                                                Core.Result.Result_Err err
                                                <:
                                                Core.Result.t_Result t_Context486924441
                                                  Sandwich.Error.t_Error)
                                          | Core.Result.Result_Err err ->
                                            Core.Result.Result_Err err
                                            <:
                                            Core.Result.t_Result t_Context486924441
                                              Sandwich.Error.t_Error)
                                      | Core.Result.Result_Err err ->
                                        Core.Result.Result_Err err
                                        <:
                                        Core.Result.t_Result t_Context486924441
                                          Sandwich.Error.t_Error)
                                  | Core.Result.Result_Err err ->
                                    Core.Result.Result_Err err
                                    <:
                                    Core.Result.t_Result t_Context486924441 Sandwich.Error.t_Error)
                              | Core.Result.Result_Err err ->
                                Core.Result.Result_Err err
                                <:
                                Core.Result.t_Result t_Context486924441 Sandwich.Error.t_Error)
                          | Core.Result.Result_Err err ->
                            Core.Result.Result_Err err
                            <:
                            Core.Result.t_Result t_Context486924441 Sandwich.Error.t_Error)
                      | Core.Result.Result_Err err ->
                        Core.Result.Result_Err err
                        <:
                        Core.Result.t_Result t_Context486924441 Sandwich.Error.t_Error)
                  | Core.Result.Result_Err err ->
                    Core.Result.Result_Err err
                    <:
                    Core.Result.t_Result t_Context486924441 Sandwich.Error.t_Error)
              | Core.Result.Result_Err err ->
                Core.Result.Result_Err err
                <:
                Core.Result.t_Result t_Context486924441 Sandwich.Error.t_Error)
          | Core.Result.Result_Err err ->
            Core.Result.Result_Err err
            <:
            Core.Result.t_Result t_Context486924441 Sandwich.Error.t_Error)
      | Core.Result.Result_Err err ->
        Core.Result.Result_Err err <: Core.Result.t_Result t_Context486924441 Sandwich.Error.t_Error
    )
  | Core.Result.Result_Err err ->
    Core.Result.Result_Err err <: Core.Result.t_Result t_Context486924441 Sandwich.Error.t_Error

let try_from541313740
      (context: Sandwich.t_Context)
      (configuration: Sandwich_api_proto.Configuration.t_Configuration)
     =
  match Sandwich.Tunnel.Tls.Security.assert_compliance configuration with
  | Core.Result.Result_Ok _ ->
    Core.Result.impl__map_err #t_Context665818913
      #Sandwich.Error.t_Error
      #Sandwich.Error.t_Error
      (Core.Result.impl__and_then #Sandwich_api_proto.Configuration.t_Implementation
          #Sandwich.Error.t_Error
          #t_Context665818913
          (Core.Result.impl__map_err #Sandwich_api_proto.Configuration.t_Implementation
              #i32
              #Sandwich.Error.t_Error
              (Protobuf.Enum_or_unknown.impl_1__enum_value #Sandwich_api_proto.Configuration.t_Implementation
                  configuration.Sandwich_api_proto.Configuration.f_impl___
                <:
                Core.Result.t_Result Sandwich_api_proto.Configuration.t_Implementation i32)
              (fun temp_0_ ->
                  let _:i32 = temp_0_ in
                  ((Sandwich.Error.impl__Error__new () <: Sandwich.Error.t_Error) >>!
                    (Sandwich_proto.Errors.ConfigurationError_CONFIGURATIONERROR_INVALID_IMPLEMENTATION
                      <:
                      Sandwich_proto.Errors.t_ConfigurationError)
                    <:
                    Sandwich.Error.t_Error) >>!
                  (Sandwich_proto.Errors.ConfigurationError_CONFIGURATIONERROR_INVALID
                    <:
                    Sandwich_proto.Errors.t_ConfigurationError)
                  <:
                  Sandwich.Error.t_Error)
            <:
            Core.Result.t_Result Sandwich_api_proto.Configuration.t_Implementation
              Sandwich.Error.t_Error)
          (fun v ->
              let v:Sandwich_api_proto.Configuration.t_Implementation = v in
              match v with
              | Sandwich_api_proto.Configuration.Implementation_IMPL_OPENSSL3_OQS_PROVIDER  ->
                Core.Result.impl__map_err #t_Context665818913
                  #Sandwich.Error.t_Error
                  #Sandwich.Error.t_Error
                  (Core.Result.impl__map #t_Context486924441
                      #Sandwich.Error.t_Error
                      #t_Context665818913
                      (try_from263357434 context configuration
                        <:
                        Core.Result.t_Result t_Context486924441 Sandwich.Error.t_Error)
                      Sandwich.Tunnel.Context.Context.v_OpenSSL3
                    <:
                    Core.Result.t_Result t_Context665818913 Sandwich.Error.t_Error)
                  (fun e ->
                      let e:Sandwich.Error.t_Error = e in
                      e >>!
                      (Sandwich_proto.Errors.ConfigurationError_CONFIGURATIONERROR_INVALID
                        <:
                        Sandwich_proto.Errors.t_ConfigurationError)
                      <:
                      Sandwich.Error.t_Error)
                <:
                Core.Result.t_Result t_Context665818913 Sandwich.Error.t_Error
              | _ ->
                Core.Result.Result_Err
                (((Sandwich.Error.impl__Error__new () <: Sandwich.Error.t_Error) >>!
                    (Sandwich_proto.Errors.ConfigurationError_CONFIGURATIONERROR_INVALID_IMPLEMENTATION
                      <:
                      Sandwich_proto.Errors.t_ConfigurationError)
                    <:
                    Sandwich.Error.t_Error) >>!
                  (Sandwich_proto.Errors.ConfigurationError_CONFIGURATIONERROR_INVALID
                    <:
                    Sandwich_proto.Errors.t_ConfigurationError)
                  <:
                  Sandwich.Error.t_Error)
                <:
                Core.Result.t_Result t_Context665818913 Sandwich.Error.t_Error)
        <:
        Core.Result.t_Result t_Context665818913 Sandwich.Error.t_Error)
      (fun e ->
          let e:Sandwich.Error.t_Error = e in
          e >>!
          (Sandwich_proto.Errors.APIError_APIERROR_CONFIGURATION <: Sandwich_proto.Errors.t_APIError
          )
          <:
          Sandwich.Error.t_Error)
  | Core.Result.Result_Err err ->
    Core.Result.Result_Err err <: Core.Result.t_Result t_Context665818913 Sandwich.Error.t_Error
