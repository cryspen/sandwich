module Sandwich.Implementation.Openssl3_impl.Tunnel
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Sandwich.Error in
  let open Sandwich.Error.Code in
  let open Sandwich.Implementation.Openssl3_impl in
  let open Sandwich.Implementation.Openssl3_impl.Tunnel.X509_verify_param in
  let open Sandwich.Support.Data_source in
  let open Sandwich.Tunnel in
  let open Sandwich.Tunnel.Context in
  let open Sandwich.Tunnel.Tls in
  let open Sandwich_proto.Tunnel in
  ()

let impl_11__set_default_parameters__DISABLED: i32 = 0l

let v_BIO_METHOD: Core.Ptr.Non_null.t_NonNull Openssl3.t_bio_method_st =
  Rust_primitives.Hax.failure "(AST import) Unsafe blocks are not allowed."
    "{ Types.attributes = [];\n  contents =\n  Types.Block {\n    expr =\n    (Some { Types.attributes = [];\n            contents =\n            Types.Call {\n              args =\n              [{ Types.attributes = [];\n                 contents =\n                 Types.Call {\n                   args =\n                   [{ Types.attributes = [];\n                      contents =\n                      Types.Use {\n                        source =\n                        { Types.attributes = [];\n                          contents =\n                          Types.AddressOf {\n                            arg =\n                            { Types.attributes = [];\n                              contents =\n                              Types.Deref {\n                                arg =\n                                { Types.attributes = [];\n                                  contents =\n                                  Types.Borrow {\n                                    arg =\n                                    { Types.attributes = [];\n                                      contents =\n                                      Types.NamedConst {args = [];\n                                        def_id =\n                                        { Types.index = (0, 399);\n                                          krate = \"sandwich\";\n                                          path =\n                                          [{ Types.data =\n                                             (Types.TypeNs \"implementation\");\n                                             disambiguator = 0 };\n                                            { Types.data =\n                                              (Types.TypeNs \"openssl3_impl\");\n                                              disambiguator = 0 };\n                                            { Types.data =\n                                              (Types.TypeNs \"tunnel\");\n                                              disambiguator = 0 };\n                                            { Types.data =\n                                              (Types.ValueNs\n                                                 \"BIO_METH_OBJECT\");\n                                              disambiguator = 0 }\n                                            ]\n                                          };\n                                        impl = None; user_ty = None};\n                                      hir_id = (Some (\"400\", \"16\"));\n                                      span =\n                                      { Types.filename =\n                                        (Types.Real\n                                           (Types.LocalPath\n                                              \"rust/implementation/openssl3_impl/tunnel/mod.rs\"));\n                                        hi =\n                                        { Types.col = \"53\"; line = \"2223\" };\n                                        lo =\n                                        { Types.col = \"38\"; line = \"2223\" } };\n                                      ty =\n                                      Types.Adt {\n                                        def_id =\n                                        { Types.index = (27, 23380);\n                                          krate = \"openssl3\";\n                                          path =\n                                          [{ Types.data =\n                                             (Types.TypeNs \"bio_method_st\");\n                                             disambiguator = 0 }\n                                            ]\n                                          };\n                                        generic_args = []; trait_refs = []}\n                                      };\n                                    borrow_kind = Types.Shared};\n                                  hir_id = None;\n                                  span =\n                                  { Types.filename =\n                                    (Types.Real\n                                       (Types.LocalPath\n                                          \"rust/implementation/openssl3_impl/tunnel/mod.rs\"));\n                                    hi = { Types.col = \"53\"; line = \"2223\" };\n                                    lo = { Types.col = \"37\"; line = \"2223\" }\n                                    };\n                                  ty =\n                                  (Types.Ref\n                                     ({ Types.kind = Types.ReErased },\n                                      Types.Adt {\n                                        def_id =\n                                        { Types.index = (27, 23380);\n                                          krate = \"openssl3\";\n                                          path =\n                                          [{ Types.data =\n                                             (Types.TypeNs \"bio_method_st\");\n                                             disambiguator = 0 }\n                                            ]\n                                          };\n                                        generic_args = []; trait_refs = []},\n                                      false))\n                                  }};\n                              hir_id = None;\n                              span =\n                              { Types.filename =\n                                (Types.Real\n                                   (Types.LocalPath\n                                      \"rust/implementation/openssl3_impl/tunnel/mod.rs\"));\n                                hi = { Types.col = \"53\"; line = \"2223\" };\n                                lo = { Types.col = \"37\"; line = \"2223\" } };\n                              ty =\n                              Types.Adt {\n                                def_id =\n                                { Types.index = (27, 23380);\n                                  krate = \"openssl3\";\n                                  path =\n                                  [{ Types.data =\n                                     (Types.TypeNs \"bio_method_st\");\n                                     disambiguator = 0 }\n                                    ]\n                                  };\n                                generic_args = []; trait_refs = []}\n                              };\n                            mutability = false};\n                          hir_id = (Some (\"400\", \"15\"));\n                          span =\n                          { Types.filename =\n                            (Types.Real\n                               (Types.LocalPath\n                                  \"rust/implementation/openssl3_impl/tunnel/mod.rs\"));\n                            hi = { Types.col = \"53\"; line = \"2223\" };\n                            lo = { Types.col = \"37\"; line = \"2223\" } };\n                          ty =\n                          (Types.RawPtr\n                             (Types.Adt {\n                                def_id =\n                                { Types.index = (27, 23380);\n                                  krate = \"openssl3\";\n                                  path =\n                                  [{ Types.data =\n                                     (Types.TypeNs \"bio_method_st\");\n                                     disambiguator = 0 }\n                                    ]\n                                  };\n                                generic_args = []; trait_refs = []},\n                              false))\n                          }};\n                      hir_id = (Some (\"400\", \"14\"));\n                      span =\n                      { Types.filename =\n                        (Types.Real\n                           (Types.LocalPath\n                              \"rust/implementation/openssl3_impl/tunnel/mod.rs\"));\n                        hi = { Types.col = \"85\"; line = \"2223\" };\n                        lo = { Types.col = \"36\"; line = \"2223\" } };\n                      ty =\n                      (Types.RawPtr\n                         (Types.Adt {\n                            def_id =\n                            { Types.index = (27, 23380); krate = \"openssl3\";\n                              path =\n                              [{ Types.data = (Types.TypeNs \"bio_method_st\");\n                                 disambiguator = 0 }\n                                ]\n                              };\n                            generic_args = []; trait_refs = []},\n                          false))\n                      }\n                     ];\n                   bounds_impls = [];\n                   fn_span =\n                   { Types.filename =\n                     (Types.Real\n                        (Types.LocalPath\n                           \"rust/implementation/openssl3_impl/tunnel/mod.rs\"));\n                     hi = { Types.col = \"96\"; line = \"2223\" };\n                     lo = { Types.col = \"86\"; line = \"2223\" } };\n                   from_hir_call = true;\n                   fun' =\n                   { Types.attributes = [];\n                     contents =\n                     Types.GlobalName {\n                       id =\n                       { Types.index = (2, 2408); krate = \"core\";\n                         path =\n                         [{ Types.data = (Types.TypeNs \"ptr\");\n                            disambiguator = 0 };\n                           { Types.data = (Types.TypeNs \"const_ptr\");\n                             disambiguator = 0 };\n                           { Types.data = Types.Impl; disambiguator = 0 };\n                           { Types.data = (Types.ValueNs \"cast_mut\");\n                             disambiguator = 0 }\n                           ]\n                         }};\n                     hir_id = None;\n                     span =\n                     { Types.filename =\n                       (Types.Real\n                          (Types.LocalPath\n                             \"rust/implementation/openssl3_impl/tunnel/mod.rs\"));\n                       hi = { Types.col = \"94\"; line = \"2223\" };\n                       lo = { Types.col = \"86\"; line = \"2223\" } };\n                     ty =\n                     (Types.Arrow\n                        { Types.bound_vars = [];\n                          value =\n                          { Types.abi = Types.Abi {todo = \"Rust\"};\n                            c_variadic = false;\n                            inputs =\n                            [(Types.RawPtr\n                                (Types.Adt {\n                                   def_id =\n                                   { Types.index = (27, 23380);\n                                     krate = \"openssl3\";\n                                     path =\n                                     [{ Types.data =\n                                        (Types.TypeNs \"bio_method_st\");\n                                        disambiguator = 0 }\n                                       ]\n                                     };\n                                   generic_args = []; trait_refs = []},\n                                 false))\n                              ];\n                            output =\n                            (Types.RawPtr\n                               (Types.Adt {\n                                  def_id =\n                                  { Types.index = (27, 23380);\n                                    krate = \"openssl3\";\n                                    path =\n                                    [{ Types.data =\n                                       (Types.TypeNs \"bio_method_st\");\n                                       disambiguator = 0 }\n                                      ]\n                                    };\n                                  generic_args = []; trait_refs = []},\n                                true));\n                            safety = Types.Safe }\n                          })\n                     };\n                   generic_args =\n                   [(Types.Type\n                       Types.Adt {\n                         def_id =\n                         { Types.index = (27, 23380); krate = \"openssl3\";\n                           path =\n                           [{ Types.data = (Types.TypeNs \"bio_method_st\");\n                              disambiguator = 0 }\n                             ]\n                           };\n                         generic_args = []; trait_refs = []})\n                     ];\n                   trait = None;\n                   ty =\n                   (Types.Arrow\n                      { Types.bound_vars = [];\n                        value =\n                        { Types.abi = Types.Abi {todo = \"Rust\"};\n                          c_variadic = false;\n                          inputs =\n                          [(Types.RawPtr\n                              (Types.Adt {\n                                 def_id =\n                                 { Types.index = (27, 23380);\n                                   krate = \"openssl3\";\n                                   path =\n                                   [{ Types.data =\n                                      (Types.TypeNs \"bio_method_st\");\n                                      disambiguator = 0 }\n                                     ]\n                                   };\n                                 generic_args = []; trait_refs = []},\n                               false))\n                            ];\n                          output =\n                          (Types.RawPtr\n                             (Types.Adt {\n                                def_id =\n                                { Types.index = (27, 23380);\n                                  krate = \"openssl3\";\n                                  path =\n                                  [{ Types.data =\n                                     (Types.TypeNs \"bio_method_st\");\n                                     disambiguator = 0 }\n                                    ]\n                                  };\n                                generic_args = []; trait_refs = []},\n                              true));\n                          safety = Types.Safe }\n                        })};\n                 hir_id = (Some (\"400\", \"12\"));\n                 span =\n                 { Types.filename =\n                   (Types.Real\n                      (Types.LocalPath\n                         \"rust/implementation/openssl3_impl/tunnel/mod.rs\"));\n                   hi = { Types.col = \"96\"; line = \"2223\" };\n                   lo = { Types.col = \"36\"; line = \"2223\" } };\n                 ty =\n                 (Types.RawPtr\n                    (Types.Adt {\n                       def_id =\n                       { Types.index = (27, 23380); krate = \"openssl3\";\n                         path =\n                         [{ Types.data = (Types.TypeNs \"bio_method_st\");\n                            disambiguator = 0 }\n                           ]\n                         };\n                       generic_args = []; trait_refs = []},\n                     true))\n                 }\n                ];\n              bounds_impls = [];\n              fn_span =\n              { Types.filename =\n                (Types.Real\n                   (Types.LocalPath\n                      \"rust/implementation/openssl3_impl/tunnel/mod.rs\"));\n                hi = { Types.col = \"97\"; line = \"2223\" };\n                lo = { Types.col = \"13\"; line = \"2223\" } };\n              from_hir_call = true;\n              fun' =\n              { Types.attributes = [];\n                contents =\n                Types.GlobalName {\n                  id =\n                  { Types.index = (2, 2238); krate = \"core\";\n                    path =\n                    [{ Types.data = (Types.TypeNs \"ptr\"); disambiguator = 0 };\n                      { Types.data = (Types.TypeNs \"non_null\");\n                        disambiguator = 0 };\n                      { Types.data = Types.Impl; disambiguator = 3 };\n                      { Types.data = (Types.ValueNs \"new_unchecked\");\n                        disambiguator = 0 }\n                      ]\n                    }};\n                hir_id = None;\n                span =\n                { Types.filename =\n                  (Types.Real\n                     (Types.LocalPath\n                        \"rust/implementation/openssl3_impl/tunnel/mod.rs\"));\n                  hi = { Types.col = \"35\"; line = \"2223\" };\n                  lo = { Types.col = \"13\"; line = \"2223\" } };\n                ty =\n                (Types.Arrow\n                   { Types.bound_vars = [];\n                     value =\n                     { Types.abi = Types.Abi {todo = \"Rust\"};\n                       c_variadic = false;\n                       inputs =\n                       [(Types.RawPtr\n                           (Types.Adt {\n                              def_id =\n                              { Types.index = (27, 23380);\n                                krate = \"openssl3\";\n                                path =\n                                [{ Types.data =\n                                   (Types.TypeNs \"bio_method_st\");\n                                   disambiguator = 0 }\n                                  ]\n                                };\n                              generic_args = []; trait_refs = []},\n                            true))\n                         ];\n                       output =\n                       Types.Adt {\n                         def_id =\n                         { Types.index = (2, 2222); krate = \"core\";\n                           path =\n                           [{ Types.data = (Types.TypeNs \"ptr\");\n                              disambiguator = 0 };\n                             { Types.data = (Types.TypeNs \"non_null\");\n                               disambiguator = 0 };\n                             { Types.data = (Types.TypeNs \"NonNull\");\n                               disambiguator = 0 }\n                             ]\n                           };\n                         generic_args =\n                         [(Types.Type\n                             Types.Adt {\n                               def_id =\n                               { Types.index = (27, 23380);\n                                 krate = \"openssl3\";\n                                 path =\n                                 [{ Types.data =\n                                    (Types.TypeNs \"bio_method_st\");\n                                    disambiguator = 0 }\n                                   ]\n                                 };\n                               generic_args = []; trait_refs = []})\n                           ];\n                         trait_refs = []};\n                       safety = Types.Unsafe }\n                     })\n                };\n              generic_args =\n              [(Types.Type\n                  Types.Adt {\n                    def_id =\n                    { Types.index = (27, 23380); krate = \"openssl3\";\n                      path =\n                      [{ Types.data = (Types.TypeNs \"bio_method_st\");\n                         disambiguator = 0 }\n                        ]\n                      };\n                    generic_args = []; trait_refs = []})\n                ];\n              trait = None;\n              ty =\n              (Types.Arrow\n                 { Types.bound_vars = [];\n                   value =\n                   { Types.abi = Types.Abi {todo = \"Rust\"};\n                     c_variadic = false;\n                     inputs =\n                     [(Types.RawPtr\n                         (Types.Adt {\n                            def_id =\n                            { Types.index = (27, 23380); krate = \"openssl3\";\n                              path =\n                              [{ Types.data = (Types.TypeNs \"bio_method_st\");\n                                 disambiguator = 0 }\n                                ]\n                              };\n                            generic_args = []; trait_refs = []},\n                          true))\n                       ];\n                     output =\n                     Types.Adt {\n                       def_id =\n                       { Types.index = (2, 2222); krate = \"core\";\n                         path =\n                         [{ Types.data = (Types.TypeNs \"ptr\");\n                            disambiguator = 0 };\n                           { Types.data = (Types.TypeNs \"non_null\");\n                             disambiguator = 0 };\n                           { Types.data = (Types.TypeNs \"NonNull\");\n                             disambiguator = 0 }\n                           ]\n                         };\n                       generic_args =\n                       [(Types.Type\n                           Types.Adt {\n                             def_id =\n                             { Types.index = (27, 23380); krate = \"openssl3\";\n                               path =\n                               [{ Types.data = (Types.TypeNs \"bio_method_st\");\n                                  disambiguator = 0 }\n                                 ]\n                               };\n                             generic_args = []; trait_refs = []})\n                         ];\n                       trait_refs = []};\n                     safety = Types.Unsafe }\n                   })};\n            hir_id = (Some (\"400\", \"7\"));\n            span =\n            { Types.filename =\n              (Types.Real\n                 (Types.LocalPath\n                    \"rust/implementation/openssl3_impl/tunnel/mod.rs\"));\n              hi = { Types.col = \"97\"; line = \"2223\" };\n              lo = { Types.col = \"13\"; line = \"2223\" } };\n            ty =\n            Types.Adt {\n              def_id =\n              { Types.index = (2, 2222); krate = \"core\";\n                path =\n                [{ Types.data = (Types.TypeNs \"ptr\"); disambiguator = 0 };\n                  { Types.data = (Types.TypeNs \"non_null\"); disambiguator = 0\n                    };\n                  { Types.data = (Types.TypeNs \"NonNull\"); disambiguator = 0\n                    }\n                  ]\n                };\n              generic_args =\n              [(Types.Type\n                  Types.Adt {\n                    def_id =\n                    { Types.index = (27, 23380); krate = \"openssl3\";\n                      path =\n                      [{ Types.data = (Types.TypeNs \"bio_method_st\");\n                         disambiguator = 0 }\n                        ]\n                      };\n                    generic_args = []; trait_refs = []})\n                ];\n              trait_refs = []}\n            });\n    region_scope = { Types.data = Types.Node; id = \"22\" };\n    safety_mode = Types.ExplicitUnsafe;\n    span =\n    { Types.filename =\n      (Types.Real\n         (Types.LocalPath \"rust/implementation/openssl3_impl/tunnel/mod.rs\"));\n      hi = { Types.col = \"99\"; line = \"2223\" };\n      lo = { Types.col = \"4\"; line = \"2223\" } };\n    stmts = []; targeted_by_break = false};\n  hir_id = (Some (\"400\", \"6\"));\n  span =\n  { Types.filename =\n    (Types.Real\n       (Types.LocalPath \"rust/implementation/openssl3_impl/tunnel/mod.rs\"));\n    hi = { Types.col = \"99\"; line = \"2223\" };\n    lo = { Types.col = \"4\"; line = \"2223\" } };\n  ty =\n  Types.Adt {\n    def_id =\n    { Types.index = (2, 2222); krate = \"core\";\n      path =\n      [{ Types.data = (Types.TypeNs \"ptr\"); disambiguator = 0 };\n        { Types.data = (Types.TypeNs \"non_null\"); disambiguator = 0 };\n        { Types.data = (Types.TypeNs \"NonNull\"); disambiguator = 0 }]\n      };\n    generic_args =\n    [(Types.Type\n        Types.Adt {\n          def_id =\n          { Types.index = (27, 23380); krate = \"openssl3\";\n            path =\n            [{ Types.data = (Types.TypeNs \"bio_method_st\"); disambiguator = 0\n               }\n              ]\n            };\n          generic_args = []; trait_refs = []})\n      ];\n    trait_refs = []}\n  }"

