module Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

include Sandwich.Tunnel.Rec_bundle_522409734 {t_TunnelBuilder as t_TunnelBuilder}

include Sandwich.Tunnel.Rec_bundle_522409734 {f_ssl_ctx as f_ssl_ctx}

include Sandwich.Tunnel.Rec_bundle_522409734 {f_io as f_io}

include Sandwich.Tunnel.Rec_bundle_522409734 {f_configuration as f_configuration}

include Sandwich.Tunnel.Rec_bundle_522409734 {build as impl_5__build}
