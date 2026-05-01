---@meta

---@alias BiomeCondition AboveValueBiomeCondition|BelowValueBiomeCondition|BetweenValueBiomeCondition

---@class AboveValueBiomeCondition
---@field type "above_value"
---@field value number

---@class BelowValueBiomeCondition
---@field type "below_value"
---@field value number

---@class BetweenValueBiomeCondition
---@field type "between_values"
---@field min_value number
---@field max_value number