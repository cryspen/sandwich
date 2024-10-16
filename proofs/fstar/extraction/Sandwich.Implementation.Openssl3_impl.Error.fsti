module Sandwich.Implementation.Openssl3_impl.Error
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let discriminant_ErrorLibrary_Asn1: isize = cast (Openssl3.v_ERR_LIB_ASN1 <: u32) <: isize

let discriminant_ErrorLibrary_Async: isize = cast (Openssl3.v_ERR_LIB_ASYNC <: u32) <: isize

let discriminant_ErrorLibrary_Bio: isize = cast (Openssl3.v_ERR_LIB_BIO <: u32) <: isize

let discriminant_ErrorLibrary_Bn: isize = cast (Openssl3.v_ERR_LIB_BN <: u32) <: isize

let discriminant_ErrorLibrary_Buf: isize = cast (Openssl3.v_ERR_LIB_BUF <: u32) <: isize

let discriminant_ErrorLibrary_Cmp: isize = cast (Openssl3.v_ERR_LIB_CMP <: u32) <: isize

let discriminant_ErrorLibrary_Cms: isize = cast (Openssl3.v_ERR_LIB_CMS <: u32) <: isize

let discriminant_ErrorLibrary_Comp: isize = cast (Openssl3.v_ERR_LIB_COMP <: u32) <: isize

let discriminant_ErrorLibrary_Conf: isize = cast (Openssl3.v_ERR_LIB_CONF <: u32) <: isize

let discriminant_ErrorLibrary_Crmf: isize = cast (Openssl3.v_ERR_LIB_CRMF <: u32) <: isize

let discriminant_ErrorLibrary_Crypto: isize = cast (Openssl3.v_ERR_LIB_CRYPTO <: u32) <: isize

let discriminant_ErrorLibrary_Ct: isize = cast (Openssl3.v_ERR_LIB_CT <: u32) <: isize

let discriminant_ErrorLibrary_Dh: isize = cast (Openssl3.v_ERR_LIB_DH <: u32) <: isize

let discriminant_ErrorLibrary_Dsa: isize = cast (Openssl3.v_ERR_LIB_DSA <: u32) <: isize

let discriminant_ErrorLibrary_Dso: isize = cast (Openssl3.v_ERR_LIB_DSO <: u32) <: isize

let discriminant_ErrorLibrary_Ec: isize = cast (Openssl3.v_ERR_LIB_EC <: u32) <: isize

let discriminant_ErrorLibrary_Ecdh: isize = cast (Openssl3.v_ERR_LIB_ECDH <: u32) <: isize

let discriminant_ErrorLibrary_Ecdsa: isize = cast (Openssl3.v_ERR_LIB_ECDSA <: u32) <: isize

let discriminant_ErrorLibrary_Engine: isize = cast (Openssl3.v_ERR_LIB_ENGINE <: u32) <: isize

let discriminant_ErrorLibrary_Ess: isize = cast (Openssl3.v_ERR_LIB_ESS <: u32) <: isize

let discriminant_ErrorLibrary_Evp: isize = cast (Openssl3.v_ERR_LIB_EVP <: u32) <: isize

let discriminant_ErrorLibrary_Fips: isize = cast (Openssl3.v_ERR_LIB_FIPS <: u32) <: isize

let discriminant_ErrorLibrary_Hmac: isize = cast (Openssl3.v_ERR_LIB_HMAC <: u32) <: isize

let discriminant_ErrorLibrary_Http: isize = cast (Openssl3.v_ERR_LIB_HTTP <: u32) <: isize

let discriminant_ErrorLibrary_Kdf: isize = cast (Openssl3.v_ERR_LIB_KDF <: u32) <: isize

let discriminant_ErrorLibrary_None: isize = cast (Openssl3.v_ERR_LIB_NONE <: u32) <: isize

let discriminant_ErrorLibrary_Obj: isize = cast (Openssl3.v_ERR_LIB_OBJ <: u32) <: isize

let discriminant_ErrorLibrary_Ocsp: isize = cast (Openssl3.v_ERR_LIB_OCSP <: u32) <: isize

let discriminant_ErrorLibrary_OsslDecoder: isize =
  cast (Openssl3.v_ERR_LIB_OSSL_DECODER <: u32) <: isize

