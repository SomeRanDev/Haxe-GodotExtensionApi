package godot.extension_api;

import godot.ExtensionApi.MaybeArray;

/**
	https://github.com/godotengine/godot/blob/93cdacbb0a30f12b2f3f5e8e06b90149deeb554b/core/extension/extension_api_dump.cpp#L898C10-L898C10
**/
typedef Class = {
	name: String,
	is_refcounted: Bool,
	is_instantiable: Bool,
	inherits: Null<String>,
	api_type: String, // "core", "editor", "extension", "editor_extension"
	constants: MaybeArray<ClassConstant>,

	// https://github.com/godotengine/godot/blob/93cdacbb0a30f12b2f3f5e8e06b90149deeb554b/core/extension/extension_api_dump.cpp#L956C16-L956C16
	// This is the same as GlobalEnum at the moment.
	enums: MaybeArray<Enums.GlobalOrClassEnum>,
	methods: MaybeArray<ClassMethod>,
	signals: MaybeArray<ClassSignal>,
	properties: MaybeArray<ClassProperty>,
	brief_description: Null<String>,
	description: Null<String>
}

typedef ClassConstant = {
	name: String,
	value: Int,
	description: Null<String>
}

/**
	https://github.com/godotengine/godot/blob/93cdacbb0a30f12b2f3f5e8e06b90149deeb554b/core/extension/extension_api_dump.cpp#L1006C9-L1006C9
**/
typedef ClassMethod = {
	name: String,
	is_const: Bool,
	is_static: Bool,
	is_vararg: Bool,
	is_virtual: Bool,

	// only appears when not virtual? 
	// https://github.com/godotengine/godot/blob/93cdacbb0a30f12b2f3f5e8e06b90149deeb554b/core/extension/extension_api_dump.cpp#L1003C29-L1003C29
	hash: Null<Int>,

	// Don't know what to type this
	// https://github.com/godotengine/godot/blob/93cdacbb0a30f12b2f3f5e8e06b90149deeb554b/core/extension/extension_api_dump.cpp#L1082C8-L1082C8
	hash_compatibility: Array<Dynamic>,

	arguments: MaybeArray<{
		name: String,
		type: String,
		meta: Null<String>,

		// only appears when not virtual
		// https://github.com/godotengine/godot/blob/93cdacbb0a30f12b2f3f5e8e06b90149deeb554b/core/extension/extension_api_dump.cpp#L1103C18-L1103C18
		default_value: Null<String>
	}>,
	return_value: Null<{
		// impossible to get "name" field
		type: String,
		meta: Null<String>
	}>,
	description: Null<String>
}

/**
	https://github.com/godotengine/godot/blob/93cdacbb0a30f12b2f3f5e8e06b90149deeb554b/core/extension/extension_api_dump.cpp#L1142C13-L1142C13
**/
typedef ClassSignal = {
	name: String,
	arguments: MaybeArray<{
		name: String,
		type: String,
		meta: Null<String>
	}>,
	description: Null<String>
}

/**
	https://github.com/godotengine/godot/blob/93cdacbb0a30f12b2f3f5e8e06b90149deeb554b/core/extension/extension_api_dump.cpp#L1193C16-L1193C16
**/
typedef ClassProperty = {
	type: String,
	name: String,
	setter: Null<String>,
	getter: Null<String>,
	index: Null<Int>,
	description: Null<String>
}
