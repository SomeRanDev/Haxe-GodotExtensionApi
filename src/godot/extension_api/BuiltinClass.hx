package godot.extension_api;

import godot.ExtensionApi.MaybeArray;

/**
	https://github.com/godotengine/godot/blob/93cdacbb0a30f12b2f3f5e8e06b90149deeb554b/core/extension/extension_api_dump.cpp#L623C7-L623C7
**/
typedef BuiltinClass = {
	name: String,
	indexing_return_type: Null<String>,
	is_keyed: Bool,
	members: MaybeArray<BuiltinClassMember>,
	constants: MaybeArray<BuiltinClassConstant>,

	// Almost the same as `GlobalEnum`, but does not contain `is_bitfield` and "values" is a `MaybeArray`.
	enums: MaybeArray<BuiltinClassEnum>,
	operators: MaybeArray<BuiltinClassOperator>,
	methods: MaybeArray<BuiltinClassMethod>,
	constructors: MaybeArray<BuiltinClassConstructor>,
	has_destructor: Bool,
	brief_description: Null<String>,
	description: Null<String>
}

typedef BuiltinClassMember = {
	name: String,
	type: String,
	description: Null<String>
}

typedef BuiltinClassConstant = {
	name: String,
	type: String,
	value: String,
	description: Null<String>
}

typedef BuiltinClassEnum = {
	name: String,
	values: MaybeArray<Enums.EnumValue>,
	description: Null<String>
}

typedef BuiltinClassOperator = {
	name: String,
	right_type: Null<String>,
	return_type: String,
	description: Null<String>
}

typedef BuiltinClassMethod = {
	name: String,
	return_type: Null<String>,
	is_vararg: Bool,
	is_const: Bool,
	is_static: Bool,
	hash: Int,
	arguments: MaybeArray<{
		name: String,
		type: String,
		default_value: Null<String>
	}>,
	description: Null<String>
}

typedef BuiltinClassConstructor = {
	index: Int,
	arguments: MaybeArray<{
		name: String,
		type: String
	}>,
	description: Null<String>
}
