---@meta

---@class RandomSoundsDef Randomized sound definition table
---@field random_pitch? number Random pitch offset, optional. Default is 0.0
---@field random_volume? number Random volume offset in db, optional. Default is 0.0
---@field sounds string[] Array of sound identifiers

---@class TerrainDecorationDef Terrain material decoration definition table
---@field model string Model identifier
---@field density? number Decoration density, optional. Default is 1.0
---@field scale? FloatFunction Decoration scale, optional. Default is 1.0
---@field color? string Decoaration color that will be used instead of terrain color, optional

---@class TerrainMaterialDef Terrain material definition table
---@field color string|{ dark_color: string, bright_color: string, color_mixer: number|FloatFunction } Terrain color, in Hex RGBA format
---@field smooth_blending? boolean Smooth blending, will mix material color with neighbours that have smooth blending, optional. Default is false
---@field decorations? TerrainDecorationDef[] Array of terrain decoration definitions
---@field sounds? {footstep?: RandomSoundsDef} Table with sound definitions

---Register new Terrain Material with specidied identifier and definition.
---@param identifier string Object identifier
---@param def_table TerrainMaterialDef
---@param override_object? boolean Override existing object, optional. Default is false (will throw an error)
Core.register_terrain_material = function (identifier, def_table, override_object) end

---@type TerrainMaterialDef[] Table of tables with identifier as a key and definition table as a value
Core.registered_definitions.terrain_materials = {}