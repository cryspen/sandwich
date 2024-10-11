module Sandwich.Io.Error
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

/// Types that can be converted to a [`pb::IOError`].
class t_IntoIOError (v_Self: Type0) = {
  f_into_io_error_pre:v_Self -> bool;
  f_into_io_error_post:v_Self -> Sandwich_proto.Io.t_IOError -> bool;
  f_into_io_error:x0: v_Self
    -> Prims.Pure Sandwich_proto.Io.t_IOError
        (f_into_io_error_pre x0)
        (fun result -> f_into_io_error_post x0 result)
}

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl: t_IntoIOError Std.Io.Error.t_ErrorKind =
  {
    f_into_io_error_pre = (fun (self: Std.Io.Error.t_ErrorKind) -> true);
    f_into_io_error_post
    =
    (fun (self: Std.Io.Error.t_ErrorKind) (out: Sandwich_proto.Io.t_IOError) -> true);
    f_into_io_error
    =
    fun (self: Std.Io.Error.t_ErrorKind) ->
      match self with
      | Std.Io.Error.ErrorKind_WouldBlock
      | Std.Io.Error.ErrorKind_WriteZero
      | Std.Io.Error.ErrorKind_Interrupted  ->
        Sandwich_proto.Io.IOError_IOERROR_WOULD_BLOCK <: Sandwich_proto.Io.t_IOError
      | Std.Io.Error.ErrorKind_NotConnected  ->
        Sandwich_proto.Io.IOError_IOERROR_IN_PROGRESS <: Sandwich_proto.Io.t_IOError
      | Std.Io.Error.ErrorKind_ConnectionRefused
      | Std.Io.Error.ErrorKind_ConnectionReset
      | Std.Io.Error.ErrorKind_ConnectionAborted
      | Std.Io.Error.ErrorKind_TimedOut  ->
        Sandwich_proto.Io.IOError_IOERROR_REFUSED <: Sandwich_proto.Io.t_IOError
      | Std.Io.Error.ErrorKind_BrokenPipe  ->
        Sandwich_proto.Io.IOError_IOERROR_CLOSED <: Sandwich_proto.Io.t_IOError
      | Std.Io.Error.ErrorKind_NotFound
      | Std.Io.Error.ErrorKind_PermissionDenied
      | Std.Io.Error.ErrorKind_AlreadyExists
      | Std.Io.Error.ErrorKind_InvalidInput
      | Std.Io.Error.ErrorKind_InvalidData  ->
        Sandwich_proto.Io.IOError_IOERROR_INVALID <: Sandwich_proto.Io.t_IOError
      | Std.Io.Error.ErrorKind_Unsupported
      | Std.Io.Error.ErrorKind_OutOfMemory  ->
        Sandwich_proto.Io.IOError_IOERROR_SYSTEM_ERROR <: Sandwich_proto.Io.t_IOError
      | Std.Io.Error.ErrorKind_AddrInUse
      | Std.Io.Error.ErrorKind_AddrNotAvailable  ->
        Sandwich_proto.Io.IOError_IOERROR_ADDRESS_IN_USE <: Sandwich_proto.Io.t_IOError
      | _ -> Sandwich_proto.Io.IOError_IOERROR_UNKNOWN <: Sandwich_proto.Io.t_IOError
  }

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_1: t_IntoIOError Std.Io.Error.t_Error =
  {
    f_into_io_error_pre = (fun (self: Std.Io.Error.t_Error) -> true);
    f_into_io_error_post
    =
    (fun (self: Std.Io.Error.t_Error) (out: Sandwich_proto.Io.t_IOError) -> true);
    f_into_io_error
    =
    fun (self: Std.Io.Error.t_Error) ->
      f_into_io_error #Std.Io.Error.t_ErrorKind
        #FStar.Tactics.Typeclasses.solve
        (Std.Io.Error.impl__Error__kind self <: Std.Io.Error.t_ErrorKind)
  }
