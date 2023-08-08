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
// source: proto/sandwich.proto

package sandwich

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

type Mode int32

const (
	Mode_MODE_UNSPECIFIED Mode = 0
	Mode_MODE_CLIENT      Mode = 1
	Mode_MODE_SERVER      Mode = 2
)

// Enum value maps for Mode.
var (
	Mode_name = map[int32]string{
		0: "MODE_UNSPECIFIED",
		1: "MODE_CLIENT",
		2: "MODE_SERVER",
	}
	Mode_value = map[string]int32{
		"MODE_UNSPECIFIED": 0,
		"MODE_CLIENT":      1,
		"MODE_SERVER":      2,
	}
)

func (x Mode) Enum() *Mode {
	p := new(Mode)
	*p = x
	return p
}

func (x Mode) String() string {
	return protoimpl.X.EnumStringOf(x.Descriptor(), protoreflect.EnumNumber(x))
}

func (Mode) Descriptor() protoreflect.EnumDescriptor {
	return file_proto_sandwich_proto_enumTypes[0].Descriptor()
}

func (Mode) Type() protoreflect.EnumType {
	return &file_proto_sandwich_proto_enumTypes[0]
}

func (x Mode) Number() protoreflect.EnumNumber {
	return protoreflect.EnumNumber(x)
}

// Deprecated: Use Mode.Descriptor instead.
func (Mode) EnumDescriptor() ([]byte, []int) {
	return file_proto_sandwich_proto_rawDescGZIP(), []int{0}
}

type TunnelInfo int32

const (
	TunnelInfo_TUNNEL_INFO_NETADDRESS TunnelInfo = 0
	TunnelInfo_TUNNEL_INFO_NETPORT    TunnelInfo = 1
)

// Enum value maps for TunnelInfo.
var (
	TunnelInfo_name = map[int32]string{
		0: "TUNNEL_INFO_NETADDRESS",
		1: "TUNNEL_INFO_NETPORT",
	}
	TunnelInfo_value = map[string]int32{
		"TUNNEL_INFO_NETADDRESS": 0,
		"TUNNEL_INFO_NETPORT":    1,
	}
)

func (x TunnelInfo) Enum() *TunnelInfo {
	p := new(TunnelInfo)
	*p = x
	return p
}

func (x TunnelInfo) String() string {
	return protoimpl.X.EnumStringOf(x.Descriptor(), protoreflect.EnumNumber(x))
}

func (TunnelInfo) Descriptor() protoreflect.EnumDescriptor {
	return file_proto_sandwich_proto_enumTypes[1].Descriptor()
}

func (TunnelInfo) Type() protoreflect.EnumType {
	return &file_proto_sandwich_proto_enumTypes[1]
}

func (x TunnelInfo) Number() protoreflect.EnumNumber {
	return protoreflect.EnumNumber(x)
}

// Deprecated: Use TunnelInfo.Descriptor instead.
func (TunnelInfo) EnumDescriptor() ([]byte, []int) {
	return file_proto_sandwich_proto_rawDescGZIP(), []int{1}
}

var File_proto_sandwich_proto protoreflect.FileDescriptor

