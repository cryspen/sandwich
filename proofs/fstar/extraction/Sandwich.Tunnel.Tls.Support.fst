module Sandwich.Tunnel.Tls.Support
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

include Sandwich.Tunnel.Rec_bundle_522409734 {configuration_get_mode_and_options as configuration_get_mode_and_options}

include Sandwich.Tunnel.Rec_bundle_522409734 {tls_options_get_x509_verifier as tls_options_get_x509_verifier}

include Sandwich.Tunnel.Rec_bundle_522409734 {x509_verifier_verify_emptiness as x509_verifier_verify_emptiness}