let discriminant_ErrorLibrary_OsslEncoder: isize =
  cast (Openssl3.v_ERR_LIB_OSSL_ENCODER <: u32) <: isize

let discriminant_ErrorLibrary_OsslStore: isize =
  cast (Openssl3.v_ERR_LIB_OSSL_STORE <: u32) <: isize

let discriminant_ErrorLibrary_Pem: isize = cast (Openssl3.v_ERR_LIB_PEM <: u32) <: isize

let discriminant_ErrorLibrary_Pkcs12: isize = cast (Openssl3.v_ERR_LIB_PKCS12 <: u32) <: isize

let discriminant_ErrorLibrary_Pkcs7: isize = cast (Openssl3.v_ERR_LIB_PKCS7 <: u32) <: isize

let discriminant_ErrorLibrary_Prop: isize = cast (Openssl3.v_ERR_LIB_PROP <: u32) <: isize

let discriminant_ErrorLibrary_Prov: isize = cast (Openssl3.v_ERR_LIB_PROV <: u32) <: isize

let discriminant_ErrorLibrary_Rand: isize = cast (Openssl3.v_ERR_LIB_RAND <: u32) <: isize

let discriminant_ErrorLibrary_Rsa: isize = cast (Openssl3.v_ERR_LIB_RSA <: u32) <: isize

let discriminant_ErrorLibrary_Sm2: isize = cast (Openssl3.v_ERR_LIB_SM2 <: u32) <: isize

let discriminant_ErrorLibrary_Ssl: isize = cast (Openssl3.v_ERR_LIB_SSL <: u32) <: isize

let discriminant_ErrorLibrary_Sys: isize = cast (Openssl3.v_ERR_LIB_SYS <: u32) <: isize

let discriminant_ErrorLibrary_Ts: isize = cast (Openssl3.v_ERR_LIB_TS <: u32) <: isize

let discriminant_ErrorLibrary_Ui: isize = cast (Openssl3.v_ERR_LIB_UI <: u32) <: isize

let discriminant_ErrorLibrary_User: isize = cast (Openssl3.v_ERR_LIB_USER <: u32) <: isize

let discriminant_ErrorLibrary_X509: isize = cast (Openssl3.v_ERR_LIB_X509 <: u32) <: isize

///Library where an error can occur
type t_ErrorLibrary =
  | ErrorLibrary_None : t_ErrorLibrary
  | ErrorLibrary_Sys : t_ErrorLibrary
  | ErrorLibrary_Bn : t_ErrorLibrary
  | ErrorLibrary_Rsa : t_ErrorLibrary
  | ErrorLibrary_Dh : t_ErrorLibrary
  | ErrorLibrary_Evp : t_ErrorLibrary
  | ErrorLibrary_Buf : t_ErrorLibrary
  | ErrorLibrary_Obj : t_ErrorLibrary
  | ErrorLibrary_Pem : t_ErrorLibrary
  | ErrorLibrary_Dsa : t_ErrorLibrary
  | ErrorLibrary_X509 : t_ErrorLibrary
  | ErrorLibrary_Asn1 : t_ErrorLibrary
  | ErrorLibrary_Conf : t_ErrorLibrary
  | ErrorLibrary_Crypto : t_ErrorLibrary
  | ErrorLibrary_Ec : t_ErrorLibrary
  | ErrorLibrary_Ssl : t_ErrorLibrary
  | ErrorLibrary_Bio : t_ErrorLibrary
  | ErrorLibrary_Pkcs7 : t_ErrorLibrary
  | ErrorLibrary_X509v3 : t_ErrorLibrary
  | ErrorLibrary_Pkcs12 : t_ErrorLibrary
  | ErrorLibrary_Rand : t_ErrorLibrary
  | ErrorLibrary_Dso : t_ErrorLibrary
  | ErrorLibrary_Engine : t_ErrorLibrary
  | ErrorLibrary_Ocsp : t_ErrorLibrary
  | ErrorLibrary_Ui : t_ErrorLibrary
  | ErrorLibrary_Comp : t_ErrorLibrary
  | ErrorLibrary_Ecdsa : t_ErrorLibrary
  | ErrorLibrary_Ecdh : t_ErrorLibrary
  | ErrorLibrary_OsslStore : t_ErrorLibrary
  | ErrorLibrary_Fips : t_ErrorLibrary
  | ErrorLibrary_Cms : t_ErrorLibrary
  | ErrorLibrary_Ts : t_ErrorLibrary
  | ErrorLibrary_Hmac : t_ErrorLibrary
  | ErrorLibrary_Ct : t_ErrorLibrary
  | ErrorLibrary_Async : t_ErrorLibrary
  | ErrorLibrary_Kdf : t_ErrorLibrary
  | ErrorLibrary_Sm2 : t_ErrorLibrary
  | ErrorLibrary_Ess : t_ErrorLibrary
  | ErrorLibrary_Prop : t_ErrorLibrary
  | ErrorLibrary_Crmf : t_ErrorLibrary
  | ErrorLibrary_Prov : t_ErrorLibrary
  | ErrorLibrary_Cmp : t_ErrorLibrary
  | ErrorLibrary_OsslEncoder : t_ErrorLibrary
  | ErrorLibrary_OsslDecoder : t_ErrorLibrary
  | ErrorLibrary_Http : t_ErrorLibrary
  | ErrorLibrary_User : t_ErrorLibrary

