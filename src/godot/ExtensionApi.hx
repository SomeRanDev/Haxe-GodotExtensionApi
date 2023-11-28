package godot;

import godot.extension_api.*;
import godot.extension_api.Class as GDClass;

/**
	Shorthand for `Null<Array<T>>`.
**/
typedef MaybeArray<T> = Null<Array<T>>;

/**
	The typing for the extension_api.json file.

	To help keep the maintenance of these typings organized,
	make permalinks to the source file lines last referenced for
	each major section of the JSON typings. 

	Last updated: Oct 31, 2023 during mid-development of Godot 4.2
	https://github.com/godotengine/godot/blob/93cdacbb0a30f12b2f3f5e8e06b90149deeb554b/core/extension/extension_api_dump.cpp
**/
typedef ExtensionApi = {
	header: Header,
	builtin_class_sizes: Array<BuiltinClassSize>,
	builtin_class_member_offsets: Array<BuiltinClassMemberOffset>,
	utility_functions: Array<UtilityFunction>,
	global_constants: Array<GlobalConstant>,
	global_enums: Array<Enums.GlobalOrClassEnum>,
	builtin_classes: Array<BuiltinClass>,
	classes: Array<GDClass>,
	singletons: MaybeArray<Singleton>,
	native_structures: MaybeArray<NativeStructure>
}

/**
	https://github.com/godotengine/godot/blob/93cdacbb0a30f12b2f3f5e8e06b90149deeb554b/core/extension/extension_api_dump.cpp#L106C14-L106C14
**/
typedef Header = {
	version_major: Int,
	version_minor: Int,
	version_patch: Int,
	version_status: String,
	version_build: String,
	version_full_name: String
}

/**
	https://github.com/godotengine/godot/blob/93cdacbb0a30f12b2f3f5e8e06b90149deeb554b/core/extension/extension_api_dump.cpp#L235C15-L235C15
**/
typedef BuiltinClassSize = {
	build_configuration: String,
	sizes: Array<{
		name: String,
		size: Int
	}>
}

/**
	https://github.com/godotengine/godot/blob/93cdacbb0a30f12b2f3f5e8e06b90149deeb554b/core/extension/extension_api_dump.cpp#L407C4-L407C4
**/
typedef BuiltinClassMemberOffset = {
	build_configuration: String,
	classes: Array<{
		name: String,
		members: Array<{
			member: String,
			offset: Int,
			meta: String
		}>
	}>
}

typedef Singleton = {
	name: String,
	type: String
}

typedef NativeStructure = {
	name: String,
	format: String
}
