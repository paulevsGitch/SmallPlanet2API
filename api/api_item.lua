---@meta

---@class OnUseDef
---@field primary_use? fun(player: Player) Function that will be called on primary use of item (left click by default), optional
---@field secondary_use? fun(player: Player) Function that will be called on secondary use of item (right click by default), optional

---@class ItemDef
---@field mesh? string Item mesh, optional
---@field view_mode? "side"|"top" Icon view mode, optional. Default is "side"
---@field tags? string[] Array of tags, each tag is identifier
---@field on_use? OnUseDef

---Register new Item with specidied identifier and definition.
---@param identifier string Item identifier
---@param def_table ItemDef
---@param override_object? boolean Override existing object, optional. Default is false (will throw an error)
Core.register_game_item = function (identifier, def_table, override_object) end