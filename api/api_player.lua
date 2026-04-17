---@meta

---@class Player
---@field position Vector3
Player = {}

---Add specified item to player inventory
---@param item_id string Item identifier
---@param count? integer Item count, optional. Default is 1
---@return integer result Remained item count
function Player:add_item(item_id, count) end