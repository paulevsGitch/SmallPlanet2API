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
---|BetweenValuesTerrainCondition
---|HeightAngleRangeCondition

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

---@class AndTerrainCondition
---@field type "and"
---@field input_a TerrainCondition
---@field input_b TerrainCondition

---@class OrTerrainCondition
---@field type "or"
---@field input_a TerrainCondition
---@field input_b TerrainCondition

---@class HeightAngleRangeCondition
---@field type "height_angle_range"
---@field min_value number
---@field max_value number