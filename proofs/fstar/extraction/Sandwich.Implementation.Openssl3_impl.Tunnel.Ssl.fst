module Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

include Sandwich.Tunnel.Cyclic_bundle_473584177 {t_Ssl as t_Ssl}

include Sandwich.Tunnel.Cyclic_bundle_473584177 {_0 as _0}

include Sandwich.Tunnel.Cyclic_bundle_473584177 {t_TunnelBuilder as t_TunnelBuilder}

include Sandwich.Tunnel.Cyclic_bundle_473584177 {f_ssl_ctx as f_ssl_ctx}

include Sandwich.Tunnel.Cyclic_bundle_473584177 {f_io as f_io}

include Sandwich.Tunnel.Cyclic_bundle_473584177 {f_configuration as f_configuration}

include Sandwich.Tunnel.Cyclic_bundle_473584177 {create_and_attach_bio as impl__Ssl__create_and_attach_bio}

include Sandwich.Tunnel.Cyclic_bundle_473584177 {set_server_name_indication as impl__Ssl__set_server_name_indication}

include Sandwich.Tunnel.Cyclic_bundle_473584177 {verify_tunnel_verifier as verify_tunnel_verifier}

include Sandwich.Tunnel.Cyclic_bundle_473584177 {attach_security_requirements as impl_6__attach_security_requirements}

include Sandwich.Tunnel.Cyclic_bundle_473584177 {attach_to_bio as impl_6__attach_to_bio}

include Sandwich.Tunnel.Cyclic_bundle_473584177 {set_subject_alternative_names as impl__Ssl__set_subject_alternative_names}

include Sandwich.Tunnel.Cyclic_bundle_473584177 {prepare_ssl as impl_5__prepare_ssl}

include Sandwich.Tunnel.Cyclic_bundle_473584177 {build as impl_5__build}
