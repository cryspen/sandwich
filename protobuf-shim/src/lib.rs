

pub mod message {
    /// Trait which is implemented by all generated message.
    ///
    /// Note, by default all generated messages also implement [`MessageFull`](crate::MessageFull)
    /// trait which provides access to reflection and features which depend on reflection
    /// (text format and JSON serialization).
    pub trait Message: Default + Clone + Send + Sync + Sized + PartialEq + 'static {}
}

pub mod message_full {
    use std::fmt;
    use crate::message::Message;
    use crate::reflect::value::ProtobufValue;

    /// Trait implemented for all the generated messages, except when lite runtime is enabled.
    ///
    /// When lite runtime is enabled, only `MessageLite` is implemented.
    ///
    /// * Generated messages are generated from `.proto` files
    /// * Dynamic messages can be created without code generation using only parsed proto files
    ///   (see [FileDescriptor::new_dynamic](crate::reflect::FileDescriptor::new_dynamic)).
    ///
    /// Also, generated messages implement `Default + PartialEq`
    ///
    /// This trait is sized, there's accompanying [`MessageDyn`](crate::MessageDyn) trait
    /// which is implemented for all messages which can be used in functions
    /// without making message a function type parameter.
    ///
    /// ## `Display`
    ///
    /// [`Display`](fmt::Display) implementation for messages does protobuf text format.
    /// See [`text_format`](crate::text_format) for more details.
    pub trait MessageFull: Message + ProtobufValue + fmt::Debug + fmt::Display {}
}


pub mod enums {
    use core::fmt;
    /// Trait implemented by all protobuf enum types.
    ///
    /// Additionally, generated enums also implement [`EnumFull`](crate::EnumFull) trait,
    /// which provides access to reflection.
    // pub trait Enum: Eq + Sized + Copy + fmt::Debug + Default + Send + Sync + 'static {
    pub trait Enum: Sized + Copy + fmt::Debug + Default + 'static {
        /// Enum name as specified in `.proto` file.
        ///
        /// There's full reflection when non-lite runtime code generation is used,
        /// and enums implement [`EnumFull`](crate::EnumFull) trait.
        /// This operation is for lite runtime.
        const NAME: &'static str;

        /// Get enum `i32` value.
        fn value(&self) -> i32;

        /// Try to create an enum from `i32` value.
        /// Return `None` if value is unknown.
        fn from_i32(v: i32) -> Option<Self>;

        /// Try to create an enum from `&str` value.
        /// Return `None` if str is unknown.
        fn from_str(s: &str) -> Option<Self>;

        /// All enum values for enum type.
        const VALUES: &'static [Self];
    }
}

pub mod special {
    #[derive(Clone)]
    pub struct SpecialFields {
        unknown_fields: crate::unknown_fields::UnknownFields,
        cached_size: crate::cached_size::CachedSize,
    }   
}

pub mod cached_size {
    /// Cached size field used in generated code.
    ///
    /// It is always equal to itself to simplify generated code.
    /// (Generated code can use `#[derive(Eq)]`).
    ///
    /// This type should rarely be used directly.
    #[derive(Debug, Default, Clone)]
    pub struct CachedSize {
        size: (),
    }
}

pub mod unknown_fields {

    /// Hold "unknown" fields in parsed message.
    ///
    /// Field may be unknown if it they are added in newer version of `.proto`.
    /// Unknown fields are stored in `UnknownFields` structure, so
    /// protobuf message could process messages without losing data.
    ///
    /// For example, in this operation: load from DB, modify, store to DB,
    /// even when working with older `.proto` file, new fields won't be lost.
    #[derive(Clone, PartialEq, Eq, Debug, Default)]
    pub struct UnknownFields {
        /// The map.
        //
        // `Option` is needed, because HashMap constructor performs allocation,
        // and very expensive.
        //
        // We use "default hasher" to make iteration order deterministic.
        // Which is used to make codegen output deterministic in presence of unknown fields
        // (e. g. file options are represented as unknown fields).
        // Using default hasher is suboptimal, because it makes unknown fields less safe.
        // Note, Google Protobuf C++ simply uses linear map (which can exploitable the same way),
        // and Google Protobuf Java uses tree map to store unknown fields
        // (which is more expensive than hashmap).
        fields: (),
    }
}

