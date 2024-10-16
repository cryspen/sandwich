module Sandwich.Implementation.Openssl3_impl.Tunnel.Ssl
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

include Sandwich.Tunnel.Rec_bundle_473063542 {v_DUMMY803831618 as v_DUMMY}

include Sandwich.Tunnel.Rec_bundle_473063542 {v_DUMMY427844938 as v_DUMMY}

include Sandwich.Tunnel.Rec_bundle_473063542 {v_DUMMY1015042915 as v_DUMMY}

include Sandwich.Tunnel.Rec_bundle_473063542 {v_DUMMY98737894 as v_DUMMY}

include Sandwich.Tunnel.Rec_bundle_473063542 {v_DUMMY903324937 as v_DUMMY}

include Sandwich.Tunnel.Rec_bundle_473063542 {v_DUMMY1007575678 as v_DUMMY}

include Sandwich.Tunnel.Rec_bundle_473063542 {v_DUMMY887946182 as v_DUMMY}

include Sandwich.Tunnel.Rec_bundle_473063542 {v_DUMMY214547661 as v_DUMMY}

include Sandwich.Tunnel.Rec_bundle_473063542 {v_DUMMY641918590 as v_DUMMY}

include Sandwich.Tunnel.Rec_bundle_473063542 {v_DUMMY704921477 as v_DUMMY}

include Sandwich.Tunnel.Rec_bundle_473063542 {v_DUMMY590654809 as v_DUMMY}

include Sandwich.Tunnel.Rec_bundle_473063542 {v_DUMMY602030902 as v_DUMMY}

include Sandwich.Tunnel.Rec_bundle_473063542 {v_DUMMY971306113 as v_DUMMY}

include Sandwich.Tunnel.Rec_bundle_473063542 {v_DUMMY529939512 as v_DUMMY}

include Sandwich.Tunnel.Rec_bundle_473063542 {v_DUMMY834236783 as v_DUMMY}

include Sandwich.Tunnel.Rec_bundle_473063542 {v_DUMMY564638883 as v_DUMMY}

include Sandwich.Tunnel.Rec_bundle_473063542 {v_DUMMY907316889 as v_DUMMY}

include Sandwich.Tunnel.Rec_bundle_473063542 {v_DUMMY728125707 as v_DUMMY}

include Sandwich.Tunnel.Rec_bundle_473063542 {v_DUMMY325235150 as v_DUMMY}

include Sandwich.Tunnel.Rec_bundle_473063542 {v_DUMMY646756489 as v_DUMMY}

include Sandwich.Tunnel.Rec_bundle_473063542 {v_DUMMY218943714 as v_DUMMY}

include Sandwich.Tunnel.Rec_bundle_473063542 {v_DUMMY1030838030 as v_DUMMY}

include Sandwich.Tunnel.Rec_bundle_473063542 {v_DUMMY1013132062 as v_DUMMY}

include Sandwich.Tunnel.Rec_bundle_473063542 {v_DUMMY658822086 as v_DUMMY}

include Sandwich.Tunnel.Rec_bundle_473063542 {t_Ssl as t_Ssl}

include Sandwich.Tunnel.Rec_bundle_473063542 {_0 as _0}

include Sandwich.Tunnel.Rec_bundle_473063542 {impl as impl}

include Sandwich.Tunnel.Rec_bundle_473063542 {impl_1 as impl_1}

include Sandwich.Tunnel.Rec_bundle_473063542 {get_attached_bio as impl__Ssl__get_attached_bio}

include Sandwich.Tunnel.Rec_bundle_473063542 {get_extra_data_ptr as impl__Ssl__get_extra_data_ptr}

include Sandwich.Tunnel.Rec_bundle_473063542 {get_extra_data_ref as impl__Ssl__get_extra_data_ref}

include Sandwich.Tunnel.Rec_bundle_473063542 {is_shutdown as impl__Ssl__is_shutdown}

include Sandwich.Tunnel.Rec_bundle_473063542 {v_SSL_EX_DATA_TUNNEL_SECURITY_REQUIREMENTS_INDEX as v_SSL_EX_DATA_TUNNEL_SECURITY_REQUIREMENTS_INDEX}

