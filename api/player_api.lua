---@meta

---@class Player
---@field planet Identifier Player planet Identifier
---@field position Vector3 Player position
---@field eye_position Vector3 Position from player eyes perspective (player camera position), readonly
---@field view_direction Vector3 Player view direction, readonly
---@field rotation Vector3 Player rotation, readonly
Player = {}

---Add specified item to player inventory
---@param item_id string Item identifier
---@param count? integer Item count, optional. Default is 1
---@param add_to_hotbar? boolean Add item starting from hotbar (in order selected hotbar -> second hotbar -> main inventory), optional. Default is false
---@return integer result Remained item count
function Player:add_item(item_id, count, add_to_hotbar) end

---@class ItemAnimationKey
---@field length number Animation key length in seconds
---@field position? Vector3 Position in relative space, optional. If not specified position will not change
---@field rotation? Vector3 Rotation in relative space, optional. If not specified position will not change

---Plays animation of item selected in player hotbar
---@param animation_def ItemAnimationKey[]
function Player:play_item_animation(animation_def) end