pub mod message_field {
    #[derive(Clone)]
    pub struct MessageField<T: Clone>(pub Option<Box<T>>);

    impl<T: Clone> MessageField<T> {
        pub fn as_ref(&self) -> Option<&T> {
            self.0.as_ref().map(|v| &**v)
        }
        pub fn is_some(&self) -> bool {
            self.0.is_some()
        }
    }
}

pub mod enum_or_unknown {
    use crate::enums::*;

    #[derive(Clone)]
    pub struct EnumOrUnknown<E: Clone> {
        value: i32,
        phantom: std::marker::PhantomData<E>,
    }

    impl<E: Clone> EnumOrUnknown<E> {
        const _HAX_PLACEHOLDER: () = ();
    }

    impl<E: Enum + Clone> EnumOrUnknown<E> {
        pub fn enum_value(&self) -> Result<E, i32> {
            E::from_i32(self.value).ok_or(self.value)
        }

        pub fn enum_value_or_default(&self) -> E {
            self.enum_value().unwrap_or_default()
        }
    }
}

pub mod oneof {
    pub trait Oneof {}
}


pub mod oneof_full {
    use crate::oneof::Oneof;
    use crate::reflect::OneofDescriptor;

    /// Implemented by all oneof types when lite runtime is not enabled.
    pub trait OneofFull: Oneof { 
        /// Descriptor object for this oneof.
        fn descriptor() -> OneofDescriptor;
    }
}

pub mod reflect {
    use crate::special::SpecialFields;
    pub mod enums {
        pub struct EnumDescriptor {
            _hax_placeholder: (),
        }

        impl EnumDescriptor {
            pub fn new<T>(file_descriptor: T, index: usize) -> Self {
                EnumDescriptor {
                    _hax_placeholder: ()
                }
            } 
        }
    }

    pub struct OneofDescriptor {
        _hax_placeholder: (),
    }

    pub struct EnumValueDescriptor {
        _hax_placeholder: (),
    }

    pub struct EnumDescriptor {
        _hax_placeholder: (),
    }

    pub struct MessageDescriptor {
        _hax_placeholder: (),
    }

    pub mod runtime_types {
        pub enum RuntimeType {
            I32,
            I64,
            U32,
            U64,
            F32,
            F64,
            Bool,
            String,
            VecU8,
            Enum(super::EnumDescriptor),
            Message(super::MessageDescriptor),
        }
    }

    pub struct Value {
        pub kind: Option<Kind>,
        pub special_fields: SpecialFields,
    }

    pub struct Struct {
        pub fields: std::collections::HashMap<String, Value>,
        pub special_fields: SpecialFields,
    }

    pub enum Kind {
        NullValue(super::enum_or_unknown::EnumOrUnknown<NullValue>),
        NumberValue(u64), // should be f64 but hax doesn't implement Fstar float yet.
        StringValue(String),
        BoolValue(bool),
        StructValue(Struct),
        ListValue(ListValue),
    }

    #[derive(Clone)]
    pub enum NullValue {
        NULL_VALUE = 0,
    }

    pub struct ListValue {
        pub values: Vec<Value>,
        pub special_fields: SpecialFields,
    }

    pub mod value {
        pub trait ProtobufValue: Clone + Default + std::fmt::Debug + Send + Sync + Sized + 'static {}
    }

    pub mod file {
        use crate::reflect::file::index::FileDescriptorCommon;
        use crate::descriptor::FileDescriptorProto;

        pub mod index {
            use std::collections::HashMap;

            #[derive(Clone)]
            pub(crate) struct FileDescriptorCommon {
                // /// Direct dependencies of this file.
                // pub(crate) dependencies: Vec<FileDescriptor>,
                // /// All messages in this file.
                // pub(crate) messages: Vec<MessageIndices>,
                // pub(crate) message_by_name_to_package: HashMap<String, usize>,
                // pub(crate) top_level_messages: Vec<usize>,
                // pub(crate) enums: Vec<EnumIndices>,
                pub(crate) enums_by_name_to_package: HashMap<String, usize>,
                // pub(crate) oneofs: Vec<OneofIndices>,
                // pub(crate) services: Vec<ServiceIndex>,
                // pub(crate) first_extension_field_index: usize,
                // /// All fields followed by file-level extensions.
                // pub(crate) fields: Vec<FieldIndex>,
            }
        }

