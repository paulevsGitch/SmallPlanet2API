---@meta

---@class Registry Global access to all game registries
Registry = {
	game_model = {
		---@type GameModelDef[] Registered GameModel definitions
		definitions = {},
		---Register GameModel with specidied identifier and definition.
		---@param identifier string GameModel identifier
		---@param def_table GameModelDef GameModel definition
		---@param override_object? boolean Override existing object, optional. Default is false (will throw an error)
		register = function (identifier, def_table, override_object) end
	},
	terrain_material = {
		---@type TerrainMaterialDef[] Registered TerrainMaterial definitions with identifier as a key
		definitions = {},
		---Register TerrainMaterial with specidied identifier and definition.
		---@param identifier string TerrainMaterial identifier
		---@param def_table TerrainMaterialDef TerrainMaterial definition
		---@param override_object? boolean Override existing object, optional. Default is false (will throw an error)
		register = function (identifier, def_table, override_object) end
	},
	game_object = {
		---@type GameObjectDef[] Registered GameObjectDef definitions with identifier as a key
		definitions = {},
		---Register GameObjectDef with specidied identifier and definition.
		---@param identifier string GameObjectDef identifier
		---@param def_table GameObjectDef GameObjectDef definition
		---@param override_object? boolean Override existing object, optional. Default is false (will throw an error)
		register = function (identifier, def_table, override_object) end
	},
	game_item = {
		---@type GameItemDef[] Registered GameItemDef definitions with identifier as a key
		definitions = {},
		---Register GameItemDef with specidied identifier and definition.
		---@param identifier string GameItemDef identifier
		---@param def_table GameItemDef GameItemDef definition
		---@param override_object? boolean Override existing object, optional. Default is false (will throw an error)
		register = function (identifier, def_table, override_object) end
	},
	game_entity = {
		---@type GameEntityDef[] Registered GameEntityDef definitions with identifier as a key
		definitions = {},
		---Register GameEntityDef with specidied identifier and definition.
		---@param identifier string GameEntityDef identifier
		---@param def_table GameEntityDef GameEntityDef definition
		---@param override_object? boolean Override existing object, optional. Default is false (will throw an error)
		register = function (identifier, def_table, override_object) end
	},
	game_biome = {
		---@type GameBiomeDef[] Registered GameBiomeDef definitions with identifier as a key
		definitions = {},
		---Register GameBiomeDef with specidied identifier and definition.
		---@param identifier string GameBiomeDef identifier
		---@param def_table GameBiomeDef GameBiomeDef definition
		---@param override_object? boolean Override existing object, optional. Default is false (will throw an error)
		register = function (identifier, def_table, override_object) end
	}
}