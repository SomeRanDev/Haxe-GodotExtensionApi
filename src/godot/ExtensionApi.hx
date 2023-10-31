package godot;

/**
	The typing for the extension_api.json file.

	To help keep the maintenance of these typings organized,
	make permalinks to the source file lines last referenced for
	each major section of the JSON typings. 

	Last updated: Oct 31, 2023 during mid-development of Godot 4.2
**/
typedef ExtensionApi = {
	// https://github.com/godotengine/godot/blob/93cdacbb0a30f12b2f3f5e8e06b90149deeb554b/core/extension/extension_api_dump.cpp#L106C14-L106C14
	header: {
		version_major: Int,
		version_minor: Int,
		version_patch: Int,
		version_status: String,
		version_build: String,
		version_full_name: String
	},

	// https://github.com/godotengine/godot/blob/93cdacbb0a30f12b2f3f5e8e06b90149deeb554b/core/extension/extension_api_dump.cpp#L235C15-L235C15
	builtin_class_sizes: Array<{
		build_configuration: String,
		sizes: Array<{
			name: String,
			size: Int
		}>
	}>,

	// https://github.com/godotengine/godot/blob/93cdacbb0a30f12b2f3f5e8e06b90149deeb554b/core/extension/extension_api_dump.cpp#L407C4-L407C4
	builtin_class_member_offsets: Array<{
		build_configuration: String,
		classes: Array<{
			name: String,
			members: Array<{
				member: String,
				offset: Int,
				meta: String
			}>
		}>
	}>,

	// https://github.com/godotengine/godot/blob/93cdacbb0a30f12b2f3f5e8e06b90149deeb554b/core/extension/extension_api_dump.cpp#L498C10-L498C10
	global_constants: Array<{
		name: String,
		value: Int,
		is_bitfield: Bool,
		description: Null<String>
	}>,

	// https://github.com/godotengine/godot/blob/93cdacbb0a30f12b2f3f5e8e06b90149deeb554b/core/extension/extension_api_dump.cpp#L518C9-L518C9
	global_enums: Array<{
		name: String,
		is_bitfield: Bool,
		description: Null<String>,
		values: Array<{
			name: String,
			value: Int,
			description: Null<String>
		}>
	}>,

	// https://github.com/godotengine/godot/blob/93cdacbb0a30f12b2f3f5e8e06b90149deeb554b/core/extension/extension_api_dump.cpp#L561C8-L561C8
	utility_functions: Array<{
		name: String,
		return_type: Null<String>,
		category: String, // "math", "random", or "general"
		is_vararg: Bool,
		hash: Int,
		arguments: Null<Array<{
			name: String,
			type: String
		}>>,
		description: Null<String>
	}>,

	// https://github.com/godotengine/godot/blob/93cdacbb0a30f12b2f3f5e8e06b90149deeb554b/core/extension/extension_api_dump.cpp#L623C7-L623C7
	builtin_classes: Array<{
		name: String,
		indexing_return_type: Null<Int>,
		is_keyed: Bool,
		members: Null<Array<{
			name: String,
			type: String,
			description: Null<String>
		}>>,
		constants: Null<Array<{
			name: String,
			type: String,
			value: String,
			description: Null<String>
		}>>,
		enums: Null<Array<{
			name: String,
			values: Null<Array<{
				name: String,
				value: String,
				description: Null<String>
			}>>,
			description: Null<String>
		}>>,
		operators: Null<Array<{
			name: String,
			right_type: Null<String>,
			return_type: String,
			description: Null<String>
		}>>,
		methods: Null<Array<{
			name: String,
			return_type: Null<String>,
			is_vararg: Bool,
			is_const: Bool,
			is_static: Bool,
			hash: Int,
			arguments: Null<Array<{
				name: String,
				type: String,
				default_value: Null<String>
			}>>
		}>>,
		constructors: Null<Array<{
			index: Int,
			arguments: Null<Array<{
				name: String,
				type: String
			}>>,
			description: Null<String>
		}>>,
		has_destructor: Bool,
		brief_description: Null<String>,
		description: Null<String>
	}>,

	// https://github.com/godotengine/godot/blob/93cdacbb0a30f12b2f3f5e8e06b90149deeb554b/core/extension/extension_api_dump.cpp#L898C10-L898C10
	classes: Array<{
		name: String,
		is_refcounted: Bool,
		is_instantiable: Bool,

		inherits: Null<String>,

		api_type: String, // "core", "editor", "extension", "editor_extension"

		constants: Null<Array<{
			name: String,
			value: Int,
			description: Null<String>
		}>>,

		// https://github.com/godotengine/godot/blob/93cdacbb0a30f12b2f3f5e8e06b90149deeb554b/core/extension/extension_api_dump.cpp#L956C16-L956C16
		enums: Null<Array<{
			name: String,
			is_bitfield: Int,
			values: Array<{
				name: String,
				value: Int,
				description: Null<String>
			}>,
			description: Null<String>
		}>>,

		// https://github.com/godotengine/godot/blob/93cdacbb0a30f12b2f3f5e8e06b90149deeb554b/core/extension/extension_api_dump.cpp#L1006C9-L1006C9
		methods: Null<Array<{
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

			arguments: Null<Array<{
				name: String,
				type: String,
				meta: Null<String>,

				// only appears when not virtual
				// https://github.com/godotengine/godot/blob/93cdacbb0a30f12b2f3f5e8e06b90149deeb554b/core/extension/extension_api_dump.cpp#L1103C18-L1103C18
				default_value: Null<String>
			}>>,
			return_value: Null<{
				// impossible to get "name" field
				type: String,
				meta: Null<String>
			}>,
			description: Null<String>
		}>>,

		// https://github.com/godotengine/godot/blob/93cdacbb0a30f12b2f3f5e8e06b90149deeb554b/core/extension/extension_api_dump.cpp#L1142C13-L1142C13
		signals: Null<Array<{
			name: String,
			arguments: Null<Array<{
				name: String,
				type: String,
				meta: Null<String>
			}>>,
			description: Null<String>
		}>>,

		// https://github.com/godotengine/godot/blob/93cdacbb0a30f12b2f3f5e8e06b90149deeb554b/core/extension/extension_api_dump.cpp#L1193C16-L1193C16
		properties: Null<Array<{
			type: String,
			name: String,
			setter: Null<String>,
			getter: Null<String>,
			index: Null<Int>,
			description: Null<String>
		}>>,

		brief_description: Null<String>,
		description: Null<String>
	}>,

	singletons: Null<Array<{
		name: String,
		type: String
	}>>,

	native_structures: Null<Array<{
		name: String,
		format: String
	}>>
}
