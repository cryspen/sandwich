module Sandwich.Implementation.Openssl3_impl.Tunnel.Bio_method
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

/// A wrapper around a BIO.
type t_Bio = | Bio : Core.Ptr.Non_null.t_NonNull Openssl3.t_bio_st -> t_Bio

[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl:Core.Fmt.t_Debug t_Bio

/// Clears flags.
val impl__Bio__clear_flags
      (#impl_765196419_: Type0)
      {| i1: Core.Convert.t_Into impl_765196419_ i32 |}
      (self: t_Bio)
      (flags: impl_765196419_)
    : Prims.Pure Prims.unit Prims.l_True (fun _ -> Prims.l_True)

/// Clears the BIO retry flag.
val impl__Bio__clear_retry_flag (self: t_Bio)
    : Prims.Pure Prims.unit Prims.l_True (fun _ -> Prims.l_True)

/// Declares the BIO as closed.
val impl__Bio__declare_closed (self: t_Bio)
    : Prims.Pure Prims.unit Prims.l_True (fun _ -> Prims.l_True)

/// Sets flags.
val impl__Bio__set_flags
      (#impl_765196419_: Type0)
      {| i2: Core.Convert.t_Into impl_765196419_ i32 |}
      (self: t_Bio)
      (flags: impl_765196419_)
    : Prims.Pure Prims.unit Prims.l_True (fun _ -> Prims.l_True)

/// Sets the 'retry read' flag.
val impl__Bio__set_retry_read_flag (self: t_Bio)
    : Prims.Pure Prims.unit Prims.l_True (fun _ -> Prims.l_True)

/// Sets the 'retry write' flag.
val impl__Bio__set_retry_write_flag (self: t_Bio)
    : Prims.Pure Prims.unit Prims.l_True (fun _ -> Prims.l_True)

/// Static BIO method.
(* item error backend: (reject_RawOrMutPointer) ExplicitRejection { reason: "a node of kind [Raw_pointer] have been found in the AST" }
Last available AST for this item:

#[_hax::json("\"Erased\"")]
/// BIO create callback (never used).
#[cfg(feature = "tunnel")]
#[cfg(feature = "openssl3")]
#[deny(bare_trait_objects)]
#[feature(register_tool)]
#[register_tool(_hax)]
unsafe fn bio_create(_bio: raw_pointer!()) -> int {
    rust_primitives::hax::dropped_body
}


Last AST:
/** print_rust: pitem: not implemented  (item: { Concrete_ident.T.def_id =
  { Concrete_ident.Imported.krate = "sandwich";
    path =
    [{ Concrete_ident.Imported.data =
       (Concrete_ident.Imported.TypeNs "implementation"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "openssl3_impl"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "tunnel"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "bio_method"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.ValueNs "bio_create"); disambiguator = 0 }
      ]
    };
  kind = Concrete_ident.Kind.Value }) */
const _: () = ();
 *)

(* item error backend: (reject_RawOrMutPointer) ExplicitRejection { reason: "a node of kind [Raw_pointer] have been found in the AST" }
Last available AST for this item:

#[_hax::json("\"Erased\"")]
/// BIO control callback.
#[cfg(feature = "tunnel")]
#[cfg(feature = "openssl3")]
#[deny(bare_trait_objects)]
#[feature(register_tool)]
#[register_tool(_hax)]
unsafe fn bio_ctrl(
    bio: raw_pointer!(),
    cmd: int,
    larg: int,
    _pargs: raw_pointer!(),
) -> int {
    rust_primitives::hax::dropped_body
}


Last AST:
/** print_rust: pitem: not implemented  (item: { Concrete_ident.T.def_id =
  { Concrete_ident.Imported.krate = "sandwich";
    path =
    [{ Concrete_ident.Imported.data =
       (Concrete_ident.Imported.TypeNs "implementation"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "openssl3_impl"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "tunnel"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "bio_method"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.ValueNs "bio_ctrl"); disambiguator = 0 }
      ]
    };
  kind = Concrete_ident.Kind.Value }) */
const _: () = ();
 *)

(* item error backend: (reject_RawOrMutPointer) ExplicitRejection { reason: "a node of kind [Raw_pointer] have been found in the AST" }
Last available AST for this item:

#[_hax::json("\"Erased\"")]
/// BIO destroy callback (never used).
#[cfg(feature = "tunnel")]
#[cfg(feature = "openssl3")]
#[deny(bare_trait_objects)]
#[feature(register_tool)]
#[register_tool(_hax)]
unsafe fn bio_destroy(_bio: raw_pointer!()) -> int {
    rust_primitives::hax::dropped_body
}


Last AST:
/** print_rust: pitem: not implemented  (item: { Concrete_ident.T.def_id =
  { Concrete_ident.Imported.krate = "sandwich";
    path =
    [{ Concrete_ident.Imported.data =
       (Concrete_ident.Imported.TypeNs "implementation"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "openssl3_impl"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "tunnel"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "bio_method"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.ValueNs "bio_destroy"); disambiguator = 0 }
      ]
    };
  kind = Concrete_ident.Kind.Value }) */
const _: () = ();
 *)

(* item error backend: (reject_RawOrMutPointer) ExplicitRejection { reason: "a node of kind [Raw_pointer] have been found in the AST" }
Last available AST for this item:

#[_hax::json("\"Erased\"")]
/// BIO read callback.
#[cfg(feature = "tunnel")]
#[cfg(feature = "openssl3")]
#[deny(bare_trait_objects)]
#[feature(register_tool)]
#[register_tool(_hax)]
unsafe fn bio_read(
    bio: raw_pointer!(),
    data: raw_pointer!(),
    len: int,
    written: raw_pointer!(),
) -> int {
    rust_primitives::hax::dropped_body
}


Last AST:
/** print_rust: pitem: not implemented  (item: { Concrete_ident.T.def_id =
  { Concrete_ident.Imported.krate = "sandwich";
    path =
    [{ Concrete_ident.Imported.data =
       (Concrete_ident.Imported.TypeNs "implementation"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "openssl3_impl"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "tunnel"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "bio_method"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.ValueNs "bio_read"); disambiguator = 0 }
      ]
    };
  kind = Concrete_ident.Kind.Value }) */
const _: () = ();
 *)

(* item error backend: (reject_RawOrMutPointer) ExplicitRejection { reason: "a node of kind [Raw_pointer] have been found in the AST" }
Last available AST for this item:

#[_hax::json("\"Erased\"")]
/// BIO write callback.
#[cfg(feature = "tunnel")]
#[cfg(feature = "openssl3")]
#[deny(bare_trait_objects)]
#[feature(register_tool)]
#[register_tool(_hax)]
unsafe fn bio_write(
    bio: raw_pointer!(),
    data: raw_pointer!(),
    len: int,
    written: raw_pointer!(),
) -> int {
    rust_primitives::hax::dropped_body
}


Last AST:
/** print_rust: pitem: not implemented  (item: { Concrete_ident.T.def_id =
  { Concrete_ident.Imported.krate = "sandwich";
    path =
    [{ Concrete_ident.Imported.data =
       (Concrete_ident.Imported.TypeNs "implementation"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "openssl3_impl"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "tunnel"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.TypeNs "bio_method"); disambiguator = 0 };
      { Concrete_ident.Imported.data =
        (Concrete_ident.Imported.ValueNs "bio_write"); disambiguator = 0 }
      ]
    };
  kind = Concrete_ident.Kind.Value }) */
const _: () = ();
 *)

/// Flushes data.
val impl__Bio__flush (self: t_Bio)
    : Prims.Pure (Core.Result.t_Result Prims.unit Sandwich_proto.Io.t_IOError)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Returns the SSL object attached to the BIO.
val impl__Bio__get_ssl (self: t_Bio)
    : Prims.Pure
      (Core.Result.t_Result (Core.Ptr.Non_null.t_NonNull Openssl3.t_ssl_st)
          Sandwich_proto.Io.t_IOError) Prims.l_True (fun _ -> Prims.l_True)

/// Reads data from the BIO.
val impl__Bio__read (self: t_Bio) (buffer: t_Slice u8)
    : Prims.Pure (t_Slice u8 & Core.Result.t_Result usize Sandwich_proto.Io.t_IOError)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Writes data to the BIO.
val impl__Bio__write (self: t_Bio) (buffer: t_Slice u8)
    : Prims.Pure (Core.Result.t_Result usize Sandwich_proto.Io.t_IOError)
      Prims.l_True
      (fun _ -> Prims.l_True)

/// Reflects an IO error in the BIO flags.
/// When an IO interface raises an error, this function sets the appropriate
/// flags to the BIO state depending on the error.
val bio_reflect_io_error
      (#impl_1033358885_ #impl_1033358885_ #impl_765196419_: Type0)
      {| i3: Core.Ops.Function.t_FnOnce impl_1033358885_ Prims.unit |}
      {| i4: Core.Ops.Function.t_FnOnce impl_720525265_ Prims.unit |}
      {| i5: Core.Convert.t_Into impl_765196419_ i32 |}
      (error: Sandwich_proto.Io.t_IOError)
      (on_retry: impl_1033358885_)
      (on_close: impl_720525265_)
      (default_return_value: impl_765196419_)
    : Prims.Pure i32 Prims.l_True (fun _ -> Prims.l_True)

/// Returns the tunnel attached to the BIO.
val impl__Bio__get_tunnel (self: t_Bio)
    : Prims.Pure Rust_primitives.Hax.t_failure Prims.l_True (fun _ -> Prims.l_True)

/// Synchronizes the SSL state with the tunnel state.
val impl__Bio__synchronize_states
      (self: t_Bio)
      (tun: Sandwich.Implementation.Openssl3_impl.Tunnel.t_Tunnel)
    : Prims.Pure Sandwich.Implementation.Openssl3_impl.Tunnel.t_Tunnel
      Prims.l_True
      (fun _ -> Prims.l_True)