/// Index in the SSL user data (`SSL_get_ex_data`/`SSL_set_ex_data`) where
/// the pointer to the tunnel security requirements is stored.
let v_SSL_EX_DATA_TUNNEL_SECURITY_REQUIREMENTS_INDEX: i32 = 1l

(* item error backend: (reject_RawOrMutPointer) ExplicitRejection { reason: "a node of kind [Raw_pointer] have been found in the AST" }
Last available AST for this item:

/// BIO create callback (never used).
#[cfg(feature = "tunnel")]
#[cfg(feature = "openssl3")]
#[deny(bare_trait_objects)]
#[feature(register_tool)]
#[register_tool(_hax)]
fn bio_create(_bio: raw_pointer!()) -> int {
    { 1 }
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
fn bio_destroy(_bio: raw_pointer!()) -> int {
    { 1 }
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
        (Concrete_ident.Imported.ValueNs "bio_destroy"); disambiguator = 0 }
      ]
    };
  kind = Concrete_ident.Kind.Value }) */
const _: () = ();
 *)

/// Converts a [`TlsVersion`] into the corresponding OpenSSL symbol.
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_9: Core.Convert.t_From i64 Sandwich.Tunnel.Tls.t_TlsVersion =
  {
    f_from_pre = (fun (tls_version: Sandwich.Tunnel.Tls.t_TlsVersion) -> true);
    f_from_post = (fun (tls_version: Sandwich.Tunnel.Tls.t_TlsVersion) (out: i64) -> true);
    f_from
    =
    fun (tls_version: Sandwich.Tunnel.Tls.t_TlsVersion) ->
      Core.Convert.f_into #u32
        #i64
        #FStar.Tactics.Typeclasses.solve
        (match tls_version with
          | Sandwich.Tunnel.Tls.TlsVersion_Tls12  -> Openssl3.v_TLS1_2_VERSION
          | Sandwich.Tunnel.Tls.TlsVersion_Tls13  -> Openssl3.v_TLS1_3_VERSION)
  }