/// An OpenSSL error.
type t_Error = {
  f_library:t_ErrorLibrary;
  f_reason:i32
}

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl: Core.Fmt.t_Debug t_Error =
  {
    f_fmt_pre = (fun (self: t_Error) (f: Core.Fmt.t_Formatter) -> true);
    f_fmt_post
    =
    (fun
        (self: t_Error)
        (f: Core.Fmt.t_Formatter)
        (out1: (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error))
        ->
        true);
    f_fmt
    =
    fun (self: t_Error) (f: Core.Fmt.t_Formatter) ->
      let tmp0, out:(Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error) =
        Core.Fmt.impl_9__write_fmt f
          (Core.Fmt.impl_2__new_v1 (sz 3)
              (sz 2)
              (let list = ["OpenSSL3Error(lib="; ", reason="; ")"] in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 3);
                Rust_primitives.Hax.array_of_list 3 list)
              (let list =
                  [
                    Core.Fmt.Rt.impl_1__new_debug #t_ErrorLibrary self.f_library
                    <:
                    Core.Fmt.Rt.t_Argument;
                    Core.Fmt.Rt.impl_1__new_display #i32 self.f_reason <: Core.Fmt.Rt.t_Argument
                  ]
                in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                Rust_primitives.Hax.array_of_list 2 list)
            <:
            Core.Fmt.t_Arguments)
      in
      let f:Core.Fmt.t_Formatter = tmp0 in
      let hax_temp_output:Core.Result.t_Result Prims.unit Core.Fmt.t_Error = out in
      f, hax_temp_output
      <:
      (Core.Fmt.t_Formatter & Core.Result.t_Result Prims.unit Core.Fmt.t_Error)
  }

/// Returns the library where the error has occurred.
val impl__Error__library (self: t_Error)
    : Prims.Pure t_ErrorLibrary Prims.l_True (fun _ -> Prims.l_True)

/// Returns the reason of the error.
val impl__Error__reason (self: t_Error) : Prims.Pure u32 Prims.l_True (fun _ -> Prims.l_True)

let discriminant_ErrorLibrary_X509v3: isize = cast (Openssl3.v_ERR_LIB_X509V3 <: u32) <: isize

val t_ErrorLibrary_cast_to_repr (x: t_ErrorLibrary)
    : Prims.Pure isize Prims.l_True (fun _ -> Prims.l_True)

let discriminant_SslError_None: isize = cast (Openssl3.v_SSL_ERROR_NONE <: u32) <: isize

let discriminant_SslError_Ssl: isize = cast (Openssl3.v_SSL_ERROR_SSL <: u32) <: isize

let discriminant_SslError_Syscall: isize = cast (Openssl3.v_SSL_ERROR_SYSCALL <: u32) <: isize

let discriminant_SslError_WantAccept: isize =
  cast (Openssl3.v_SSL_ERROR_WANT_ACCEPT <: u32) <: isize

let discriminant_SslError_WantAsync: isize = cast (Openssl3.v_SSL_ERROR_WANT_ASYNC <: u32) <: isize

let discriminant_SslError_WantAsyncJob: isize =
  cast (Openssl3.v_SSL_ERROR_WANT_ASYNC_JOB <: u32) <: isize

