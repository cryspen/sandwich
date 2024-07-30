module Sandwich.Support.Data_source
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

/// A source of data.
/// Source of the material is either from the local filesystem (`Fs`), from
/// an inline slice of bytes (`Bytes`) or from a inline string (`String`).
/// The content is borrowed, unless is it explicitly mandated to own it.
type t_DataSource =
  | DataSource_Fs : Alloc.Vec.t_Vec u8 Alloc.Alloc.t_Global -> t_DataSource
  | DataSource_Bytes : Alloc.Borrow.t_Cow (t_Slice u8) -> t_DataSource
  | DataSource_String : Alloc.Borrow.t_Cow string -> t_DataSource

/// Returns the data holds by the [`DataSource`] as a slice of bytes.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_1:Core.Convert.t_AsRef t_DataSource (t_Slice u8)

/// Implements [`std::fmt::Debug`] for [`DataSource`].
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl_2:Core.Fmt.t_Debug t_DataSource

/// Instantiates a [`DataSource`] from a protobuf `DataSource` message.
/// # Errors
/// If the protobuf `DataSource` message provides a filename, and the file
/// couldn't be found or read from the local filesystem, then
/// `DataSourceError::DATASOURCEERROR_NOT_FOUND` is returned.
/// If the protobuf `DataSource` message doesn't provide any source type,
/// then `DataSourceError::DATASOURCEERROR_INVALID_CASE` is returned.
[@@ FStar.Tactics.Typeclasses.tcinstance]
val impl:Core.Convert.t_TryFrom t_DataSource Sandwich_api_proto.Data_source.t_DataSource
