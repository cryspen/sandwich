module Openssl3
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

val v_X509_V_ERR_CERT_HAS_EXPIRED: u32