let discriminant_SslError_WantClientHelloCb: isize =
  cast (Openssl3.v_SSL_ERROR_WANT_CLIENT_HELLO_CB <: u32) <: isize

let discriminant_SslError_WantConnect: isize =
  cast (Openssl3.v_SSL_ERROR_WANT_CONNECT <: u32) <: isize

let discriminant_SslError_WantRead: isize = cast (Openssl3.v_SSL_ERROR_WANT_READ <: u32) <: isize

let discriminant_SslError_WantRetryVerify: isize =
  cast (Openssl3.v_SSL_ERROR_WANT_RETRY_VERIFY <: u32) <: isize

let discriminant_SslError_WantWrite: isize = cast (Openssl3.v_SSL_ERROR_WANT_WRITE <: u32) <: isize

let discriminant_SslError_WantX509Lookup: isize =
  cast (Openssl3.v_SSL_ERROR_WANT_X509_LOOKUP <: u32) <: isize

///SSL error
type t_SslError =
  | SslError_None : t_SslError
  | SslError_Ssl : t_SslError
  | SslError_WantRead : t_SslError
  | SslError_WantWrite : t_SslError
  | SslError_WantX509Lookup : t_SslError
  | SslError_Syscall : t_SslError
  | SslError_ZeroReturn : t_SslError
  | SslError_WantConnect : t_SslError
  | SslError_WantAccept : t_SslError
  | SslError_WantAsync : t_SslError
  | SslError_WantAsyncJob : t_SslError
  | SslError_WantClientHelloCb : t_SslError
  | SslError_WantRetryVerify : t_SslError

let discriminant_SslError_ZeroReturn: isize =
  cast (Openssl3.v_SSL_ERROR_ZERO_RETURN <: u32) <: isize

