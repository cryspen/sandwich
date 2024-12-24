module Sandwich.Implementation.Openssl3_impl.Tunnel
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

include Sandwich.Tunnel.Cyclic_bundle_473584177 {t_Context_116464909 as t_Context}

include Sandwich.Tunnel.Cyclic_bundle_473584177 {f__lib_ctx as f__lib_ctx}

include Sandwich.Tunnel.Cyclic_bundle_473584177 {f_ssl_ctx as f_ssl_ctx}

include Sandwich.Tunnel.Cyclic_bundle_473584177 {f_security_requirements as f_security_requirements}

include Sandwich.Tunnel.Cyclic_bundle_473584177 {f_mode as f_mode}

include Sandwich.Tunnel.Cyclic_bundle_473584177 {t_Tunnel_364847772 as t_Tunnel}

include Sandwich.Tunnel.Cyclic_bundle_473584177 {f__ssl_ctx as f__ssl_ctx}

include Sandwich.Tunnel.Cyclic_bundle_473584177 {f_ssl as f_ssl}

include Sandwich.Tunnel.Cyclic_bundle_473584177 {f_security_requirements as f_security_requirements}

include Sandwich.Tunnel.Cyclic_bundle_473584177 {f_io as f_io}

include Sandwich.Tunnel.Cyclic_bundle_473584177 {f_state as f_state}
