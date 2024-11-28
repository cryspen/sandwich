module Sandwich.Implementation.Openssl3_impl
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

/// A wrapper around an `OSSL_PROVIDER`.
type t_Provider =
  | Provider : Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ossl_provider_st -> t_Provider

/// An `OSSL_LIB_CTX` object wrapped in a `Pimpl`.
type t_LibCtx = {
  f__oqs_provider:t_Provider;
  f__default_provider:t_Provider;
  f_lib_ctx:Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ossl_lib_ctx_st
}