val t_SslError_cast_to_repr (x: t_SslError) : Prims.Pure isize Prims.l_True (fun _ -> Prims.l_True)

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_4: Core.Convert.t_TryFrom t_ErrorLibrary i32 =
  {
    f_Error = Prims.unit;
    f_try_from_pre = (fun (err: i32) -> true);
    f_try_from_post = (fun (err: i32) (out: Core.Result.t_Result t_ErrorLibrary Prims.unit) -> true);
    f_try_from
    =
    fun (err: i32) ->
      match cast (err <: i32) <: u32 with
      | 1ul ->
        Core.Result.Result_Ok (ErrorLibrary_None <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 2ul ->
        Core.Result.Result_Ok (ErrorLibrary_Sys <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 3ul ->
        Core.Result.Result_Ok (ErrorLibrary_Bn <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 4ul ->
        Core.Result.Result_Ok (ErrorLibrary_Rsa <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 5ul ->
        Core.Result.Result_Ok (ErrorLibrary_Dh <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 6ul ->
        Core.Result.Result_Ok (ErrorLibrary_Evp <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 7ul ->
        Core.Result.Result_Ok (ErrorLibrary_Buf <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 8ul ->
        Core.Result.Result_Ok (ErrorLibrary_Obj <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 9ul ->
        Core.Result.Result_Ok (ErrorLibrary_Pem <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 10ul ->
        Core.Result.Result_Ok (ErrorLibrary_Dsa <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 11ul ->
        Core.Result.Result_Ok (ErrorLibrary_X509 <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 13ul ->
        Core.Result.Result_Ok (ErrorLibrary_Asn1 <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 14ul ->
        Core.Result.Result_Ok (ErrorLibrary_Conf <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 15ul ->
        Core.Result.Result_Ok (ErrorLibrary_Crypto <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 16ul ->
        Core.Result.Result_Ok (ErrorLibrary_Ec <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 20ul ->
        Core.Result.Result_Ok (ErrorLibrary_Ssl <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 32ul ->
        Core.Result.Result_Ok (ErrorLibrary_Bio <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 33ul ->
        Core.Result.Result_Ok (ErrorLibrary_Pkcs7 <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 34ul ->
        Core.Result.Result_Ok (ErrorLibrary_X509v3 <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 35ul ->
        Core.Result.Result_Ok (ErrorLibrary_Pkcs12 <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 36ul ->
        Core.Result.Result_Ok (ErrorLibrary_Rand <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 37ul ->
        Core.Result.Result_Ok (ErrorLibrary_Dso <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 38ul ->
        Core.Result.Result_Ok (ErrorLibrary_Engine <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 39ul ->
        Core.Result.Result_Ok (ErrorLibrary_Ocsp <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 40ul ->
        Core.Result.Result_Ok (ErrorLibrary_Ui <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 41ul ->
        Core.Result.Result_Ok (ErrorLibrary_Comp <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 42ul ->
        Core.Result.Result_Ok (ErrorLibrary_Ecdsa <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 43ul ->
        Core.Result.Result_Ok (ErrorLibrary_Ecdh <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 44ul ->
        Core.Result.Result_Ok (ErrorLibrary_OsslStore <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 45ul ->
        Core.Result.Result_Ok (ErrorLibrary_Fips <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 46ul ->
        Core.Result.Result_Ok (ErrorLibrary_Cms <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 47ul ->
        Core.Result.Result_Ok (ErrorLibrary_Ts <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 48ul ->
        Core.Result.Result_Ok (ErrorLibrary_Hmac <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 50ul ->
        Core.Result.Result_Ok (ErrorLibrary_Ct <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 51ul ->
        Core.Result.Result_Ok (ErrorLibrary_Async <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 52ul ->
        Core.Result.Result_Ok (ErrorLibrary_Kdf <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 53ul ->
        Core.Result.Result_Ok (ErrorLibrary_Sm2 <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 54ul ->
        Core.Result.Result_Ok (ErrorLibrary_Ess <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 55ul ->
        Core.Result.Result_Ok (ErrorLibrary_Prop <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 56ul ->
        Core.Result.Result_Ok (ErrorLibrary_Crmf <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 57ul ->
        Core.Result.Result_Ok (ErrorLibrary_Prov <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 58ul ->
        Core.Result.Result_Ok (ErrorLibrary_Cmp <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 59ul ->
        Core.Result.Result_Ok (ErrorLibrary_OsslEncoder <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 60ul ->
        Core.Result.Result_Ok (ErrorLibrary_OsslDecoder <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 61ul ->
        Core.Result.Result_Ok (ErrorLibrary_Http <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | 128ul ->
        Core.Result.Result_Ok (ErrorLibrary_User <: t_ErrorLibrary)
        <:
        Core.Result.t_Result t_ErrorLibrary Prims.unit
      | _ ->
        Core.Result.Result_Err (() <: Prims.unit) <: Core.Result.t_Result t_ErrorLibrary Prims.unit
  }

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_1: Core.Convert.t_From t_Error u64 =
  {
    f_from_pre = (fun (err: u64) -> true);
    f_from_post = (fun (err: u64) (out: t_Error) -> true);
    f_from
    =
    fun (err: u64) ->
      {
        f_library
        =
        Core.Result.impl__unwrap_or #t_ErrorLibrary
          #Prims.unit
          (Core.Convert.f_try_into #i32
              #t_ErrorLibrary
              #FStar.Tactics.Typeclasses.solve
              (Sandwich.Implementation.Openssl3_impl.Support.err_get_lib err <: i32)
            <:
            Core.Result.t_Result t_ErrorLibrary Prims.unit)
          (ErrorLibrary_None <: t_ErrorLibrary);
        f_reason = Sandwich.Implementation.Openssl3_impl.Support.err_get_reason err
      }
      <:
      t_Error
  }

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_3: Core.Convert.t_From Sandwich_proto.Tunnel.t_RecordError t_SslError =
  {
    f_from_pre = (fun (ssl_error: t_SslError) -> true);
    f_from_post = (fun (ssl_error: t_SslError) (out: Sandwich_proto.Tunnel.t_RecordError) -> true);
    f_from
    =
    fun (ssl_error: t_SslError) ->
      match ssl_error with
      | SslError_WantRead  ->
        Sandwich_proto.Tunnel.RecordError_RECORDERROR_WANT_READ
        <:
        Sandwich_proto.Tunnel.t_RecordError
      | SslError_WantWrite  ->
        Sandwich_proto.Tunnel.RecordError_RECORDERROR_WANT_WRITE
        <:
        Sandwich_proto.Tunnel.t_RecordError
      | SslError_ZeroReturn  ->
        Sandwich_proto.Tunnel.RecordError_RECORDERROR_CLOSED <: Sandwich_proto.Tunnel.t_RecordError
      | SslError_Syscall  ->
        (match
            Std.Io.Error.impl__Error__raw_os_error (Std.Io.Error.impl__Error__last_os_error ()
                <:
                Std.Io.Error.t_Error)
          with
          | Core.Option.Option_Some 32l ->
            Sandwich_proto.Tunnel.RecordError_RECORDERROR_CLOSED
            <:
            Sandwich_proto.Tunnel.t_RecordError
          | _ ->
            Sandwich_proto.Tunnel.RecordError_RECORDERROR_UNKNOWN
            <:
            Sandwich_proto.Tunnel.t_RecordError)
      | SslError_Ssl  ->
        let error:t_Error =
          Core.Convert.f_from #t_Error
            #u64
            #FStar.Tactics.Typeclasses.solve
            (Sandwich.Implementation.Openssl3_impl.Support.peek_last_error () <: u64)
        in
        if
          (impl__Error__library error <: t_ErrorLibrary) =. (ErrorLibrary_Ssl <: t_ErrorLibrary) &&
          (impl__Error__reason error <: u32) =. Openssl3.v_SSL_R_PROTOCOL_IS_SHUTDOWN
        then
          Sandwich_proto.Tunnel.RecordError_RECORDERROR_CLOSED
          <:
          Sandwich_proto.Tunnel.t_RecordError
        else
          Sandwich_proto.Tunnel.RecordError_RECORDERROR_UNKNOWN
          <:
          Sandwich_proto.Tunnel.t_RecordError
      | _ ->
        Sandwich_proto.Tunnel.RecordError_RECORDERROR_UNKNOWN <: Sandwich_proto.Tunnel.t_RecordError
  }

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_11: Core.Convert.t_TryFrom t_SslError i32 =
  {
    f_Error = Prims.unit;
    f_try_from_pre = (fun (err: i32) -> true);
    f_try_from_post = (fun (err: i32) (out: Core.Result.t_Result t_SslError Prims.unit) -> true);
    f_try_from
    =
    fun (err: i32) ->
      match cast (err <: i32) <: u32 with
      | 0ul ->
        Core.Result.Result_Ok (SslError_None <: t_SslError)
        <:
        Core.Result.t_Result t_SslError Prims.unit
      | 1ul ->
        Core.Result.Result_Ok (SslError_Ssl <: t_SslError)
        <:
        Core.Result.t_Result t_SslError Prims.unit
      | 2ul ->
        Core.Result.Result_Ok (SslError_WantRead <: t_SslError)
        <:
        Core.Result.t_Result t_SslError Prims.unit
      | 3ul ->
        Core.Result.Result_Ok (SslError_WantWrite <: t_SslError)
        <:
        Core.Result.t_Result t_SslError Prims.unit
      | 4ul ->
        Core.Result.Result_Ok (SslError_WantX509Lookup <: t_SslError)
        <:
        Core.Result.t_Result t_SslError Prims.unit
      | 5ul ->
        Core.Result.Result_Ok (SslError_Syscall <: t_SslError)
        <:
        Core.Result.t_Result t_SslError Prims.unit
      | 6ul ->
        Core.Result.Result_Ok (SslError_ZeroReturn <: t_SslError)
        <:
        Core.Result.t_Result t_SslError Prims.unit
      | 7ul ->
        Core.Result.Result_Ok (SslError_WantConnect <: t_SslError)
        <:
        Core.Result.t_Result t_SslError Prims.unit
      | 8ul ->
        Core.Result.Result_Ok (SslError_WantAccept <: t_SslError)
        <:
        Core.Result.t_Result t_SslError Prims.unit
      | 9ul ->
        Core.Result.Result_Ok (SslError_WantAsync <: t_SslError)
        <:
        Core.Result.t_Result t_SslError Prims.unit
      | 10ul ->
        Core.Result.Result_Ok (SslError_WantAsyncJob <: t_SslError)
        <:
        Core.Result.t_Result t_SslError Prims.unit
      | 11ul ->
        Core.Result.Result_Ok (SslError_WantClientHelloCb <: t_SslError)
        <:
        Core.Result.t_Result t_SslError Prims.unit
      | 12ul ->
        Core.Result.Result_Ok (SslError_WantRetryVerify <: t_SslError)
        <:
        Core.Result.t_Result t_SslError Prims.unit
      | _ -> Core.Result.Result_Err (() <: Prims.unit) <: Core.Result.t_Result t_SslError Prims.unit
  }
