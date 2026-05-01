---@meta

---@class OnItemUseDefinition
---@field primary_use? fun(player: Player) Function that will be called on primary use of item (left click by default), optional
---@field primary_use_length? number Time limit when the next primary usage of item can be called, optional
---@field secondary_use? fun(player: Player) Function that will be called on secondary use of item (right click by default), optional
---@field secondary_use_length? number Time limit when the next secondary usage of item can be called, optional

---@class GameItemDefinition
---@field max_count? integer Max item stack size, optional. Should be in range [1-100], default is 100
---@field mesh? string Item mesh, optional
---@field icon_rotation? Vector3 Icon rotation in radians, optional
---@field tags? string[] Array of tags, each tag is identifier
---@field on_use? OnItemUseDefinition