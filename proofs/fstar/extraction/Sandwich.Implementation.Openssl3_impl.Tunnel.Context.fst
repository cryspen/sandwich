module Sandwich.Implementation.Openssl3_impl.Tunnel.Context
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

include Sandwich.Tunnel.Rec_bundle_818341900 {t_SslContext as t_SslContext}

include Sandwich.Tunnel.Rec_bundle_818341900 {_0 as _0}

include Sandwich.Tunnel.Rec_bundle_818341900 {impl_1 as impl_1}

include Sandwich.Tunnel.Rec_bundle_818341900 {security_requirements as impl_4__security_requirements}

include Sandwich.Tunnel.Rec_bundle_818341900 {set_verify_mode as impl__SslContext__set_verify_mode}

include Sandwich.Tunnel.Rec_bundle_818341900 {get_verify_mode_from_mode_and_x509_verifier as get_verify_mode_from_mode_and_x509_verifier}

include Sandwich.Tunnel.Rec_bundle_818341900 {new_ssl as impl_4__new_ssl}

include Sandwich.Tunnel.Rec_bundle_818341900 {configure_tls12 as impl__SslContext__configure_tls12}

include Sandwich.Tunnel.Rec_bundle_818341900 {configure_tls13 as impl__SslContext__configure_tls13}

include Sandwich.Tunnel.Rec_bundle_818341900 {fill_certificate_trust_store as impl__SslContext__fill_certificate_trust_store}

include Sandwich.Tunnel.Rec_bundle_818341900 {fill_certificate_trust_store_with_default_cas as impl__SslContext__fill_certificate_trust_store_with_default_cas}

include Sandwich.Tunnel.Rec_bundle_818341900 {set_alpn_protocols as impl__SslContext__set_alpn_protocols}

include Sandwich.Tunnel.Rec_bundle_818341900 {set_default_parameters as impl__SslContext__set_default_parameters}

include Sandwich.Tunnel.Rec_bundle_818341900 {set_identity as impl__SslContext__set_identity}

include Sandwich.Tunnel.Rec_bundle_818341900 {set_min_and_max_tls_version as impl__SslContext__set_min_and_max_tls_version}

include Sandwich.Tunnel.Rec_bundle_818341900 {set_trust as impl__SslContext__set_trust}

include Sandwich.Tunnel.Rec_bundle_818341900 {new_ssl_context as new_ssl_context}

include Sandwich.Tunnel.Rec_bundle_818341900 {try_from as impl_4__try_from}

include Sandwich.Tunnel.Rec_bundle_818341900 {hax_try_from as hax_try_from}

include Sandwich.Tunnel.Rec_bundle_818341900 {new_tunnel474967037 as impl_4__new_tunnel}
