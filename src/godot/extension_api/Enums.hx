package godot.extension_api;

import godot.ExtensionApi.MaybeArray;

/**
	Global Enums
	https://github.com/godotengine/godot/blob/93cdacbb0a30f12b2f3f5e8e06b90149deeb554b/core/extension/extension_api_dump.cpp#L518C9-L518C9

	Class Enums
	https://github.com/godotengine/godot/blob/93cdacbb0a30f12b2f3f5e8e06b90149deeb554b/core/extension/extension_api_dump.cpp#L956C16-L956C16
**/
typedef GlobalOrClassEnum = {
	name: String,
	is_bitfield: Bool,
	description: Null<String>,
	values: Array<EnumValue>
}

/**
	This is a structure that is compatible with all enums.
	Builtin class enums do not contain `is_bitfield`.
**/
typedef AnyEnum = {
	name: String,
	description: Null<String>,
	values: MaybeArray<EnumValue>
}

typedef EnumValue = {
	name: String,
	value: Int,
	description: Null<String>
}