/// Determines the verify mode depending on the mode and the existence of a
/// X509Verifier structure in the protobuf configuration.
val get_verify_mode_from_mode_and_x509_verifier
      (mode: Sandwich.Tunnel.Context.t_Mode)
      (x509_verifier: Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
    : Prims.Pure Sandwich.Tunnel.Tls.t_VerifyMode Prims.l_True (fun _ -> Prims.l_True)

/// Reflects an IO error in the BIO flags.
/// When an IO interface raises an error, this function sets the appropriate
/// flags to the BIO state depending on the error.
val bio_reflect_io_error
      (#impl_1033358885_ #impl_1033358885_ #impl_765196419_: Type0)
      {| i3: Core.Ops.Function.t_FnOnce impl_1033358885_ Prims.unit |}
      {| i4: Core.Ops.Function.t_FnOnce impl_720525265_ Prims.unit |}
      {| i5: Core.Convert.t_Into impl_765196419_ i32 |}
      (error: Sandwich_proto.Io.t_IOError)
      (on_retry: impl_1033358885_)
      (on_close: impl_720525265_)
      (default_return_value: impl_765196419_)
    : Prims.Pure i32 Prims.l_True (fun _ -> Prims.l_True)

/// A wrapper around a BIO.
type t_Bio = | Bio : Core.Ptr.Non_null.t_NonNull Openssl3.t_bio_st -> t_Bio

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_13: Core.Fmt.t_Debug t_Bio =
  {
    f_fmt_pre = (fun (self: t_Bio) (f: Core.Fmt.t_Formatter) -> true);
    f_fmt_post
    =
    (fun
        (self: t_Bio)
        (f: Core.Fmt.t_Formatter)
        (out1: (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error))
        ->
        true);
    f_fmt
    =
    fun (self: t_Bio) (f: Core.Fmt.t_Formatter) ->
      let tmp0, out:(Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error) =
        Core.Fmt.impl_7__write_fmt f
          (Core.Fmt.impl_2__new_v1 (sz 2)
              (sz 1)
              (let list = ["SandwichOpenSSL3BIO("; ")"] in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                Rust_primitives.Hax.array_of_list 2 list)
              (let list =
                  [
                    Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
                      "core::fmt::rt::impl_1__new_pointer::<\n        lifetime!(something),\n        raw_pointer!(),\n    >(\n        &(deref(\n            &(core::ptr::non_null::impl_3__as_ptr::<\n                openssl3::t_bio_st,\n            >(proj_sandwich::implementation::openssl3_impl::tunnel::_0(deref(self)))),\n        )),\n    )"

                    <:
                    Core.Fmt.Rt.t_Argument
                  ]
                in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                Rust_primitives.Hax.array_of_list 1 list)
            <:
            Core.Fmt.t_Arguments)
      in
      let f:Core.Fmt.t_Formatter = tmp0 in
      let hax_temp_output:Core.Result.t_Result Prims.unit Core.Fmt.t_Error = out in
      f, hax_temp_output
      <:
      (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error)
  }

/// Clears flags.
val impl__Bio__clear_flags
      (#impl_765196419_: Type0)
      {| i1: Core.Convert.t_Into impl_765196419_ i32 |}
      (self: t_Bio)
      (flags: impl_765196419_)
    : Prims.Pure Prims.unit Prims.l_True (fun _ -> Prims.l_True)

/// Clears the BIO retry flag.
val impl__Bio__clear_retry_flag (self: t_Bio)
    : Prims.Pure Prims.unit Prims.l_True (fun _ -> Prims.l_True)

/// Declares the BIO as closed.
val impl__Bio__declare_closed (self: t_Bio)
    : Prims.Pure Prims.unit Prims.l_True (fun _ -> Prims.l_True)

/// Returns the SSL object attached to the BIO.
val impl__Bio__get_ssl (self: t_Bio)
    : Prims.Pure
      (Core.Result.t_Result (Core.Ptr.Non_null.t_NonNull Openssl3.t_ssl_st)
          Sandwich_proto.Io.t_IOError) Prims.l_True (fun _ -> Prims.l_True)

/// Sets flags.
val impl__Bio__set_flags
      (#impl_765196419_: Type0)
      {| i2: Core.Convert.t_Into impl_765196419_ i32 |}
      (self: t_Bio)
      (flags: impl_765196419_)
    : Prims.Pure Prims.unit Prims.l_True (fun _ -> Prims.l_True)

/// Sets the 'retry read' flag.
val impl__Bio__set_retry_read_flag (self: t_Bio)
    : Prims.Pure Prims.unit Prims.l_True (fun _ -> Prims.l_True)

/// Sets the 'retry write' flag.
val impl__Bio__set_retry_write_flag (self: t_Bio)
    : Prims.Pure Prims.unit Prims.l_True (fun _ -> Prims.l_True)

/// Wrapper of the OpenSSL SSL object.
type t_Ssl = | Ssl : Core.Ptr.Non_null.t_NonNull Openssl3.t_ssl_st -> t_Ssl

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl: Core.Fmt.t_Debug t_Ssl =
  {
    f_fmt_pre = (fun (self: t_Ssl) (f: Core.Fmt.t_Formatter) -> true);
    f_fmt_post
    =
    (fun
        (self: t_Ssl)
        (f: Core.Fmt.t_Formatter)
        (out1: (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error))
        ->
        true);
    f_fmt
    =
    fun (self: t_Ssl) (f: Core.Fmt.t_Formatter) ->
      let tmp0, out:(Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error) =
        Core.Fmt.impl_7__write_fmt f
          (Core.Fmt.impl_2__new_v1 (sz 2)
              (sz 1)
              (let list = ["OpenSSL3SSLObject("; ")"] in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                Rust_primitives.Hax.array_of_list 2 list)
              (let list =
                  [
                    Core.Fmt.Rt.impl_1__new_pointer #(Core.Ptr.Non_null.t_NonNull Openssl3.t_ssl_st)
                      self._0
                    <:
                    Core.Fmt.Rt.t_Argument
                  ]
                in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                Rust_primitives.Hax.array_of_list 1 list)
            <:
            Core.Fmt.t_Arguments)
      in
      let f:Core.Fmt.t_Formatter = tmp0 in
      let hax_temp_output:Core.Result.t_Result Prims.unit Core.Fmt.t_Error = out in
      f, hax_temp_output
      <:
      (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error)
  }

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_1: Core.Convert.t_From t_Ssl (Core.Ptr.Non_null.t_NonNull Openssl3.t_ssl_st) =
  {
    f_from_pre = (fun (ssl: Core.Ptr.Non_null.t_NonNull Openssl3.t_ssl_st) -> true);
    f_from_post = (fun (ssl: Core.Ptr.Non_null.t_NonNull Openssl3.t_ssl_st) (out: t_Ssl) -> true);
    f_from = fun (ssl: Core.Ptr.Non_null.t_NonNull Openssl3.t_ssl_st) -> Ssl ssl <: t_Ssl
  }

/// Returns a pointer to the BIO currently attached to the SSL object.
val impl__Ssl__get_attached_bio (self: t_Ssl)
    : Prims.Pure (Core.Option.t_Option (Core.Ptr.Non_null.t_NonNull Openssl3.t_bio_st))
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Returns a pointer to some extra data from a SSL object.
val impl__Ssl__get_extra_data_ptr
      (#v_T #impl_765196419_: Type0)
      {| i2: Core.Convert.t_Into impl_765196419_ i32 |}
      (self: t_Ssl)
      (extra_data_index: impl_765196419_)
    : Prims.Pure (Core.Option.t_Option (Core.Ptr.Non_null.t_NonNull v_T))
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Returns a reference to some extra data from a SSL object.
val impl__Ssl__get_extra_data_ref
      (#v_T #impl_765196419_: Type0)
      {| i5: Core.Convert.t_Into impl_765196419_ i32 |}
      (self: t_Ssl)
      (extra_data_index: impl_765196419_)
    : Prims.Pure (Core.Option.t_Option v_T) Prims.l_True (fun _ -> Prims.l_True)

/// Returns the last recorded error.
val impl__Ssl__get_last_recorded_error
      (#impl_765196419_: Type0)
      {| i7: Core.Convert.t_Into impl_765196419_ i32 |}
      (self: t_Ssl)
      (ret: impl_765196419_)
    : Prims.Pure (Core.Result.t_Result Sandwich.Implementation.Openssl3_impl.t_SslError i32)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Returns the error that occurred during the record stage.
/// The record stage is the stage when `SSL_read` and `SSL_write`
/// are called.
val impl__Ssl__get_error_from_record_stage (self: t_Ssl) (err: i32)
    : Prims.Pure Sandwich_proto.Tunnel.t_RecordError Prims.l_True (fun _ -> Prims.l_True)

/// Returns the state of the SSL tunnel.
val impl__Ssl__get_state (self: t_Ssl)
    : Prims.Pure Sandwich_proto.Tunnel.t_HandshakeState Prims.l_True (fun _ -> Prims.l_True)

/// Checks if the tunnel is in a shutdown state.
val impl__Ssl__is_shutdown (self: t_Ssl) : Prims.Pure bool Prims.l_True (fun _ -> Prims.l_True)

/// Convenient wrapper around a `SSL_CTX`.
type t_SslContext = | SslContext : Core.Ptr.Non_null.t_NonNull Openssl3.t_ssl_ctx_st -> t_SslContext

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_10: Core.Fmt.t_Debug t_SslContext =
  {
    f_fmt_pre = (fun (self: t_SslContext) (f: Core.Fmt.t_Formatter) -> true);
    f_fmt_post
    =
    (fun
        (self: t_SslContext)
        (f: Core.Fmt.t_Formatter)
        (out1: (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error))
        ->
        true);
    f_fmt
    =
    fun (self: t_SslContext) (f: Core.Fmt.t_Formatter) ->
      let tmp0, out:(Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error) =
        Core.Fmt.impl_7__write_fmt f
          (Core.Fmt.impl_2__new_v1 (sz 2)
              (sz 1)
              (let list = ["SslContext("; ")"] in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                Rust_primitives.Hax.array_of_list 2 list)
              (let list =
                  [
                    Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
                      "core::fmt::rt::impl_1__new_pointer::<\n        lifetime!(something),\n        raw_pointer!(),\n    >(\n        &(deref(\n            &(core::ptr::non_null::impl_3__as_ptr::<\n                openssl3::t_ssl_ctx_st,\n            >(proj_sandwich::implementation::openssl3_impl::tunnel::_0(deref(self)))),\n        )),\n    )"

                    <:
                    Core.Fmt.Rt.t_Argument
                  ]
                in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                Rust_primitives.Hax.array_of_list 1 list)
            <:
            Core.Fmt.t_Arguments)
      in
      let f:Core.Fmt.t_Formatter = tmp0 in
      let hax_temp_output:Core.Result.t_Result Prims.unit Core.Fmt.t_Error = out in
      f, hax_temp_output
      <:
      (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error)
  }

/// Disables session caching on a SSL context.
val impl__SslContext__disable_session_cache_mode (self: t_SslContext)
    : Prims.Pure Prims.unit Prims.l_True (fun _ -> Prims.l_True)

/// Sets the `SSL_MODE_RELEASE_BUFFERS` option.
/// See <https://www.openssl.org/docs/man3.2/man3/SSL_CTX_set_mode.html#SSL_MODE_RELEASE_BUFFERS>
/// for more information.
val impl__SslContext__set_mode_release_buffers (self: t_SslContext)
    : Prims.Pure Prims.unit Prims.l_True (fun _ -> Prims.l_True)

/// Sets the verification mode.
/// If a `X509Verifier` structure is present in the protobuf configuration,
/// then `SSL_VERIFY_PEER` is used in client mode, and `SSL_VERIFY_PEER | SSL_VERIFY_FAIL_IF_NO_PEER_CERT`
/// is used in server mode.
val impl__SslContext__set_verify_mode
      (self: t_SslContext)
      (verify_mode: Sandwich.Tunnel.Tls.t_VerifyMode)
    : Prims.Pure Prims.unit Prims.l_True (fun _ -> Prims.l_True)

/// Returns the tunnel security requirements from a SSL object.
val impl__Ssl__get_tunnel_security_requirements (self: t_Ssl)
    : Prims.Pure (Core.Option.t_Option Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Handles an SSL error of type `SSL_ERROR_SSL`.
val impl__Ssl__handle_ssl_error_ssl (self: t_Ssl)
    : Prims.Pure
      (Core.Result.t_Result Sandwich_proto.Tunnel.t_HandshakeState Sandwich.Error.t_Error &
        Core.Option.t_Option Sandwich_proto.Tunnel.t_State) Prims.l_True (fun _ -> Prims.l_True)

/// Performs the handshake.
val impl__Ssl__do_handshake (self: t_Ssl)
    : Prims.Pure
      (Core.Result.t_Result Sandwich_proto.Tunnel.t_HandshakeState Sandwich.Error.t_Error &
        Core.Option.t_Option Sandwich_proto.Tunnel.t_State) Prims.l_True (fun _ -> Prims.l_True)

/// Sets the server name indication (SNI).
val impl__Ssl__set_server_name_indication
      (#impl_488124255_: Type0)
      {| i9: Core.Convert.t_AsRef impl_488124255_ string |}
      (self: t_Ssl)
      (sni: impl_488124255_)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Appends a certificate to the certificate chain the peer is going to expose
/// to remote.
/// This function takes a [`Pimpl`] as input since [`SSL_CTX_add_extra_chain_cert`]
/// takes the ownership of the `X509` object.
val impl__SslContext__add_extra_chain_cert
      (self: t_SslContext)
      (extra_certificate: Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_x509_st)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Loads the OpenSSL system-default trust anchors into context store.
val impl__SslContext__fill_certificate_trust_store_with_default_cas
      (self: t_SslContext)
      (x509_verifier: Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Initializes the trusted certificate store.
val impl__SslContext__initialize_trusted_cert_store (self: t_SslContext)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Sets supported application protocols (ALPN).
val impl__SslContext__set_alpn_protocols
      (#v_S #impl_995885649_: Type0)
      {| i6: Core.Convert.t_AsRef v_S string |}
      {| i6: Core.Iter.Traits.Collect.t_IntoIterator impl_995885649_ |}
      (self: t_SslContext)
      (protocols: impl_995885649_)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Sets the certificate to use when the remote peer requests an authentication.
/// This is used in server mode and in client mode when mTLS is enabled.
val impl__SslContext__set_certificate
      (self: t_SslContext)
      (certificate: Core.Ptr.Non_null.t_NonNull Openssl3.t_x509_st)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Sets the list of available ciphers using the default list provided
/// by OpenSSL.
/// This function is only useful for TLS 1.2.
val impl__SslContext__set_default_cipher_list (self: t_SslContext)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Sets the list of available ciphersuites using the default list provided
/// by OpenSSL.
/// This function is only useful for TLS 1.3.
val impl__SslContext__set_default_ciphersuites (self: t_SslContext)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Sets the default parameters for a SSL context.
val impl__SslContext__set_default_parameters (self: t_SslContext)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Sets the KEs to an SSL context.
val impl__SslContext__set_kes
      (#impl_488124255_: Type0)
      {| i5: Core.Convert.t_AsRef impl_488124255_ string |}
      (self: t_SslContext)
      (kes: t_Slice impl_488124255_)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Defines the maximum TLS version to use.
val impl__SslContext__set_maximum_tls_version
      (self: t_SslContext)
      (version: Sandwich.Tunnel.Tls.t_TlsVersion)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Defines the minimum TLS version to use.
val impl__SslContext__set_minimum_tls_version
      (self: t_SslContext)
      (version: Sandwich.Tunnel.Tls.t_TlsVersion)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Sets the minimum and the maximum TLS versions to use.
val impl__SslContext__set_min_and_max_tls_version
      (self: t_SslContext)
      (tls_options: Sandwich_api_proto.Tls.t_TLSOptions)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Sets the private key to use when the remote peer is requesting an authentication.
/// This is used in server mode and in clinet mode when mTLS is enabled.
/// This method also checks the consistency between the provided certificate
/// and the private key.
/// The certificate is provided using [`SslContext::set_certificate`].
val impl__SslContext__set_private_key
      (self: t_SslContext)
      (private_key: Core.Ptr.Non_null.t_NonNull Openssl3.t_evp_pkey_st)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Sets the trust parameter on the verification parameters object, depending
/// on the execution mode.
val impl__SslContext__set_trust (self: t_SslContext) (mode: Sandwich.Tunnel.Context.t_Mode)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Instantiates a new SSL object from an SSL context.
/// `Pimpl` is passed here instead of the regular `NonNull` to enforce the lifetime
/// of the resulting SSL object.
val ssl_context_new_ssl (ssl_context: Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_ctx_st)
    : Prims.Pure
      (Core.Result.t_Result (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_st)
          Sandwich.Error.t_Error) Prims.l_True (fun _ -> Prims.l_True)

/// Creates a new Sandwich BIO and attach it to the SSL object.
val impl__Ssl__create_and_attach_bio (self: t_Ssl)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Verifies the tunnel configuration against the security requirements that come
/// from the context.
val verify_tunnel_verifier
      (tunnel_verifier: Core.Option.t_Option Sandwich_api_proto.Verifiers.t_TunnelVerifier)
      (security_requirements: Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Sets the list of available ciphers.
/// This function is only used for TLS 1.2.
/// Names will be converted to OpenSSL names using `OPENSSL_cipher_name`.
val impl__SslContext__set_cipher_list
      (#v_S #impl_995885649_: Type0)
      {| i2: Core.Convert.t_AsRef v_S string |}
      {| i3: Core.Iter.Traits.Collect.t_IntoIterator impl_995885649_ |}
      (self: t_SslContext)
      (ciphers: impl_995885649_)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Configures TLS 1.2.
val impl__SslContext__configure_tls12
      (self: t_SslContext)
      (tls12_config: Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSv12Config)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Sets the list of available ciphersuites for TLS 1.3.
val impl__SslContext__set_ciphersuites
      (#v_S #impl_995885649_: Type0)
      {| i4: Core.Convert.t_AsRef v_S string |}
      {| i4: Core.Iter.Traits.Collect.t_IntoIterator impl_995885649_ |}
      (self: t_SslContext)
      (ciphers: impl_995885649_)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Configures TLS 1.3.
val impl__SslContext__configure_tls13
      (self: t_SslContext)
      (tls13_config: Core.Option.t_Option Sandwich_api_proto.Tls.t_TLSv13Config)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Sets the required Subject Alternative Names (SAN) specified in the [`pb_api::TunnelVerifier`]
/// object.
val impl__Ssl__set_subject_alternative_names
      (self: t_Ssl)
      (tunnel_verifier: Core.Option.t_Option Sandwich_api_proto.Verifiers.t_TunnelVerifier)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Instantiates a new SSL context (`SSL_CTX`).
val new_ssl_context
      (lib_ctx: Sandwich.Implementation.Openssl3_impl.t_LibCtx)
      (mode: Sandwich.Tunnel.Context.t_Mode)
    : Prims.Pure
      (Core.Result.t_Result (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_ctx_st)
          Sandwich.Error.t_Error) Prims.l_True (fun _ -> Prims.l_True)

/// Closes the tunnel.
val impl__Ssl__close (self: t_Ssl)
    : Prims.Pure
      (Core.Result.t_Result Prims.unit
          (Sandwich.Tunnel.t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Reads some data and writes it to a buffer.
val impl__Ssl__read (self: t_Ssl) (buffer: t_Slice u8)
    : Prims.Pure
      (t_Slice u8 &
        Core.Result.t_Result usize
          (Sandwich.Tunnel.t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Write some data.
val impl__Ssl__write (self: t_Ssl) (buffer: t_Slice u8)
    : Prims.Pure
      (Core.Result.t_Result usize
          (Sandwich.Tunnel.t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Imports the trusted certificates from the protobuf configuration to the
/// OpenSSL SSL context.
val impl__SslContext__fill_certificate_trust_store
      (self: t_SslContext)
      (lib_ctx: Sandwich.Implementation.Openssl3_impl.t_LibCtx)
      (x509_verifier: Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Sets the X.509 identity to use.
/// If the client sets an X.509 identity, then it will expect a client
/// certificate request from the server, in order to establish a mutual
/// TLS tunnel (mTLS).
val impl__SslContext__set_identity
      (self: t_SslContext)
      (lib_ctx: Sandwich.Implementation.Openssl3_impl.t_LibCtx)
      (identity: Core.Option.t_Option Sandwich_api_proto.Tls.t_X509Identity)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Tunnel context.
type t_Context = {
  f__lib_ctx:Sandwich.Implementation.Openssl3_impl.t_LibCtx;
  f_ssl_ctx:Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_ctx_st;
  f_security_requirements:Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements;
  f_mode:Sandwich.Tunnel.Context.t_Mode
}

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_7: Core.Fmt.t_Debug t_Context =
  {
    f_fmt_pre = (fun (self: t_Context) (f: Core.Fmt.t_Formatter) -> true);
    f_fmt_post
    =
    (fun
        (self: t_Context)
        (f: Core.Fmt.t_Formatter)
        (out1: (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error))
        ->
        true);
    f_fmt
    =
    fun (self: t_Context) (f: Core.Fmt.t_Formatter) ->
      let tmp0, out:(Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error) =
        Core.Fmt.impl_7__write_fmt f
          (Core.Fmt.impl_2__new_v1 (sz 2)
              (sz 1)
              (let list = ["OpenSSL3Context(mode="; ")"] in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                Rust_primitives.Hax.array_of_list 2 list)
              (let list =
                  [
                    Core.Fmt.Rt.impl_1__new_debug #Sandwich.Tunnel.Context.t_Mode self.f_mode
                    <:
                    Core.Fmt.Rt.t_Argument
                  ]
                in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                Rust_primitives.Hax.array_of_list 1 list)
            <:
            Core.Fmt.t_Arguments)
      in
      let f:Core.Fmt.t_Formatter = tmp0 in
      let hax_temp_output:Core.Result.t_Result Prims.unit Core.Fmt.t_Error = out in
      f, hax_temp_output
      <:
      (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error)
  }

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_8: Core.Borrow.t_Borrow t_Context Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements =
  {
    f_borrow_pre = (fun (self: t_Context) -> true);
    f_borrow_post
    =
    (fun (self: t_Context) (out: Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements) -> true);
    f_borrow = fun (self: t_Context) -> self.f_security_requirements
  }

/// Instantiates a new SSL object.
val impl_12__new_ssl (self: t_Context)
    : Prims.Pure
      (Core.Result.t_Result (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_st)
          Sandwich.Error.t_Error) Prims.l_True (fun _ -> Prims.l_True)

/// Returns the security requirements of the context.
val impl_12__security_requirements (self: t_Context)
    : Prims.Pure Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Instantiates a new [`Context`] from a [protobuf configuration](`pb_api::Configuration`)
/// and a top-level context.
val impl_12__try_from
      (lib_ctx: Sandwich.Implementation.Openssl3_impl.t_LibCtx)
      (configuration: Sandwich_api_proto.Configuration.t_Configuration)
    : Prims.Pure (Core.Result.t_Result t_Context Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// A tunnel, wrapper around a SSL object.
type t_Tunnel = {
  f__ssl_ctx:t_Context;
  f_ssl:Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_st;
  f_security_requirements:Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements;
  f_io:Sandwich.Tunnel.Io.t_BoxedIO;
  f_state:Sandwich_proto.Tunnel.t_State
}

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_3: Core.Fmt.t_Debug t_Tunnel =
  {
    f_fmt_pre = (fun (self: t_Tunnel) (f: Core.Fmt.t_Formatter) -> true);
    f_fmt_post
    =
    (fun
        (self: t_Tunnel)
        (f: Core.Fmt.t_Formatter)
        (out1: (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error))
        ->
        true);
    f_fmt
    =
    fun (self: t_Tunnel) (f: Core.Fmt.t_Formatter) ->
      let tmp0, out:(Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error) =
        Core.Fmt.impl_7__write_fmt f
          (Core.Fmt.impl_2__new_v1 (sz 2)
              (sz 1)
              (let list = ["OpenSSL3Tunnel(ssl: "; ")"] in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                Rust_primitives.Hax.array_of_list 2 list)
              (let list =
                  [
                    Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
                      "core::fmt::rt::impl_1__new_pointer::<\n        lifetime!(something),\n        raw_pointer!(),\n    >(\n        &(deref(\n            &(core::ptr::non_null::impl_3__as_ptr::<\n                openssl3::t_ssl_st,\n            >(\n                sandwich::support::pimpl::impl_2__as_nonnull::<\n                    lifetime!(something),\n                    openssl3::t_ssl_st,\n                >(\n                    &(proj_sandwich::implementation::openssl3_impl::tunnel::f_ssl(\n                        deref(self),\n                    )),\n                ),\n            )),\n        )),\n    )"

                    <:
                    Core.Fmt.Rt.t_Argument
                  ]
                in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                Rust_primitives.Hax.array_of_list 1 list)
            <:
            Core.Fmt.t_Arguments)
      in
      let f:Core.Fmt.t_Formatter = tmp0 in
      let hax_temp_output:Core.Result.t_Result Prims.unit Core.Fmt.t_Error = out in
      f, hax_temp_output
      <:
      (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error)
  }

/// Attaches the security requirements structure to the `SSL` object
/// through `ex_data`.
val impl_6__attach_security_requirements (self: Core.Pin.t_Pin t_Tunnel)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Attaches itself to the current BIO.
val impl_6__attach_to_bio (self: Core.Pin.t_Pin t_Tunnel)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
      Prims.l_True
      (fun _ -> Prims.l_True)

val impl_6__handshake (self: t_Tunnel)
    : Prims.Pure
      (t_Tunnel &
        Core.Result.t_Result
          (Sandwich.Tunnel.t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_HandshakeState)
          Sandwich.Error.t_Error) Prims.l_True (fun _ -> Prims.l_True)

val impl_6__state (self: t_Tunnel)
    : Prims.Pure (Sandwich.Tunnel.t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_State)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Updates the state of the tunnel.
/// This method must be called after any read or write operation.
val impl_6__update_state (self: t_Tunnel) : Prims.Pure t_Tunnel Prims.l_True (fun _ -> Prims.l_True)

val impl_6__close (self: t_Tunnel)
    : Prims.Pure
      (t_Tunnel &
        Core.Result.t_Result Prims.unit
          (Sandwich.Tunnel.t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))
      Prims.l_True
      (fun _ -> Prims.l_True)

val impl_6__read (self: t_Tunnel) (buf: t_Slice u8)
    : Prims.Pure
      (t_Slice u8 &
        (t_Tunnel &
          Core.Result.t_Result usize
            (Sandwich.Tunnel.t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError)))
      Prims.l_True
      (fun _ -> Prims.l_True)

val impl_6__write (self: t_Tunnel) (buf: t_Slice u8)
    : Prims.Pure
      (t_Tunnel &
        Core.Result.t_Result usize
          (Sandwich.Tunnel.t_ProtoStateErrorBase Sandwich_proto.Tunnel.t_RecordError))
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Returns the tunnel attached to the BIO.
val impl__Bio__get_tunnel (self: t_Bio)
    : Prims.Pure Rust_primitives.Hax.t_failure Prims.l_True (fun _ -> Prims.l_True)

/// Flushes data.
val impl__Bio__flush (self: t_Bio)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich_proto.Io.t_IOError)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Synchronizes the SSL state with the tunnel state.
val impl__Bio__synchronize_states (self: t_Bio) (tun: t_Tunnel)
    : Prims.Pure t_Tunnel Prims.l_True (fun _ -> Prims.l_True)

/// Reads data from the BIO.
val impl__Bio__read (self: t_Bio) (buffer: t_Slice u8)
    : Prims.Pure (Core.Result.t_Result usize Sandwich_proto.Io.t_IOError)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Writes data to the BIO.
val impl__Bio__write (self: t_Bio) (buffer: t_Slice u8)
    : Prims.Pure (Core.Result.t_Result usize Sandwich_proto.Io.t_IOError)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Tunnel builder.
/// This is a convenient aggregate of useful values to build a tunnel.
type t_TunnelBuilder = {
  f_ssl_ctx:t_Context;
  f_io:Sandwich.Tunnel.Io.t_BoxedIO;
  f_configuration:Sandwich_api_proto.Tunnel.t_TunnelConfiguration
}

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_4: Core.Fmt.t_Debug t_TunnelBuilder =
  {
    f_fmt_pre = (fun (self: t_TunnelBuilder) (f: Core.Fmt.t_Formatter) -> true);
    f_fmt_post
    =
    (fun
        (self: t_TunnelBuilder)
        (f: Core.Fmt.t_Formatter)
        (out1: (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error))
        ->
        true);
    f_fmt
    =
    fun (self: t_TunnelBuilder) (f: Core.Fmt.t_Formatter) ->
      let tmp0, out:(Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error) =
        Core.Fmt.impl_7__write_fmt f
          (Core.Fmt.impl_2__new_const (sz 1)
              (let list = ["OpenSSL3TunnelBuilder"] in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                Rust_primitives.Hax.array_of_list 1 list)
            <:
            Core.Fmt.t_Arguments)
      in
      let f:Core.Fmt.t_Formatter = tmp0 in
      let hax_temp_output:Core.Result.t_Result Prims.unit Core.Fmt.t_Error = out in
      f, hax_temp_output
      <:
      (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error)
  }

/// Prepares a tunnel structure.
val impl_5__prepare_ssl (self: t_TunnelBuilder)
    : Prims.Pure
      (Core.Result.t_Result (Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_st)
          Sandwich.Error.t_Error) Prims.l_True (fun _ -> Prims.l_True)

/// Builds a tunnel.
val impl_5__build (self: t_TunnelBuilder)
    : Prims.Pure
      (Core.Result.t_Result (Core.Pin.t_Pin (Alloc.Boxed.t_Box t_Tunnel Alloc.Alloc.t_Global))
          (Sandwich.Error.t_Error & Sandwich.Tunnel.Io.t_BoxedIO))
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Creates a new tunnel.
val impl_12__new_tunnel
      (self: t_Context)
      (io: Sandwich.Tunnel.Io.t_BoxedIO)
      (configuration: Sandwich_api_proto.Tunnel.t_TunnelConfiguration)
    : Prims.Pure
      (Core.Result.t_Result (Core.Pin.t_Pin (Alloc.Boxed.t_Box t_Tunnel Alloc.Alloc.t_Global))
          (Sandwich.Error.t_Error & Sandwich.Tunnel.Io.t_BoxedIO))
      Prims.l_True
      (fun _ -> Prims.l_True)

(* item error backend: (reject_RawOrMutPointer) ExplicitRejection { reason: "a node of kind [Raw_pointer] have been found in the AST" }
Last available AST for this item:

/// BIO control callback.
#[cfg(feature = "tunnel")]
#[cfg(feature = "openssl3")]
#[deny(bare_trait_objects)]
#[feature(register_tool)]
#[register_tool(_hax)]
fn bio_ctrl(bio: raw_pointer!(), cmd: int, larg: int, _pargs: raw_pointer!()) -> int {
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
                    &(sandwich::implementation::openssl3_impl::tunnel::impl__Bio__flush(
                        &(sandwich::implementation::openssl3_impl::tunnel::Bio(
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
       (Concrete_ident.Imported.TypeNs "implementation"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "openssl3_impl"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "tunnel"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.ValueNs "bio_ctrl"); disambiguator = 0 }
      ]
    };
  kind = Concrete_ident.Kind.Value }) */
const _: () = ();
 *)

(* item error backend: (reject_RawOrMutPointer) ExplicitRejection { reason: "a node of kind [Raw_pointer] have been found in the AST" }
Last available AST for this item:

/// BIO read callback.
#[cfg(feature = "tunnel")]
#[cfg(feature = "openssl3")]
#[deny(bare_trait_objects)]
#[feature(register_tool)]
#[register_tool(_hax)]
fn bio_read(
    bio: raw_pointer!(),
    data: raw_pointer!(),
    len: int,
    written: raw_pointer!(),
) -> int {
    {
        let bio: sandwich::implementation::openssl3_impl::tunnel::t_Bio = {
            sandwich::implementation::openssl3_impl::tunnel::Bio(
                core::ptr::non_null::impl_3__new_unchecked::<openssl3::t_bio_st>(bio),
            )
        };
        {
            let _: tuple0 = {
                sandwich::implementation::openssl3_impl::tunnel::impl__Bio__clear_retry_flag(
                    &(bio),
                )
            };
            {
                (match (sandwich::implementation::openssl3_impl::tunnel::impl__Bio__read(
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
                        sandwich::implementation::openssl3_impl::tunnel::bio_reflect_io_error::<
                            arrow!(tuple0 -> int),
                            arrow!(tuple0 -> int),
                            int,
                        >(
                            e,
                            (|_| {
                                {
                                    let _: tuple0 = {
                                        sandwich::implementation::openssl3_impl::tunnel::impl__Bio__set_retry_read_flag(
                                            &(bio),
                                        )
                                    };
                                    { 1 }
                                }
                            }),
                            (|_| {
                                {
                                    let _: tuple0 = {
                                        sandwich::implementation::openssl3_impl::tunnel::impl__Bio__declare_closed(
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
       (Concrete_ident.Imported.TypeNs "implementation"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "openssl3_impl"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "tunnel"); disambiguator = 0 };
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
fn bio_write(
    bio: raw_pointer!(),
    data: raw_pointer!(),
    len: int,
    written: raw_pointer!(),
) -> int {
    {
        let bio: sandwich::implementation::openssl3_impl::tunnel::t_Bio = {
            sandwich::implementation::openssl3_impl::tunnel::Bio(
                core::ptr::non_null::impl_3__new_unchecked::<openssl3::t_bio_st>(bio),
            )
        };
        {
            let _: tuple0 = {
                sandwich::implementation::openssl3_impl::tunnel::impl__Bio__clear_retry_flag(
                    &(bio),
                )
            };
            {
                (match (sandwich::implementation::openssl3_impl::tunnel::impl__Bio__write(
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
                        sandwich::implementation::openssl3_impl::tunnel::bio_reflect_io_error::<
                            arrow!(tuple0 -> int),
                            arrow!(tuple0 -> int),
                            int,
                        >(
                            e,
                            (|_| {
                                {
                                    let _: tuple0 = {
                                        sandwich::implementation::openssl3_impl::tunnel::impl__Bio__set_retry_write_flag(
                                            &(bio),
                                        )
                                    };
                                    { 1 }
                                }
                            }),
                            (|_| {
                                {
                                    let _: tuple0 = {
                                        sandwich::implementation::openssl3_impl::tunnel::impl__Bio__declare_closed(
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
       (Concrete_ident.Imported.TypeNs "implementation"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "openssl3_impl"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "tunnel"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.ValueNs "bio_write"); disambiguator = 0 }
      ]
    };
  kind = Concrete_ident.Kind.Value }) */
const _: () = ();
 *)

/// Static BIO method.
let v_BIO_METH_OBJECT: Openssl3.t_bio_method_st =
  {
    Openssl3.f_type___ = cast (Openssl3.v_BIO_TYPE_SOCKET <: u32) <: i32;
    Openssl3.f_name
    =
    Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
      "core::ptr::null_mut::<int>(Tuple0)";
    Openssl3.f_bwrite
    =
    Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
      "core::option::Option_Some(sandwich::implementation::openssl3_impl::tunnel::bio_write)";
    Openssl3.f_bwrite_old
    =
    Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
      "core::option::Option_None()";
    Openssl3.f_bread
    =
    Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
      "core::option::Option_Some(sandwich::implementation::openssl3_impl::tunnel::bio_read)";
    Openssl3.f_bread_old
    =
    Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
      "core::option::Option_None()";
    Openssl3.f_bputs
    =
    Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
      "core::option::Option_None()";
    Openssl3.f_bgets
    =
    Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
      "core::option::Option_None()";
    Openssl3.f_ctrl
    =
    Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
      "core::option::Option_Some(sandwich::implementation::openssl3_impl::tunnel::bio_ctrl)";
    Openssl3.f_create
    =
    Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
      "core::option::Option_Some(\n        sandwich::implementation::openssl3_impl::tunnel::bio_create,\n    )"
    ;
    Openssl3.f_destroy
    =
    Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
      "core::option::Option_Some(\n        sandwich::implementation::openssl3_impl::tunnel::bio_destroy,\n    )"
    ;
    Openssl3.f_callback_ctrl
    =
    Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
      "core::option::Option_None()";
    Openssl3.f_brecvmmsg
    =
    Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
      "core::option::Option_None()";
    Openssl3.f_bsendmmsg
    =
    Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
      "core::option::Option_None()"
  }
  <:
  Openssl3.t_bio_method_st
