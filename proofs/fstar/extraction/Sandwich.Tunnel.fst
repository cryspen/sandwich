module Sandwich.Tunnel
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

include Sandwich.Tunnel.Rec_bundle_850592272 {t_Tunnel70284935 as t_Tunnel}

include Sandwich.Tunnel.Rec_bundle_850592272 {Tunnel70284935_OpenSSL3 as Tunnel_OpenSSL3}
