---@meta

---@class BiomeDecorationDefinition
---@field conditions? TerrainCondition[]
---@field distance? number Average distance between objects, optional. Default is 1.0
---@field object_id Identifier|WeightedList<Identifier> Game object Udentifier or weighted list of identifiers
---@field orientation? "local_up"|"surface_normal"|"random" Decoaration orientation, optional. Default is "local_up"
---@field scale? FloatFunction Scale of the object, optional. Default is 1.0
---@field height? number|FloatFunction Height value or function for biome decoration placement, optional

---@class GameBiomeTerrainDefinition
---@field name Identifier TerrainMaterial Indentifier
---@field rule? TerrainCondition Material generation rule, optional

---@class DynamicAmbientSoundDefinition Will place random sound emitters to create dynamic ambient sound
---@field sound Identifier|RandomSoundDefinition Sound to play
---@field min_distance number Minimal distance for the random sound placement
---@field max_distance number Maximal distance for the random sound placement
---@field min_delay number Minimal delay between sound emitters placement, in seconds
---@field max_delay number Maximal delay between sound emitters placement, in seconds

---@class GameBiomeDefinition Definition for the game biome
---@field terrain Identifier|GameBiomeTerrainDefinition[] Terrain Identifier or array of terrains with conditions
---@field ambient_sound? Identifier|DynamicAmbientSoundDefinition[] Biome ambient sound loop, optional
---@field height? number|FloatFunction Height value or function for terrain generation, optional
---@field near_decorations? BiomeDecorationDefinition[] Near decorations (small objects), optional
---@field far_decorations? BiomeDecorationDefinition[] Far decorations (big objects), optional
---@field terrain_decorations? BiomeDecorationDefinition[] Terrain decorations (objects that are part of the terrain), optional