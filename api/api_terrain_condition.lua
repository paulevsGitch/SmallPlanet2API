---@meta

---@class TerrainCondition
---@field type string

---@class AboveAngleTerrainCondition: TerrainCondition
---@field type "above_angle"
---@field angle number

---@class BelowAngleTerrainCondition: TerrainCondition
---@field type "below_angle"
---@field angle number

---@class AboveValueTerrainCondition: TerrainCondition
---@field type "above_value"
---@field value number
---@field value_function FloatFunction

---@class BelowValueTerrainCondition: TerrainCondition
---@field type "below_value"
---@field value number
---@field value_function FloatFunction

---@class BetweenValuesTerrainCondition: TerrainCondition
---@field type "between_values"
---@field min_value number
---@field max_value number
---@field value_function FloatFunction

---@class AboveHeightTerrainCondition: TerrainCondition
---@field type "above_height"
---@field height number

---@class BelowHeightTerrainCondition: TerrainCondition
---@field type "below_height"
---@field height number

---@class BetweenHeightsTerrainCondition: TerrainCondition
---@field type "between_heights"
---@field min_height number
---@field max_height number
---@field value_function FloatFunction

---@class AndTerrainCondition: TerrainCondition
---@field type "and"
---@field inout_a TerrainCondition
---@field inout_b TerrainCondition

---@class OrTerrainCondition: TerrainCondition
---@field type "or"
---@field inout_a TerrainCondition
---@field inout_b TerrainCondition