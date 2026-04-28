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
---@field player_collision? PlayerCollisionDef Area-based player interraction, optional

---Register new Game Object with specidied identifier and definition.
---@param identifier string Object identifier
---@param def_table GameObjectDef
---@param override_object? boolean Override existing object, optional. Default is false (will throw an error)
Core.register_game_object = function (identifier, def_table, override_object) end

---@class GameObject Common class for all static objects in the game
---@field position Vector3 Object position in meters
---@field rotation Vector3 Object rotation in radians
---@field scale Vector3 Object scale in meters
GameObject = {}

---Deletes this GameObject
function GameObject:delete() end

---Get all players near specified position within the radius
---@param position Vector3
---@param radius number
---@return GameObject[]
Core.get_objects_in_radius = function (position, radius) end