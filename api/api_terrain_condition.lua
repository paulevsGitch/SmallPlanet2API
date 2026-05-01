---@meta

---@alias TerrainCondition AboveAngleTerrainCondition
---|BelowAngleTerrainCondition
---|AboveValueTerrainCondition
---|BelowValueTerrainCondition
---|BetweenValuesTerrainCondition
---|AboveHeightTerrainCondition
---|BelowHeightTerrainCondition
---|BetweenHeightsTerrainCondition
---|AndTerrainCondition
---|OrTerrainCondition

---@class AboveAngleTerrainCondition
---@field type "above_angle"
---@field angle number

---@class BelowAngleTerrainCondition
---@field type "below_angle"
---@field angle number

---@class AboveValueTerrainCondition
---@field type "above_value"
---@field value number
---@field value_function FloatFunction

---@class BelowValueTerrainCondition
---@field type "below_value"
---@field value number
---@field value_function FloatFunction

---@class BetweenValuesTerrainCondition
---@field type "between_values"
---@field min_value number
---@field max_value number
---@field value_function FloatFunction

---@class AboveHeightTerrainCondition
---@field type "above_height"
---@field height number

---@class BelowHeightTerrainCondition
---@field type "below_height"
---@field height number

---@class BetweenHeightsTerrainCondition
---@field type "between_heights"
---@field min_height number
---@field max_height number
---@field value_function FloatFunction

---@class AndTerrainCondition
---@field type "and"
---@field inout_a TerrainCondition
---@field inout_b TerrainCondition

---@class OrTerrainCondition
---@field type "or"
---@field inout_a TerrainCondition
---@field inout_b TerrainCondition