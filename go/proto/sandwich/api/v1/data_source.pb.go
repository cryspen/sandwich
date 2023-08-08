// Copyright 2023 SandboxAQ
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.28.1
// 	protoc        v3.21.5
// source: proto/api/v1/data_source.proto

package v1

import (
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	reflect "reflect"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

type DataSource struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// Types that are assignable to Specifier:
	//	*DataSource_Filename
	//	*DataSource_InlineBytes
	//	*DataSource_InlineString
	Specifier isDataSource_Specifier `protobuf_oneof:"specifier"`
}

func (x *DataSource) Reset() {
	*x = DataSource{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_api_v1_data_source_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *DataSource) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*DataSource) ProtoMessage() {}

func (x *DataSource) ProtoReflect() protoreflect.Message {
	mi := &file_proto_api_v1_data_source_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use DataSource.ProtoReflect.Descriptor instead.
func (*DataSource) Descriptor() ([]byte, []int) {
	return file_proto_api_v1_data_source_proto_rawDescGZIP(), []int{0}
}

func (m *DataSource) GetSpecifier() isDataSource_Specifier {
	if m != nil {
		return m.Specifier
	}
	return nil
}

func (x *DataSource) GetFilename() string {
	if x, ok := x.GetSpecifier().(*DataSource_Filename); ok {
		return x.Filename
	}
	return ""
}

func (x *DataSource) GetInlineBytes() []byte {
	if x, ok := x.GetSpecifier().(*DataSource_InlineBytes); ok {
		return x.InlineBytes
	}
	return nil
}

func (x *DataSource) GetInlineString() string {
	if x, ok := x.GetSpecifier().(*DataSource_InlineString); ok {
		return x.InlineString
	}
	return ""
}

type isDataSource_Specifier interface {
	isDataSource_Specifier()
}

type DataSource_Filename struct {
	Filename string `protobuf:"bytes,1,opt,name=filename,proto3,oneof"`
}

type DataSource_InlineBytes struct {
	InlineBytes []byte `protobuf:"bytes,2,opt,name=inline_bytes,json=inlineBytes,proto3,oneof"`
}

type DataSource_InlineString struct {
	InlineString string `protobuf:"bytes,3,opt,name=inline_string,json=inlineString,proto3,oneof"`
}

func (*DataSource_Filename) isDataSource_Specifier() {}

func (*DataSource_InlineBytes) isDataSource_Specifier() {}

func (*DataSource_InlineString) isDataSource_Specifier() {}

type ASN1DataSource struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Data   *DataSource        `protobuf:"bytes,1,opt,name=data,proto3" json:"data,omitempty"`
	Format ASN1EncodingFormat `protobuf:"varint,2,opt,name=format,proto3,enum=saq.sandwich.proto.api.v1.ASN1EncodingFormat" json:"format,omitempty"`
}

func (x *ASN1DataSource) Reset() {
	*x = ASN1DataSource{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_api_v1_data_source_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ASN1DataSource) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ASN1DataSource) ProtoMessage() {}

