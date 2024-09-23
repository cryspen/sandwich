module Sandwich.Implementation.Openssl3_impl.Tunnel.Bio_method
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Sandwich_proto.Tunnel in
  ()

let v_BIO_METHOD: Core.Ptr.Non_null.t_NonNull Openssl3.t_bio_method_st =
  Rust_primitives.Hax.failure "(AST import) Unsafe blocks are not allowed."
    "{ Types.attributes = [];\n  contents =\n  Types.Block {\n    expr =\n    (Some { Types.attributes = [];\n            contents =\n            Types.Call {\n              args =\n              [{ Types.attributes = [];\n                 contents =\n                 Types.Call {\n                   args =\n                   [{ Types.attributes = [];\n                      contents =\n                      Types.Use {\n                        source =\n                        { Types.attributes = [];\n                          contents =\n                          Types.AddressOf {\n                            arg =\n                            { Types.attributes = [];\n                              contents =\n                              Types.Deref {\n                                arg =\n                                { Types.attributes = [];\n                                  contents =\n                                  Types.Borrow {\n                                    arg =\n                                    { Types.attributes = [];\n                                      contents =\n                                      Types.NamedConst {args = [];\n                                        def_id =\n                                        { Types.index = (0, 192);\n                                          krate = \"sandwich\";\n                                          path =\n                                          [{ Types.data =\n                                             (Types.TypeNs \"implementation\");\n                                             disambiguator = 0 };\n                                            { Types.data =\n                                              (Types.TypeNs \"openssl3_impl\");\n                                              disambiguator = 0 };\n                                            { Types.data =\n                                              (Types.TypeNs \"tunnel\");\n                                              disambiguator = 0 };\n                                            { Types.data =\n                                              (Types.TypeNs \"bio_method\");\n                                              disambiguator = 0 };\n                                            { Types.data =\n                                              (Types.ValueNs\n                                                 \"BIO_METH_OBJECT\");\n                                              disambiguator = 0 }\n                                            ]\n                                          };\n                                        impl = None; user_ty = None};\n                                      hir_id = (Some (\"193\", \"16\"));\n                                      span =\n                                      { Types.filename =\n                                        (Types.Real\n                                           (Types.LocalPath\n                                              \"rust/implementation/openssl3_impl/tunnel/bio_method.rs\"));\n                                        hi =\n                                        { Types.col = \"53\"; line = \"259\" };\n                                        lo =\n                                        { Types.col = \"38\"; line = \"259\" } };\n                                      ty =\n                                      Types.Adt {\n                                        def_id =\n                                        { Types.index = (27, 23380);\n                                          krate = \"openssl3\";\n                                          path =\n                                          [{ Types.data =\n                                             (Types.TypeNs \"bio_method_st\");\n                                             disambiguator = 0 }\n                                            ]\n                                          };\n                                        generic_args = []; trait_refs = []}\n                                      };\n                                    borrow_kind = Types.Shared};\n                                  hir_id = None;\n                                  span =\n                                  { Types.filename =\n                                    (Types.Real\n                                       (Types.LocalPath\n                                          \"rust/implementation/openssl3_impl/tunnel/bio_method.rs\"));\n                                    hi = { Types.col = \"53\"; line = \"259\" };\n                                    lo = { Types.col = \"37\"; line = \"259\" } };\n                                  ty =\n                                  (Types.Ref\n                                     ({ Types.kind = Types.ReErased },\n                                      Types.Adt {\n                                        def_id =\n                                        { Types.index = (27, 23380);\n                                          krate = \"openssl3\";\n                                          path =\n                                          [{ Types.data =\n                                             (Types.TypeNs \"bio_method_st\");\n                                             disambiguator = 0 }\n                                            ]\n                                          };\n                                        generic_args = []; trait_refs = []},\n                                      false))\n                                  }};\n                              hir_id = None;\n                              span =\n                              { Types.filename =\n                                (Types.Real\n                                   (Types.LocalPath\n                                      \"rust/implementation/openssl3_impl/tunnel/bio_method.rs\"));\n                                hi = { Types.col = \"53\"; line = \"259\" };\n                                lo = { Types.col = \"37\"; line = \"259\" } };\n                              ty =\n                              Types.Adt {\n                                def_id =\n                                { Types.index = (27, 23380);\n                                  krate = \"openssl3\";\n                                  path =\n                                  [{ Types.data =\n                                     (Types.TypeNs \"bio_method_st\");\n                                     disambiguator = 0 }\n                                    ]\n                                  };\n                                generic_args = []; trait_refs = []}\n                              };\n                            mutability = false};\n                          hir_id = (Some (\"193\", \"15\"));\n                          span =\n                          { Types.filename =\n                            (Types.Real\n                               (Types.LocalPath\n                                  \"rust/implementation/openssl3_impl/tunnel/bio_method.rs\"));\n                            hi = { Types.col = \"53\"; line = \"259\" };\n                            lo = { Types.col = \"37\"; line = \"259\" } };\n                          ty =\n                          (Types.RawPtr\n                             (Types.Adt {\n                                def_id =\n                                { Types.index = (27, 23380);\n                                  krate = \"openssl3\";\n                                  path =\n                                  [{ Types.data =\n                                     (Types.TypeNs \"bio_method_st\");\n                                     disambiguator = 0 }\n                                    ]\n                                  };\n                                generic_args = []; trait_refs = []},\n                              false))\n                          }};\n                      hir_id = (Some (\"193\", \"14\"));\n                      span =\n                      { Types.filename =\n                        (Types.Real\n                           (Types.LocalPath\n                              \"rust/implementation/openssl3_impl/tunnel/bio_method.rs\"));\n                        hi = { Types.col = \"85\"; line = \"259\" };\n                        lo = { Types.col = \"36\"; line = \"259\" } };\n                      ty =\n                      (Types.RawPtr\n                         (Types.Adt {\n                            def_id =\n                            { Types.index = (27, 23380); krate = \"openssl3\";\n                              path =\n                              [{ Types.data = (Types.TypeNs \"bio_method_st\");\n                                 disambiguator = 0 }\n                                ]\n                              };\n                            generic_args = []; trait_refs = []},\n                          false))\n                      }\n                     ];\n                   bounds_impls = [];\n                   fn_span =\n                   { Types.filename =\n                     (Types.Real\n                        (Types.LocalPath\n                           \"rust/implementation/openssl3_impl/tunnel/bio_method.rs\"));\n                     hi = { Types.col = \"96\"; line = \"259\" };\n                     lo = { Types.col = \"86\"; line = \"259\" } };\n                   from_hir_call = true;\n                   fun' =\n                   { Types.attributes = [];\n                     contents =\n                     Types.GlobalName {\n                       id =\n                       { Types.index = (2, 2408); krate = \"core\";\n                         path =\n                         [{ Types.data = (Types.TypeNs \"ptr\");\n                            disambiguator = 0 };\n                           { Types.data = (Types.TypeNs \"const_ptr\");\n                             disambiguator = 0 };\n                           { Types.data = Types.Impl; disambiguator = 0 };\n                           { Types.data = (Types.ValueNs \"cast_mut\");\n                             disambiguator = 0 }\n                           ]\n                         }};\n                     hir_id = None;\n                     span =\n                     { Types.filename =\n                       (Types.Real\n                          (Types.LocalPath\n                             \"rust/implementation/openssl3_impl/tunnel/bio_method.rs\"));\n                       hi = { Types.col = \"94\"; line = \"259\" };\n                       lo = { Types.col = \"86\"; line = \"259\" } };\n                     ty =\n                     (Types.Arrow\n                        { Types.bound_vars = [];\n                          value =\n                          { Types.abi = Types.Abi {todo = \"Rust\"};\n                            c_variadic = false;\n                            inputs =\n                            [(Types.RawPtr\n                                (Types.Adt {\n                                   def_id =\n                                   { Types.index = (27, 23380);\n                                     krate = \"openssl3\";\n                                     path =\n                                     [{ Types.data =\n                                        (Types.TypeNs \"bio_method_st\");\n                                        disambiguator = 0 }\n                                       ]\n                                     };\n                                   generic_args = []; trait_refs = []},\n                                 false))\n                              ];\n                            output =\n                            (Types.RawPtr\n                               (Types.Adt {\n                                  def_id =\n                                  { Types.index = (27, 23380);\n                                    krate = \"openssl3\";\n                                    path =\n                                    [{ Types.data =\n                                       (Types.TypeNs \"bio_method_st\");\n                                       disambiguator = 0 }\n                                      ]\n                                    };\n                                  generic_args = []; trait_refs = []},\n                                true));\n                            safety = Types.Safe }\n                          })\n                     };\n                   generic_args =\n                   [(Types.Type\n                       Types.Adt {\n                         def_id =\n                         { Types.index = (27, 23380); krate = \"openssl3\";\n                           path =\n                           [{ Types.data = (Types.TypeNs \"bio_method_st\");\n                              disambiguator = 0 }\n                             ]\n                           };\n                         generic_args = []; trait_refs = []})\n                     ];\n                   trait = None;\n                   ty =\n                   (Types.Arrow\n                      { Types.bound_vars = [];\n                        value =\n                        { Types.abi = Types.Abi {todo = \"Rust\"};\n                          c_variadic = false;\n                          inputs =\n                          [(Types.RawPtr\n                              (Types.Adt {\n                                 def_id =\n                                 { Types.index = (27, 23380);\n                                   krate = \"openssl3\";\n                                   path =\n                                   [{ Types.data =\n                                      (Types.TypeNs \"bio_method_st\");\n                                      disambiguator = 0 }\n                                     ]\n                                   };\n                                 generic_args = []; trait_refs = []},\n                               false))\n                            ];\n                          output =\n                          (Types.RawPtr\n                             (Types.Adt {\n                                def_id =\n                                { Types.index = (27, 23380);\n                                  krate = \"openssl3\";\n                                  path =\n                                  [{ Types.data =\n                                     (Types.TypeNs \"bio_method_st\");\n                                     disambiguator = 0 }\n                                    ]\n                                  };\n                                generic_args = []; trait_refs = []},\n                              true));\n                          safety = Types.Safe }\n                        })};\n                 hir_id = (Some (\"193\", \"12\"));\n                 span =\n                 { Types.filename =\n                   (Types.Real\n                      (Types.LocalPath\n                         \"rust/implementation/openssl3_impl/tunnel/bio_method.rs\"));\n                   hi = { Types.col = \"96\"; line = \"259\" };\n                   lo = { Types.col = \"36\"; line = \"259\" } };\n                 ty =\n                 (Types.RawPtr\n                    (Types.Adt {\n                       def_id =\n                       { Types.index = (27, 23380); krate = \"openssl3\";\n                         path =\n                         [{ Types.data = (Types.TypeNs \"bio_method_st\");\n                            disambiguator = 0 }\n                           ]\n                         };\n                       generic_args = []; trait_refs = []},\n                     true))\n                 }\n                ];\n              bounds_impls = [];\n              fn_span =\n              { Types.filename =\n                (Types.Real\n                   (Types.LocalPath\n                      \"rust/implementation/openssl3_impl/tunnel/bio_method.rs\"));\n                hi = { Types.col = \"97\"; line = \"259\" };\n                lo = { Types.col = \"13\"; line = \"259\" } };\n              from_hir_call = true;\n              fun' =\n              { Types.attributes = [];\n                contents =\n                Types.GlobalName {\n                  id =\n                  { Types.index = (2, 2238); krate = \"core\";\n                    path =\n                    [{ Types.data = (Types.TypeNs \"ptr\"); disambiguator = 0 };\n                      { Types.data = (Types.TypeNs \"non_null\");\n                        disambiguator = 0 };\n                      { Types.data = Types.Impl; disambiguator = 3 };\n                      { Types.data = (Types.ValueNs \"new_unchecked\");\n                        disambiguator = 0 }\n                      ]\n                    }};\n                hir_id = None;\n                span =\n                { Types.filename =\n                  (Types.Real\n                     (Types.LocalPath\n                        \"rust/implementation/openssl3_impl/tunnel/bio_method.rs\"));\n                  hi = { Types.col = \"35\"; line = \"259\" };\n                  lo = { Types.col = \"13\"; line = \"259\" } };\n                ty =\n                (Types.Arrow\n                   { Types.bound_vars = [];\n                     value =\n                     { Types.abi = Types.Abi {todo = \"Rust\"};\n                       c_variadic = false;\n                       inputs =\n                       [(Types.RawPtr\n                           (Types.Adt {\n                              def_id =\n                              { Types.index = (27, 23380);\n                                krate = \"openssl3\";\n                                path =\n                                [{ Types.data =\n                                   (Types.TypeNs \"bio_method_st\");\n                                   disambiguator = 0 }\n                                  ]\n                                };\n                              generic_args = []; trait_refs = []},\n                            true))\n                         ];\n                       output =\n                       Types.Adt {\n                         def_id =\n                         { Types.index = (2, 2222); krate = \"core\";\n                           path =\n                           [{ Types.data = (Types.TypeNs \"ptr\");\n                              disambiguator = 0 };\n                             { Types.data = (Types.TypeNs \"non_null\");\n                               disambiguator = 0 };\n                             { Types.data = (Types.TypeNs \"NonNull\");\n                               disambiguator = 0 }\n                             ]\n                           };\n                         generic_args =\n                         [(Types.Type\n                             Types.Adt {\n                               def_id =\n                               { Types.index = (27, 23380);\n                                 krate = \"openssl3\";\n                                 path =\n                                 [{ Types.data =\n                                    (Types.TypeNs \"bio_method_st\");\n                                    disambiguator = 0 }\n                                   ]\n                                 };\n                               generic_args = []; trait_refs = []})\n                           ];\n                         trait_refs = []};\n                       safety = Types.Unsafe }\n                     })\n                };\n              generic_args =\n              [(Types.Type\n                  Types.Adt {\n                    def_id =\n                    { Types.index = (27, 23380); krate = \"openssl3\";\n                      path =\n                      [{ Types.data = (Types.TypeNs \"bio_method_st\");\n                         disambiguator = 0 }\n                        ]\n                      };\n                    generic_args = []; trait_refs = []})\n                ];\n              trait = None;\n              ty =\n              (Types.Arrow\n                 { Types.bound_vars = [];\n                   value =\n                   { Types.abi = Types.Abi {todo = \"Rust\"};\n                     c_variadic = false;\n                     inputs =\n                     [(Types.RawPtr\n                         (Types.Adt {\n                            def_id =\n                            { Types.index = (27, 23380); krate = \"openssl3\";\n                              path =\n                              [{ Types.data = (Types.TypeNs \"bio_method_st\");\n                                 disambiguator = 0 }\n                                ]\n                              };\n                            generic_args = []; trait_refs = []},\n                          true))\n                       ];\n                     output =\n                     Types.Adt {\n                       def_id =\n                       { Types.index = (2, 2222); krate = \"core\";\n                         path =\n                         [{ Types.data = (Types.TypeNs \"ptr\");\n                            disambiguator = 0 };\n                           { Types.data = (Types.TypeNs \"non_null\");\n                             disambiguator = 0 };\n                           { Types.data = (Types.TypeNs \"NonNull\");\n                             disambiguator = 0 }\n                           ]\n                         };\n                       generic_args =\n                       [(Types.Type\n                           Types.Adt {\n                             def_id =\n                             { Types.index = (27, 23380); krate = \"openssl3\";\n                               path =\n                               [{ Types.data = (Types.TypeNs \"bio_method_st\");\n                                  disambiguator = 0 }\n                                 ]\n                               };\n                             generic_args = []; trait_refs = []})\n                         ];\n                       trait_refs = []};\n                     safety = Types.Unsafe }\n                   })};\n            hir_id = (Some (\"193\", \"7\"));\n            span =\n            { Types.filename =\n              (Types.Real\n                 (Types.LocalPath\n                    \"rust/implementation/openssl3_impl/tunnel/bio_method.rs\"));\n              hi = { Types.col = \"97\"; line = \"259\" };\n              lo = { Types.col = \"13\"; line = \"259\" } };\n            ty =\n            Types.Adt {\n              def_id =\n              { Types.index = (2, 2222); krate = \"core\";\n                path =\n                [{ Types.data = (Types.TypeNs \"ptr\"); disambiguator = 0 };\n                  { Types.data = (Types.TypeNs \"non_null\"); disambiguator = 0\n                    };\n                  { Types.data = (Types.TypeNs \"NonNull\"); disambiguator = 0\n                    }\n                  ]\n                };\n              generic_args =\n              [(Types.Type\n                  Types.Adt {\n                    def_id =\n                    { Types.index = (27, 23380); krate = \"openssl3\";\n                      path =\n                      [{ Types.data = (Types.TypeNs \"bio_method_st\");\n                         disambiguator = 0 }\n                        ]\n                      };\n                    generic_args = []; trait_refs = []})\n                ];\n              trait_refs = []}\n            });\n    region_scope = { Types.data = Types.Node; id = \"22\" };\n    safety_mode = Types.ExplicitUnsafe;\n    span =\n    { Types.filename =\n      (Types.Real\n         (Types.LocalPath\n            \"rust/implementation/openssl3_impl/tunnel/bio_method.rs\"));\n      hi = { Types.col = \"99\"; line = \"259\" };\n      lo = { Types.col = \"4\"; line = \"259\" } };\n    stmts = []; targeted_by_break = false};\n  hir_id = (Some (\"193\", \"6\"));\n  span =\n  { Types.filename =\n    (Types.Real\n       (Types.LocalPath\n          \"rust/implementation/openssl3_impl/tunnel/bio_method.rs\"));\n    hi = { Types.col = \"99\"; line = \"259\" };\n    lo = { Types.col = \"4\"; line = \"259\" } };\n  ty =\n  Types.Adt {\n    def_id =\n    { Types.index = (2, 2222); krate = \"core\";\n      path =\n      [{ Types.data = (Types.TypeNs \"ptr\"); disambiguator = 0 };\n        { Types.data = (Types.TypeNs \"non_null\"); disambiguator = 0 };\n        { Types.data = (Types.TypeNs \"NonNull\"); disambiguator = 0 }]\n      };\n    generic_args =\n    [(Types.Type\n        Types.Adt {\n          def_id =\n          { Types.index = (27, 23380); krate = \"openssl3\";\n            path =\n            [{ Types.data = (Types.TypeNs \"bio_method_st\"); disambiguator = 0\n               }\n              ]\n            };\n          generic_args = []; trait_refs = []})\n      ];\n    trait_refs = []}\n  }"

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
        (Concrete_ident.Imported.TypeNs "bio_method"); disambiguator = 0 };
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
        (Concrete_ident.Imported.TypeNs "bio_method"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.ValueNs "bio_destroy"); disambiguator = 0 }
      ]
    };
  kind = Concrete_ident.Kind.Value }) */
