module Openssl3
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let v_X509_V_ERR_CERT_HAS_EXPIRED: u32 = Rust_primitives.Hax.dropped_body
