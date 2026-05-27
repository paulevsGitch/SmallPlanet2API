---@meta

---@class ItemStack
---@field item_id Identifier item Identifier
---@field count? integer item count, optional

---@class RecipeTag
---@field tag Identifier item tag Identifier
---@field value? number item tag value, optional
---@field count? integer item count, optional

---@alias CraftingIngredient ItemStack|RecipeTag

---@class CraftingRecipeDefinition
---@field result ItemStack crafting result
---@field ingredients CraftingIngredient[] crafting result

---@class Registry Global access to all game registries
Registry = {
	game_model = {
		---@type GameModelDefinition[] Registered GameModel definitions
		definitions = {},
		---Register GameModel with specidied identifier and definition.
		---@param identifier Identifier GameModel identifier
		---@param def_table GameModelDefinition GameModel definition
		---@param override_object? boolean Override existing object, optional. Default is false (will throw an error)
		register = function (identifier, def_table, override_object) end
	},
	terrain_material = {
		---@type TerrainMaterialDefinition[] Registered TerrainMaterial definitions with identifier as a key
		definitions = {},
		---Register TerrainMaterial with specidied identifier and definition.
		---@param identifier Identifier TerrainMaterial identifier
		---@param def_table TerrainMaterialDefinition TerrainMaterial definition
		---@param override_object? boolean Override existing object, optional. Default is false (will throw an error)
		register = function (identifier, def_table, override_object) end
	},
	game_object = {
		---@type GameObjectDefinition[] Registered GameObject definitions with identifier as a key
		definitions = {},
		---Register GameObjectDefinition with specidied identifier and definition.
		---@param identifier Identifier GameObjectDefinition identifier
		---@param def_table GameObjectDefinition GameObjectDefinition definition
		---@param override_object? boolean Override existing object, optional. Default is false (will throw an error)
		register = function (identifier, def_table, override_object) end
	},
	game_item = {
		---@type GameItemDefinition[] Registered GameItem definitions with identifier as a key
		definitions = {},
		---Register GameItemDefinition with specidied identifier and definition.
		---@param identifier Identifier GameItemDefinition identifier
		---@param def_table GameItemDefinition GameItemDefinition definition
		---@param override_object? boolean Override existing object, optional. Default is false (will throw an error)
		register = function (identifier, def_table, override_object) end
	},
	game_entity = {
		---@type GameEntityDefinition[] Registered GameEntity definitions with identifier as a key
		definitions = {},
		---Register GameEntityDefinition with specidied identifier and definition.
		---@param identifier Identifier GameEntityDefinition identifier
		---@param def_table GameEntityDefinition GameEntityDefinition definition
		---@param override_object? boolean Override existing object, optional. Default is false (will throw an error)
		register = function (identifier, def_table, override_object) end
	},
	game_biome = {
		---@type GameBiomeDefinition[] Registered GameBiome definitions with identifier as a key
		definitions = {},
		---Register GameBiomeDefinition with specidied identifier and definition.
		---@param identifier Identifier GameBiomeDefinition identifier
		---@param def_table GameBiomeDefinition GameBiomeDefinition definition
		---@param override_object? boolean Override existing object, optional. Default is false (will throw an error)
		register = function (identifier, def_table, override_object) end
	},
	crafting_recipe = {
		---@type CraftingRecipeDefinition[] Registered CraftingRecipe definitions with identifier as a key
		definitions = {},
		---Register CraftingRecipeDefinition with specidied identifier and definition.
		---@param identifier Identifier CraftingRecipeDefinition identifier
		---@param def_table CraftingRecipeDefinition CraftingRecipeDefinition definition
		---@param override_object? boolean Override existing object, optional. Default is false (will throw an error)
		register = function (identifier, def_table, override_object) end
	}
}