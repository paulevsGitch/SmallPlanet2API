---@meta

---@class OnUseDef
---@field primary_use? fun(player: Player) Function that will be called on primary use of item (left click by default), optional. Will be called only if current player item animation is not active
---@field secondary_use? fun(player: Player) Function that will be called on secondary use of item (right click by default), optional. Will be called only if current player item animation is not active

---@class ItemDef
---@field max_count? integer Max item stack size, optional. Should be in range [1-100], default is 100
---@field mesh? string Item mesh, optional
---@field icon_rotation? Vector3 Icon rotation in radians, optional
---@field tags? string[] Array of tags, each tag is identifier
---@field on_use? OnUseDef

---Register new Item with specidied identifier and definition.
---@param identifier string Item identifier
---@param def_table ItemDef
---@param override_object? boolean Override existing object, optional. Default is false (will throw an error)
Core.register_game_item = function (identifier, def_table, override_object) end