module Sandwich.Implementation.Openssl3_impl.Tunnel
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

/// Tunnel context.
type t_Context = {
  f__lib_ctx:Sandwich.Implementation.Openssl3_impl.t_LibCtx;
  f_ssl_ctx:Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_ctx_st;
  f_security_requirements:Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements;
  f_mode:Sandwich.Tunnel.Context.t_Mode
}

/// A tunnel, wrapper around a SSL object.
type t_Tunnel = {
  f__ssl_ctx:t_Context;
  f_ssl:Sandwich.Support.Pimpl.t_Pimpl Openssl3.t_ssl_st;
  f_security_requirements:Sandwich.Tunnel.Tls.t_TunnelSecurityRequirements;
  f_io:Sandwich.Tunnel.Io.t_BoxedIO;
  f_state:Sandwich_proto.Tunnel.t_State
}
