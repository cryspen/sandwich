module Sandwich.Implementation.Openssl3_impl.Tunnel.X509_verify_param
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Sandwich.Error in
  let open Sandwich.Error.Code in
  let open Sandwich_api_proto.Verifiers.Sanmatcher in
  ()

let impl_3__set_certificate_chain_validation_depth
      (#impl_765196419_: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()] i1: Core.Convert.t_Into impl_765196419_ i32)
      (self: t_X509VerifyParam)
      (depth: impl_765196419_)
     =
  let _:Prims.unit =
    Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
      "rust_primitives::hax::failure(\n        \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n        \"openssl3::foreign_mod_2294::v_X509_VERIFY_PARAM_set_depth\",\n    )(\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::non_null::impl_3__as_ptr::<\\n        openssl3::t_X509_VERIFY_PARAM_st,\\n    >(\\n        proj_sandwich::implementation::openssl3_impl::tunnel::x509_verify_param::_0(\\n            deref(self),\\n        ),\\n    )\",\n        ),\n        core::convert::f_into(depth),\n    )"

  in
  ()

let impl_3__update_certificate_chain_validation_depth_from_x509_verifier
      (self: t_X509VerifyParam)
      (x509_verifier: Core.Option.t_Option Sandwich_api_proto.Verifiers.t_X509Verifier)
     =
  match
    Core.Option.impl__filter #u32
      (Core.Option.impl__map #Sandwich_api_proto.Verifiers.t_X509Verifier
          #u32
          x509_verifier
          (fun x ->
              let x:Sandwich_api_proto.Verifiers.t_X509Verifier = x in
              x.Sandwich_api_proto.Verifiers.f_max_verify_depth)
        <:
        Core.Option.t_Option u32)
      (fun depth ->
          let depth:u32 = depth in
          depth >. 0ul <: bool)
  with
  | Core.Option.Option_Some depth ->
    impl_3__set_certificate_chain_validation_depth #i32 self (cast (depth <: u32) <: i32)
  | _ -> ()

let impl_3__enable_flag
      (#impl_101696938_: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()] i3: Core.Convert.t_Into impl_101696938_ u64)
      (self: t_X509VerifyParam)
      (flag: impl_101696938_)
     =
  let flag:u64 = Core.Convert.f_into #impl_101696938_ #u64 #FStar.Tactics.Typeclasses.solve flag in
  if
    (Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
        "rust_primitives::hax::failure(\n        \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n        \"openssl3::foreign_mod_2289::v_X509_VERIFY_PARAM_set_flags\",\n    )(\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::non_null::impl_3__as_ptr::<\\n        openssl3::t_X509_VERIFY_PARAM_st,\\n    >(\\n        proj_sandwich::implementation::openssl3_impl::tunnel::x509_verify_param::_0(\\n            deref(self),\\n        ),\\n    )\",\n        ),\n        flag,\n    )"

      <:
      i32) =.
    1l
  then
    Core.Result.Result_Ok (() <: Prims.unit)
    <:
    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
  else
    let res:Alloc.String.t_String =
      Alloc.Fmt.format (Core.Fmt.impl_2__new_v1 (sz 2)
            (sz 2)
            (let list = ["failed to enable flag "; ": "] in
              FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
              Rust_primitives.Hax.array_of_list 2 list)
            (match
                (Sandwich.Implementation.Openssl3_impl.Support.errstr () <: Alloc.String.t_String),
                flag
                <:
                (Alloc.String.t_String & u64)
              with
              | args ->
                let list =
                  [
                    Core.Fmt.Rt.impl_1__new_display #u64 args._2 <: Core.Fmt.Rt.t_Argument;
                    Core.Fmt.Rt.impl_1__new_display #Alloc.String.t_String args._1
                    <:
                    Core.Fmt.Rt.t_Argument
                  ]
                in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                Rust_primitives.Hax.array_of_list 2 list)
          <:
          Core.Fmt.t_Arguments)
    in
    Core.Result.Result_Err
    (Core.Convert.f_into #(Sandwich_proto.Errors.t_SystemError & Alloc.String.t_String)
        #Sandwich.Error.t_Error
        #FStar.Tactics.Typeclasses.solve
        ((Sandwich_proto.Errors.SystemError_SYSTEMERROR_BACKEND
            <:
            Sandwich_proto.Errors.t_SystemError),
          (Core.Hint.must_use #Alloc.String.t_String res <: Alloc.String.t_String)
          <:
          (Sandwich_proto.Errors.t_SystemError & Alloc.String.t_String)))
    <:
    Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let impl_3__enable_crl_check_for_all_certificates (self: t_X509VerifyParam) =
  impl_3__enable_flag #u32 self Openssl3.v_X509_V_FLAG_CRL_CHECK_ALL

let impl_3__enable_strict_x509_verification (self: t_X509VerifyParam) =
  impl_3__enable_flag #u32 self Openssl3.v_X509_V_FLAG_X509_STRICT

let impl_3__enable_trusted_first_from_trust_store (self: t_X509VerifyParam) =
  impl_3__enable_flag #u32 self Openssl3.v_X509_V_FLAG_TRUSTED_FIRST

let impl_3__set_default_parameters (self: t_X509VerifyParam) =
  let _:Prims.unit =
    impl_3__set_certificate_chain_validation_depth #i32
      self
      (cast (Sandwich.Tunnel.Tls.v_DEFAULT_MAXIMUM_VERIFY_CERT_CHAIN_DEPTH <: u32) <: i32)
  in
  match impl_3__enable_crl_check_for_all_certificates self with
  | Core.Result.Result_Ok _ ->
    (match impl_3__enable_strict_x509_verification self with
      | Core.Result.Result_Ok _ -> impl_3__enable_trusted_first_from_trust_store self
      | Core.Result.Result_Err err ->
        Core.Result.Result_Err err <: Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
  | Core.Result.Result_Err err ->
    Core.Result.Result_Err err <: Core.Result.t_Result Prims.unit Sandwich.Error.t_Error

let impl_3__add_san__create_cstring
      (#impl_488124255_: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()] i1: Core.Convert.t_AsRef impl_488124255_ string)
      (value: impl_488124255_)
     =
  let value:string =
    Core.Convert.f_as_ref #impl_488124255_ #string #FStar.Tactics.Typeclasses.solve value
  in
  Core.Result.impl__map_err #Alloc.Ffi.C_str.t_CString
    #Alloc.Ffi.C_str.t_NulError
    #Sandwich.Error.t_Error
    (Alloc.Ffi.C_str.impl__CString__new #string value
      <:
      Core.Result.t_Result Alloc.Ffi.C_str.t_CString Alloc.Ffi.C_str.t_NulError)
    (fun e ->
        let e:Alloc.Ffi.C_str.t_NulError = e in
        let res:Alloc.String.t_String =
          Alloc.Fmt.format (Core.Fmt.impl_2__new_v1 (sz 2)
                (sz 2)
                (let list = ["invalid SAN value '"; "': "] in
                  FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                  Rust_primitives.Hax.array_of_list 2 list)
                (let list =
                    [
                      Core.Fmt.Rt.impl_1__new_display #string value <: Core.Fmt.Rt.t_Argument;
                      Core.Fmt.Rt.impl_1__new_display #Alloc.Ffi.C_str.t_NulError e
                      <:
                      Core.Fmt.Rt.t_Argument
                    ]
                  in
                  FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                  Rust_primitives.Hax.array_of_list 2 list)
              <:
              Core.Fmt.t_Arguments)
        in
        Core.Convert.f_into #(Sandwich_proto.Errors.t_TunnelError & Alloc.String.t_String)
          #Sandwich.Error.t_Error
          #FStar.Tactics.Typeclasses.solve
          ((Sandwich_proto.Errors.TunnelError_TUNNELERROR_VERIFIER
              <:
              Sandwich_proto.Errors.t_TunnelError),
            (Core.Hint.must_use #Alloc.String.t_String res <: Alloc.String.t_String)
            <:
            (Sandwich_proto.Errors.t_TunnelError & Alloc.String.t_String)))

let impl_3__add_san (self: t_X509VerifyParam) (san: Sandwich_api_proto.Verifiers.Sanmatcher.t_San) =
  match san with
  | Sandwich_api_proto.Verifiers.Sanmatcher.San_Dns value ->
    (match impl_3__add_san__create_cstring #Alloc.String.t_String value with
      | Core.Result.Result_Ok cstring ->
        if
          (Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
              "rust_primitives::hax::failure(\n        \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n        \"openssl3::foreign_mod_2304::v_X509_VERIFY_PARAM_add1_host\",\n    )(\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::non_null::impl_3__as_ptr::<\\n        openssl3::t_X509_VERIFY_PARAM_st,\\n    >(\\n        proj_sandwich::implementation::openssl3_impl::tunnel::x509_verify_param::_0(\\n            deref(self),\\n        ),\\n    )\",\n        ),\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ffi::c_str::impl__CStr__as_ptr(&(deref(core::ops::deref::f_deref(&(cstring)))))\",\n        ),\n        alloc::string::impl__String__len(&(deref(value))),\n    )"

            <:
            i32) =.
          1l
        then
          Core.Result.Result_Ok (() <: Prims.unit)
          <:
          Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
        else
          let res:Alloc.String.t_String =
            Alloc.Fmt.format (Core.Fmt.impl_2__new_v1 (sz 2)
                  (sz 2)
                  (let list = ["failed to add the SAN entry "; ": "] in
                    FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                    Rust_primitives.Hax.array_of_list 2 list)
                  (match
                      (Sandwich.Implementation.Openssl3_impl.Support.errstr ()
                        <:
                        Alloc.String.t_String),
                      san
                      <:
                      (Alloc.String.t_String & Sandwich_api_proto.Verifiers.Sanmatcher.t_San)
                    with
                    | args ->
                      let list =
                        [
                          Core.Fmt.Rt.impl_1__new_debug #Sandwich_api_proto.Verifiers.Sanmatcher.t_San
                            args._2
                          <:
                          Core.Fmt.Rt.t_Argument;
                          Core.Fmt.Rt.impl_1__new_display #Alloc.String.t_String args._1
                          <:
                          Core.Fmt.Rt.t_Argument
                        ]
                      in
                      FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                      Rust_primitives.Hax.array_of_list 2 list)
                <:
                Core.Fmt.t_Arguments)
          in
          Core.Result.Result_Err
          (Core.Convert.f_into #(Sandwich_proto.Errors.t_TunnelError & Alloc.String.t_String)
              #Sandwich.Error.t_Error
              #FStar.Tactics.Typeclasses.solve
              ((Sandwich_proto.Errors.TunnelError_TUNNELERROR_VERIFIER
                  <:
                  Sandwich_proto.Errors.t_TunnelError),
                (Core.Hint.must_use #Alloc.String.t_String res <: Alloc.String.t_String)
                <:
                (Sandwich_proto.Errors.t_TunnelError & Alloc.String.t_String)))
          <:
          Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
      | Core.Result.Result_Err err ->
        Core.Result.Result_Err err <: Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
  | Sandwich_api_proto.Verifiers.Sanmatcher.San_Email value ->
    (match impl_3__add_san__create_cstring #Alloc.String.t_String value with
      | Core.Result.Result_Ok cstring ->
        if
          (Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
              "rust_primitives::hax::failure(\n        \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n        \"openssl3::foreign_mod_2310::v_X509_VERIFY_PARAM_set1_email\",\n    )(\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::non_null::impl_3__as_ptr::<\\n        openssl3::t_X509_VERIFY_PARAM_st,\\n    >(\\n        proj_sandwich::implementation::openssl3_impl::tunnel::x509_verify_param::_0(\\n            deref(self),\\n        ),\\n    )\",\n        ),\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ffi::c_str::impl__CStr__as_ptr(&(deref(core::ops::deref::f_deref(&(cstring)))))\",\n        ),\n        alloc::string::impl__String__len(&(deref(value))),\n    )"

            <:
            i32) =.
          1l
        then
          Core.Result.Result_Ok (() <: Prims.unit)
          <:
          Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
        else
          let res:Alloc.String.t_String =
            Alloc.Fmt.format (Core.Fmt.impl_2__new_v1 (sz 2)
                  (sz 2)
                  (let list = ["failed to add the SAN entry "; ": "] in
                    FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                    Rust_primitives.Hax.array_of_list 2 list)
                  (match
                      (Sandwich.Implementation.Openssl3_impl.Support.errstr ()
                        <:
                        Alloc.String.t_String),
                      san
                      <:
                      (Alloc.String.t_String & Sandwich_api_proto.Verifiers.Sanmatcher.t_San)
                    with
                    | args ->
                      let list =
                        [
                          Core.Fmt.Rt.impl_1__new_debug #Sandwich_api_proto.Verifiers.Sanmatcher.t_San
                            args._2
                          <:
                          Core.Fmt.Rt.t_Argument;
                          Core.Fmt.Rt.impl_1__new_display #Alloc.String.t_String args._1
                          <:
                          Core.Fmt.Rt.t_Argument
                        ]
                      in
                      FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                      Rust_primitives.Hax.array_of_list 2 list)
                <:
                Core.Fmt.t_Arguments)
          in
          Core.Result.Result_Err
          (Core.Convert.f_into #(Sandwich_proto.Errors.t_TunnelError & Alloc.String.t_String)
              #Sandwich.Error.t_Error
              #FStar.Tactics.Typeclasses.solve
              ((Sandwich_proto.Errors.TunnelError_TUNNELERROR_VERIFIER
                  <:
                  Sandwich_proto.Errors.t_TunnelError),
                (Core.Hint.must_use #Alloc.String.t_String res <: Alloc.String.t_String)
                <:
                (Sandwich_proto.Errors.t_TunnelError & Alloc.String.t_String)))
          <:
          Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
      | Core.Result.Result_Err err ->
        Core.Result.Result_Err err <: Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
  | Sandwich_api_proto.Verifiers.Sanmatcher.San_IpAddress value ->
    (match impl_3__add_san__create_cstring #Alloc.String.t_String value with
      | Core.Result.Result_Ok cstring ->
        if
          (Rust_primitives.Hax.failure "(RefMut) Fatal error: something we considered as impossible occurred! \027[1mPlease report this by submitting an issue on GitHub!\027[0m\nDetails: expected an arrow type here"
              "rust_primitives::hax::failure(\n        \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n        \"openssl3::foreign_mod_2313::v_X509_VERIFY_PARAM_set1_ip_asc\",\n    )(\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ptr::non_null::impl_3__as_ptr::<\\n        openssl3::t_X509_VERIFY_PARAM_st,\\n    >(\\n        proj_sandwich::implementation::openssl3_impl::tunnel::x509_verify_param::_0(\\n            deref(self),\\n        ),\\n    )\",\n        ),\n        rust_primitives::hax::failure(\n            \"(reject_RawOrMutPointer) ExplicitRejection { reason: \\\"a node of kind [Raw_pointer] have been found in the AST\\\" }\",\n            \"core::ffi::c_str::impl__CStr__as_ptr(&(deref(core::ops::deref::f_deref(&(cstring)))))\",\n        ),\n    )"

            <:
            i32) =.
          1l
        then
          Core.Result.Result_Ok (() <: Prims.unit)
          <:
          Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
        else
          let res:Alloc.String.t_String =
            Alloc.Fmt.format (Core.Fmt.impl_2__new_v1 (sz 2)
                  (sz 2)
                  (let list = ["failed to add the SAN entry "; ": "] in
                    FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                    Rust_primitives.Hax.array_of_list 2 list)
                  (match
                      (Sandwich.Implementation.Openssl3_impl.Support.errstr ()
                        <:
                        Alloc.String.t_String),
                      san
                      <:
                      (Alloc.String.t_String & Sandwich_api_proto.Verifiers.Sanmatcher.t_San)
                    with
                    | args ->
                      let list =
                        [
                          Core.Fmt.Rt.impl_1__new_debug #Sandwich_api_proto.Verifiers.Sanmatcher.t_San
                            args._2
                          <:
                          Core.Fmt.Rt.t_Argument;
                          Core.Fmt.Rt.impl_1__new_display #Alloc.String.t_String args._1
                          <:
                          Core.Fmt.Rt.t_Argument
                        ]
                      in
                      FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                      Rust_primitives.Hax.array_of_list 2 list)
                <:
                Core.Fmt.t_Arguments)
          in
          Core.Result.Result_Err
          (Core.Convert.f_into #(Sandwich_proto.Errors.t_TunnelError & Alloc.String.t_String)
              #Sandwich.Error.t_Error
              #FStar.Tactics.Typeclasses.solve
              ((Sandwich_proto.Errors.TunnelError_TUNNELERROR_VERIFIER
                  <:
                  Sandwich_proto.Errors.t_TunnelError),
                (Core.Hint.must_use #Alloc.String.t_String res <: Alloc.String.t_String)
                <:
                (Sandwich_proto.Errors.t_TunnelError & Alloc.String.t_String)))
          <:
          Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
      | Core.Result.Result_Err err ->
        Core.Result.Result_Err err <: Core.Result.t_Result Prims.unit Sandwich.Error.t_Error)
  | _ ->
    if
      (Rust_primitives.Hax.never_to_any (Core.Panicking.panic "internal error: entered unreachable code"

            <:
            Rust_primitives.Hax.t_Never)
        <:
        i32) =.
      1l
    then
      Core.Result.Result_Ok (() <: Prims.unit)
      <:
      Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
    else
      let res:Alloc.String.t_String =
        Alloc.Fmt.format (Core.Fmt.impl_2__new_v1 (sz 2)
              (sz 2)
              (let list = ["failed to add the SAN entry "; ": "] in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                Rust_primitives.Hax.array_of_list 2 list)
              (match
                  (Sandwich.Implementation.Openssl3_impl.Support.errstr () <: Alloc.String.t_String),
                  san
                  <:
                  (Alloc.String.t_String & Sandwich_api_proto.Verifiers.Sanmatcher.t_San)
                with
                | args ->
                  let list =
                    [
                      Core.Fmt.Rt.impl_1__new_debug #Sandwich_api_proto.Verifiers.Sanmatcher.t_San
                        args._2
                      <:
                      Core.Fmt.Rt.t_Argument;
                      Core.Fmt.Rt.impl_1__new_display #Alloc.String.t_String args._1
                      <:
                      Core.Fmt.Rt.t_Argument
                    ]
                  in
                  FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                  Rust_primitives.Hax.array_of_list 2 list)
            <:
            Core.Fmt.t_Arguments)
      in
      Core.Result.Result_Err
      (Core.Convert.f_into #(Sandwich_proto.Errors.t_TunnelError & Alloc.String.t_String)
          #Sandwich.Error.t_Error
          #FStar.Tactics.Typeclasses.solve
          ((Sandwich_proto.Errors.TunnelError_TUNNELERROR_VERIFIER
              <:
              Sandwich_proto.Errors.t_TunnelError),
            (Core.Hint.must_use #Alloc.String.t_String res <: Alloc.String.t_String)
            <:
            (Sandwich_proto.Errors.t_TunnelError & Alloc.String.t_String)))
      <:
      Core.Result.t_Result Prims.unit Sandwich.Error.t_Error