include Sandwich.Tunnel.Rec_bundle_473063542 {get_tunnel_security_requirements as impl__Ssl__get_tunnel_security_requirements}

include Sandwich.Tunnel.Rec_bundle_473063542 {set_server_name_indication as impl__Ssl__set_server_name_indication}

include Sandwich.Tunnel.Rec_bundle_473063542 {verify_tunnel_verifier as verify_tunnel_verifier}

include Sandwich.Tunnel.Rec_bundle_473063542 {get_state as impl__Ssl__get_state}

include Sandwich.Tunnel.Rec_bundle_473063542 {close690884291 as impl__Ssl__close}

include Sandwich.Tunnel.Rec_bundle_473063542 {t_Tunnel77328211 as t_Tunnel}

include Sandwich.Tunnel.Rec_bundle_473063542 {f__ssl_ctx as f__ssl_ctx}

include Sandwich.Tunnel.Rec_bundle_473063542 {f_ssl as f_ssl}

include Sandwich.Tunnel.Rec_bundle_473063542 {f_security_requirements as f_security_requirements}

include Sandwich.Tunnel.Rec_bundle_473063542 {f_io as f_io}

include Sandwich.Tunnel.Rec_bundle_473063542 {f_state as f_state}

include Sandwich.Tunnel.Rec_bundle_473063542 {impl_3 as impl_3}

include Sandwich.Tunnel.Rec_bundle_473063542 {attach_security_requirements as impl_6__attach_security_requirements}

include Sandwich.Tunnel.Rec_bundle_473063542 {attach_to_bio as impl_6__attach_to_bio}

include Sandwich.Tunnel.Rec_bundle_473063542 {state771356817 as impl_6__state}

include Sandwich.Tunnel.Rec_bundle_473063542 {update_state as impl_6__update_state}

include Sandwich.Tunnel.Rec_bundle_473063542 {close995496454 as impl_6__close}

include Sandwich.Tunnel.Rec_bundle_473063542 {t_TunnelBuilder as t_TunnelBuilder}

include Sandwich.Tunnel.Rec_bundle_473063542 {f_ssl_ctx as f_ssl_ctx}

include Sandwich.Tunnel.Rec_bundle_473063542 {f_io as f_io}

include Sandwich.Tunnel.Rec_bundle_473063542 {f_configuration as f_configuration}

include Sandwich.Tunnel.Rec_bundle_473063542 {impl_4 as impl_4}

include Sandwich.Tunnel.Rec_bundle_473063542 {create_and_attach_bio as impl__Ssl__create_and_attach_bio}

include Sandwich.Tunnel.Rec_bundle_473063542 {get_last_recorded_error as impl__Ssl__get_last_recorded_error}

include Sandwich.Tunnel.Rec_bundle_473063542 {get_error_from_record_stage as impl__Ssl__get_error_from_record_stage}

include Sandwich.Tunnel.Rec_bundle_473063542 {handle_ssl_error_ssl as impl__Ssl__handle_ssl_error_ssl}

include Sandwich.Tunnel.Rec_bundle_473063542 {do_handshake as impl__Ssl__do_handshake}

include Sandwich.Tunnel.Rec_bundle_473063542 {read796983554 as impl__Ssl__read}

include Sandwich.Tunnel.Rec_bundle_473063542 {write106684250 as impl__Ssl__write}

include Sandwich.Tunnel.Rec_bundle_473063542 {handshake866067863 as impl_6__handshake}

include Sandwich.Tunnel.Rec_bundle_473063542 {read182962880 as impl_6__read}

include Sandwich.Tunnel.Rec_bundle_473063542 {write696175305 as impl_6__write}

include Sandwich.Tunnel.Rec_bundle_473063542 {set_subject_alternative_names as impl__Ssl__set_subject_alternative_names}

include Sandwich.Tunnel.Rec_bundle_473063542 {prepare_ssl as impl_5__prepare_ssl}

include Sandwich.Tunnel.Rec_bundle_473063542 {build as impl_5__build}
