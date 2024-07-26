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
    #[derive(Debug, Default)]
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
    pub struct MessageField<T>(pub Option<Box<T>>);
}

pub mod enum_or_unknown {
    pub struct EnumOrUnknown<E> {
        phantom: std::marker::PhantomData<E>,
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
    pub struct OneofDescriptor {
        _hax_placeholder: (),
    }

    pub struct EnumValueDescriptor {
        _hax_placeholder: (),
    }

    pub struct EnumDescriptor {
        _hax_placeholder: (),
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