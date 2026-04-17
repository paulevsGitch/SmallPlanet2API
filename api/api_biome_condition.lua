---@meta

---@class BiomeCondition
---@field type string

---@class AboveValueBiomeCondition: BiomeCondition
---@field type "above_value"
---@field value number

---@class BelowValueBiomeCondition: BiomeCondition
---@field type "below_value"
---@field value number

---@class BetweenValueBiomeCondition: BiomeCondition
---@field type "between_values"
---@field min_value number
---@field max_value number