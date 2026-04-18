---@meta

---@class ObjectInteractionDef
---@field title? string Interaction title, optional. Default is "Interact"
---@field action fun(game_object: GameObject, player: Player) Interaction function

---@class GameObjectDef
---@field visual_model? string Visual Model identifier, optional
---@field shadow_model? string Shadow Model identifier, optional
---@field colliders? Collider[] Array of colliders, optional
---@field interaction? ObjectInteractionDef key-based interaction with object, optional
---@field on_spawn? fun(game_object: GameObject) Function called when entity spawns, optional
---@field on_tick? fun(game_object: GameObject, delta: number) On-tick function, optional

---Register new Game Object with specidied identifier and definition.
---@param identifier string Object identifier
---@param def_table GameObjectDef
---@param override_object? boolean Override existing object, optional. Default is false (will throw an error)
Core.register_game_object = function (identifier, def_table, override_object) end

---@class GameObject
---@field position Vector3
---@field rotation Vector3
---@field scale Vector3
GameObject = {}

---Deletes this GameObject
function GameObject:delete() end