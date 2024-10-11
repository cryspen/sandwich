module Sandwich.Support.Data_source
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open Core
open FStar.Mul

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Sandwich.Error in
  let open Sandwich.Error.Code in
  let open Std.Path in
  ()

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
let impl_1: Core.Convert.t_AsRef t_DataSource (t_Slice u8) =
  {
    f_as_ref_pre = (fun (self: t_DataSource) -> true);
    f_as_ref_post = (fun (self: t_DataSource) (out: t_Slice u8) -> true);
    f_as_ref
    =
    fun (self: t_DataSource) ->
      match self with
      | DataSource_Fs v ->
        Core.Ops.Deref.f_deref #(Alloc.Vec.t_Vec u8 Alloc.Alloc.t_Global)
          #FStar.Tactics.Typeclasses.solve
          v
      | DataSource_Bytes b ->
        Core.Ops.Deref.f_deref #(Alloc.Borrow.t_Cow (t_Slice u8)) #FStar.Tactics.Typeclasses.solve b
      | DataSource_String s ->
        Core.Str.impl__str__as_bytes (Core.Ops.Deref.f_deref #(Alloc.Borrow.t_Cow string)
              #FStar.Tactics.Typeclasses.solve
              s
            <:
            string)
  }

/// Instantiates a [`DataSource`] from a protobuf `DataSource` message.
/// # Errors
/// If the protobuf `DataSource` message provides a filename, and the file
/// couldn't be found or read from the local filesystem, then
/// `DataSourceError::DATASOURCEERROR_NOT_FOUND` is returned.
/// If the protobuf `DataSource` message doesn't provide any source type,
/// then `DataSourceError::DATASOURCEERROR_INVALID_CASE` is returned.
[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl: Core.Convert.t_TryFrom t_DataSource Sandwich_api_proto.Data_source.t_DataSource =
  {
    f_Error = Sandwich.Error.t_Error;
    f_try_from_pre = (fun (ds: Sandwich_api_proto.Data_source.t_DataSource) -> true);
    f_try_from_post
    =
    (fun
        (ds: Sandwich_api_proto.Data_source.t_DataSource)
        (out: Core.Result.t_Result t_DataSource Sandwich.Error.t_Error)
        ->
        true);
    f_try_from
    =
    fun (ds: Sandwich_api_proto.Data_source.t_DataSource) ->
      Core.Result.impl__and_then #Sandwich_api_proto.Data_source.Data_source.t_Specifier
        #Sandwich.Error.t_Error
        #t_DataSource
        (Core.Option.impl__ok_or_else #Sandwich_api_proto.Data_source.Data_source.t_Specifier
            #Sandwich.Error.t_Error
            (Core.Option.impl__as_ref #Sandwich_api_proto.Data_source.Data_source.t_Specifier
                ds.Sandwich_api_proto.Data_source.f_specifier
              <:
              Core.Option.t_Option Sandwich_api_proto.Data_source.Data_source.t_Specifier)
            (fun temp_0_ ->
                let _:Prims.unit = temp_0_ in
                Core.Convert.f_into #Sandwich_proto.Errors.t_DataSourceError
                  #Sandwich.Error.t_Error
                  #FStar.Tactics.Typeclasses.solve
                  (Sandwich_proto.Errors.DataSourceError_DATASOURCEERROR_INVALID_CASE
                    <:
                    Sandwich_proto.Errors.t_DataSourceError)
                <:
                Sandwich.Error.t_Error)
          <:
          Core.Result.t_Result Sandwich_api_proto.Data_source.Data_source.t_Specifier
            Sandwich.Error.t_Error)
        (fun oneof ->
            let oneof:Sandwich_api_proto.Data_source.Data_source.t_Specifier = oneof in
            match oneof with
            | Sandwich_api_proto.Data_source.Data_source.Specifier_Filename path ->
              (match
                  Core.Result.impl__or #(Alloc.Vec.t_Vec u8 Alloc.Alloc.t_Global)
                    #Std.Io.Error.t_Error
                    #Sandwich_proto.Errors.t_DataSourceError
                    (Std.Fs.read #Alloc.String.t_String path
                      <:
                      Core.Result.t_Result (Alloc.Vec.t_Vec u8 Alloc.Alloc.t_Global)
                        Std.Io.Error.t_Error)
                    (Core.Result.Result_Err
                      (Sandwich_proto.Errors.DataSourceError_DATASOURCEERROR_NOT_FOUND
                        <:
                        Sandwich_proto.Errors.t_DataSourceError)
                      <:
                      Core.Result.t_Result (Alloc.Vec.t_Vec u8 Alloc.Alloc.t_Global)
                        Sandwich_proto.Errors.t_DataSourceError)
                  <:
                  Core.Result.t_Result (Alloc.Vec.t_Vec u8 Alloc.Alloc.t_Global)
                    Sandwich_proto.Errors.t_DataSourceError
                with
                | Core.Result.Result_Ok hoist20 ->
                  Core.Ops.Control_flow.ControlFlow_Continue
                  (Core.Result.Result_Ok (DataSource_Fs hoist20 <: t_DataSource)
                    <:
                    Core.Result.t_Result t_DataSource Sandwich.Error.t_Error)
                  <:
                  Core.Ops.Control_flow.t_ControlFlow
                    (Core.Result.t_Result t_DataSource Sandwich.Error.t_Error)
                    (Core.Result.t_Result t_DataSource Sandwich.Error.t_Error)
                | Core.Result.Result_Err err ->
                  Core.Ops.Control_flow.ControlFlow_Break
                  (Core.Result.Result_Err
                    (Core.Convert.f_from #FStar.Tactics.Typeclasses.solve err
                      <:
                      Sandwich_proto.Errors.t_DataSourceError -> Sandwich.Error.t_Error)
                    <:
                    Core.Result.t_Result t_DataSource Sandwich.Error.t_Error)
                  <:
                  Core.Ops.Control_flow.t_ControlFlow
                    (Core.Result.t_Result t_DataSource Sandwich.Error.t_Error)
                    (Core.Result.t_Result t_DataSource Sandwich.Error.t_Error))
            | Sandwich_api_proto.Data_source.Data_source.Specifier_InlineBytes v ->
              Core.Ops.Control_flow.ControlFlow_Continue
              (Core.Result.Result_Ok
                (DataSource_Bytes
                  (Core.Convert.f_from #(Alloc.Borrow.t_Cow (t_Slice u8))
                      #(Alloc.Vec.t_Vec u8 Alloc.Alloc.t_Global)
                      #FStar.Tactics.Typeclasses.solve
                      v
                    <:
                    Alloc.Borrow.t_Cow (t_Slice u8))
                  <:
                  t_DataSource)
                <:
                Core.Result.t_Result t_DataSource Sandwich.Error.t_Error)
              <:
              Core.Ops.Control_flow.t_ControlFlow
                (Core.Result.t_Result t_DataSource Sandwich.Error.t_Error)
                (Core.Result.t_Result t_DataSource Sandwich.Error.t_Error)
            | Sandwich_api_proto.Data_source.Data_source.Specifier_InlineString v ->
              Core.Ops.Control_flow.ControlFlow_Continue
              (Core.Result.Result_Ok
                (DataSource_String
                  (Core.Convert.f_from #(Alloc.Borrow.t_Cow string)
                      #Alloc.String.t_String
                      #FStar.Tactics.Typeclasses.solve
                      v
                    <:
                    Alloc.Borrow.t_Cow string)
                  <:
                  t_DataSource)
                <:
                Core.Result.t_Result t_DataSource Sandwich.Error.t_Error)
              <:
              Core.Ops.Control_flow.t_ControlFlow
                (Core.Result.t_Result t_DataSource Sandwich.Error.t_Error)
                (Core.Result.t_Result t_DataSource Sandwich.Error.t_Error)
            | _ ->
              Core.Ops.Control_flow.ControlFlow_Continue
              (Core.Result.Result_Err
                (Core.Convert.f_into #Sandwich_proto.Errors.t_DataSourceError
                    #Sandwich.Error.t_Error
                    #FStar.Tactics.Typeclasses.solve
                    (Sandwich_proto.Errors.DataSourceError_DATASOURCEERROR_INVALID_CASE
                      <:
                      Sandwich_proto.Errors.t_DataSourceError)
                  <:
                  Sandwich.Error.t_Error)
                <:
                Core.Result.t_Result t_DataSource Sandwich.Error.t_Error)
              <:
              Core.Ops.Control_flow.t_ControlFlow
                (Core.Result.t_Result t_DataSource Sandwich.Error.t_Error)
                (Core.Result.t_Result t_DataSource Sandwich.Error.t_Error))
  }
