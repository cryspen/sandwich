module Sandwich.Tunnel
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

include Sandwich.Tunnel.Cyclic_bundle_473584177 {t_Tunnel_70284935 as t_Tunnel}

include Sandwich.Tunnel.Cyclic_bundle_473584177 {Tunnel_70284935_OpenSSL3 as Tunnel_OpenSSL3}
