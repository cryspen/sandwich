module Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

include Sandwich.Tunnel.Rec_bundle_473346641 {t_Ssl as t_Ssl}

include Sandwich.Tunnel.Rec_bundle_473346641 {_0 as _0}

include Sandwich.Tunnel.Rec_bundle_473346641 {t_TunnelBuilder as t_TunnelBuilder}

include Sandwich.Tunnel.Rec_bundle_473346641 {f_ssl_ctx as f_ssl_ctx}

include Sandwich.Tunnel.Rec_bundle_473346641 {f_io as f_io}

include Sandwich.Tunnel.Rec_bundle_473346641 {f_configuration as f_configuration}

include Sandwich.Tunnel.Rec_bundle_473346641 {create_and_attach_bio as impl__Ssl__create_and_attach_bio}

include Sandwich.Tunnel.Rec_bundle_473346641 {set_server_name_indication as impl__Ssl__set_server_name_indication}

include Sandwich.Tunnel.Rec_bundle_473346641 {set_subject_alternative_names as impl__Ssl__set_subject_alternative_names}

include Sandwich.Tunnel.Rec_bundle_473346641 {verify_tunnel_verifier as verify_tunnel_verifier}

include Sandwich.Tunnel.Rec_bundle_473346641 {prepare_ssl as impl_4__prepare_ssl}

include Sandwich.Tunnel.Rec_bundle_473346641 {attach_security_requirements as impl_6__attach_security_requirements}

include Sandwich.Tunnel.Rec_bundle_473346641 {attach_to_bio as impl_6__attach_to_bio}

include Sandwich.Tunnel.Rec_bundle_473346641 {build as impl_4__build}