        #[derive(Clone)]
        pub(crate) struct DynamicFileDescriptor {
            pub(crate) proto: FileDescriptorProto,
            pub(crate) common: FileDescriptorCommon,
        }

        pub mod generated {
            use crate::reflect::file::index::FileDescriptorCommon;

            #[derive(Clone)]
            pub struct GeneratedFileDescriptor {
                pub(crate) common: FileDescriptorCommon,
            }            
        }

        use crate::reflect::enums::EnumDescriptor;

        #[derive(Clone)]
        pub struct FileDescriptor {
            pub imp: FileDescriptorImpl,
        }

        use crate::reflect::file::generated::GeneratedFileDescriptor;

        #[derive(Clone)]
        pub enum FileDescriptorImpl {
            Generated(&'static GeneratedFileDescriptor),
            Dynamic(&'static DynamicFileDescriptor),
        }

        impl FileDescriptor {
            pub(crate) fn common(&self) -> &FileDescriptorCommon {
                match &self.imp {
                    FileDescriptorImpl::Generated(g) => &g.common,
                    FileDescriptorImpl::Dynamic(d) => &d.common,
                }
            }

            pub fn enum_by_package_relative_name(&self, name: &str) -> Option<EnumDescriptor> {
                self.common()
                    .enums_by_name_to_package
                    .get(name)
                    .map(|&index| EnumDescriptor::new(self.clone(), index))
            }
        }
    }
}

pub mod marker {
    pub trait Copy: Clone {}

    pub trait Clone: Sized {
        // Required method
        fn clone(&self) -> Self;

        fn clone_from(&mut self, source: &Self) {
            *self = source.clone()
        }
    }
}

pub mod enum_full {
    use crate::enums::*;
    use crate::reflect::*;

    pub trait EnumFull: Enum {
        // Required methods
        fn descriptor(&self) -> EnumValueDescriptor;
        fn enum_descriptor() -> EnumDescriptor;
    }
}

pub mod descriptor {
    use super::special::SpecialFields;
    use super::message_field::MessageField;
    use super::enum_or_unknown::EnumOrUnknown;

    #[derive(Clone)]
    pub struct FileDescriptorProto {
        pub name: Option<String>,
        pub package: Option<String>,
        pub dependency: Vec<String>,
        pub public_dependency: Vec<i32>,
        pub weak_dependency: Vec<i32>,
        pub message_type: Vec<DescriptorProto>,
        pub enum_type: Vec<EnumDescriptorProto>,
        pub service: Vec<ServiceDescriptorProto>,
        pub extension: Vec<FieldDescriptorProto>,
        pub options: MessageField<FileOptions>,
        pub source_code_info: MessageField<SourceCodeInfo>,
        pub syntax: Option<String>,
        pub special_fields: SpecialFields,
    }

    #[derive(Clone)]
    pub struct DescriptorProto {
        pub name: Option<String>,
        pub field: Vec<FieldDescriptorProto>,
        pub extension: Vec<FieldDescriptorProto>,
        pub nested_type: Vec<DescriptorProto>,
        pub enum_type: Vec<EnumDescriptorProto>,
        pub extension_range: Vec<ExtensionRange>,
        pub oneof_decl: Vec<OneofDescriptorProto>,
        pub options: MessageField<MessageOptions>,
        pub reserved_range: Vec<ReservedRange>,
        pub reserved_name: Vec<String>,
        pub special_fields: SpecialFields,
    }

    #[derive(Clone)]
    pub struct FieldDescriptorProto {
        pub name: Option<String>,
        pub number: Option<i32>,
        pub label: Option<EnumOrUnknown<Label>>,
        pub type_: Option<EnumOrUnknown<Type>>,
        pub type_name: Option<String>,
        pub extendee: Option<String>,
        pub default_value: Option<String>,
        pub oneof_index: Option<i32>,
        pub json_name: Option<String>,
        pub options: MessageField<FieldOptions>,
        pub proto3_optional: Option<bool>,
        pub special_fields: SpecialFields,
    }

