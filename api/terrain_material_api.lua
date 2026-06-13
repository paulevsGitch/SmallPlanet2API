---@meta

---@class TerrainDecorationDefinition Terrain material decoration definition table
---@field model string Model identifier
---@field density? number Decoration density, optional. Default is 1.0
---@field scale? FloatFunction Decoration scale, optional. Default is 1.0
---@field color? string Decoaration color that will be used instead of terrain color, optional

---@class TerrainMaterialDefinition Terrain material definition table
---@field color string|{ dark_color: string, bright_color: string, color_mixer: number|FloatFunction } Terrain color, in Hex RGBA format
---@field smooth_blending? boolean Smooth blending, will mix material color with neighbours that have smooth blending, optional. Default is false
---@field decorations? TerrainDecorationDefinition[] Array of terrain decoration definitions
---@field sounds? {footstep?: RandomSoundDefinition} Table with sound definitions