var file_proto_sandwich_proto_rawDesc = []byte{
	0x0a, 0x14, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2f, 0x73, 0x61, 0x6e, 0x64, 0x77, 0x69, 0x63, 0x68,
	0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x12, 0x73, 0x61, 0x71, 0x2e, 0x73, 0x61, 0x6e, 0x64,
	0x77, 0x69, 0x63, 0x68, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2a, 0x3e, 0x0a, 0x04, 0x4d, 0x6f,
	0x64, 0x65, 0x12, 0x14, 0x0a, 0x10, 0x4d, 0x4f, 0x44, 0x45, 0x5f, 0x55, 0x4e, 0x53, 0x50, 0x45,
	0x43, 0x49, 0x46, 0x49, 0x45, 0x44, 0x10, 0x00, 0x12, 0x0f, 0x0a, 0x0b, 0x4d, 0x4f, 0x44, 0x45,
	0x5f, 0x43, 0x4c, 0x49, 0x45, 0x4e, 0x54, 0x10, 0x01, 0x12, 0x0f, 0x0a, 0x0b, 0x4d, 0x4f, 0x44,
	0x45, 0x5f, 0x53, 0x45, 0x52, 0x56, 0x45, 0x52, 0x10, 0x02, 0x2a, 0x41, 0x0a, 0x0a, 0x54, 0x75,
	0x6e, 0x6e, 0x65, 0x6c, 0x49, 0x6e, 0x66, 0x6f, 0x12, 0x1a, 0x0a, 0x16, 0x54, 0x55, 0x4e, 0x4e,
	0x45, 0x4c, 0x5f, 0x49, 0x4e, 0x46, 0x4f, 0x5f, 0x4e, 0x45, 0x54, 0x41, 0x44, 0x44, 0x52, 0x45,
	0x53, 0x53, 0x10, 0x00, 0x12, 0x17, 0x0a, 0x13, 0x54, 0x55, 0x4e, 0x4e, 0x45, 0x4c, 0x5f, 0x49,
	0x4e, 0x46, 0x4f, 0x5f, 0x4e, 0x45, 0x54, 0x50, 0x4f, 0x52, 0x54, 0x10, 0x01, 0x42, 0x37, 0x5a,
	0x35, 0x67, 0x69, 0x74, 0x68, 0x75, 0x62, 0x2e, 0x63, 0x6f, 0x6d, 0x2f, 0x73, 0x61, 0x6e, 0x64,
	0x62, 0x6f, 0x78, 0x2d, 0x71, 0x75, 0x61, 0x6e, 0x74, 0x75, 0x6d, 0x2f, 0x73, 0x61, 0x6e, 0x64,
	0x77, 0x69, 0x63, 0x68, 0x2f, 0x67, 0x6f, 0x2f, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2f, 0x73, 0x61,
	0x6e, 0x64, 0x77, 0x69, 0x63, 0x68, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_proto_sandwich_proto_rawDescOnce sync.Once
	file_proto_sandwich_proto_rawDescData = file_proto_sandwich_proto_rawDesc
)

func file_proto_sandwich_proto_rawDescGZIP() []byte {
	file_proto_sandwich_proto_rawDescOnce.Do(func() {
		file_proto_sandwich_proto_rawDescData = protoimpl.X.CompressGZIP(file_proto_sandwich_proto_rawDescData)
	})
	return file_proto_sandwich_proto_rawDescData
}

var file_proto_sandwich_proto_enumTypes = make([]protoimpl.EnumInfo, 2)
var file_proto_sandwich_proto_goTypes = []interface{}{
	(Mode)(0),       // 0: saq.sandwich.proto.Mode
	(TunnelInfo)(0), // 1: saq.sandwich.proto.TunnelInfo
}
var file_proto_sandwich_proto_depIdxs = []int32{
	0, // [0:0] is the sub-list for method output_type
	0, // [0:0] is the sub-list for method input_type
	0, // [0:0] is the sub-list for extension type_name
	0, // [0:0] is the sub-list for extension extendee
	0, // [0:0] is the sub-list for field type_name
}

func init() { file_proto_sandwich_proto_init() }
func file_proto_sandwich_proto_init() {
	if File_proto_sandwich_proto != nil {
		return
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_proto_sandwich_proto_rawDesc,
			NumEnums:      2,
			NumMessages:   0,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_proto_sandwich_proto_goTypes,
		DependencyIndexes: file_proto_sandwich_proto_depIdxs,
		EnumInfos:         file_proto_sandwich_proto_enumTypes,
	}.Build()
	File_proto_sandwich_proto = out.File
	file_proto_sandwich_proto_rawDesc = nil
	file_proto_sandwich_proto_goTypes = nil
	file_proto_sandwich_proto_depIdxs = nil
}