    #[derive(Clone)]
    pub struct EnumDescriptorProto {
        pub name: Option<String>,
        pub value: Vec<EnumValueDescriptorProto>,
        pub options: MessageField<EnumOptions>,
        pub reserved_range: Vec<EnumReservedRange>,
        pub reserved_name: Vec<String>,
        pub special_fields: SpecialFields,
    }

    #[derive(Clone)]
    pub struct EnumValueDescriptorProto {
        pub name: Option<String>,
        pub number: Option<i32>,
        pub options: MessageField<EnumValueOptions>,
        pub special_fields: SpecialFields,
    }

    #[derive(Clone)]
    pub struct EnumOptions {
        pub allow_alias: Option<bool>,
        pub deprecated: Option<bool>,
        pub uninterpreted_option: Vec<UninterpretedOption>,
        pub special_fields: SpecialFields,
    }

    #[derive(Clone)]
    pub struct EnumValueOptions {
        pub deprecated: Option<bool>,
        pub uninterpreted_option: Vec<UninterpretedOption>,
        pub special_fields: SpecialFields,
    }

    #[derive(Clone)]
    pub struct UninterpretedOption {
        pub name: Vec<NamePart>,
        pub identifier_value: Option<String>,
        pub positive_int_value: Option<u64>,
        pub negative_int_value: Option<i64>,
        pub double_value: Option<()>, // this should be f64, but it's not supported by fstar.
        pub string_value: Option<Vec<u8>>,
        pub aggregate_value: Option<String>,
        pub special_fields: SpecialFields,
    }

    #[derive(Clone)]
    pub struct NamePart {
        pub name_part: Option<String>,
        pub is_extension: Option<bool>,
        pub special_fields: SpecialFields,
    }

    #[derive(Clone)]
    pub struct MessageOptions {
        pub message_set_wire_format: Option<bool>,
        pub no_standard_descriptor_accessor: Option<bool>,
        pub deprecated: Option<bool>,
        pub map_entry: Option<bool>,
        pub uninterpreted_option: Vec<UninterpretedOption>,
        pub special_fields: SpecialFields,
    }

    #[derive(Clone)]
    pub struct ServiceDescriptorProto {
        pub name: Option<String>,
        pub method: Vec<MethodDescriptorProto>,
        pub options: MessageField<ServiceOptions>,
        pub special_fields: SpecialFields,
    }

    #[derive(Clone)]
    pub struct ReservedRange {
        pub start: Option<i32>,
        pub end: Option<i32>,
        pub special_fields: SpecialFields,
    }

    #[derive(Clone)]
    pub struct SourceCodeInfo {
        pub location: Vec<Location>,
        pub special_fields: SpecialFields,
    }

    #[derive(Clone)]
    pub struct Location {
        pub path: Vec<i32>,
        pub span: Vec<i32>,
        pub leading_comments: Option<String>,
        pub trailing_comments: Option<String>,
        pub leading_detached_comments: Vec<String>,
        pub special_fields: SpecialFields,
    }

    #[derive(Clone)]
    pub struct MethodDescriptorProto {
        pub name: Option<String>,
        pub input_type: Option<String>,
        pub output_type: Option<String>,
        pub options: MessageField<MethodOptions>,
        pub client_streaming: Option<bool>,
        pub server_streaming: Option<bool>,
        pub special_fields: SpecialFields,
    }

    #[derive(Clone)]
    pub struct MethodOptions {
        pub deprecated: Option<bool>,
        pub idempotency_level: Option<EnumOrUnknown<IdempotencyLevel>>,
        pub uninterpreted_option: Vec<UninterpretedOption>,
        pub special_fields: SpecialFields,
    }

    #[derive(Clone)]
    pub enum IdempotencyLevel {
        IDEMPOTENCY_UNKNOWN = 0,
        NO_SIDE_EFFECTS = 1,
        IDEMPOTENT = 2,
    }