func (x *ASN1DataSource) ProtoReflect() protoreflect.Message {
	mi := &file_proto_api_v1_data_source_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ASN1DataSource.ProtoReflect.Descriptor instead.
func (*ASN1DataSource) Descriptor() ([]byte, []int) {
	return file_proto_api_v1_data_source_proto_rawDescGZIP(), []int{1}
}

func (x *ASN1DataSource) GetData() *DataSource {
	if x != nil {
		return x.Data
	}
	return nil
}

func (x *ASN1DataSource) GetFormat() ASN1EncodingFormat {
	if x != nil {
		return x.Format
	}
	return ASN1EncodingFormat_ENCODING_FORMAT_PEM
}

var File_proto_api_v1_data_source_proto protoreflect.FileDescriptor

var file_proto_api_v1_data_source_proto_rawDesc = []byte{
	0x0a, 0x1e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2f, 0x61, 0x70, 0x69, 0x2f, 0x76, 0x31, 0x2f, 0x64,
	0x61, 0x74, 0x61, 0x5f, 0x73, 0x6f, 0x75, 0x72, 0x63, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f,
	0x12, 0x19, 0x73, 0x61, 0x71, 0x2e, 0x73, 0x61, 0x6e, 0x64, 0x77, 0x69, 0x63, 0x68, 0x2e, 0x70,
	0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x61, 0x70, 0x69, 0x2e, 0x76, 0x31, 0x1a, 0x22, 0x70, 0x72, 0x6f,
	0x74, 0x6f, 0x2f, 0x61, 0x70, 0x69, 0x2f, 0x76, 0x31, 0x2f, 0x65, 0x6e, 0x63, 0x6f, 0x64, 0x69,
	0x6e, 0x67, 0x5f, 0x66, 0x6f, 0x72, 0x6d, 0x61, 0x74, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x22,
	0x83, 0x01, 0x0a, 0x0a, 0x44, 0x61, 0x74, 0x61, 0x53, 0x6f, 0x75, 0x72, 0x63, 0x65, 0x12, 0x1c,
	0x0a, 0x08, 0x66, 0x69, 0x6c, 0x65, 0x6e, 0x61, 0x6d, 0x65, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09,
	0x48, 0x00, 0x52, 0x08, 0x66, 0x69, 0x6c, 0x65, 0x6e, 0x61, 0x6d, 0x65, 0x12, 0x23, 0x0a, 0x0c,
	0x69, 0x6e, 0x6c, 0x69, 0x6e, 0x65, 0x5f, 0x62, 0x79, 0x74, 0x65, 0x73, 0x18, 0x02, 0x20, 0x01,
	0x28, 0x0c, 0x48, 0x00, 0x52, 0x0b, 0x69, 0x6e, 0x6c, 0x69, 0x6e, 0x65, 0x42, 0x79, 0x74, 0x65,
	0x73, 0x12, 0x25, 0x0a, 0x0d, 0x69, 0x6e, 0x6c, 0x69, 0x6e, 0x65, 0x5f, 0x73, 0x74, 0x72, 0x69,
	0x6e, 0x67, 0x18, 0x03, 0x20, 0x01, 0x28, 0x09, 0x48, 0x00, 0x52, 0x0c, 0x69, 0x6e, 0x6c, 0x69,
	0x6e, 0x65, 0x53, 0x74, 0x72, 0x69, 0x6e, 0x67, 0x42, 0x0b, 0x0a, 0x09, 0x73, 0x70, 0x65, 0x63,
	0x69, 0x66, 0x69, 0x65, 0x72, 0x22, 0x92, 0x01, 0x0a, 0x0e, 0x41, 0x53, 0x4e, 0x31, 0x44, 0x61,
	0x74, 0x61, 0x53, 0x6f, 0x75, 0x72, 0x63, 0x65, 0x12, 0x39, 0x0a, 0x04, 0x64, 0x61, 0x74, 0x61,
	0x18, 0x01, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x25, 0x2e, 0x73, 0x61, 0x71, 0x2e, 0x73, 0x61, 0x6e,
	0x64, 0x77, 0x69, 0x63, 0x68, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x61, 0x70, 0x69, 0x2e,
	0x76, 0x31, 0x2e, 0x44, 0x61, 0x74, 0x61, 0x53, 0x6f, 0x75, 0x72, 0x63, 0x65, 0x52, 0x04, 0x64,
	0x61, 0x74, 0x61, 0x12, 0x45, 0x0a, 0x06, 0x66, 0x6f, 0x72, 0x6d, 0x61, 0x74, 0x18, 0x02, 0x20,
	0x01, 0x28, 0x0e, 0x32, 0x2d, 0x2e, 0x73, 0x61, 0x71, 0x2e, 0x73, 0x61, 0x6e, 0x64, 0x77, 0x69,
	0x63, 0x68, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x61, 0x70, 0x69, 0x2e, 0x76, 0x31, 0x2e,
	0x41, 0x53, 0x4e, 0x31, 0x45, 0x6e, 0x63, 0x6f, 0x64, 0x69, 0x6e, 0x67, 0x46, 0x6f, 0x72, 0x6d,
	0x61, 0x74, 0x52, 0x06, 0x66, 0x6f, 0x72, 0x6d, 0x61, 0x74, 0x42, 0x3e, 0x5a, 0x3c, 0x67, 0x69,
	0x74, 0x68, 0x75, 0x62, 0x2e, 0x63, 0x6f, 0x6d, 0x2f, 0x73, 0x61, 0x6e, 0x64, 0x62, 0x6f, 0x78,
	0x2d, 0x71, 0x75, 0x61, 0x6e, 0x74, 0x75, 0x6d, 0x2f, 0x73, 0x61, 0x6e, 0x64, 0x77, 0x69, 0x63,
	0x68, 0x2f, 0x67, 0x6f, 0x2f, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2f, 0x73, 0x61, 0x6e, 0x64, 0x77,
	0x69, 0x63, 0x68, 0x2f, 0x61, 0x70, 0x69, 0x2f, 0x76, 0x31, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74,
	0x6f, 0x33,
}

var (
	file_proto_api_v1_data_source_proto_rawDescOnce sync.Once
	file_proto_api_v1_data_source_proto_rawDescData = file_proto_api_v1_data_source_proto_rawDesc
)

func file_proto_api_v1_data_source_proto_rawDescGZIP() []byte {
	file_proto_api_v1_data_source_proto_rawDescOnce.Do(func() {
		file_proto_api_v1_data_source_proto_rawDescData = protoimpl.X.CompressGZIP(file_proto_api_v1_data_source_proto_rawDescData)
	})
	return file_proto_api_v1_data_source_proto_rawDescData
}

var file_proto_api_v1_data_source_proto_msgTypes = make([]protoimpl.MessageInfo, 2)
var file_proto_api_v1_data_source_proto_goTypes = []interface{}{
	(*DataSource)(nil),      // 0: saq.sandwich.proto.api.v1.DataSource
	(*ASN1DataSource)(nil),  // 1: saq.sandwich.proto.api.v1.ASN1DataSource
	(ASN1EncodingFormat)(0), // 2: saq.sandwich.proto.api.v1.ASN1EncodingFormat
}
var file_proto_api_v1_data_source_proto_depIdxs = []int32{
	0, // 0: saq.sandwich.proto.api.v1.ASN1DataSource.data:type_name -> saq.sandwich.proto.api.v1.DataSource
	2, // 1: saq.sandwich.proto.api.v1.ASN1DataSource.format:type_name -> saq.sandwich.proto.api.v1.ASN1EncodingFormat
	2, // [2:2] is the sub-list for method output_type
	2, // [2:2] is the sub-list for method input_type
	2, // [2:2] is the sub-list for extension type_name
	2, // [2:2] is the sub-list for extension extendee
	0, // [0:2] is the sub-list for field type_name
}

func init() { file_proto_api_v1_data_source_proto_init() }
func file_proto_api_v1_data_source_proto_init() {
	if File_proto_api_v1_data_source_proto != nil {
		return
	}
	file_proto_api_v1_encoding_format_proto_init()
	if !protoimpl.UnsafeEnabled {
		file_proto_api_v1_data_source_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*DataSource); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_proto_api_v1_data_source_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ASN1DataSource); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
	}
	file_proto_api_v1_data_source_proto_msgTypes[0].OneofWrappers = []interface{}{
		(*DataSource_Filename)(nil),
		(*DataSource_InlineBytes)(nil),
		(*DataSource_InlineString)(nil),
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_proto_api_v1_data_source_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   2,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_proto_api_v1_data_source_proto_goTypes,
		DependencyIndexes: file_proto_api_v1_data_source_proto_depIdxs,
		MessageInfos:      file_proto_api_v1_data_source_proto_msgTypes,
	}.Build()
	File_proto_api_v1_data_source_proto = out.File
	file_proto_api_v1_data_source_proto_rawDesc = nil
	file_proto_api_v1_data_source_proto_goTypes = nil
	file_proto_api_v1_data_source_proto_depIdxs = nil
}
