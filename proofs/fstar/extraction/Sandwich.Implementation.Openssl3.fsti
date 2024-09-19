module Sandwich.Implementation.Openssl3
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_1: Core.Default.t_Default t_ProviderBuilder =
  {
    f_default_pre = (fun (_: Prims.unit) -> true);
    f_default_post = (fun (_: Prims.unit) (out: t_ProviderBuilder) -> true);
    f_default = fun (_: Prims.unit) -> impl__ProviderBuilder__new ()
  }

/// The default provider name.
let v_DEFAULT_PROVIDER_NAME: t_Array u8 (sz 8) =
  let list = [100uy; 101uy; 102uy; 97uy; 117uy; 108uy; 116uy; 0uy] in
  FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 8);
  Rust_primitives.Hax.array_of_list 8 list

/// The oqs-provider provider name.
let v_OQS_PROVIDER_NAME: t_Array u8 (sz 12) =
  let list = [111uy; 113uy; 115uy; 112uy; 114uy; 111uy; 118uy; 105uy; 100uy; 101uy; 114uy; 0uy] in
  FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 12);
  Rust_primitives.Hax.array_of_list 12 list

/// A wrapper around an `OSSL_PROVIDER`.
type t_Provider =
  | Provider : Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ossl_provider_st -> t_Provider

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl: Core.Fmt.t_Debug t_Provider =
  {
    f_fmt_pre = (fun (self: t_Provider) (f: Core.Fmt.t_Formatter) -> true);
    f_fmt_post
    =
    (fun
        (self: t_Provider)
        (f: Core.Fmt.t_Formatter)
        (out1: (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error))
        ->
        true);
    f_fmt
    =
    fun (self: t_Provider) (f: Core.Fmt.t_Formatter) ->
      let tmp0, out:(Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error) =
        Core.Fmt.impl_7__write_fmt f
          (Core.Fmt.impl_2__new_v1 (sz 1)
              (sz 1)
              (let list = ["Provider("] in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                Rust_primitives.Hax.array_of_list 1 list)
              (let list =
                  [
                    Rust_primitives.Hax.failure "(reject_RawOrMutPointer) ExplicitRejection { reason: \"a node of kind [Raw_pointer] have been found in the AST\" }"
                      "core::fmt::rt::impl_1__new_pointer::<\n        lifetime!(something),\n        raw_pointer!(),\n    >(\n        &(deref(\n            &(core::ptr::non_null::impl_3__as_ptr::<\n                openssl3::t_ossl_provider_st,\n            >(\n                sandwich::support::pimpl::impl_2__as_nonnull::<\n                    lifetime!(something),\n                    openssl3::t_ossl_provider_st,\n                >(&(proj_sandwich::implementation::openssl3::_0(deref(self)))),\n            )),\n        )),\n    )"

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

/// An `OSSL_LIB_CTX` object wrapped in a `Pimpl`.
type t_LibCtx = {
  f__oqs_provider:t_Provider;
  f__default_provider:t_Provider;
  f_lib_ctx:Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ossl_lib_ctx_st
}