    #[derive(Clone)]
    pub enum Type {
        TYPE_DOUBLE = 1,
        TYPE_FLOAT = 2,
        TYPE_INT64 = 3,
        TYPE_UINT64 = 4,
        TYPE_INT32 = 5,
        TYPE_FIXED64 = 6,
        TYPE_FIXED32 = 7,
        TYPE_BOOL = 8,
        TYPE_STRING = 9,
        TYPE_GROUP = 10,
        TYPE_MESSAGE = 11,
        TYPE_BYTES = 12,
        TYPE_UINT32 = 13,
        TYPE_ENUM = 14,
        TYPE_SFIXED32 = 15,
        TYPE_SFIXED64 = 16,
        TYPE_SINT32 = 17,
        TYPE_SINT64 = 18,
    }

    #[derive(Clone)]
    pub struct FieldOptions {
        pub ctype: Option<EnumOrUnknown<CType>>,
        pub packed: Option<bool>,
        pub jstype: Option<EnumOrUnknown<JSType>>,
        pub lazy: Option<bool>,
        pub deprecated: Option<bool>,
        pub weak: Option<bool>,
        pub uninterpreted_option: Vec<UninterpretedOption>,
        pub special_fields: SpecialFields,
    }

    #[derive(Clone)]
    pub enum CType {
        STRING = 0,
        CORD = 1,
        STRING_PIECE = 2,
    }

    #[derive(Clone)]
    pub enum JSType {
        JS_NORMAL = 0,
        JS_STRING = 1,
        JS_NUMBER = 2,
    }

    #[derive(Clone)]
    pub struct EnumReservedRange {
        pub start: Option<i32>,
        pub end: Option<i32>,
        pub special_fields: SpecialFields,
    }

    #[derive(Clone)]
    pub struct ServiceOptions {
        pub deprecated: Option<bool>,
        pub uninterpreted_option: Vec<UninterpretedOption>,
        pub special_fields: SpecialFields,
    }

    #[derive(Clone)]
    pub struct FileOptions {

        pub java_package: Option<String>,
        pub java_outer_classname: Option<String>,
        pub java_multiple_files: Option<bool>,
        pub java_generate_equals_and_hash: Option<bool>,
        pub java_string_check_utf8: Option<bool>,
        pub optimize_for: Option<EnumOrUnknown<OptimizeMode>>,
        pub go_package: Option<String>,
        pub cc_generic_services: Option<bool>,
        pub java_generic_services: Option<bool>,
        pub py_generic_services: Option<bool>,
        pub php_generic_services: Option<bool>,
        pub deprecated: Option<bool>,
        pub cc_enable_arenas: Option<bool>,
        pub objc_class_prefix: Option<String>,
        pub csharp_namespace: Option<String>,
        pub swift_prefix: Option<String>,
        pub php_class_prefix: Option<String>,
        pub php_namespace: Option<String>,
        pub php_metadata_namespace: Option<String>,
        pub ruby_package: Option<String>,
        pub uninterpreted_option: Vec<UninterpretedOption>,
        pub special_fields: SpecialFields,
    }

    #[derive(Clone)]
    pub enum OptimizeMode {
        SPEED = 1,
        CODE_SIZE = 2,
        LITE_RUNTIME = 3,
    }

    #[derive(Clone)]
    pub struct ExtensionRange {
        pub start: Option<i32>,
        pub end: Option<i32>,
        pub options: MessageField<ExtensionRangeOptions>,
        pub special_fields: SpecialFields,
    }

    #[derive(Clone)]
    pub struct ExtensionRangeOptions {
        pub uninterpreted_option: Vec<UninterpretedOption>,
        pub special_fields: SpecialFields,
    }

    #[derive(Clone)]
    pub struct OneofDescriptorProto {
        pub name: Option<String>,
        pub options: MessageField<OneofOptions>,
        pub special_fields: SpecialFields,
    }

    #[derive(Clone)]
    pub struct OneofOptions {
        pub uninterpreted_option: Vec<UninterpretedOption>,
        pub special_fields: SpecialFields,
    }

    #[derive(Clone)]
    pub enum Label {
        LABEL_OPTIONAL = 1,
        LABEL_REQUIRED = 2,
        LABEL_REPEATED = 3,
    }
}
