---@meta

---@class Registry Global access to all game registries
Registry = {
	game_model = {
		---@type GameModelDefinition[] Registered GameModel definitions
		definitions = {},
		---Register GameModel with specidied identifier and definition.
		---@param identifier string GameModel identifier
		---@param def_table GameModelDefinition GameModel definition
		---@param override_object? boolean Override existing object, optional. Default is false (will throw an error)
		register = function (identifier, def_table, override_object) end
	},
	terrain_material = {
		---@type TerrainMaterialDefinition[] Registered TerrainMaterial definitions with identifier as a key
		definitions = {},
		---Register TerrainMaterial with specidied identifier and definition.
		---@param identifier string TerrainMaterial identifier
		---@param def_table TerrainMaterialDefinition TerrainMaterial definition
		---@param override_object? boolean Override existing object, optional. Default is false (will throw an error)
		register = function (identifier, def_table, override_object) end
	},
	game_object = {
		---@type GameObjectDefinition[] Registered GameObjectDefinition definitions with identifier as a key
		definitions = {},
		---Register GameObjectDefinition with specidied identifier and definition.
		---@param identifier string GameObjectDefinition identifier
		---@param def_table GameObjectDefinition GameObjectDefinition definition
		---@param override_object? boolean Override existing object, optional. Default is false (will throw an error)
		register = function (identifier, def_table, override_object) end
	},
	game_item = {
		---@type GameItemDefinition[] Registered GameItemDefinition definitions with identifier as a key
		definitions = {},
		---Register GameItemDefinition with specidied identifier and definition.
		---@param identifier string GameItemDefinition identifier
		---@param def_table GameItemDefinition GameItemDefinition definition
		---@param override_object? boolean Override existing object, optional. Default is false (will throw an error)
		register = function (identifier, def_table, override_object) end
	},
	game_entity = {
		---@type GameEntityDefinition[] Registered GameEntityDefinition definitions with identifier as a key
		definitions = {},
		---Register GameEntityDefinition with specidied identifier and definition.
		---@param identifier string GameEntityDefinition identifier
		---@param def_table GameEntityDefinition GameEntityDefinition definition
		---@param override_object? boolean Override existing object, optional. Default is false (will throw an error)
		register = function (identifier, def_table, override_object) end
	},
	game_biome = {
		---@type GameBiomeDefinition[] Registered GameBiomeDefinition definitions with identifier as a key
		definitions = {},
		---Register GameBiomeDefinition with specidied identifier and definition.
		---@param identifier string GameBiomeDefinition identifier
		---@param def_table GameBiomeDefinition GameBiomeDefinition definition
		---@param override_object? boolean Override existing object, optional. Default is false (will throw an error)
		register = function (identifier, def_table, override_object) end
	}
}