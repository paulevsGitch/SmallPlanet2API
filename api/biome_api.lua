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

---@class GameBiomeDefinition
---@field terrain Identifier|GameBiomeTerrainDefinition[] Terrain Identifier or array of terrains with conditions
---@field ambient_sound? Identifier Biome ambient sound loop, optional
---@field height? number|FloatFunction Height value or function for terrain generation, optional
---@field near_decorations? BiomeDecorationDefinition[] Near decorations (small objects), optional
---@field far_decorations? BiomeDecorationDefinition[] Far decorations (big objects), optional
---@field terrain_decorations? BiomeDecorationDefinition[] Terrain decorations (objects that are part of the terrain), optional