const _: () = ();
 *)

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
let impl: Core.Fmt.t_Debug t_Bio =
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
                      "core::fmt::rt::impl_1__new_pointer::<\n        lifetime!(something),\n        raw_pointer!(),\n    >(\n        &(deref(\n            &(core::ptr::non_null::impl_3__as_ptr::<\n                openssl3::t_bio_st,\n            >(\n                proj_sandwich::implementation::openssl3_impl::tunnel::bio_method::_0(\n                    deref(self),\n                ),\n            )),\n        )),\n    )"

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

/// Returns the tunnel attached to the BIO.
val impl__Bio__get_tunnel (self: t_Bio)
    : Prims.Pure Rust_primitives.Hax.t_failure Prims.l_True (fun _ -> Prims.l_True)

/// Flushes data.
val impl__Bio__flush (self: t_Bio)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich_proto.Io.t_IOError)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Synchronizes the SSL state with the tunnel state.
val impl__Bio__synchronize_states
      (self: t_Bio)
      (tun: Sandwich.Implementation.Openssl3_impl.Tunnel.t_Tunnel)
    : Prims.Pure Sandwich.Implementation.Openssl3_impl.Tunnel.t_Tunnel
      Prims.l_True
      (fun _ -> Prims.l_True)

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
       (Concrete_ident.Imported.TypeNs "implementation"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "openssl3_impl"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "tunnel"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "bio_method"); disambiguator = 0 };
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
       (Concrete_ident.Imported.TypeNs "implementation"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "openssl3_impl"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "tunnel"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "bio_method"); disambiguator = 0 };
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
       (Concrete_ident.Imported.TypeNs "implementation"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "openssl3_impl"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "tunnel"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "bio_method"); disambiguator = 0 };
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
      "core::option::Option_Some(\n        sandwich::implementation::openssl3_impl::tunnel::bio_method::bio_write,\n    )"
    ;
    Openssl3.f_bwrite_old
    =
    Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
      "core::option::Option_None()";
    Openssl3.f_bread
    =
    Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
      "core::option::Option_Some(\n        sandwich::implementation::openssl3_impl::tunnel::bio_method::bio_read,\n    )"
    ;
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
      "core::option::Option_Some(\n        sandwich::implementation::openssl3_impl::tunnel::bio_method::bio_ctrl,\n    )"
    ;
    Openssl3.f_create
    =
    Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
      "core::option::Option_Some(\n        sandwich::implementation::openssl3_impl::tunnel::bio_method::bio_create,\n    )"
    ;
    Openssl3.f_destroy
    =
    Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
      "core::option::Option_Some(\n        sandwich::implementation::openssl3_impl::tunnel::bio_method::bio_destroy,\n    )"
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
