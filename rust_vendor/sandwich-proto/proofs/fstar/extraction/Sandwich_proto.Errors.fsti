module Sandwich_proto.Errors
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Protobuf.Enums in
  let open Protobuf.Reflect.Enums in
  ()

let discriminant_ALPNError_ALPNERROR_INVALID_STRING: isize = isz 1

type t_ALPNError =
  | ALPNError_ALPNERROR_LENGTH_ERROR : t_ALPNError
  | ALPNError_ALPNERROR_INVALID_STRING : t_ALPNError

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_30: Core.Default.t_Default t_ALPNError =
  {
    f_default_pre = (fun (_: Prims.unit) -> true);
    f_default_post = (fun (_: Prims.unit) (out: t_ALPNError) -> true);
    f_default = fun (_: Prims.unit) -> ALPNError_ALPNERROR_LENGTH_ERROR <: t_ALPNError
  }

let discriminant_ALPNError_ALPNERROR_LENGTH_ERROR: isize = isz 0

val t_ALPNError_cast_to_repr (x: t_ALPNError)
    : Prims.Pure isize Prims.l_True (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_28: Protobuf.Enums.t_Enum t_ALPNError =
  {
    _super_8099741844003281729 = FStar.Tactics.Typeclasses.solve;
    _super_11581440318597584651 = FStar.Tactics.Typeclasses.solve;
    _super_11603873402755071380 = FStar.Tactics.Typeclasses.solve;
    _super_3331601577671695699 = FStar.Tactics.Typeclasses.solve;
    _super_10171955091559533151 = FStar.Tactics.Typeclasses.solve;
    _super_14975916834865509998 = FStar.Tactics.Typeclasses.solve;
    f_NAME = "ALPNError";
    f_value_pre = (fun (self: t_ALPNError) -> true);
    f_value_post = (fun (self: t_ALPNError) (out: i32) -> true);
    f_value = (fun (self: t_ALPNError) -> cast (t_ALPNError_cast_to_repr self <: isize) <: i32);
    f_from_i32_pre = (fun (value: i32) -> true);
    f_from_i32_post = (fun (value: i32) (out: Core.Option.t_Option t_ALPNError) -> true);
    f_from_i32
    =
    (fun (value: i32) ->
        match value with
        | 0l ->
          Core.Option.Option_Some (ALPNError_ALPNERROR_LENGTH_ERROR <: t_ALPNError)
          <:
          Core.Option.t_Option t_ALPNError
        | 1l ->
          Core.Option.Option_Some (ALPNError_ALPNERROR_INVALID_STRING <: t_ALPNError)
          <:
          Core.Option.t_Option t_ALPNError
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_ALPNError);
    f_from_str_pre = (fun (str: string) -> true);
    f_from_str_post = (fun (str: string) (out: Core.Option.t_Option t_ALPNError) -> true);
    f_from_str
    =
    (fun (str: string) ->
        match str with
        | "ALPNERROR_LENGTH_ERROR" ->
          Core.Option.Option_Some (ALPNError_ALPNERROR_LENGTH_ERROR <: t_ALPNError)
          <:
          Core.Option.t_Option t_ALPNError
        | "ALPNERROR_INVALID_STRING" ->
          Core.Option.Option_Some (ALPNError_ALPNERROR_INVALID_STRING <: t_ALPNError)
          <:
          Core.Option.t_Option t_ALPNError
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_ALPNError);
    f_VALUES
    =
    Rust_primitives.unsize (let list =
          [
            ALPNError_ALPNERROR_LENGTH_ERROR <: t_ALPNError;
            ALPNError_ALPNERROR_INVALID_STRING <: t_ALPNError
          ]
        in
        FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
        Rust_primitives.Hax.array_of_list 2 list)
  }

let discriminant_APIError_APIERROR_CONFIGURATION: isize = isz 0

let discriminant_APIError_APIERROR_SOCKET: isize = isz 1

type t_APIError =
  | APIError_APIERROR_CONFIGURATION : t_APIError
  | APIError_APIERROR_SOCKET : t_APIError
  | APIError_APIERROR_TUNNEL : t_APIError

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_2: Core.Default.t_Default t_APIError =
  {
    f_default_pre = (fun (_: Prims.unit) -> true);
    f_default_post = (fun (_: Prims.unit) (out: t_APIError) -> true);
    f_default = fun (_: Prims.unit) -> APIError_APIERROR_CONFIGURATION <: t_APIError
  }

let discriminant_APIError_APIERROR_TUNNEL: isize = isz 2

val t_APIError_cast_to_repr (x: t_APIError) : Prims.Pure isize Prims.l_True (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl: Protobuf.Enums.t_Enum t_APIError =
  {
    _super_8099741844003281729 = FStar.Tactics.Typeclasses.solve;
    _super_11581440318597584651 = FStar.Tactics.Typeclasses.solve;
    _super_11603873402755071380 = FStar.Tactics.Typeclasses.solve;
    _super_3331601577671695699 = FStar.Tactics.Typeclasses.solve;
    _super_10171955091559533151 = FStar.Tactics.Typeclasses.solve;
    _super_14975916834865509998 = FStar.Tactics.Typeclasses.solve;
    f_NAME = "APIError";
    f_value_pre = (fun (self: t_APIError) -> true);
    f_value_post = (fun (self: t_APIError) (out: i32) -> true);
    f_value = (fun (self: t_APIError) -> cast (t_APIError_cast_to_repr self <: isize) <: i32);
    f_from_i32_pre = (fun (value: i32) -> true);
    f_from_i32_post = (fun (value: i32) (out: Core.Option.t_Option t_APIError) -> true);
    f_from_i32
    =
    (fun (value: i32) ->
        match value with
        | 0l ->
          Core.Option.Option_Some (APIError_APIERROR_CONFIGURATION <: t_APIError)
          <:
          Core.Option.t_Option t_APIError
        | 1l ->
          Core.Option.Option_Some (APIError_APIERROR_SOCKET <: t_APIError)
          <:
          Core.Option.t_Option t_APIError
        | 2l ->
          Core.Option.Option_Some (APIError_APIERROR_TUNNEL <: t_APIError)
          <:
          Core.Option.t_Option t_APIError
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_APIError);
    f_from_str_pre = (fun (str: string) -> true);
    f_from_str_post = (fun (str: string) (out: Core.Option.t_Option t_APIError) -> true);
    f_from_str
    =
    (fun (str: string) ->
        match str with
        | "APIERROR_CONFIGURATION" ->
          Core.Option.Option_Some (APIError_APIERROR_CONFIGURATION <: t_APIError)
          <:
          Core.Option.t_Option t_APIError
        | "APIERROR_SOCKET" ->
          Core.Option.Option_Some (APIError_APIERROR_SOCKET <: t_APIError)
          <:
          Core.Option.t_Option t_APIError
        | "APIERROR_TUNNEL" ->
          Core.Option.Option_Some (APIError_APIERROR_TUNNEL <: t_APIError)
          <:
          Core.Option.t_Option t_APIError
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_APIError);
    f_VALUES
    =
    Rust_primitives.unsize (let list =
          [
            APIError_APIERROR_CONFIGURATION <: t_APIError;
            APIError_APIERROR_SOCKET <: t_APIError;
            APIError_APIERROR_TUNNEL <: t_APIError
          ]
        in
        FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 3);
        Rust_primitives.Hax.array_of_list 3 list)
  }

let discriminant_ASN1Error_ASN1ERROR_INVALID_FORMAT: isize = isz 0

type t_ASN1Error =
  | ASN1Error_ASN1ERROR_INVALID_FORMAT : t_ASN1Error
  | ASN1Error_ASN1ERROR_MALFORMED : t_ASN1Error

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_26: Core.Default.t_Default t_ASN1Error =
  {
    f_default_pre = (fun (_: Prims.unit) -> true);
    f_default_post = (fun (_: Prims.unit) (out: t_ASN1Error) -> true);
    f_default = fun (_: Prims.unit) -> ASN1Error_ASN1ERROR_INVALID_FORMAT <: t_ASN1Error
  }

let discriminant_ASN1Error_ASN1ERROR_MALFORMED: isize = isz 1

val t_ASN1Error_cast_to_repr (x: t_ASN1Error)
    : Prims.Pure isize Prims.l_True (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_24: Protobuf.Enums.t_Enum t_ASN1Error =
  {
    _super_8099741844003281729 = FStar.Tactics.Typeclasses.solve;
    _super_11581440318597584651 = FStar.Tactics.Typeclasses.solve;
    _super_11603873402755071380 = FStar.Tactics.Typeclasses.solve;
    _super_3331601577671695699 = FStar.Tactics.Typeclasses.solve;
    _super_10171955091559533151 = FStar.Tactics.Typeclasses.solve;
    _super_14975916834865509998 = FStar.Tactics.Typeclasses.solve;
    f_NAME = "ASN1Error";
    f_value_pre = (fun (self: t_ASN1Error) -> true);
    f_value_post = (fun (self: t_ASN1Error) (out: i32) -> true);
    f_value = (fun (self: t_ASN1Error) -> cast (t_ASN1Error_cast_to_repr self <: isize) <: i32);
    f_from_i32_pre = (fun (value: i32) -> true);
    f_from_i32_post = (fun (value: i32) (out: Core.Option.t_Option t_ASN1Error) -> true);
    f_from_i32
    =
    (fun (value: i32) ->
        match value with
        | 0l ->
          Core.Option.Option_Some (ASN1Error_ASN1ERROR_INVALID_FORMAT <: t_ASN1Error)
          <:
          Core.Option.t_Option t_ASN1Error
        | 1l ->
          Core.Option.Option_Some (ASN1Error_ASN1ERROR_MALFORMED <: t_ASN1Error)
          <:
          Core.Option.t_Option t_ASN1Error
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_ASN1Error);
    f_from_str_pre = (fun (str: string) -> true);
    f_from_str_post = (fun (str: string) (out: Core.Option.t_Option t_ASN1Error) -> true);
    f_from_str
    =
    (fun (str: string) ->
        match str with
        | "ASN1ERROR_INVALID_FORMAT" ->
          Core.Option.Option_Some (ASN1Error_ASN1ERROR_INVALID_FORMAT <: t_ASN1Error)
          <:
          Core.Option.t_Option t_ASN1Error
        | "ASN1ERROR_MALFORMED" ->
          Core.Option.Option_Some (ASN1Error_ASN1ERROR_MALFORMED <: t_ASN1Error)
          <:
          Core.Option.t_Option t_ASN1Error
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_ASN1Error);
    f_VALUES
    =
    Rust_primitives.unsize (let list =
          [
            ASN1Error_ASN1ERROR_INVALID_FORMAT <: t_ASN1Error;
            ASN1Error_ASN1ERROR_MALFORMED <: t_ASN1Error
          ]
        in
        FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
        Rust_primitives.Hax.array_of_list 2 list)
  }

let discriminant_CertificateError_CERTIFICATEERROR_EXPIRED: isize = isz 1

let discriminant_CertificateError_CERTIFICATEERROR_MALFORMED: isize = isz 0

let discriminant_CertificateError_CERTIFICATEERROR_NOT_FOUND: isize = isz 2

let discriminant_CertificateError_CERTIFICATEERROR_UNKNOWN: isize = isz 3

type t_CertificateError =
  | CertificateError_CERTIFICATEERROR_MALFORMED : t_CertificateError
  | CertificateError_CERTIFICATEERROR_EXPIRED : t_CertificateError
  | CertificateError_CERTIFICATEERROR_NOT_FOUND : t_CertificateError
  | CertificateError_CERTIFICATEERROR_UNKNOWN : t_CertificateError
  | CertificateError_CERTIFICATEERROR_UNSUPPORTED : t_CertificateError

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_18: Core.Default.t_Default t_CertificateError =
  {
    f_default_pre = (fun (_: Prims.unit) -> true);
    f_default_post = (fun (_: Prims.unit) (out: t_CertificateError) -> true);
    f_default
    =
    fun (_: Prims.unit) -> CertificateError_CERTIFICATEERROR_MALFORMED <: t_CertificateError
  }

let discriminant_CertificateError_CERTIFICATEERROR_UNSUPPORTED: isize = isz 4

val t_CertificateError_cast_to_repr (x: t_CertificateError)
    : Prims.Pure isize Prims.l_True (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_16: Protobuf.Enums.t_Enum t_CertificateError =
  {
    _super_8099741844003281729 = FStar.Tactics.Typeclasses.solve;
    _super_11581440318597584651 = FStar.Tactics.Typeclasses.solve;
    _super_11603873402755071380 = FStar.Tactics.Typeclasses.solve;
    _super_3331601577671695699 = FStar.Tactics.Typeclasses.solve;
    _super_10171955091559533151 = FStar.Tactics.Typeclasses.solve;
    _super_14975916834865509998 = FStar.Tactics.Typeclasses.solve;
    f_NAME = "CertificateError";
    f_value_pre = (fun (self: t_CertificateError) -> true);
    f_value_post = (fun (self: t_CertificateError) (out: i32) -> true);
    f_value
    =
    (fun (self: t_CertificateError) -> cast (t_CertificateError_cast_to_repr self <: isize) <: i32);
    f_from_i32_pre = (fun (value: i32) -> true);
    f_from_i32_post = (fun (value: i32) (out: Core.Option.t_Option t_CertificateError) -> true);
    f_from_i32
    =
    (fun (value: i32) ->
        match value with
        | 0l ->
          Core.Option.Option_Some
          (CertificateError_CERTIFICATEERROR_MALFORMED <: t_CertificateError)
          <:
          Core.Option.t_Option t_CertificateError
        | 1l ->
          Core.Option.Option_Some (CertificateError_CERTIFICATEERROR_EXPIRED <: t_CertificateError)
          <:
          Core.Option.t_Option t_CertificateError
        | 2l ->
          Core.Option.Option_Some
          (CertificateError_CERTIFICATEERROR_NOT_FOUND <: t_CertificateError)
          <:
          Core.Option.t_Option t_CertificateError
        | 3l ->
          Core.Option.Option_Some (CertificateError_CERTIFICATEERROR_UNKNOWN <: t_CertificateError)
          <:
          Core.Option.t_Option t_CertificateError
        | 4l ->
          Core.Option.Option_Some
          (CertificateError_CERTIFICATEERROR_UNSUPPORTED <: t_CertificateError)
          <:
          Core.Option.t_Option t_CertificateError
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_CertificateError);
    f_from_str_pre = (fun (str: string) -> true);
    f_from_str_post = (fun (str: string) (out: Core.Option.t_Option t_CertificateError) -> true);
    f_from_str
    =
    (fun (str: string) ->
        match str with
        | "CERTIFICATEERROR_MALFORMED" ->
          Core.Option.Option_Some
          (CertificateError_CERTIFICATEERROR_MALFORMED <: t_CertificateError)
          <:
          Core.Option.t_Option t_CertificateError
        | "CERTIFICATEERROR_EXPIRED" ->
          Core.Option.Option_Some (CertificateError_CERTIFICATEERROR_EXPIRED <: t_CertificateError)
          <:
          Core.Option.t_Option t_CertificateError
        | "CERTIFICATEERROR_NOT_FOUND" ->
          Core.Option.Option_Some
          (CertificateError_CERTIFICATEERROR_NOT_FOUND <: t_CertificateError)
          <:
          Core.Option.t_Option t_CertificateError
        | "CERTIFICATEERROR_UNKNOWN" ->
          Core.Option.Option_Some (CertificateError_CERTIFICATEERROR_UNKNOWN <: t_CertificateError)
          <:
          Core.Option.t_Option t_CertificateError
        | "CERTIFICATEERROR_UNSUPPORTED" ->
          Core.Option.Option_Some
          (CertificateError_CERTIFICATEERROR_UNSUPPORTED <: t_CertificateError)
          <:
          Core.Option.t_Option t_CertificateError
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_CertificateError);
    f_VALUES
    =
    Rust_primitives.unsize (let list =
          [
            CertificateError_CERTIFICATEERROR_MALFORMED <: t_CertificateError;
            CertificateError_CERTIFICATEERROR_EXPIRED <: t_CertificateError;
            CertificateError_CERTIFICATEERROR_NOT_FOUND <: t_CertificateError;
            CertificateError_CERTIFICATEERROR_UNKNOWN <: t_CertificateError;
            CertificateError_CERTIFICATEERROR_UNSUPPORTED <: t_CertificateError
          ]
        in
        FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 5);
        Rust_primitives.Hax.array_of_list 5 list)
  }

let discriminant_ConfigurationError_CONFIGURATIONERROR_INVALID: isize = isz 2

let discriminant_ConfigurationError_CONFIGURATIONERROR_INVALID_IMPLEMENTATION: isize = isz 0

let discriminant_ConfigurationError_CONFIGURATIONERROR_INVALID_LISTENER: isize = isz 3

type t_ConfigurationError =
  | ConfigurationError_CONFIGURATIONERROR_INVALID_IMPLEMENTATION : t_ConfigurationError
  | ConfigurationError_CONFIGURATIONERROR_UNSUPPORTED_IMPLEMENTATION : t_ConfigurationError
  | ConfigurationError_CONFIGURATIONERROR_INVALID : t_ConfigurationError
  | ConfigurationError_CONFIGURATIONERROR_INVALID_LISTENER : t_ConfigurationError

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_6: Core.Default.t_Default t_ConfigurationError =
  {
    f_default_pre = (fun (_: Prims.unit) -> true);
    f_default_post = (fun (_: Prims.unit) (out: t_ConfigurationError) -> true);
    f_default
    =
    fun (_: Prims.unit) ->
      ConfigurationError_CONFIGURATIONERROR_INVALID_IMPLEMENTATION <: t_ConfigurationError
  }

let discriminant_ConfigurationError_CONFIGURATIONERROR_UNSUPPORTED_IMPLEMENTATION: isize = isz 1

val t_ConfigurationError_cast_to_repr (x: t_ConfigurationError)
    : Prims.Pure isize Prims.l_True (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_4: Protobuf.Enums.t_Enum t_ConfigurationError =
  {
    _super_8099741844003281729 = FStar.Tactics.Typeclasses.solve;
    _super_11581440318597584651 = FStar.Tactics.Typeclasses.solve;
    _super_11603873402755071380 = FStar.Tactics.Typeclasses.solve;
    _super_3331601577671695699 = FStar.Tactics.Typeclasses.solve;
    _super_10171955091559533151 = FStar.Tactics.Typeclasses.solve;
    _super_14975916834865509998 = FStar.Tactics.Typeclasses.solve;
    f_NAME = "ConfigurationError";
    f_value_pre = (fun (self: t_ConfigurationError) -> true);
    f_value_post = (fun (self: t_ConfigurationError) (out: i32) -> true);
    f_value
    =
    (fun (self: t_ConfigurationError) ->
        cast (t_ConfigurationError_cast_to_repr self <: isize) <: i32);
    f_from_i32_pre = (fun (value: i32) -> true);
    f_from_i32_post = (fun (value: i32) (out: Core.Option.t_Option t_ConfigurationError) -> true);
    f_from_i32
    =
    (fun (value: i32) ->
        match value with
        | 0l ->
          Core.Option.Option_Some
          (ConfigurationError_CONFIGURATIONERROR_INVALID_IMPLEMENTATION <: t_ConfigurationError)
          <:
          Core.Option.t_Option t_ConfigurationError
        | 1l ->
          Core.Option.Option_Some
          (ConfigurationError_CONFIGURATIONERROR_UNSUPPORTED_IMPLEMENTATION <: t_ConfigurationError)
          <:
          Core.Option.t_Option t_ConfigurationError
        | 2l ->
          Core.Option.Option_Some
          (ConfigurationError_CONFIGURATIONERROR_INVALID <: t_ConfigurationError)
          <:
          Core.Option.t_Option t_ConfigurationError
        | 3l ->
          Core.Option.Option_Some
          (ConfigurationError_CONFIGURATIONERROR_INVALID_LISTENER <: t_ConfigurationError)
          <:
          Core.Option.t_Option t_ConfigurationError
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_ConfigurationError);
    f_from_str_pre = (fun (str: string) -> true);
    f_from_str_post = (fun (str: string) (out: Core.Option.t_Option t_ConfigurationError) -> true);
    f_from_str
    =
    (fun (str: string) ->
        match str with
        | "CONFIGURATIONERROR_INVALID_IMPLEMENTATION" ->
          Core.Option.Option_Some
          (ConfigurationError_CONFIGURATIONERROR_INVALID_IMPLEMENTATION <: t_ConfigurationError)
          <:
          Core.Option.t_Option t_ConfigurationError
        | "CONFIGURATIONERROR_UNSUPPORTED_IMPLEMENTATION" ->
          Core.Option.Option_Some
          (ConfigurationError_CONFIGURATIONERROR_UNSUPPORTED_IMPLEMENTATION <: t_ConfigurationError)
          <:
          Core.Option.t_Option t_ConfigurationError
        | "CONFIGURATIONERROR_INVALID" ->
          Core.Option.Option_Some
          (ConfigurationError_CONFIGURATIONERROR_INVALID <: t_ConfigurationError)
          <:
          Core.Option.t_Option t_ConfigurationError
        | "CONFIGURATIONERROR_INVALID_LISTENER" ->
          Core.Option.Option_Some
          (ConfigurationError_CONFIGURATIONERROR_INVALID_LISTENER <: t_ConfigurationError)
          <:
          Core.Option.t_Option t_ConfigurationError
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_ConfigurationError);
    f_VALUES
    =
    Rust_primitives.unsize (let list =
          [
            ConfigurationError_CONFIGURATIONERROR_INVALID_IMPLEMENTATION <: t_ConfigurationError;
            ConfigurationError_CONFIGURATIONERROR_UNSUPPORTED_IMPLEMENTATION <: t_ConfigurationError;
            ConfigurationError_CONFIGURATIONERROR_INVALID <: t_ConfigurationError;
            ConfigurationError_CONFIGURATIONERROR_INVALID_LISTENER <: t_ConfigurationError
          ]
        in
        FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 4);
        Rust_primitives.Hax.array_of_list 4 list)
  }

let discriminant_DataSourceError_DATASOURCEERROR_EMPTY: isize = isz 0

let discriminant_DataSourceError_DATASOURCEERROR_INVALID_CASE: isize = isz 1

type t_DataSourceError =
  | DataSourceError_DATASOURCEERROR_EMPTY : t_DataSourceError
  | DataSourceError_DATASOURCEERROR_INVALID_CASE : t_DataSourceError
  | DataSourceError_DATASOURCEERROR_NOT_FOUND : t_DataSourceError

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_34: Core.Default.t_Default t_DataSourceError =
  {
    f_default_pre = (fun (_: Prims.unit) -> true);
    f_default_post = (fun (_: Prims.unit) (out: t_DataSourceError) -> true);
    f_default = fun (_: Prims.unit) -> DataSourceError_DATASOURCEERROR_EMPTY <: t_DataSourceError
  }

let discriminant_DataSourceError_DATASOURCEERROR_NOT_FOUND: isize = isz 2

val t_DataSourceError_cast_to_repr (x: t_DataSourceError)
    : Prims.Pure isize Prims.l_True (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_32: Protobuf.Enums.t_Enum t_DataSourceError =
  {
    _super_8099741844003281729 = FStar.Tactics.Typeclasses.solve;
    _super_11581440318597584651 = FStar.Tactics.Typeclasses.solve;
    _super_11603873402755071380 = FStar.Tactics.Typeclasses.solve;
    _super_3331601577671695699 = FStar.Tactics.Typeclasses.solve;
    _super_10171955091559533151 = FStar.Tactics.Typeclasses.solve;
    _super_14975916834865509998 = FStar.Tactics.Typeclasses.solve;
    f_NAME = "DataSourceError";
    f_value_pre = (fun (self: t_DataSourceError) -> true);
    f_value_post = (fun (self: t_DataSourceError) (out: i32) -> true);
    f_value
    =
    (fun (self: t_DataSourceError) -> cast (t_DataSourceError_cast_to_repr self <: isize) <: i32);
    f_from_i32_pre = (fun (value: i32) -> true);
    f_from_i32_post = (fun (value: i32) (out: Core.Option.t_Option t_DataSourceError) -> true);
    f_from_i32
    =
    (fun (value: i32) ->
        match value with
        | 0l ->
          Core.Option.Option_Some (DataSourceError_DATASOURCEERROR_EMPTY <: t_DataSourceError)
          <:
          Core.Option.t_Option t_DataSourceError
        | 1l ->
          Core.Option.Option_Some
          (DataSourceError_DATASOURCEERROR_INVALID_CASE <: t_DataSourceError)
          <:
          Core.Option.t_Option t_DataSourceError
        | 2l ->
          Core.Option.Option_Some (DataSourceError_DATASOURCEERROR_NOT_FOUND <: t_DataSourceError)
          <:
          Core.Option.t_Option t_DataSourceError
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_DataSourceError);
    f_from_str_pre = (fun (str: string) -> true);
    f_from_str_post = (fun (str: string) (out: Core.Option.t_Option t_DataSourceError) -> true);
    f_from_str
    =
    (fun (str: string) ->
        match str with
        | "DATASOURCEERROR_EMPTY" ->
          Core.Option.Option_Some (DataSourceError_DATASOURCEERROR_EMPTY <: t_DataSourceError)
          <:
          Core.Option.t_Option t_DataSourceError
        | "DATASOURCEERROR_INVALID_CASE" ->
          Core.Option.Option_Some
          (DataSourceError_DATASOURCEERROR_INVALID_CASE <: t_DataSourceError)
          <:
          Core.Option.t_Option t_DataSourceError
        | "DATASOURCEERROR_NOT_FOUND" ->
          Core.Option.Option_Some (DataSourceError_DATASOURCEERROR_NOT_FOUND <: t_DataSourceError)
          <:
          Core.Option.t_Option t_DataSourceError
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_DataSourceError);
    f_VALUES
    =
    Rust_primitives.unsize (let list =
          [
            DataSourceError_DATASOURCEERROR_EMPTY <: t_DataSourceError;
            DataSourceError_DATASOURCEERROR_INVALID_CASE <: t_DataSourceError;
            DataSourceError_DATASOURCEERROR_NOT_FOUND <: t_DataSourceError
          ]
        in
        FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 3);
        Rust_primitives.Hax.array_of_list 3 list)
  }

let discriminant_ErrorKind_ERRORKIND_ALPN: isize = isz 13

let discriminant_ErrorKind_ERRORKIND_API: isize = isz 0

let discriminant_ErrorKind_ERRORKIND_ASN1: isize = isz 8

let discriminant_ErrorKind_ERRORKIND_CERTIFICATE: isize = isz 3

let discriminant_ErrorKind_ERRORKIND_CONFIGURATION: isize = isz 1

let discriminant_ErrorKind_ERRORKIND_DATA_SOURCE: isize = isz 9

let discriminant_ErrorKind_ERRORKIND_HANDSHAKE: isize = isz 11

let discriminant_ErrorKind_ERRORKIND_IO: isize = isz 14

let discriminant_ErrorKind_ERRORKIND_KEM: isize = isz 10

let discriminant_ErrorKind_ERRORKIND_PRIVATE_KEY: isize = isz 7

let discriminant_ErrorKind_ERRORKIND_PROTOBUF: isize = isz 6

let discriminant_ErrorKind_ERRORKIND_SOCKET: isize = isz 5

let discriminant_ErrorKind_ERRORKIND_SYSTEM: isize = isz 4

let discriminant_ErrorKind_ERRORKIND_TLS_CONFIGURATION: isize = isz 2

type t_ErrorKind =
  | ErrorKind_ERRORKIND_API : t_ErrorKind
  | ErrorKind_ERRORKIND_CONFIGURATION : t_ErrorKind
  | ErrorKind_ERRORKIND_TLS_CONFIGURATION : t_ErrorKind
  | ErrorKind_ERRORKIND_CERTIFICATE : t_ErrorKind
  | ErrorKind_ERRORKIND_SYSTEM : t_ErrorKind
  | ErrorKind_ERRORKIND_SOCKET : t_ErrorKind
  | ErrorKind_ERRORKIND_PROTOBUF : t_ErrorKind
  | ErrorKind_ERRORKIND_PRIVATE_KEY : t_ErrorKind
  | ErrorKind_ERRORKIND_ASN1 : t_ErrorKind
  | ErrorKind_ERRORKIND_DATA_SOURCE : t_ErrorKind
  | ErrorKind_ERRORKIND_KEM : t_ErrorKind
  | ErrorKind_ERRORKIND_HANDSHAKE : t_ErrorKind
  | ErrorKind_ERRORKIND_TUNNEL : t_ErrorKind
  | ErrorKind_ERRORKIND_ALPN : t_ErrorKind
  | ErrorKind_ERRORKIND_IO : t_ErrorKind

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_58: Core.Default.t_Default t_ErrorKind =
  {
    f_default_pre = (fun (_: Prims.unit) -> true);
    f_default_post = (fun (_: Prims.unit) (out: t_ErrorKind) -> true);
    f_default = fun (_: Prims.unit) -> ErrorKind_ERRORKIND_API <: t_ErrorKind
  }

let discriminant_ErrorKind_ERRORKIND_TUNNEL: isize = isz 12

val t_ErrorKind_cast_to_repr (x: t_ErrorKind)
    : Prims.Pure isize Prims.l_True (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_56: Protobuf.Enums.t_Enum t_ErrorKind =
  {
    _super_8099741844003281729 = FStar.Tactics.Typeclasses.solve;
    _super_11581440318597584651 = FStar.Tactics.Typeclasses.solve;
    _super_11603873402755071380 = FStar.Tactics.Typeclasses.solve;
    _super_3331601577671695699 = FStar.Tactics.Typeclasses.solve;
    _super_10171955091559533151 = FStar.Tactics.Typeclasses.solve;
    _super_14975916834865509998 = FStar.Tactics.Typeclasses.solve;
    f_NAME = "ErrorKind";
    f_value_pre = (fun (self: t_ErrorKind) -> true);
    f_value_post = (fun (self: t_ErrorKind) (out: i32) -> true);
    f_value = (fun (self: t_ErrorKind) -> cast (t_ErrorKind_cast_to_repr self <: isize) <: i32);
    f_from_i32_pre = (fun (value: i32) -> true);
    f_from_i32_post = (fun (value: i32) (out: Core.Option.t_Option t_ErrorKind) -> true);
    f_from_i32
    =
    (fun (value: i32) ->
        match value with
        | 0l ->
          Core.Option.Option_Some (ErrorKind_ERRORKIND_API <: t_ErrorKind)
          <:
          Core.Option.t_Option t_ErrorKind
        | 1l ->
          Core.Option.Option_Some (ErrorKind_ERRORKIND_CONFIGURATION <: t_ErrorKind)
          <:
          Core.Option.t_Option t_ErrorKind
        | 2l ->
          Core.Option.Option_Some (ErrorKind_ERRORKIND_TLS_CONFIGURATION <: t_ErrorKind)
          <:
          Core.Option.t_Option t_ErrorKind
        | 3l ->
          Core.Option.Option_Some (ErrorKind_ERRORKIND_CERTIFICATE <: t_ErrorKind)
          <:
          Core.Option.t_Option t_ErrorKind
        | 4l ->
          Core.Option.Option_Some (ErrorKind_ERRORKIND_SYSTEM <: t_ErrorKind)
          <:
          Core.Option.t_Option t_ErrorKind
        | 5l ->
          Core.Option.Option_Some (ErrorKind_ERRORKIND_SOCKET <: t_ErrorKind)
          <:
          Core.Option.t_Option t_ErrorKind
        | 6l ->
          Core.Option.Option_Some (ErrorKind_ERRORKIND_PROTOBUF <: t_ErrorKind)
          <:
          Core.Option.t_Option t_ErrorKind
        | 7l ->
          Core.Option.Option_Some (ErrorKind_ERRORKIND_PRIVATE_KEY <: t_ErrorKind)
          <:
          Core.Option.t_Option t_ErrorKind
        | 8l ->
          Core.Option.Option_Some (ErrorKind_ERRORKIND_ASN1 <: t_ErrorKind)
          <:
          Core.Option.t_Option t_ErrorKind
        | 9l ->
          Core.Option.Option_Some (ErrorKind_ERRORKIND_DATA_SOURCE <: t_ErrorKind)
          <:
          Core.Option.t_Option t_ErrorKind
        | 10l ->
          Core.Option.Option_Some (ErrorKind_ERRORKIND_KEM <: t_ErrorKind)
          <:
          Core.Option.t_Option t_ErrorKind
        | 11l ->
          Core.Option.Option_Some (ErrorKind_ERRORKIND_HANDSHAKE <: t_ErrorKind)
          <:
          Core.Option.t_Option t_ErrorKind
        | 12l ->
          Core.Option.Option_Some (ErrorKind_ERRORKIND_TUNNEL <: t_ErrorKind)
          <:
          Core.Option.t_Option t_ErrorKind
        | 13l ->
          Core.Option.Option_Some (ErrorKind_ERRORKIND_ALPN <: t_ErrorKind)
          <:
          Core.Option.t_Option t_ErrorKind
        | 14l ->
          Core.Option.Option_Some (ErrorKind_ERRORKIND_IO <: t_ErrorKind)
          <:
          Core.Option.t_Option t_ErrorKind
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_ErrorKind);
    f_from_str_pre = (fun (str: string) -> true);
    f_from_str_post = (fun (str: string) (out: Core.Option.t_Option t_ErrorKind) -> true);
    f_from_str
    =
    (fun (str: string) ->
        match str with
        | "ERRORKIND_API" ->
          Core.Option.Option_Some (ErrorKind_ERRORKIND_API <: t_ErrorKind)
          <:
          Core.Option.t_Option t_ErrorKind
        | "ERRORKIND_CONFIGURATION" ->
          Core.Option.Option_Some (ErrorKind_ERRORKIND_CONFIGURATION <: t_ErrorKind)
          <:
          Core.Option.t_Option t_ErrorKind
        | "ERRORKIND_TLS_CONFIGURATION" ->
          Core.Option.Option_Some (ErrorKind_ERRORKIND_TLS_CONFIGURATION <: t_ErrorKind)
          <:
          Core.Option.t_Option t_ErrorKind
        | "ERRORKIND_CERTIFICATE" ->
          Core.Option.Option_Some (ErrorKind_ERRORKIND_CERTIFICATE <: t_ErrorKind)
          <:
          Core.Option.t_Option t_ErrorKind
        | "ERRORKIND_SYSTEM" ->
          Core.Option.Option_Some (ErrorKind_ERRORKIND_SYSTEM <: t_ErrorKind)
          <:
          Core.Option.t_Option t_ErrorKind
        | "ERRORKIND_SOCKET" ->
          Core.Option.Option_Some (ErrorKind_ERRORKIND_SOCKET <: t_ErrorKind)
          <:
          Core.Option.t_Option t_ErrorKind
        | "ERRORKIND_PROTOBUF" ->
          Core.Option.Option_Some (ErrorKind_ERRORKIND_PROTOBUF <: t_ErrorKind)
          <:
          Core.Option.t_Option t_ErrorKind
        | "ERRORKIND_PRIVATE_KEY" ->
          Core.Option.Option_Some (ErrorKind_ERRORKIND_PRIVATE_KEY <: t_ErrorKind)
          <:
          Core.Option.t_Option t_ErrorKind
        | "ERRORKIND_ASN1" ->
          Core.Option.Option_Some (ErrorKind_ERRORKIND_ASN1 <: t_ErrorKind)
          <:
          Core.Option.t_Option t_ErrorKind
        | "ERRORKIND_DATA_SOURCE" ->
          Core.Option.Option_Some (ErrorKind_ERRORKIND_DATA_SOURCE <: t_ErrorKind)
          <:
          Core.Option.t_Option t_ErrorKind
        | "ERRORKIND_KEM" ->
          Core.Option.Option_Some (ErrorKind_ERRORKIND_KEM <: t_ErrorKind)
          <:
          Core.Option.t_Option t_ErrorKind
        | "ERRORKIND_HANDSHAKE" ->
          Core.Option.Option_Some (ErrorKind_ERRORKIND_HANDSHAKE <: t_ErrorKind)
          <:
          Core.Option.t_Option t_ErrorKind
        | "ERRORKIND_TUNNEL" ->
          Core.Option.Option_Some (ErrorKind_ERRORKIND_TUNNEL <: t_ErrorKind)
          <:
          Core.Option.t_Option t_ErrorKind
        | "ERRORKIND_ALPN" ->
          Core.Option.Option_Some (ErrorKind_ERRORKIND_ALPN <: t_ErrorKind)
          <:
          Core.Option.t_Option t_ErrorKind
        | "ERRORKIND_IO" ->
          Core.Option.Option_Some (ErrorKind_ERRORKIND_IO <: t_ErrorKind)
          <:
          Core.Option.t_Option t_ErrorKind
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_ErrorKind);
    f_VALUES
    =
    Rust_primitives.unsize (let list =
          [
            ErrorKind_ERRORKIND_API <: t_ErrorKind; ErrorKind_ERRORKIND_CONFIGURATION <: t_ErrorKind;
            ErrorKind_ERRORKIND_TLS_CONFIGURATION <: t_ErrorKind;
            ErrorKind_ERRORKIND_CERTIFICATE <: t_ErrorKind;
            ErrorKind_ERRORKIND_SYSTEM <: t_ErrorKind; ErrorKind_ERRORKIND_SOCKET <: t_ErrorKind;
            ErrorKind_ERRORKIND_PROTOBUF <: t_ErrorKind;
            ErrorKind_ERRORKIND_PRIVATE_KEY <: t_ErrorKind; ErrorKind_ERRORKIND_ASN1 <: t_ErrorKind;
            ErrorKind_ERRORKIND_DATA_SOURCE <: t_ErrorKind; ErrorKind_ERRORKIND_KEM <: t_ErrorKind;
            ErrorKind_ERRORKIND_HANDSHAKE <: t_ErrorKind; ErrorKind_ERRORKIND_TUNNEL <: t_ErrorKind;
            ErrorKind_ERRORKIND_ALPN <: t_ErrorKind; ErrorKind_ERRORKIND_IO <: t_ErrorKind
          ]
        in
        FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 15);
        Rust_primitives.Hax.array_of_list 15 list)
  }

let discriminant_HandshakeError_HANDSHAKEERROR_CERTIFICATE_EXPIRED: isize = isz 2

let discriminant_HandshakeError_HANDSHAKEERROR_CERTIFICATE_REVOKED: isize = isz 3

let discriminant_HandshakeError_HANDSHAKEERROR_CERTIFICATE_SIGNATURE_VERIFICATION_FAILED: isize =
  isz 5

let discriminant_HandshakeError_HANDSHAKEERROR_CERTIFICATE_VERIFICATION_FAILED: isize = isz 1

let discriminant_HandshakeError_HANDSHAKEERROR_DEPTH_EXCEEDED: isize = isz 7

let discriminant_HandshakeError_HANDSHAKEERROR_INVALID_CERTIFICATE: isize = isz 4

let discriminant_HandshakeError_HANDSHAKEERROR_INVALID_SERVER_NAME: isize = isz 0

let discriminant_HandshakeError_HANDSHAKEERROR_NO_SHARED_CIPHER: isize = isz 9

let discriminant_HandshakeError_HANDSHAKEERROR_NO_SUITABLE_KEY_SHARE: isize = isz 10

let discriminant_HandshakeError_HANDSHAKEERROR_UNKNOWN_ERROR: isize = isz 6

type t_HandshakeError =
  | HandshakeError_HANDSHAKEERROR_INVALID_SERVER_NAME : t_HandshakeError
  | HandshakeError_HANDSHAKEERROR_CERTIFICATE_VERIFICATION_FAILED : t_HandshakeError
  | HandshakeError_HANDSHAKEERROR_CERTIFICATE_EXPIRED : t_HandshakeError
  | HandshakeError_HANDSHAKEERROR_CERTIFICATE_REVOKED : t_HandshakeError
  | HandshakeError_HANDSHAKEERROR_INVALID_CERTIFICATE : t_HandshakeError
  | HandshakeError_HANDSHAKEERROR_CERTIFICATE_SIGNATURE_VERIFICATION_FAILED : t_HandshakeError
  | HandshakeError_HANDSHAKEERROR_DEPTH_EXCEEDED : t_HandshakeError
  | HandshakeError_HANDSHAKEERROR_UNSUPPORTED_PROTOCOL : t_HandshakeError
  | HandshakeError_HANDSHAKEERROR_NO_SHARED_CIPHER : t_HandshakeError
  | HandshakeError_HANDSHAKEERROR_NO_SUITABLE_KEY_SHARE : t_HandshakeError
  | HandshakeError_HANDSHAKEERROR_UNKNOWN_ERROR : t_HandshakeError

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_50: Core.Default.t_Default t_HandshakeError =
  {
    f_default_pre = (fun (_: Prims.unit) -> true);
    f_default_post = (fun (_: Prims.unit) (out: t_HandshakeError) -> true);
    f_default
    =
    fun (_: Prims.unit) -> HandshakeError_HANDSHAKEERROR_INVALID_SERVER_NAME <: t_HandshakeError
  }

let discriminant_HandshakeError_HANDSHAKEERROR_UNSUPPORTED_PROTOCOL: isize = isz 8

val t_HandshakeError_cast_to_repr (x: t_HandshakeError)
    : Prims.Pure isize Prims.l_True (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_48: Protobuf.Enums.t_Enum t_HandshakeError =
  {
    _super_8099741844003281729 = FStar.Tactics.Typeclasses.solve;
    _super_11581440318597584651 = FStar.Tactics.Typeclasses.solve;
    _super_11603873402755071380 = FStar.Tactics.Typeclasses.solve;
    _super_3331601577671695699 = FStar.Tactics.Typeclasses.solve;
    _super_10171955091559533151 = FStar.Tactics.Typeclasses.solve;
    _super_14975916834865509998 = FStar.Tactics.Typeclasses.solve;
    f_NAME = "HandshakeError";
    f_value_pre = (fun (self: t_HandshakeError) -> true);
    f_value_post = (fun (self: t_HandshakeError) (out: i32) -> true);
    f_value
    =
    (fun (self: t_HandshakeError) -> cast (t_HandshakeError_cast_to_repr self <: isize) <: i32);
    f_from_i32_pre = (fun (value: i32) -> true);
    f_from_i32_post = (fun (value: i32) (out: Core.Option.t_Option t_HandshakeError) -> true);
    f_from_i32
    =
    (fun (value: i32) ->
        match value with
        | 0l ->
          Core.Option.Option_Some
          (HandshakeError_HANDSHAKEERROR_INVALID_SERVER_NAME <: t_HandshakeError)
          <:
          Core.Option.t_Option t_HandshakeError
        | 1l ->
          Core.Option.Option_Some
          (HandshakeError_HANDSHAKEERROR_CERTIFICATE_VERIFICATION_FAILED <: t_HandshakeError)
          <:
          Core.Option.t_Option t_HandshakeError
        | 2l ->
          Core.Option.Option_Some
          (HandshakeError_HANDSHAKEERROR_CERTIFICATE_EXPIRED <: t_HandshakeError)
          <:
          Core.Option.t_Option t_HandshakeError
        | 3l ->
          Core.Option.Option_Some
          (HandshakeError_HANDSHAKEERROR_CERTIFICATE_REVOKED <: t_HandshakeError)
          <:
          Core.Option.t_Option t_HandshakeError
        | 4l ->
          Core.Option.Option_Some
          (HandshakeError_HANDSHAKEERROR_INVALID_CERTIFICATE <: t_HandshakeError)
          <:
          Core.Option.t_Option t_HandshakeError
        | 5l ->
          Core.Option.Option_Some
          (HandshakeError_HANDSHAKEERROR_CERTIFICATE_SIGNATURE_VERIFICATION_FAILED
            <:
            t_HandshakeError)
          <:
          Core.Option.t_Option t_HandshakeError
        | 7l ->
          Core.Option.Option_Some (HandshakeError_HANDSHAKEERROR_DEPTH_EXCEEDED <: t_HandshakeError)
          <:
          Core.Option.t_Option t_HandshakeError
        | 8l ->
          Core.Option.Option_Some
          (HandshakeError_HANDSHAKEERROR_UNSUPPORTED_PROTOCOL <: t_HandshakeError)
          <:
          Core.Option.t_Option t_HandshakeError
        | 9l ->
          Core.Option.Option_Some
          (HandshakeError_HANDSHAKEERROR_NO_SHARED_CIPHER <: t_HandshakeError)
          <:
          Core.Option.t_Option t_HandshakeError
        | 10l ->
          Core.Option.Option_Some
          (HandshakeError_HANDSHAKEERROR_NO_SUITABLE_KEY_SHARE <: t_HandshakeError)
          <:
          Core.Option.t_Option t_HandshakeError
        | 6l ->
          Core.Option.Option_Some (HandshakeError_HANDSHAKEERROR_UNKNOWN_ERROR <: t_HandshakeError)
          <:
          Core.Option.t_Option t_HandshakeError
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_HandshakeError);
    f_from_str_pre = (fun (str: string) -> true);
    f_from_str_post = (fun (str: string) (out: Core.Option.t_Option t_HandshakeError) -> true);
    f_from_str
    =
    (fun (str: string) ->
        match str with
        | "HANDSHAKEERROR_INVALID_SERVER_NAME" ->
          Core.Option.Option_Some
          (HandshakeError_HANDSHAKEERROR_INVALID_SERVER_NAME <: t_HandshakeError)
          <:
          Core.Option.t_Option t_HandshakeError
        | "HANDSHAKEERROR_CERTIFICATE_VERIFICATION_FAILED" ->
          Core.Option.Option_Some
          (HandshakeError_HANDSHAKEERROR_CERTIFICATE_VERIFICATION_FAILED <: t_HandshakeError)
          <:
          Core.Option.t_Option t_HandshakeError
        | "HANDSHAKEERROR_CERTIFICATE_EXPIRED" ->
          Core.Option.Option_Some
          (HandshakeError_HANDSHAKEERROR_CERTIFICATE_EXPIRED <: t_HandshakeError)
          <:
          Core.Option.t_Option t_HandshakeError
        | "HANDSHAKEERROR_CERTIFICATE_REVOKED" ->
          Core.Option.Option_Some
          (HandshakeError_HANDSHAKEERROR_CERTIFICATE_REVOKED <: t_HandshakeError)
          <:
          Core.Option.t_Option t_HandshakeError
        | "HANDSHAKEERROR_INVALID_CERTIFICATE" ->
          Core.Option.Option_Some
          (HandshakeError_HANDSHAKEERROR_INVALID_CERTIFICATE <: t_HandshakeError)
          <:
          Core.Option.t_Option t_HandshakeError
        | "HANDSHAKEERROR_CERTIFICATE_SIGNATURE_VERIFICATION_FAILED" ->
          Core.Option.Option_Some
          (HandshakeError_HANDSHAKEERROR_CERTIFICATE_SIGNATURE_VERIFICATION_FAILED
            <:
            t_HandshakeError)
          <:
          Core.Option.t_Option t_HandshakeError
        | "HANDSHAKEERROR_DEPTH_EXCEEDED" ->
          Core.Option.Option_Some (HandshakeError_HANDSHAKEERROR_DEPTH_EXCEEDED <: t_HandshakeError)
          <:
          Core.Option.t_Option t_HandshakeError
        | "HANDSHAKEERROR_UNSUPPORTED_PROTOCOL" ->
          Core.Option.Option_Some
          (HandshakeError_HANDSHAKEERROR_UNSUPPORTED_PROTOCOL <: t_HandshakeError)
          <:
          Core.Option.t_Option t_HandshakeError
        | "HANDSHAKEERROR_NO_SHARED_CIPHER" ->
          Core.Option.Option_Some
          (HandshakeError_HANDSHAKEERROR_NO_SHARED_CIPHER <: t_HandshakeError)
          <:
          Core.Option.t_Option t_HandshakeError
        | "HANDSHAKEERROR_NO_SUITABLE_KEY_SHARE" ->
          Core.Option.Option_Some
          (HandshakeError_HANDSHAKEERROR_NO_SUITABLE_KEY_SHARE <: t_HandshakeError)
          <:
          Core.Option.t_Option t_HandshakeError
        | "HANDSHAKEERROR_UNKNOWN_ERROR" ->
          Core.Option.Option_Some (HandshakeError_HANDSHAKEERROR_UNKNOWN_ERROR <: t_HandshakeError)
          <:
          Core.Option.t_Option t_HandshakeError
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_HandshakeError);
    f_VALUES
    =
    Rust_primitives.unsize (let list =
          [
            HandshakeError_HANDSHAKEERROR_INVALID_SERVER_NAME <: t_HandshakeError;
            HandshakeError_HANDSHAKEERROR_CERTIFICATE_VERIFICATION_FAILED <: t_HandshakeError;
            HandshakeError_HANDSHAKEERROR_CERTIFICATE_EXPIRED <: t_HandshakeError;
            HandshakeError_HANDSHAKEERROR_CERTIFICATE_REVOKED <: t_HandshakeError;
            HandshakeError_HANDSHAKEERROR_INVALID_CERTIFICATE <: t_HandshakeError;
            HandshakeError_HANDSHAKEERROR_CERTIFICATE_SIGNATURE_VERIFICATION_FAILED
            <:
            t_HandshakeError; HandshakeError_HANDSHAKEERROR_DEPTH_EXCEEDED <: t_HandshakeError;
            HandshakeError_HANDSHAKEERROR_UNSUPPORTED_PROTOCOL <: t_HandshakeError;
            HandshakeError_HANDSHAKEERROR_NO_SHARED_CIPHER <: t_HandshakeError;
            HandshakeError_HANDSHAKEERROR_NO_SUITABLE_KEY_SHARE <: t_HandshakeError;
            HandshakeError_HANDSHAKEERROR_UNKNOWN_ERROR <: t_HandshakeError
          ]
        in
        FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 11);
        Rust_primitives.Hax.array_of_list 11 list)
  }

let discriminant_KEMError_KEMERROR_INVALID: isize = isz 0

type t_KEMError =
  | KEMError_KEMERROR_INVALID : t_KEMError
  | KEMError_KEMERROR_TOO_MANY : t_KEMError

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_38: Core.Default.t_Default t_KEMError =
  {
    f_default_pre = (fun (_: Prims.unit) -> true);
    f_default_post = (fun (_: Prims.unit) (out: t_KEMError) -> true);
    f_default = fun (_: Prims.unit) -> KEMError_KEMERROR_INVALID <: t_KEMError
  }

let discriminant_KEMError_KEMERROR_TOO_MANY: isize = isz 1

val t_KEMError_cast_to_repr (x: t_KEMError) : Prims.Pure isize Prims.l_True (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_36: Protobuf.Enums.t_Enum t_KEMError =
  {
    _super_8099741844003281729 = FStar.Tactics.Typeclasses.solve;
    _super_11581440318597584651 = FStar.Tactics.Typeclasses.solve;
    _super_11603873402755071380 = FStar.Tactics.Typeclasses.solve;
    _super_3331601577671695699 = FStar.Tactics.Typeclasses.solve;
    _super_10171955091559533151 = FStar.Tactics.Typeclasses.solve;
    _super_14975916834865509998 = FStar.Tactics.Typeclasses.solve;
    f_NAME = "KEMError";
    f_value_pre = (fun (self: t_KEMError) -> true);
    f_value_post = (fun (self: t_KEMError) (out: i32) -> true);
    f_value = (fun (self: t_KEMError) -> cast (t_KEMError_cast_to_repr self <: isize) <: i32);
    f_from_i32_pre = (fun (value: i32) -> true);
    f_from_i32_post = (fun (value: i32) (out: Core.Option.t_Option t_KEMError) -> true);
    f_from_i32
    =
    (fun (value: i32) ->
        match value with
        | 0l ->
          Core.Option.Option_Some (KEMError_KEMERROR_INVALID <: t_KEMError)
          <:
          Core.Option.t_Option t_KEMError
        | 1l ->
          Core.Option.Option_Some (KEMError_KEMERROR_TOO_MANY <: t_KEMError)
          <:
          Core.Option.t_Option t_KEMError
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_KEMError);
    f_from_str_pre = (fun (str: string) -> true);
    f_from_str_post = (fun (str: string) (out: Core.Option.t_Option t_KEMError) -> true);
    f_from_str
    =
    (fun (str: string) ->
        match str with
        | "KEMERROR_INVALID" ->
          Core.Option.Option_Some (KEMError_KEMERROR_INVALID <: t_KEMError)
          <:
          Core.Option.t_Option t_KEMError
        | "KEMERROR_TOO_MANY" ->
          Core.Option.Option_Some (KEMError_KEMERROR_TOO_MANY <: t_KEMError)
          <:
          Core.Option.t_Option t_KEMError
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_KEMError);
    f_VALUES
    =
    Rust_primitives.unsize (let list =
          [KEMError_KEMERROR_INVALID <: t_KEMError; KEMError_KEMERROR_TOO_MANY <: t_KEMError]
        in
        FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
        Rust_primitives.Hax.array_of_list 2 list)
  }

let discriminant_PrivateKeyError_PRIVATEKEYERROR_MALFORMED: isize = isz 0

let discriminant_PrivateKeyError_PRIVATEKEYERROR_NOT_FOUND: isize = isz 1

let discriminant_PrivateKeyError_PRIVATEKEYERROR_NOT_SERVER: isize = isz 4

let discriminant_PrivateKeyError_PRIVATEKEYERROR_UNKNOWN: isize = isz 2

type t_PrivateKeyError =
  | PrivateKeyError_PRIVATEKEYERROR_MALFORMED : t_PrivateKeyError
  | PrivateKeyError_PRIVATEKEYERROR_NOT_FOUND : t_PrivateKeyError
  | PrivateKeyError_PRIVATEKEYERROR_UNKNOWN : t_PrivateKeyError
  | PrivateKeyError_PRIVATEKEYERROR_UNSUPPORTED : t_PrivateKeyError
  | PrivateKeyError_PRIVATEKEYERROR_NOT_SERVER : t_PrivateKeyError

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_22: Core.Default.t_Default t_PrivateKeyError =
  {
    f_default_pre = (fun (_: Prims.unit) -> true);
    f_default_post = (fun (_: Prims.unit) (out: t_PrivateKeyError) -> true);
    f_default
    =
    fun (_: Prims.unit) -> PrivateKeyError_PRIVATEKEYERROR_MALFORMED <: t_PrivateKeyError
  }

let discriminant_PrivateKeyError_PRIVATEKEYERROR_UNSUPPORTED: isize = isz 3

val t_PrivateKeyError_cast_to_repr (x: t_PrivateKeyError)
    : Prims.Pure isize Prims.l_True (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_20: Protobuf.Enums.t_Enum t_PrivateKeyError =
  {
    _super_8099741844003281729 = FStar.Tactics.Typeclasses.solve;
    _super_11581440318597584651 = FStar.Tactics.Typeclasses.solve;
    _super_11603873402755071380 = FStar.Tactics.Typeclasses.solve;
    _super_3331601577671695699 = FStar.Tactics.Typeclasses.solve;
    _super_10171955091559533151 = FStar.Tactics.Typeclasses.solve;
    _super_14975916834865509998 = FStar.Tactics.Typeclasses.solve;
    f_NAME = "PrivateKeyError";
    f_value_pre = (fun (self: t_PrivateKeyError) -> true);
    f_value_post = (fun (self: t_PrivateKeyError) (out: i32) -> true);
    f_value
    =
    (fun (self: t_PrivateKeyError) -> cast (t_PrivateKeyError_cast_to_repr self <: isize) <: i32);
    f_from_i32_pre = (fun (value: i32) -> true);
    f_from_i32_post = (fun (value: i32) (out: Core.Option.t_Option t_PrivateKeyError) -> true);
    f_from_i32
    =
    (fun (value: i32) ->
        match value with
        | 0l ->
          Core.Option.Option_Some (PrivateKeyError_PRIVATEKEYERROR_MALFORMED <: t_PrivateKeyError)
          <:
          Core.Option.t_Option t_PrivateKeyError
        | 1l ->
          Core.Option.Option_Some (PrivateKeyError_PRIVATEKEYERROR_NOT_FOUND <: t_PrivateKeyError)
          <:
          Core.Option.t_Option t_PrivateKeyError
        | 2l ->
          Core.Option.Option_Some (PrivateKeyError_PRIVATEKEYERROR_UNKNOWN <: t_PrivateKeyError)
          <:
          Core.Option.t_Option t_PrivateKeyError
        | 3l ->
          Core.Option.Option_Some (PrivateKeyError_PRIVATEKEYERROR_UNSUPPORTED <: t_PrivateKeyError)
          <:
          Core.Option.t_Option t_PrivateKeyError
        | 4l ->
          Core.Option.Option_Some (PrivateKeyError_PRIVATEKEYERROR_NOT_SERVER <: t_PrivateKeyError)
          <:
          Core.Option.t_Option t_PrivateKeyError
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_PrivateKeyError);
    f_from_str_pre = (fun (str: string) -> true);
    f_from_str_post = (fun (str: string) (out: Core.Option.t_Option t_PrivateKeyError) -> true);
    f_from_str
    =
    (fun (str: string) ->
        match str with
        | "PRIVATEKEYERROR_MALFORMED" ->
          Core.Option.Option_Some (PrivateKeyError_PRIVATEKEYERROR_MALFORMED <: t_PrivateKeyError)
          <:
          Core.Option.t_Option t_PrivateKeyError
        | "PRIVATEKEYERROR_NOT_FOUND" ->
          Core.Option.Option_Some (PrivateKeyError_PRIVATEKEYERROR_NOT_FOUND <: t_PrivateKeyError)
          <:
          Core.Option.t_Option t_PrivateKeyError
        | "PRIVATEKEYERROR_UNKNOWN" ->
          Core.Option.Option_Some (PrivateKeyError_PRIVATEKEYERROR_UNKNOWN <: t_PrivateKeyError)
          <:
          Core.Option.t_Option t_PrivateKeyError
        | "PRIVATEKEYERROR_UNSUPPORTED" ->
          Core.Option.Option_Some (PrivateKeyError_PRIVATEKEYERROR_UNSUPPORTED <: t_PrivateKeyError)
          <:
          Core.Option.t_Option t_PrivateKeyError
        | "PRIVATEKEYERROR_NOT_SERVER" ->
          Core.Option.Option_Some (PrivateKeyError_PRIVATEKEYERROR_NOT_SERVER <: t_PrivateKeyError)
          <:
          Core.Option.t_Option t_PrivateKeyError
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_PrivateKeyError);
    f_VALUES
    =
    Rust_primitives.unsize (let list =
          [
            PrivateKeyError_PRIVATEKEYERROR_MALFORMED <: t_PrivateKeyError;
            PrivateKeyError_PRIVATEKEYERROR_NOT_FOUND <: t_PrivateKeyError;
            PrivateKeyError_PRIVATEKEYERROR_UNKNOWN <: t_PrivateKeyError;
            PrivateKeyError_PRIVATEKEYERROR_UNSUPPORTED <: t_PrivateKeyError;
            PrivateKeyError_PRIVATEKEYERROR_NOT_SERVER <: t_PrivateKeyError
          ]
        in
        FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 5);
        Rust_primitives.Hax.array_of_list 5 list)
  }

let discriminant_ProtobufError_PROTOBUFERROR_EMPTY: isize = isz 0

let discriminant_ProtobufError_PROTOBUFERROR_INVALID_ARGUMENT: isize = isz 4

let discriminant_ProtobufError_PROTOBUFERROR_NULLPTR: isize = isz 3

let discriminant_ProtobufError_PROTOBUFERROR_PARSE_FAILED: isize = isz 2

type t_ProtobufError =
  | ProtobufError_PROTOBUFERROR_EMPTY : t_ProtobufError
  | ProtobufError_PROTOBUFERROR_TOO_BIG : t_ProtobufError
  | ProtobufError_PROTOBUFERROR_PARSE_FAILED : t_ProtobufError
  | ProtobufError_PROTOBUFERROR_NULLPTR : t_ProtobufError
  | ProtobufError_PROTOBUFERROR_INVALID_ARGUMENT : t_ProtobufError

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_10: Core.Default.t_Default t_ProtobufError =
  {
    f_default_pre = (fun (_: Prims.unit) -> true);
    f_default_post = (fun (_: Prims.unit) (out: t_ProtobufError) -> true);
    f_default = fun (_: Prims.unit) -> ProtobufError_PROTOBUFERROR_EMPTY <: t_ProtobufError
  }

let discriminant_ProtobufError_PROTOBUFERROR_TOO_BIG: isize = isz 1

val t_ProtobufError_cast_to_repr (x: t_ProtobufError)
    : Prims.Pure isize Prims.l_True (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_8: Protobuf.Enums.t_Enum t_ProtobufError =
  {
    _super_8099741844003281729 = FStar.Tactics.Typeclasses.solve;
    _super_11581440318597584651 = FStar.Tactics.Typeclasses.solve;
    _super_11603873402755071380 = FStar.Tactics.Typeclasses.solve;
    _super_3331601577671695699 = FStar.Tactics.Typeclasses.solve;
    _super_10171955091559533151 = FStar.Tactics.Typeclasses.solve;
    _super_14975916834865509998 = FStar.Tactics.Typeclasses.solve;
    f_NAME = "ProtobufError";
    f_value_pre = (fun (self: t_ProtobufError) -> true);
    f_value_post = (fun (self: t_ProtobufError) (out: i32) -> true);
    f_value
    =
    (fun (self: t_ProtobufError) -> cast (t_ProtobufError_cast_to_repr self <: isize) <: i32);
    f_from_i32_pre = (fun (value: i32) -> true);
    f_from_i32_post = (fun (value: i32) (out: Core.Option.t_Option t_ProtobufError) -> true);
    f_from_i32
    =
    (fun (value: i32) ->
        match value with
        | 0l ->
          Core.Option.Option_Some (ProtobufError_PROTOBUFERROR_EMPTY <: t_ProtobufError)
          <:
          Core.Option.t_Option t_ProtobufError
        | 1l ->
          Core.Option.Option_Some (ProtobufError_PROTOBUFERROR_TOO_BIG <: t_ProtobufError)
          <:
          Core.Option.t_Option t_ProtobufError
        | 2l ->
          Core.Option.Option_Some (ProtobufError_PROTOBUFERROR_PARSE_FAILED <: t_ProtobufError)
          <:
          Core.Option.t_Option t_ProtobufError
        | 3l ->
          Core.Option.Option_Some (ProtobufError_PROTOBUFERROR_NULLPTR <: t_ProtobufError)
          <:
          Core.Option.t_Option t_ProtobufError
        | 4l ->
          Core.Option.Option_Some (ProtobufError_PROTOBUFERROR_INVALID_ARGUMENT <: t_ProtobufError)
          <:
          Core.Option.t_Option t_ProtobufError
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_ProtobufError);
    f_from_str_pre = (fun (str: string) -> true);
    f_from_str_post = (fun (str: string) (out: Core.Option.t_Option t_ProtobufError) -> true);
    f_from_str
    =
    (fun (str: string) ->
        match str with
        | "PROTOBUFERROR_EMPTY" ->
          Core.Option.Option_Some (ProtobufError_PROTOBUFERROR_EMPTY <: t_ProtobufError)
          <:
          Core.Option.t_Option t_ProtobufError
        | "PROTOBUFERROR_TOO_BIG" ->
          Core.Option.Option_Some (ProtobufError_PROTOBUFERROR_TOO_BIG <: t_ProtobufError)
          <:
          Core.Option.t_Option t_ProtobufError
        | "PROTOBUFERROR_PARSE_FAILED" ->
          Core.Option.Option_Some (ProtobufError_PROTOBUFERROR_PARSE_FAILED <: t_ProtobufError)
          <:
          Core.Option.t_Option t_ProtobufError
        | "PROTOBUFERROR_NULLPTR" ->
          Core.Option.Option_Some (ProtobufError_PROTOBUFERROR_NULLPTR <: t_ProtobufError)
          <:
          Core.Option.t_Option t_ProtobufError
        | "PROTOBUFERROR_INVALID_ARGUMENT" ->
          Core.Option.Option_Some (ProtobufError_PROTOBUFERROR_INVALID_ARGUMENT <: t_ProtobufError)
          <:
          Core.Option.t_Option t_ProtobufError
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_ProtobufError);
    f_VALUES
    =
    Rust_primitives.unsize (let list =
          [
            ProtobufError_PROTOBUFERROR_EMPTY <: t_ProtobufError;
            ProtobufError_PROTOBUFERROR_TOO_BIG <: t_ProtobufError;
            ProtobufError_PROTOBUFERROR_PARSE_FAILED <: t_ProtobufError;
            ProtobufError_PROTOBUFERROR_NULLPTR <: t_ProtobufError;
            ProtobufError_PROTOBUFERROR_INVALID_ARGUMENT <: t_ProtobufError
          ]
        in
        FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 5);
        Rust_primitives.Hax.array_of_list 5 list)
  }

let discriminant_SocketError_SOCKETERROR_BAD_FD: isize = isz 0

let discriminant_SocketError_SOCKETERROR_BAD_NETADDR: isize = isz 2

let discriminant_SocketError_SOCKETERROR_CREATION_FAILED: isize = isz 1

let discriminant_SocketError_SOCKETERROR_FSTAT_FAILED: isize = isz 4

let discriminant_SocketError_SOCKETERROR_GETSOCKNAME_FAILED: isize = isz 6

let discriminant_SocketError_SOCKETERROR_INVALID_AI_FAMILY: isize = isz 8

let discriminant_SocketError_SOCKETERROR_NETADDR_UNKNOWN: isize = isz 3

let discriminant_SocketError_SOCKETERROR_NOT_SOCK: isize = isz 5

type t_SocketError =
  | SocketError_SOCKETERROR_BAD_FD : t_SocketError
  | SocketError_SOCKETERROR_CREATION_FAILED : t_SocketError
  | SocketError_SOCKETERROR_BAD_NETADDR : t_SocketError
  | SocketError_SOCKETERROR_NETADDR_UNKNOWN : t_SocketError
  | SocketError_SOCKETERROR_FSTAT_FAILED : t_SocketError
  | SocketError_SOCKETERROR_NOT_SOCK : t_SocketError
  | SocketError_SOCKETERROR_GETSOCKNAME_FAILED : t_SocketError
  | SocketError_SOCKETERROR_SETSOCKOPT_FAILED : t_SocketError
  | SocketError_SOCKETERROR_INVALID_AI_FAMILY : t_SocketError

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_46: Core.Default.t_Default t_SocketError =
  {
    f_default_pre = (fun (_: Prims.unit) -> true);
    f_default_post = (fun (_: Prims.unit) (out: t_SocketError) -> true);
    f_default = fun (_: Prims.unit) -> SocketError_SOCKETERROR_BAD_FD <: t_SocketError
  }

let discriminant_SocketError_SOCKETERROR_SETSOCKOPT_FAILED: isize = isz 7

val t_SocketError_cast_to_repr (x: t_SocketError)
    : Prims.Pure isize Prims.l_True (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_44: Protobuf.Enums.t_Enum t_SocketError =
  {
    _super_8099741844003281729 = FStar.Tactics.Typeclasses.solve;
    _super_11581440318597584651 = FStar.Tactics.Typeclasses.solve;
    _super_11603873402755071380 = FStar.Tactics.Typeclasses.solve;
    _super_3331601577671695699 = FStar.Tactics.Typeclasses.solve;
    _super_10171955091559533151 = FStar.Tactics.Typeclasses.solve;
    _super_14975916834865509998 = FStar.Tactics.Typeclasses.solve;
    f_NAME = "SocketError";
    f_value_pre = (fun (self: t_SocketError) -> true);
    f_value_post = (fun (self: t_SocketError) (out: i32) -> true);
    f_value = (fun (self: t_SocketError) -> cast (t_SocketError_cast_to_repr self <: isize) <: i32);
    f_from_i32_pre = (fun (value: i32) -> true);
    f_from_i32_post = (fun (value: i32) (out: Core.Option.t_Option t_SocketError) -> true);
    f_from_i32
    =
    (fun (value: i32) ->
        match value with
        | 0l ->
          Core.Option.Option_Some (SocketError_SOCKETERROR_BAD_FD <: t_SocketError)
          <:
          Core.Option.t_Option t_SocketError
        | 1l ->
          Core.Option.Option_Some (SocketError_SOCKETERROR_CREATION_FAILED <: t_SocketError)
          <:
          Core.Option.t_Option t_SocketError
        | 2l ->
          Core.Option.Option_Some (SocketError_SOCKETERROR_BAD_NETADDR <: t_SocketError)
          <:
          Core.Option.t_Option t_SocketError
        | 3l ->
          Core.Option.Option_Some (SocketError_SOCKETERROR_NETADDR_UNKNOWN <: t_SocketError)
          <:
          Core.Option.t_Option t_SocketError
        | 4l ->
          Core.Option.Option_Some (SocketError_SOCKETERROR_FSTAT_FAILED <: t_SocketError)
          <:
          Core.Option.t_Option t_SocketError
        | 5l ->
          Core.Option.Option_Some (SocketError_SOCKETERROR_NOT_SOCK <: t_SocketError)
          <:
          Core.Option.t_Option t_SocketError
        | 6l ->
          Core.Option.Option_Some (SocketError_SOCKETERROR_GETSOCKNAME_FAILED <: t_SocketError)
          <:
          Core.Option.t_Option t_SocketError
        | 7l ->
          Core.Option.Option_Some (SocketError_SOCKETERROR_SETSOCKOPT_FAILED <: t_SocketError)
          <:
          Core.Option.t_Option t_SocketError
        | 8l ->
          Core.Option.Option_Some (SocketError_SOCKETERROR_INVALID_AI_FAMILY <: t_SocketError)
          <:
          Core.Option.t_Option t_SocketError
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_SocketError);
    f_from_str_pre = (fun (str: string) -> true);
    f_from_str_post = (fun (str: string) (out: Core.Option.t_Option t_SocketError) -> true);
    f_from_str
    =
    (fun (str: string) ->
        match str with
        | "SOCKETERROR_BAD_FD" ->
          Core.Option.Option_Some (SocketError_SOCKETERROR_BAD_FD <: t_SocketError)
          <:
          Core.Option.t_Option t_SocketError
        | "SOCKETERROR_CREATION_FAILED" ->
          Core.Option.Option_Some (SocketError_SOCKETERROR_CREATION_FAILED <: t_SocketError)
          <:
          Core.Option.t_Option t_SocketError
        | "SOCKETERROR_BAD_NETADDR" ->
          Core.Option.Option_Some (SocketError_SOCKETERROR_BAD_NETADDR <: t_SocketError)
          <:
          Core.Option.t_Option t_SocketError
        | "SOCKETERROR_NETADDR_UNKNOWN" ->
          Core.Option.Option_Some (SocketError_SOCKETERROR_NETADDR_UNKNOWN <: t_SocketError)
          <:
          Core.Option.t_Option t_SocketError
        | "SOCKETERROR_FSTAT_FAILED" ->
          Core.Option.Option_Some (SocketError_SOCKETERROR_FSTAT_FAILED <: t_SocketError)
          <:
          Core.Option.t_Option t_SocketError
        | "SOCKETERROR_NOT_SOCK" ->
          Core.Option.Option_Some (SocketError_SOCKETERROR_NOT_SOCK <: t_SocketError)
          <:
          Core.Option.t_Option t_SocketError
        | "SOCKETERROR_GETSOCKNAME_FAILED" ->
          Core.Option.Option_Some (SocketError_SOCKETERROR_GETSOCKNAME_FAILED <: t_SocketError)
          <:
          Core.Option.t_Option t_SocketError
        | "SOCKETERROR_SETSOCKOPT_FAILED" ->
          Core.Option.Option_Some (SocketError_SOCKETERROR_SETSOCKOPT_FAILED <: t_SocketError)
          <:
          Core.Option.t_Option t_SocketError
        | "SOCKETERROR_INVALID_AI_FAMILY" ->
          Core.Option.Option_Some (SocketError_SOCKETERROR_INVALID_AI_FAMILY <: t_SocketError)
          <:
          Core.Option.t_Option t_SocketError
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_SocketError);
    f_VALUES
    =
    Rust_primitives.unsize (let list =
          [
            SocketError_SOCKETERROR_BAD_FD <: t_SocketError;
            SocketError_SOCKETERROR_CREATION_FAILED <: t_SocketError;
            SocketError_SOCKETERROR_BAD_NETADDR <: t_SocketError;
            SocketError_SOCKETERROR_NETADDR_UNKNOWN <: t_SocketError;
            SocketError_SOCKETERROR_FSTAT_FAILED <: t_SocketError;
            SocketError_SOCKETERROR_NOT_SOCK <: t_SocketError;
            SocketError_SOCKETERROR_GETSOCKNAME_FAILED <: t_SocketError;
            SocketError_SOCKETERROR_SETSOCKOPT_FAILED <: t_SocketError;
            SocketError_SOCKETERROR_INVALID_AI_FAMILY <: t_SocketError
          ]
        in
        FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 9);
        Rust_primitives.Hax.array_of_list 9 list)
  }

let discriminant_SystemError_SYSTEMERROR_BACKEND: isize = isz 2

let discriminant_SystemError_SYSTEMERROR_INTEGER_OVERFLOW: isize = isz 1

type t_SystemError =
  | SystemError_SYSTEMERROR_MEMORY : t_SystemError
  | SystemError_SYSTEMERROR_INTEGER_OVERFLOW : t_SystemError
  | SystemError_SYSTEMERROR_BACKEND : t_SystemError

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_42: Core.Default.t_Default t_SystemError =
  {
    f_default_pre = (fun (_: Prims.unit) -> true);
    f_default_post = (fun (_: Prims.unit) (out: t_SystemError) -> true);
    f_default = fun (_: Prims.unit) -> SystemError_SYSTEMERROR_MEMORY <: t_SystemError
  }

let discriminant_SystemError_SYSTEMERROR_MEMORY: isize = isz 0

val t_SystemError_cast_to_repr (x: t_SystemError)
    : Prims.Pure isize Prims.l_True (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_40: Protobuf.Enums.t_Enum t_SystemError =
  {
    _super_8099741844003281729 = FStar.Tactics.Typeclasses.solve;
    _super_11581440318597584651 = FStar.Tactics.Typeclasses.solve;
    _super_11603873402755071380 = FStar.Tactics.Typeclasses.solve;
    _super_3331601577671695699 = FStar.Tactics.Typeclasses.solve;
    _super_10171955091559533151 = FStar.Tactics.Typeclasses.solve;
    _super_14975916834865509998 = FStar.Tactics.Typeclasses.solve;
    f_NAME = "SystemError";
    f_value_pre = (fun (self: t_SystemError) -> true);
    f_value_post = (fun (self: t_SystemError) (out: i32) -> true);
    f_value = (fun (self: t_SystemError) -> cast (t_SystemError_cast_to_repr self <: isize) <: i32);
    f_from_i32_pre = (fun (value: i32) -> true);
    f_from_i32_post = (fun (value: i32) (out: Core.Option.t_Option t_SystemError) -> true);
    f_from_i32
    =
    (fun (value: i32) ->
        match value with
        | 0l ->
          Core.Option.Option_Some (SystemError_SYSTEMERROR_MEMORY <: t_SystemError)
          <:
          Core.Option.t_Option t_SystemError
        | 1l ->
          Core.Option.Option_Some (SystemError_SYSTEMERROR_INTEGER_OVERFLOW <: t_SystemError)
          <:
          Core.Option.t_Option t_SystemError
        | 2l ->
          Core.Option.Option_Some (SystemError_SYSTEMERROR_BACKEND <: t_SystemError)
          <:
          Core.Option.t_Option t_SystemError
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_SystemError);
    f_from_str_pre = (fun (str: string) -> true);
    f_from_str_post = (fun (str: string) (out: Core.Option.t_Option t_SystemError) -> true);
    f_from_str
    =
    (fun (str: string) ->
        match str with
        | "SYSTEMERROR_MEMORY" ->
          Core.Option.Option_Some (SystemError_SYSTEMERROR_MEMORY <: t_SystemError)
          <:
          Core.Option.t_Option t_SystemError
        | "SYSTEMERROR_INTEGER_OVERFLOW" ->
          Core.Option.Option_Some (SystemError_SYSTEMERROR_INTEGER_OVERFLOW <: t_SystemError)
          <:
          Core.Option.t_Option t_SystemError
        | "SYSTEMERROR_BACKEND" ->
          Core.Option.Option_Some (SystemError_SYSTEMERROR_BACKEND <: t_SystemError)
          <:
          Core.Option.t_Option t_SystemError
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_SystemError);
    f_VALUES
    =
    Rust_primitives.unsize (let list =
          [
            SystemError_SYSTEMERROR_MEMORY <: t_SystemError;
            SystemError_SYSTEMERROR_INTEGER_OVERFLOW <: t_SystemError;
            SystemError_SYSTEMERROR_BACKEND <: t_SystemError
          ]
        in
        FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 3);
        Rust_primitives.Hax.array_of_list 3 list)
  }

let discriminant_TLSConfigurationError_TLSCONFIGURATIONERROR_EMPTY: isize = isz 2

let discriminant_TLSConfigurationError_TLSCONFIGURATIONERROR_INVALID: isize = isz 5

let discriminant_TLSConfigurationError_TLSCONFIGURATIONERROR_INVALID_CASE: isize = isz 1

let discriminant_TLSConfigurationError_TLSCONFIGURATIONERROR_PRIVATE_KEY_INCONSISTENT_WITH_CERTIFICATE: isize =
  isz 4

let discriminant_TLSConfigurationError_TLSCONFIGURATIONERROR_UNSUPPORTED_CIPHERSUITE: isize = isz 6

let discriminant_TLSConfigurationError_TLSCONFIGURATIONERROR_UNSUPPORTED_CONTROL_CHARACTERS: isize =
  isz 7

let discriminant_TLSConfigurationError_TLSCONFIGURATIONERROR_UNSUPPORTED_IMPLEMENTATION: isize =
  isz 0

type t_TLSConfigurationError =
  | TLSConfigurationError_TLSCONFIGURATIONERROR_UNSUPPORTED_IMPLEMENTATION : t_TLSConfigurationError
  | TLSConfigurationError_TLSCONFIGURATIONERROR_INVALID_CASE : t_TLSConfigurationError
  | TLSConfigurationError_TLSCONFIGURATIONERROR_EMPTY : t_TLSConfigurationError
  | TLSConfigurationError_TLSCONFIGURATIONERROR_UNSUPPORTED_PROTOCOL_VERSION : t_TLSConfigurationError
  | TLSConfigurationError_TLSCONFIGURATIONERROR_PRIVATE_KEY_INCONSISTENT_WITH_CERTIFICATE : t_TLSConfigurationError
  | TLSConfigurationError_TLSCONFIGURATIONERROR_UNSUPPORTED_CIPHERSUITE : t_TLSConfigurationError
  | TLSConfigurationError_TLSCONFIGURATIONERROR_UNSUPPORTED_CONTROL_CHARACTERS : t_TLSConfigurationError
  | TLSConfigurationError_TLSCONFIGURATIONERROR_INVALID : t_TLSConfigurationError

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_14: Core.Default.t_Default t_TLSConfigurationError =
  {
    f_default_pre = (fun (_: Prims.unit) -> true);
    f_default_post = (fun (_: Prims.unit) (out: t_TLSConfigurationError) -> true);
    f_default
    =
    fun (_: Prims.unit) ->
      TLSConfigurationError_TLSCONFIGURATIONERROR_UNSUPPORTED_IMPLEMENTATION
      <:
      t_TLSConfigurationError
  }

let discriminant_TLSConfigurationError_TLSCONFIGURATIONERROR_UNSUPPORTED_PROTOCOL_VERSION: isize =
  isz 3

val t_TLSConfigurationError_cast_to_repr (x: t_TLSConfigurationError)
    : Prims.Pure isize Prims.l_True (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_12: Protobuf.Enums.t_Enum t_TLSConfigurationError =
  {
    _super_8099741844003281729 = FStar.Tactics.Typeclasses.solve;
    _super_11581440318597584651 = FStar.Tactics.Typeclasses.solve;
    _super_11603873402755071380 = FStar.Tactics.Typeclasses.solve;
    _super_3331601577671695699 = FStar.Tactics.Typeclasses.solve;
    _super_10171955091559533151 = FStar.Tactics.Typeclasses.solve;
    _super_14975916834865509998 = FStar.Tactics.Typeclasses.solve;
    f_NAME = "TLSConfigurationError";
    f_value_pre = (fun (self: t_TLSConfigurationError) -> true);
    f_value_post = (fun (self: t_TLSConfigurationError) (out: i32) -> true);
    f_value
    =
    (fun (self: t_TLSConfigurationError) ->
        cast (t_TLSConfigurationError_cast_to_repr self <: isize) <: i32);
    f_from_i32_pre = (fun (value: i32) -> true);
    f_from_i32_post = (fun (value: i32) (out: Core.Option.t_Option t_TLSConfigurationError) -> true);
    f_from_i32
    =
    (fun (value: i32) ->
        match value with
        | 0l ->
          Core.Option.Option_Some
          (TLSConfigurationError_TLSCONFIGURATIONERROR_UNSUPPORTED_IMPLEMENTATION
            <:
            t_TLSConfigurationError)
          <:
          Core.Option.t_Option t_TLSConfigurationError
        | 1l ->
          Core.Option.Option_Some
          (TLSConfigurationError_TLSCONFIGURATIONERROR_INVALID_CASE <: t_TLSConfigurationError)
          <:
          Core.Option.t_Option t_TLSConfigurationError
        | 2l ->
          Core.Option.Option_Some
          (TLSConfigurationError_TLSCONFIGURATIONERROR_EMPTY <: t_TLSConfigurationError)
          <:
          Core.Option.t_Option t_TLSConfigurationError
        | 3l ->
          Core.Option.Option_Some
          (TLSConfigurationError_TLSCONFIGURATIONERROR_UNSUPPORTED_PROTOCOL_VERSION
            <:
            t_TLSConfigurationError)
          <:
          Core.Option.t_Option t_TLSConfigurationError
        | 4l ->
          Core.Option.Option_Some
          (TLSConfigurationError_TLSCONFIGURATIONERROR_PRIVATE_KEY_INCONSISTENT_WITH_CERTIFICATE
            <:
            t_TLSConfigurationError)
          <:
          Core.Option.t_Option t_TLSConfigurationError
        | 6l ->
          Core.Option.Option_Some
          (TLSConfigurationError_TLSCONFIGURATIONERROR_UNSUPPORTED_CIPHERSUITE
            <:
            t_TLSConfigurationError)
          <:
          Core.Option.t_Option t_TLSConfigurationError
        | 7l ->
          Core.Option.Option_Some
          (TLSConfigurationError_TLSCONFIGURATIONERROR_UNSUPPORTED_CONTROL_CHARACTERS
            <:
            t_TLSConfigurationError)
          <:
          Core.Option.t_Option t_TLSConfigurationError
        | 5l ->
          Core.Option.Option_Some
          (TLSConfigurationError_TLSCONFIGURATIONERROR_INVALID <: t_TLSConfigurationError)
          <:
          Core.Option.t_Option t_TLSConfigurationError
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_TLSConfigurationError);
    f_from_str_pre = (fun (str: string) -> true);
    f_from_str_post
    =
    (fun (str: string) (out: Core.Option.t_Option t_TLSConfigurationError) -> true);
    f_from_str
    =
    (fun (str: string) ->
        match str with
        | "TLSCONFIGURATIONERROR_UNSUPPORTED_IMPLEMENTATION" ->
          Core.Option.Option_Some
          (TLSConfigurationError_TLSCONFIGURATIONERROR_UNSUPPORTED_IMPLEMENTATION
            <:
            t_TLSConfigurationError)
          <:
          Core.Option.t_Option t_TLSConfigurationError
        | "TLSCONFIGURATIONERROR_INVALID_CASE" ->
          Core.Option.Option_Some
          (TLSConfigurationError_TLSCONFIGURATIONERROR_INVALID_CASE <: t_TLSConfigurationError)
          <:
          Core.Option.t_Option t_TLSConfigurationError
        | "TLSCONFIGURATIONERROR_EMPTY" ->
          Core.Option.Option_Some
          (TLSConfigurationError_TLSCONFIGURATIONERROR_EMPTY <: t_TLSConfigurationError)
          <:
          Core.Option.t_Option t_TLSConfigurationError
        | "TLSCONFIGURATIONERROR_UNSUPPORTED_PROTOCOL_VERSION" ->
          Core.Option.Option_Some
          (TLSConfigurationError_TLSCONFIGURATIONERROR_UNSUPPORTED_PROTOCOL_VERSION
            <:
            t_TLSConfigurationError)
          <:
          Core.Option.t_Option t_TLSConfigurationError
        | "TLSCONFIGURATIONERROR_PRIVATE_KEY_INCONSISTENT_WITH_CERTIFICATE" ->
          Core.Option.Option_Some
          (TLSConfigurationError_TLSCONFIGURATIONERROR_PRIVATE_KEY_INCONSISTENT_WITH_CERTIFICATE
            <:
            t_TLSConfigurationError)
          <:
          Core.Option.t_Option t_TLSConfigurationError
        | "TLSCONFIGURATIONERROR_UNSUPPORTED_CIPHERSUITE" ->
          Core.Option.Option_Some
          (TLSConfigurationError_TLSCONFIGURATIONERROR_UNSUPPORTED_CIPHERSUITE
            <:
            t_TLSConfigurationError)
          <:
          Core.Option.t_Option t_TLSConfigurationError
        | "TLSCONFIGURATIONERROR_UNSUPPORTED_CONTROL_CHARACTERS" ->
          Core.Option.Option_Some
          (TLSConfigurationError_TLSCONFIGURATIONERROR_UNSUPPORTED_CONTROL_CHARACTERS
            <:
            t_TLSConfigurationError)
          <:
          Core.Option.t_Option t_TLSConfigurationError
        | "TLSCONFIGURATIONERROR_INVALID" ->
          Core.Option.Option_Some
          (TLSConfigurationError_TLSCONFIGURATIONERROR_INVALID <: t_TLSConfigurationError)
          <:
          Core.Option.t_Option t_TLSConfigurationError
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_TLSConfigurationError);
    f_VALUES
    =
    Rust_primitives.unsize (let list =
          [
            TLSConfigurationError_TLSCONFIGURATIONERROR_UNSUPPORTED_IMPLEMENTATION
            <:
            t_TLSConfigurationError;
            TLSConfigurationError_TLSCONFIGURATIONERROR_INVALID_CASE <: t_TLSConfigurationError;
            TLSConfigurationError_TLSCONFIGURATIONERROR_EMPTY <: t_TLSConfigurationError;
            TLSConfigurationError_TLSCONFIGURATIONERROR_UNSUPPORTED_PROTOCOL_VERSION
            <:
            t_TLSConfigurationError;
            TLSConfigurationError_TLSCONFIGURATIONERROR_PRIVATE_KEY_INCONSISTENT_WITH_CERTIFICATE
            <:
            t_TLSConfigurationError;
            TLSConfigurationError_TLSCONFIGURATIONERROR_UNSUPPORTED_CIPHERSUITE
            <:
            t_TLSConfigurationError;
            TLSConfigurationError_TLSCONFIGURATIONERROR_UNSUPPORTED_CONTROL_CHARACTERS
            <:
            t_TLSConfigurationError;
            TLSConfigurationError_TLSCONFIGURATIONERROR_INVALID <: t_TLSConfigurationError
          ]
        in
        FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 8);
        Rust_primitives.Hax.array_of_list 8 list)
  }

let discriminant_TunnelError_TUNNELERROR_INVALID: isize = isz 0

let discriminant_TunnelError_TUNNELERROR_UNKNOWN: isize = isz 2

type t_TunnelError =
  | TunnelError_TUNNELERROR_INVALID : t_TunnelError
  | TunnelError_TUNNELERROR_VERIFIER : t_TunnelError
  | TunnelError_TUNNELERROR_UNKNOWN : t_TunnelError

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_54: Core.Default.t_Default t_TunnelError =
  {
    f_default_pre = (fun (_: Prims.unit) -> true);
    f_default_post = (fun (_: Prims.unit) (out: t_TunnelError) -> true);
    f_default = fun (_: Prims.unit) -> TunnelError_TUNNELERROR_INVALID <: t_TunnelError
  }

let discriminant_TunnelError_TUNNELERROR_VERIFIER: isize = isz 1

val t_TunnelError_cast_to_repr (x: t_TunnelError)
    : Prims.Pure isize Prims.l_True (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_52: Protobuf.Enums.t_Enum t_TunnelError =
  {
    _super_8099741844003281729 = FStar.Tactics.Typeclasses.solve;
    _super_11581440318597584651 = FStar.Tactics.Typeclasses.solve;
    _super_11603873402755071380 = FStar.Tactics.Typeclasses.solve;
    _super_3331601577671695699 = FStar.Tactics.Typeclasses.solve;
    _super_10171955091559533151 = FStar.Tactics.Typeclasses.solve;
    _super_14975916834865509998 = FStar.Tactics.Typeclasses.solve;
    f_NAME = "TunnelError";
    f_value_pre = (fun (self: t_TunnelError) -> true);
    f_value_post = (fun (self: t_TunnelError) (out: i32) -> true);
    f_value = (fun (self: t_TunnelError) -> cast (t_TunnelError_cast_to_repr self <: isize) <: i32);
    f_from_i32_pre = (fun (value: i32) -> true);
    f_from_i32_post = (fun (value: i32) (out: Core.Option.t_Option t_TunnelError) -> true);
    f_from_i32
    =
    (fun (value: i32) ->
        match value with
        | 0l ->
          Core.Option.Option_Some (TunnelError_TUNNELERROR_INVALID <: t_TunnelError)
          <:
          Core.Option.t_Option t_TunnelError
        | 1l ->
          Core.Option.Option_Some (TunnelError_TUNNELERROR_VERIFIER <: t_TunnelError)
          <:
          Core.Option.t_Option t_TunnelError
        | 2l ->
          Core.Option.Option_Some (TunnelError_TUNNELERROR_UNKNOWN <: t_TunnelError)
          <:
          Core.Option.t_Option t_TunnelError
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_TunnelError);
    f_from_str_pre = (fun (str: string) -> true);
    f_from_str_post = (fun (str: string) (out: Core.Option.t_Option t_TunnelError) -> true);
    f_from_str
    =
    (fun (str: string) ->
        match str with
        | "TUNNELERROR_INVALID" ->
          Core.Option.Option_Some (TunnelError_TUNNELERROR_INVALID <: t_TunnelError)
          <:
          Core.Option.t_Option t_TunnelError
        | "TUNNELERROR_VERIFIER" ->
          Core.Option.Option_Some (TunnelError_TUNNELERROR_VERIFIER <: t_TunnelError)
          <:
          Core.Option.t_Option t_TunnelError
        | "TUNNELERROR_UNKNOWN" ->
          Core.Option.Option_Some (TunnelError_TUNNELERROR_UNKNOWN <: t_TunnelError)
          <:
          Core.Option.t_Option t_TunnelError
        | _ -> Core.Option.Option_None <: Core.Option.t_Option t_TunnelError);
    f_VALUES
    =
    Rust_primitives.unsize (let list =
          [
            TunnelError_TUNNELERROR_INVALID <: t_TunnelError;
            TunnelError_TUNNELERROR_VERIFIER <: t_TunnelError;
            TunnelError_TUNNELERROR_UNKNOWN <: t_TunnelError
          ]
        in
        FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 3);
        Rust_primitives.Hax.array_of_list 3 list)
  }

/// Generated files are compatible only with the same version
/// of protobuf runtime.
let v__PROTOBUF_VERSION_CHECK: Prims.unit = Rust_primitives.Hax.dropped_body

/// `FileDescriptor` object which allows dynamic access to files
val file_descriptor: Prims.unit
  -> Prims.Pure Protobuf.Reflect.File.t_FileDescriptor Prims.l_True (fun _ -> Prims.l_True)

/// `FileDescriptorProto` object which was a source for this generated file
val file_descriptor_proto: Prims.unit
  -> Prims.Pure Protobuf.Descriptor.t_FileDescriptorProto Prims.l_True (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_1: Protobuf.Enum_full.t_EnumFull t_APIError =
  {
    _super_14911585333008767414 = FStar.Tactics.Typeclasses.solve;
    f_enum_descriptor_pre = (fun (_: Prims.unit) -> true);
    f_enum_descriptor_post
    =
    (fun (_: Prims.unit) (out: Protobuf.Reflect.Enums.t_EnumDescriptor) -> true);
    f_enum_descriptor
    =
    (fun (_: Prims.unit) ->
        Core.Clone.f_clone #Protobuf.Reflect.Enums.t_EnumDescriptor
          (Protobuf.Lazy.impl__get #Protobuf.Reflect.Enums.t_EnumDescriptor
              enum_descriptor__descriptor
              (fun temp_0_ ->
                  let _:Prims.unit = temp_0_ in
                  Core.Option.impl__unwrap #Protobuf.Reflect.Enums.t_EnumDescriptor
                    (Protobuf.Reflect.File.impl__FileDescriptor__enum_by_package_relative_name (file_descriptor
                            ()
                          <:
                          Protobuf.Reflect.File.t_FileDescriptor)
                        "APIError"
                      <:
                      Core.Option.t_Option Protobuf.Reflect.Enums.t_EnumDescriptor)
                  <:
                  Protobuf.Reflect.Enums.t_EnumDescriptor)
            <:
            Protobuf.Reflect.Enums.t_EnumDescriptor));
    f_descriptor_pre = (fun (self: t_APIError) -> true);
    f_descriptor_post
    =
    (fun (self: t_APIError) (out: Protobuf.Reflect.Enums.t_EnumValueDescriptor) -> true);
    f_descriptor
    =
    fun (self: t_APIError) ->
      let index:usize = cast (t_APIError_cast_to_repr self <: isize) <: usize in
      Protobuf.Reflect.Enums.impl__EnumDescriptor__value_by_index (Protobuf.Enum_full.f_enum_descriptor
            #t_APIError
            ()
          <:
          Protobuf.Reflect.Enums.t_EnumDescriptor)
        index
  }

val impl__APIError__generated_enum_descriptor_data: Prims.unit
  -> Prims.Pure Protobuf.Reflect.Enums.Generated.t_GeneratedEnumDescriptorData
      Prims.l_True
      (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_5: Protobuf.Enum_full.t_EnumFull t_ConfigurationError =
  {
    _super_14911585333008767414 = FStar.Tactics.Typeclasses.solve;
    f_enum_descriptor_pre = (fun (_: Prims.unit) -> true);
    f_enum_descriptor_post
    =
    (fun (_: Prims.unit) (out: Protobuf.Reflect.Enums.t_EnumDescriptor) -> true);
    f_enum_descriptor
    =
    (fun (_: Prims.unit) ->
        Core.Clone.f_clone #Protobuf.Reflect.Enums.t_EnumDescriptor
          (Protobuf.Lazy.impl__get #Protobuf.Reflect.Enums.t_EnumDescriptor
              enum_descriptor__descriptor
              (fun temp_0_ ->
                  let _:Prims.unit = temp_0_ in
                  Core.Option.impl__unwrap #Protobuf.Reflect.Enums.t_EnumDescriptor
                    (Protobuf.Reflect.File.impl__FileDescriptor__enum_by_package_relative_name (file_descriptor
                            ()
                          <:
                          Protobuf.Reflect.File.t_FileDescriptor)
                        "ConfigurationError"
                      <:
                      Core.Option.t_Option Protobuf.Reflect.Enums.t_EnumDescriptor)
                  <:
                  Protobuf.Reflect.Enums.t_EnumDescriptor)
            <:
            Protobuf.Reflect.Enums.t_EnumDescriptor));
    f_descriptor_pre = (fun (self: t_ConfigurationError) -> true);
    f_descriptor_post
    =
    (fun (self: t_ConfigurationError) (out: Protobuf.Reflect.Enums.t_EnumValueDescriptor) -> true);
    f_descriptor
    =
    fun (self: t_ConfigurationError) ->
      let index:usize = cast (t_ConfigurationError_cast_to_repr self <: isize) <: usize in
      Protobuf.Reflect.Enums.impl__EnumDescriptor__value_by_index (Protobuf.Enum_full.f_enum_descriptor
            #t_ConfigurationError
            ()
          <:
          Protobuf.Reflect.Enums.t_EnumDescriptor)
        index
  }

val impl__ConfigurationError__generated_enum_descriptor_data: Prims.unit
  -> Prims.Pure Protobuf.Reflect.Enums.Generated.t_GeneratedEnumDescriptorData
      Prims.l_True
      (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_9: Protobuf.Enum_full.t_EnumFull t_ProtobufError =
  {
    _super_14911585333008767414 = FStar.Tactics.Typeclasses.solve;
    f_enum_descriptor_pre = (fun (_: Prims.unit) -> true);
    f_enum_descriptor_post
    =
    (fun (_: Prims.unit) (out: Protobuf.Reflect.Enums.t_EnumDescriptor) -> true);
    f_enum_descriptor
    =
    (fun (_: Prims.unit) ->
        Core.Clone.f_clone #Protobuf.Reflect.Enums.t_EnumDescriptor
          (Protobuf.Lazy.impl__get #Protobuf.Reflect.Enums.t_EnumDescriptor
              enum_descriptor__descriptor
              (fun temp_0_ ->
                  let _:Prims.unit = temp_0_ in
                  Core.Option.impl__unwrap #Protobuf.Reflect.Enums.t_EnumDescriptor
                    (Protobuf.Reflect.File.impl__FileDescriptor__enum_by_package_relative_name (file_descriptor
                            ()
                          <:
                          Protobuf.Reflect.File.t_FileDescriptor)
                        "ProtobufError"
                      <:
                      Core.Option.t_Option Protobuf.Reflect.Enums.t_EnumDescriptor)
                  <:
                  Protobuf.Reflect.Enums.t_EnumDescriptor)
            <:
            Protobuf.Reflect.Enums.t_EnumDescriptor));
    f_descriptor_pre = (fun (self: t_ProtobufError) -> true);
    f_descriptor_post
    =
    (fun (self: t_ProtobufError) (out: Protobuf.Reflect.Enums.t_EnumValueDescriptor) -> true);
    f_descriptor
    =
    fun (self: t_ProtobufError) ->
      let index:usize = cast (t_ProtobufError_cast_to_repr self <: isize) <: usize in
      Protobuf.Reflect.Enums.impl__EnumDescriptor__value_by_index (Protobuf.Enum_full.f_enum_descriptor
            #t_ProtobufError
            ()
          <:
          Protobuf.Reflect.Enums.t_EnumDescriptor)
        index
  }

val impl__ProtobufError__generated_enum_descriptor_data: Prims.unit
  -> Prims.Pure Protobuf.Reflect.Enums.Generated.t_GeneratedEnumDescriptorData
      Prims.l_True
      (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_13: Protobuf.Enum_full.t_EnumFull t_TLSConfigurationError =
  {
    _super_14911585333008767414 = FStar.Tactics.Typeclasses.solve;
    f_enum_descriptor_pre = (fun (_: Prims.unit) -> true);
    f_enum_descriptor_post
    =
    (fun (_: Prims.unit) (out: Protobuf.Reflect.Enums.t_EnumDescriptor) -> true);
    f_enum_descriptor
    =
    (fun (_: Prims.unit) ->
        Core.Clone.f_clone #Protobuf.Reflect.Enums.t_EnumDescriptor
          (Protobuf.Lazy.impl__get #Protobuf.Reflect.Enums.t_EnumDescriptor
              enum_descriptor__descriptor
              (fun temp_0_ ->
                  let _:Prims.unit = temp_0_ in
                  Core.Option.impl__unwrap #Protobuf.Reflect.Enums.t_EnumDescriptor
                    (Protobuf.Reflect.File.impl__FileDescriptor__enum_by_package_relative_name (file_descriptor
                            ()
                          <:
                          Protobuf.Reflect.File.t_FileDescriptor)
                        "TLSConfigurationError"
                      <:
                      Core.Option.t_Option Protobuf.Reflect.Enums.t_EnumDescriptor)
                  <:
                  Protobuf.Reflect.Enums.t_EnumDescriptor)
            <:
            Protobuf.Reflect.Enums.t_EnumDescriptor));
    f_descriptor_pre = (fun (self: t_TLSConfigurationError) -> true);
    f_descriptor_post
    =
    (fun (self: t_TLSConfigurationError) (out: Protobuf.Reflect.Enums.t_EnumValueDescriptor) -> true
    );
    f_descriptor
    =
    fun (self: t_TLSConfigurationError) ->
      let index:usize =
        match self with
        | TLSConfigurationError_TLSCONFIGURATIONERROR_UNSUPPORTED_IMPLEMENTATION  -> sz 0
        | TLSConfigurationError_TLSCONFIGURATIONERROR_INVALID_CASE  -> sz 1
        | TLSConfigurationError_TLSCONFIGURATIONERROR_EMPTY  -> sz 2
        | TLSConfigurationError_TLSCONFIGURATIONERROR_UNSUPPORTED_PROTOCOL_VERSION  -> sz 3
        | TLSConfigurationError_TLSCONFIGURATIONERROR_PRIVATE_KEY_INCONSISTENT_WITH_CERTIFICATE  ->
          sz 4
        | TLSConfigurationError_TLSCONFIGURATIONERROR_UNSUPPORTED_CIPHERSUITE  -> sz 5
        | TLSConfigurationError_TLSCONFIGURATIONERROR_UNSUPPORTED_CONTROL_CHARACTERS  -> sz 6
        | TLSConfigurationError_TLSCONFIGURATIONERROR_INVALID  -> sz 7
      in
      Protobuf.Reflect.Enums.impl__EnumDescriptor__value_by_index (Protobuf.Enum_full.f_enum_descriptor
            #t_TLSConfigurationError
            ()
          <:
          Protobuf.Reflect.Enums.t_EnumDescriptor)
        index
  }

val impl__TLSConfigurationError__generated_enum_descriptor_data: Prims.unit
  -> Prims.Pure Protobuf.Reflect.Enums.Generated.t_GeneratedEnumDescriptorData
      Prims.l_True
      (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_17: Protobuf.Enum_full.t_EnumFull t_CertificateError =
  {
    _super_14911585333008767414 = FStar.Tactics.Typeclasses.solve;
    f_enum_descriptor_pre = (fun (_: Prims.unit) -> true);
    f_enum_descriptor_post
    =
    (fun (_: Prims.unit) (out: Protobuf.Reflect.Enums.t_EnumDescriptor) -> true);
    f_enum_descriptor
    =
    (fun (_: Prims.unit) ->
        Core.Clone.f_clone #Protobuf.Reflect.Enums.t_EnumDescriptor
          (Protobuf.Lazy.impl__get #Protobuf.Reflect.Enums.t_EnumDescriptor
              enum_descriptor__descriptor
              (fun temp_0_ ->
                  let _:Prims.unit = temp_0_ in
                  Core.Option.impl__unwrap #Protobuf.Reflect.Enums.t_EnumDescriptor
                    (Protobuf.Reflect.File.impl__FileDescriptor__enum_by_package_relative_name (file_descriptor
                            ()
                          <:
                          Protobuf.Reflect.File.t_FileDescriptor)
                        "CertificateError"
                      <:
                      Core.Option.t_Option Protobuf.Reflect.Enums.t_EnumDescriptor)
                  <:
                  Protobuf.Reflect.Enums.t_EnumDescriptor)
            <:
            Protobuf.Reflect.Enums.t_EnumDescriptor));
    f_descriptor_pre = (fun (self: t_CertificateError) -> true);
    f_descriptor_post
    =
    (fun (self: t_CertificateError) (out: Protobuf.Reflect.Enums.t_EnumValueDescriptor) -> true);
    f_descriptor
    =
    fun (self: t_CertificateError) ->
      let index:usize = cast (t_CertificateError_cast_to_repr self <: isize) <: usize in
      Protobuf.Reflect.Enums.impl__EnumDescriptor__value_by_index (Protobuf.Enum_full.f_enum_descriptor
            #t_CertificateError
            ()
          <:
          Protobuf.Reflect.Enums.t_EnumDescriptor)
        index
  }

val impl__CertificateError__generated_enum_descriptor_data: Prims.unit
  -> Prims.Pure Protobuf.Reflect.Enums.Generated.t_GeneratedEnumDescriptorData
      Prims.l_True
      (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_21: Protobuf.Enum_full.t_EnumFull t_PrivateKeyError =
  {
    _super_14911585333008767414 = FStar.Tactics.Typeclasses.solve;
    f_enum_descriptor_pre = (fun (_: Prims.unit) -> true);
    f_enum_descriptor_post
    =
    (fun (_: Prims.unit) (out: Protobuf.Reflect.Enums.t_EnumDescriptor) -> true);
    f_enum_descriptor
    =
    (fun (_: Prims.unit) ->
        Core.Clone.f_clone #Protobuf.Reflect.Enums.t_EnumDescriptor
          (Protobuf.Lazy.impl__get #Protobuf.Reflect.Enums.t_EnumDescriptor
              enum_descriptor__descriptor
              (fun temp_0_ ->
                  let _:Prims.unit = temp_0_ in
                  Core.Option.impl__unwrap #Protobuf.Reflect.Enums.t_EnumDescriptor
                    (Protobuf.Reflect.File.impl__FileDescriptor__enum_by_package_relative_name (file_descriptor
                            ()
                          <:
                          Protobuf.Reflect.File.t_FileDescriptor)
                        "PrivateKeyError"
                      <:
                      Core.Option.t_Option Protobuf.Reflect.Enums.t_EnumDescriptor)
                  <:
                  Protobuf.Reflect.Enums.t_EnumDescriptor)
            <:
            Protobuf.Reflect.Enums.t_EnumDescriptor));
    f_descriptor_pre = (fun (self: t_PrivateKeyError) -> true);
    f_descriptor_post
    =
    (fun (self: t_PrivateKeyError) (out: Protobuf.Reflect.Enums.t_EnumValueDescriptor) -> true);
    f_descriptor
    =
    fun (self: t_PrivateKeyError) ->
      let index:usize = cast (t_PrivateKeyError_cast_to_repr self <: isize) <: usize in
      Protobuf.Reflect.Enums.impl__EnumDescriptor__value_by_index (Protobuf.Enum_full.f_enum_descriptor
            #t_PrivateKeyError
            ()
          <:
          Protobuf.Reflect.Enums.t_EnumDescriptor)
        index
  }

val impl__PrivateKeyError__generated_enum_descriptor_data: Prims.unit
  -> Prims.Pure Protobuf.Reflect.Enums.Generated.t_GeneratedEnumDescriptorData
      Prims.l_True
      (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_25: Protobuf.Enum_full.t_EnumFull t_ASN1Error =
  {
    _super_14911585333008767414 = FStar.Tactics.Typeclasses.solve;
    f_enum_descriptor_pre = (fun (_: Prims.unit) -> true);
    f_enum_descriptor_post
    =
    (fun (_: Prims.unit) (out: Protobuf.Reflect.Enums.t_EnumDescriptor) -> true);
    f_enum_descriptor
    =
    (fun (_: Prims.unit) ->
        Core.Clone.f_clone #Protobuf.Reflect.Enums.t_EnumDescriptor
          (Protobuf.Lazy.impl__get #Protobuf.Reflect.Enums.t_EnumDescriptor
              enum_descriptor__descriptor
              (fun temp_0_ ->
                  let _:Prims.unit = temp_0_ in
                  Core.Option.impl__unwrap #Protobuf.Reflect.Enums.t_EnumDescriptor
                    (Protobuf.Reflect.File.impl__FileDescriptor__enum_by_package_relative_name (file_descriptor
                            ()
                          <:
                          Protobuf.Reflect.File.t_FileDescriptor)
                        "ASN1Error"
                      <:
                      Core.Option.t_Option Protobuf.Reflect.Enums.t_EnumDescriptor)
                  <:
                  Protobuf.Reflect.Enums.t_EnumDescriptor)
            <:
            Protobuf.Reflect.Enums.t_EnumDescriptor));
    f_descriptor_pre = (fun (self: t_ASN1Error) -> true);
    f_descriptor_post
    =
    (fun (self: t_ASN1Error) (out: Protobuf.Reflect.Enums.t_EnumValueDescriptor) -> true);
    f_descriptor
    =
    fun (self: t_ASN1Error) ->
      let index:usize = cast (t_ASN1Error_cast_to_repr self <: isize) <: usize in
      Protobuf.Reflect.Enums.impl__EnumDescriptor__value_by_index (Protobuf.Enum_full.f_enum_descriptor
            #t_ASN1Error
            ()
          <:
          Protobuf.Reflect.Enums.t_EnumDescriptor)
        index
  }

val impl__ASN1Error__generated_enum_descriptor_data: Prims.unit
  -> Prims.Pure Protobuf.Reflect.Enums.Generated.t_GeneratedEnumDescriptorData
      Prims.l_True
      (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_29: Protobuf.Enum_full.t_EnumFull t_ALPNError =
  {
    _super_14911585333008767414 = FStar.Tactics.Typeclasses.solve;
    f_enum_descriptor_pre = (fun (_: Prims.unit) -> true);
    f_enum_descriptor_post
    =
    (fun (_: Prims.unit) (out: Protobuf.Reflect.Enums.t_EnumDescriptor) -> true);
    f_enum_descriptor
    =
    (fun (_: Prims.unit) ->
        Core.Clone.f_clone #Protobuf.Reflect.Enums.t_EnumDescriptor
          (Protobuf.Lazy.impl__get #Protobuf.Reflect.Enums.t_EnumDescriptor
              enum_descriptor__descriptor
              (fun temp_0_ ->
                  let _:Prims.unit = temp_0_ in
                  Core.Option.impl__unwrap #Protobuf.Reflect.Enums.t_EnumDescriptor
                    (Protobuf.Reflect.File.impl__FileDescriptor__enum_by_package_relative_name (file_descriptor
                            ()
                          <:
                          Protobuf.Reflect.File.t_FileDescriptor)
                        "ALPNError"
                      <:
                      Core.Option.t_Option Protobuf.Reflect.Enums.t_EnumDescriptor)
                  <:
                  Protobuf.Reflect.Enums.t_EnumDescriptor)
            <:
            Protobuf.Reflect.Enums.t_EnumDescriptor));
    f_descriptor_pre = (fun (self: t_ALPNError) -> true);
    f_descriptor_post
    =
    (fun (self: t_ALPNError) (out: Protobuf.Reflect.Enums.t_EnumValueDescriptor) -> true);
    f_descriptor
    =
    fun (self: t_ALPNError) ->
      let index:usize = cast (t_ALPNError_cast_to_repr self <: isize) <: usize in
      Protobuf.Reflect.Enums.impl__EnumDescriptor__value_by_index (Protobuf.Enum_full.f_enum_descriptor
            #t_ALPNError
            ()
          <:
          Protobuf.Reflect.Enums.t_EnumDescriptor)
        index
  }

val impl__ALPNError__generated_enum_descriptor_data: Prims.unit
  -> Prims.Pure Protobuf.Reflect.Enums.Generated.t_GeneratedEnumDescriptorData
      Prims.l_True
      (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_33: Protobuf.Enum_full.t_EnumFull t_DataSourceError =
  {
    _super_14911585333008767414 = FStar.Tactics.Typeclasses.solve;
    f_enum_descriptor_pre = (fun (_: Prims.unit) -> true);
    f_enum_descriptor_post
    =
    (fun (_: Prims.unit) (out: Protobuf.Reflect.Enums.t_EnumDescriptor) -> true);
    f_enum_descriptor
    =
    (fun (_: Prims.unit) ->
        Core.Clone.f_clone #Protobuf.Reflect.Enums.t_EnumDescriptor
          (Protobuf.Lazy.impl__get #Protobuf.Reflect.Enums.t_EnumDescriptor
              enum_descriptor__descriptor
              (fun temp_0_ ->
                  let _:Prims.unit = temp_0_ in
                  Core.Option.impl__unwrap #Protobuf.Reflect.Enums.t_EnumDescriptor
                    (Protobuf.Reflect.File.impl__FileDescriptor__enum_by_package_relative_name (file_descriptor
                            ()
                          <:
                          Protobuf.Reflect.File.t_FileDescriptor)
                        "DataSourceError"
                      <:
                      Core.Option.t_Option Protobuf.Reflect.Enums.t_EnumDescriptor)
                  <:
                  Protobuf.Reflect.Enums.t_EnumDescriptor)
            <:
            Protobuf.Reflect.Enums.t_EnumDescriptor));
    f_descriptor_pre = (fun (self: t_DataSourceError) -> true);
    f_descriptor_post
    =
    (fun (self: t_DataSourceError) (out: Protobuf.Reflect.Enums.t_EnumValueDescriptor) -> true);
    f_descriptor
    =
    fun (self: t_DataSourceError) ->
      let index:usize = cast (t_DataSourceError_cast_to_repr self <: isize) <: usize in
      Protobuf.Reflect.Enums.impl__EnumDescriptor__value_by_index (Protobuf.Enum_full.f_enum_descriptor
            #t_DataSourceError
            ()
          <:
          Protobuf.Reflect.Enums.t_EnumDescriptor)
        index
  }

val impl__DataSourceError__generated_enum_descriptor_data: Prims.unit
  -> Prims.Pure Protobuf.Reflect.Enums.Generated.t_GeneratedEnumDescriptorData
      Prims.l_True
      (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_37: Protobuf.Enum_full.t_EnumFull t_KEMError =
  {
    _super_14911585333008767414 = FStar.Tactics.Typeclasses.solve;
    f_enum_descriptor_pre = (fun (_: Prims.unit) -> true);
    f_enum_descriptor_post
    =
    (fun (_: Prims.unit) (out: Protobuf.Reflect.Enums.t_EnumDescriptor) -> true);
    f_enum_descriptor
    =
    (fun (_: Prims.unit) ->
        Core.Clone.f_clone #Protobuf.Reflect.Enums.t_EnumDescriptor
          (Protobuf.Lazy.impl__get #Protobuf.Reflect.Enums.t_EnumDescriptor
              enum_descriptor__descriptor
              (fun temp_0_ ->
                  let _:Prims.unit = temp_0_ in
                  Core.Option.impl__unwrap #Protobuf.Reflect.Enums.t_EnumDescriptor
                    (Protobuf.Reflect.File.impl__FileDescriptor__enum_by_package_relative_name (file_descriptor
                            ()
                          <:
                          Protobuf.Reflect.File.t_FileDescriptor)
                        "KEMError"
                      <:
                      Core.Option.t_Option Protobuf.Reflect.Enums.t_EnumDescriptor)
                  <:
                  Protobuf.Reflect.Enums.t_EnumDescriptor)
            <:
            Protobuf.Reflect.Enums.t_EnumDescriptor));
    f_descriptor_pre = (fun (self: t_KEMError) -> true);
    f_descriptor_post
    =
    (fun (self: t_KEMError) (out: Protobuf.Reflect.Enums.t_EnumValueDescriptor) -> true);
    f_descriptor
    =
    fun (self: t_KEMError) ->
      let index:usize = cast (t_KEMError_cast_to_repr self <: isize) <: usize in
      Protobuf.Reflect.Enums.impl__EnumDescriptor__value_by_index (Protobuf.Enum_full.f_enum_descriptor
            #t_KEMError
            ()
          <:
          Protobuf.Reflect.Enums.t_EnumDescriptor)
        index
  }

val impl__KEMError__generated_enum_descriptor_data: Prims.unit
  -> Prims.Pure Protobuf.Reflect.Enums.Generated.t_GeneratedEnumDescriptorData
      Prims.l_True
      (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_41: Protobuf.Enum_full.t_EnumFull t_SystemError =
  {
    _super_14911585333008767414 = FStar.Tactics.Typeclasses.solve;
    f_enum_descriptor_pre = (fun (_: Prims.unit) -> true);
    f_enum_descriptor_post
    =
    (fun (_: Prims.unit) (out: Protobuf.Reflect.Enums.t_EnumDescriptor) -> true);
    f_enum_descriptor
    =
    (fun (_: Prims.unit) ->
        Core.Clone.f_clone #Protobuf.Reflect.Enums.t_EnumDescriptor
          (Protobuf.Lazy.impl__get #Protobuf.Reflect.Enums.t_EnumDescriptor
              enum_descriptor__descriptor
              (fun temp_0_ ->
                  let _:Prims.unit = temp_0_ in
                  Core.Option.impl__unwrap #Protobuf.Reflect.Enums.t_EnumDescriptor
                    (Protobuf.Reflect.File.impl__FileDescriptor__enum_by_package_relative_name (file_descriptor
                            ()
                          <:
                          Protobuf.Reflect.File.t_FileDescriptor)
                        "SystemError"
                      <:
                      Core.Option.t_Option Protobuf.Reflect.Enums.t_EnumDescriptor)
                  <:
                  Protobuf.Reflect.Enums.t_EnumDescriptor)
            <:
            Protobuf.Reflect.Enums.t_EnumDescriptor));
    f_descriptor_pre = (fun (self: t_SystemError) -> true);
    f_descriptor_post
    =
    (fun (self: t_SystemError) (out: Protobuf.Reflect.Enums.t_EnumValueDescriptor) -> true);
    f_descriptor
    =
    fun (self: t_SystemError) ->
      let index:usize = cast (t_SystemError_cast_to_repr self <: isize) <: usize in
      Protobuf.Reflect.Enums.impl__EnumDescriptor__value_by_index (Protobuf.Enum_full.f_enum_descriptor
            #t_SystemError
            ()
          <:
          Protobuf.Reflect.Enums.t_EnumDescriptor)
        index
  }

val impl__SystemError__generated_enum_descriptor_data: Prims.unit
  -> Prims.Pure Protobuf.Reflect.Enums.Generated.t_GeneratedEnumDescriptorData
      Prims.l_True
      (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_45: Protobuf.Enum_full.t_EnumFull t_SocketError =
  {
    _super_14911585333008767414 = FStar.Tactics.Typeclasses.solve;
    f_enum_descriptor_pre = (fun (_: Prims.unit) -> true);
    f_enum_descriptor_post
    =
    (fun (_: Prims.unit) (out: Protobuf.Reflect.Enums.t_EnumDescriptor) -> true);
    f_enum_descriptor
    =
    (fun (_: Prims.unit) ->
        Core.Clone.f_clone #Protobuf.Reflect.Enums.t_EnumDescriptor
          (Protobuf.Lazy.impl__get #Protobuf.Reflect.Enums.t_EnumDescriptor
              enum_descriptor__descriptor
              (fun temp_0_ ->
                  let _:Prims.unit = temp_0_ in
                  Core.Option.impl__unwrap #Protobuf.Reflect.Enums.t_EnumDescriptor
                    (Protobuf.Reflect.File.impl__FileDescriptor__enum_by_package_relative_name (file_descriptor
                            ()
                          <:
                          Protobuf.Reflect.File.t_FileDescriptor)
                        "SocketError"
                      <:
                      Core.Option.t_Option Protobuf.Reflect.Enums.t_EnumDescriptor)
                  <:
                  Protobuf.Reflect.Enums.t_EnumDescriptor)
            <:
            Protobuf.Reflect.Enums.t_EnumDescriptor));
    f_descriptor_pre = (fun (self: t_SocketError) -> true);
    f_descriptor_post
    =
    (fun (self: t_SocketError) (out: Protobuf.Reflect.Enums.t_EnumValueDescriptor) -> true);
    f_descriptor
    =
    fun (self: t_SocketError) ->
      let index:usize = cast (t_SocketError_cast_to_repr self <: isize) <: usize in
      Protobuf.Reflect.Enums.impl__EnumDescriptor__value_by_index (Protobuf.Enum_full.f_enum_descriptor
            #t_SocketError
            ()
          <:
          Protobuf.Reflect.Enums.t_EnumDescriptor)
        index
  }

val impl__SocketError__generated_enum_descriptor_data: Prims.unit
  -> Prims.Pure Protobuf.Reflect.Enums.Generated.t_GeneratedEnumDescriptorData
      Prims.l_True
      (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_49: Protobuf.Enum_full.t_EnumFull t_HandshakeError =
  {
    _super_14911585333008767414 = FStar.Tactics.Typeclasses.solve;
    f_enum_descriptor_pre = (fun (_: Prims.unit) -> true);
    f_enum_descriptor_post
    =
    (fun (_: Prims.unit) (out: Protobuf.Reflect.Enums.t_EnumDescriptor) -> true);
    f_enum_descriptor
    =
    (fun (_: Prims.unit) ->
        Core.Clone.f_clone #Protobuf.Reflect.Enums.t_EnumDescriptor
          (Protobuf.Lazy.impl__get #Protobuf.Reflect.Enums.t_EnumDescriptor
              enum_descriptor__descriptor
              (fun temp_0_ ->
                  let _:Prims.unit = temp_0_ in
                  Core.Option.impl__unwrap #Protobuf.Reflect.Enums.t_EnumDescriptor
                    (Protobuf.Reflect.File.impl__FileDescriptor__enum_by_package_relative_name (file_descriptor
                            ()
                          <:
                          Protobuf.Reflect.File.t_FileDescriptor)
                        "HandshakeError"
                      <:
                      Core.Option.t_Option Protobuf.Reflect.Enums.t_EnumDescriptor)
                  <:
                  Protobuf.Reflect.Enums.t_EnumDescriptor)
            <:
            Protobuf.Reflect.Enums.t_EnumDescriptor));
    f_descriptor_pre = (fun (self: t_HandshakeError) -> true);
    f_descriptor_post
    =
    (fun (self: t_HandshakeError) (out: Protobuf.Reflect.Enums.t_EnumValueDescriptor) -> true);
    f_descriptor
    =
    fun (self: t_HandshakeError) ->
      let index:usize =
        match self with
        | HandshakeError_HANDSHAKEERROR_INVALID_SERVER_NAME  -> sz 0
        | HandshakeError_HANDSHAKEERROR_CERTIFICATE_VERIFICATION_FAILED  -> sz 1
        | HandshakeError_HANDSHAKEERROR_CERTIFICATE_EXPIRED  -> sz 2
        | HandshakeError_HANDSHAKEERROR_CERTIFICATE_REVOKED  -> sz 3
        | HandshakeError_HANDSHAKEERROR_INVALID_CERTIFICATE  -> sz 4
        | HandshakeError_HANDSHAKEERROR_CERTIFICATE_SIGNATURE_VERIFICATION_FAILED  -> sz 5
        | HandshakeError_HANDSHAKEERROR_DEPTH_EXCEEDED  -> sz 6
        | HandshakeError_HANDSHAKEERROR_UNSUPPORTED_PROTOCOL  -> sz 7
        | HandshakeError_HANDSHAKEERROR_NO_SHARED_CIPHER  -> sz 8
        | HandshakeError_HANDSHAKEERROR_NO_SUITABLE_KEY_SHARE  -> sz 9
        | HandshakeError_HANDSHAKEERROR_UNKNOWN_ERROR  -> sz 10
      in
      Protobuf.Reflect.Enums.impl__EnumDescriptor__value_by_index (Protobuf.Enum_full.f_enum_descriptor
            #t_HandshakeError
            ()
          <:
          Protobuf.Reflect.Enums.t_EnumDescriptor)
        index
  }

val impl__HandshakeError__generated_enum_descriptor_data: Prims.unit
  -> Prims.Pure Protobuf.Reflect.Enums.Generated.t_GeneratedEnumDescriptorData
      Prims.l_True
      (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_53: Protobuf.Enum_full.t_EnumFull t_TunnelError =
  {
    _super_14911585333008767414 = FStar.Tactics.Typeclasses.solve;
    f_enum_descriptor_pre = (fun (_: Prims.unit) -> true);
    f_enum_descriptor_post
    =
    (fun (_: Prims.unit) (out: Protobuf.Reflect.Enums.t_EnumDescriptor) -> true);
    f_enum_descriptor
    =
    (fun (_: Prims.unit) ->
        Core.Clone.f_clone #Protobuf.Reflect.Enums.t_EnumDescriptor
          (Protobuf.Lazy.impl__get #Protobuf.Reflect.Enums.t_EnumDescriptor
              enum_descriptor__descriptor
              (fun temp_0_ ->
                  let _:Prims.unit = temp_0_ in
                  Core.Option.impl__unwrap #Protobuf.Reflect.Enums.t_EnumDescriptor
                    (Protobuf.Reflect.File.impl__FileDescriptor__enum_by_package_relative_name (file_descriptor
                            ()
                          <:
                          Protobuf.Reflect.File.t_FileDescriptor)
                        "TunnelError"
                      <:
                      Core.Option.t_Option Protobuf.Reflect.Enums.t_EnumDescriptor)
                  <:
                  Protobuf.Reflect.Enums.t_EnumDescriptor)
            <:
            Protobuf.Reflect.Enums.t_EnumDescriptor));
    f_descriptor_pre = (fun (self: t_TunnelError) -> true);
    f_descriptor_post
    =
    (fun (self: t_TunnelError) (out: Protobuf.Reflect.Enums.t_EnumValueDescriptor) -> true);
    f_descriptor
    =
    fun (self: t_TunnelError) ->
      let index:usize = cast (t_TunnelError_cast_to_repr self <: isize) <: usize in
      Protobuf.Reflect.Enums.impl__EnumDescriptor__value_by_index (Protobuf.Enum_full.f_enum_descriptor
            #t_TunnelError
            ()
          <:
          Protobuf.Reflect.Enums.t_EnumDescriptor)
        index
  }

val impl__TunnelError__generated_enum_descriptor_data: Prims.unit
  -> Prims.Pure Protobuf.Reflect.Enums.Generated.t_GeneratedEnumDescriptorData
      Prims.l_True
      (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_57: Protobuf.Enum_full.t_EnumFull t_ErrorKind =
  {
    _super_14911585333008767414 = FStar.Tactics.Typeclasses.solve;
    f_enum_descriptor_pre = (fun (_: Prims.unit) -> true);
    f_enum_descriptor_post
    =
    (fun (_: Prims.unit) (out: Protobuf.Reflect.Enums.t_EnumDescriptor) -> true);
    f_enum_descriptor
    =
    (fun (_: Prims.unit) ->
        Core.Clone.f_clone #Protobuf.Reflect.Enums.t_EnumDescriptor
          (Protobuf.Lazy.impl__get #Protobuf.Reflect.Enums.t_EnumDescriptor
              enum_descriptor__descriptor
              (fun temp_0_ ->
                  let _:Prims.unit = temp_0_ in
                  Core.Option.impl__unwrap #Protobuf.Reflect.Enums.t_EnumDescriptor
                    (Protobuf.Reflect.File.impl__FileDescriptor__enum_by_package_relative_name (file_descriptor
                            ()
                          <:
                          Protobuf.Reflect.File.t_FileDescriptor)
                        "ErrorKind"
                      <:
                      Core.Option.t_Option Protobuf.Reflect.Enums.t_EnumDescriptor)
                  <:
                  Protobuf.Reflect.Enums.t_EnumDescriptor)
            <:
            Protobuf.Reflect.Enums.t_EnumDescriptor));
    f_descriptor_pre = (fun (self: t_ErrorKind) -> true);
    f_descriptor_post
    =
    (fun (self: t_ErrorKind) (out: Protobuf.Reflect.Enums.t_EnumValueDescriptor) -> true);
    f_descriptor
    =
    fun (self: t_ErrorKind) ->
      let index:usize = cast (t_ErrorKind_cast_to_repr self <: isize) <: usize in
      Protobuf.Reflect.Enums.impl__EnumDescriptor__value_by_index (Protobuf.Enum_full.f_enum_descriptor
            #t_ErrorKind
            ()
          <:
          Protobuf.Reflect.Enums.t_EnumDescriptor)
        index
  }

val impl__ErrorKind__generated_enum_descriptor_data: Prims.unit
  -> Prims.Pure Protobuf.Reflect.Enums.Generated.t_GeneratedEnumDescriptorData
      Prims.l_True
      (fun _ -> Prims.l_True)
