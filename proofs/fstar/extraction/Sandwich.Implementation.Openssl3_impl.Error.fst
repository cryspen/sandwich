module Sandwich.Implementation.Openssl3_impl.Error
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let t_ErrorLibrary_cast_to_repr (x: t_ErrorLibrary) =
  match x with
  | ErrorLibrary_None  -> discriminant_ErrorLibrary_None
  | ErrorLibrary_Sys  -> discriminant_ErrorLibrary_Sys
  | ErrorLibrary_Bn  -> discriminant_ErrorLibrary_Bn
  | ErrorLibrary_Rsa  -> discriminant_ErrorLibrary_Rsa
  | ErrorLibrary_Dh  -> discriminant_ErrorLibrary_Dh
  | ErrorLibrary_Evp  -> discriminant_ErrorLibrary_Evp
  | ErrorLibrary_Buf  -> discriminant_ErrorLibrary_Buf
  | ErrorLibrary_Obj  -> discriminant_ErrorLibrary_Obj
  | ErrorLibrary_Pem  -> discriminant_ErrorLibrary_Pem
  | ErrorLibrary_Dsa  -> discriminant_ErrorLibrary_Dsa
  | ErrorLibrary_X509  -> discriminant_ErrorLibrary_X509
  | ErrorLibrary_Asn1  -> discriminant_ErrorLibrary_Asn1
  | ErrorLibrary_Conf  -> discriminant_ErrorLibrary_Conf
  | ErrorLibrary_Crypto  -> discriminant_ErrorLibrary_Crypto
  | ErrorLibrary_Ec  -> discriminant_ErrorLibrary_Ec
  | ErrorLibrary_Ssl  -> discriminant_ErrorLibrary_Ssl
  | ErrorLibrary_Bio  -> discriminant_ErrorLibrary_Bio
  | ErrorLibrary_Pkcs7  -> discriminant_ErrorLibrary_Pkcs7
  | ErrorLibrary_X509v3  -> discriminant_ErrorLibrary_X509v3
  | ErrorLibrary_Pkcs12  -> discriminant_ErrorLibrary_Pkcs12
  | ErrorLibrary_Rand  -> discriminant_ErrorLibrary_Rand
  | ErrorLibrary_Dso  -> discriminant_ErrorLibrary_Dso
  | ErrorLibrary_Engine  -> discriminant_ErrorLibrary_Engine
  | ErrorLibrary_Ocsp  -> discriminant_ErrorLibrary_Ocsp
  | ErrorLibrary_Ui  -> discriminant_ErrorLibrary_Ui
  | ErrorLibrary_Comp  -> discriminant_ErrorLibrary_Comp
  | ErrorLibrary_Ecdsa  -> discriminant_ErrorLibrary_Ecdsa
  | ErrorLibrary_Ecdh  -> discriminant_ErrorLibrary_Ecdh
  | ErrorLibrary_OsslStore  -> discriminant_ErrorLibrary_OsslStore
  | ErrorLibrary_Fips  -> discriminant_ErrorLibrary_Fips
  | ErrorLibrary_Cms  -> discriminant_ErrorLibrary_Cms
  | ErrorLibrary_Ts  -> discriminant_ErrorLibrary_Ts
  | ErrorLibrary_Hmac  -> discriminant_ErrorLibrary_Hmac
  | ErrorLibrary_Ct  -> discriminant_ErrorLibrary_Ct
  | ErrorLibrary_Async  -> discriminant_ErrorLibrary_Async
  | ErrorLibrary_Kdf  -> discriminant_ErrorLibrary_Kdf
  | ErrorLibrary_Sm2  -> discriminant_ErrorLibrary_Sm2
  | ErrorLibrary_Ess  -> discriminant_ErrorLibrary_Ess
  | ErrorLibrary_Prop  -> discriminant_ErrorLibrary_Prop
  | ErrorLibrary_Crmf  -> discriminant_ErrorLibrary_Crmf
  | ErrorLibrary_Prov  -> discriminant_ErrorLibrary_Prov
  | ErrorLibrary_Cmp  -> discriminant_ErrorLibrary_Cmp
  | ErrorLibrary_OsslEncoder  -> discriminant_ErrorLibrary_OsslEncoder
  | ErrorLibrary_OsslDecoder  -> discriminant_ErrorLibrary_OsslDecoder
  | ErrorLibrary_Http  -> discriminant_ErrorLibrary_Http
  | ErrorLibrary_User  -> discriminant_ErrorLibrary_User

let t_SslError_cast_to_repr (x: t_SslError) =
  match x with
  | SslError_None  -> discriminant_SslError_None
  | SslError_Ssl  -> discriminant_SslError_Ssl
  | SslError_WantRead  -> discriminant_SslError_WantRead
  | SslError_WantWrite  -> discriminant_SslError_WantWrite
  | SslError_WantX509Lookup  -> discriminant_SslError_WantX509Lookup
  | SslError_Syscall  -> discriminant_SslError_Syscall
  | SslError_ZeroReturn  -> discriminant_SslError_ZeroReturn
  | SslError_WantConnect  -> discriminant_SslError_WantConnect
  | SslError_WantAccept  -> discriminant_SslError_WantAccept
  | SslError_WantAsync  -> discriminant_SslError_WantAsync
  | SslError_WantAsyncJob  -> discriminant_SslError_WantAsyncJob
  | SslError_WantClientHelloCb  -> discriminant_SslError_WantClientHelloCb
  | SslError_WantRetryVerify  -> discriminant_SslError_WantRetryVerify

let impl__Error__library (self: t_Error) = self.f_library

let impl__Error__reason (self: t_Error) = cast (self.f_reason <: i32) <: u32
