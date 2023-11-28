package godot.extension_api;

import godot.ExtensionApi.MaybeArray;

/**
	https://github.com/godotengine/godot/blob/93cdacbb0a30f12b2f3f5e8e06b90149deeb554b/core/extension/extension_api_dump.cpp#L561C8-L561C8
**/
typedef UtilityFunction = {
	name: String,
	return_type: Null<String>,
	category: String, // "math", "random", or "general"
	is_vararg: Bool,
	hash: Int,
	arguments: MaybeArray<UtilityFunctionArgument>,
	description: Null<String>
}

typedef UtilityFunctionArgument = {
	name: String,
	type: String
};
