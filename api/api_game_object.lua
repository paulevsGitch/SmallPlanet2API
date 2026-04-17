---@meta

---@class ObjectInteractionDef
---@field title? string Interaction title, optional. Default is "Interact"
---@field action fun(game_object: GameObject, player: Player) Interaction function

---@class GameObjectDef
---@field shadow_mesh? string Shadow Mesh identifier, optional
---@field visual_mesh? string|MeshDef[] Visual Mesh identifier or mesh with LODs array, optional
---@field colliders? Collider[] Array of colliders, optional
---@field interaction? ObjectInteractionDef key-based interaction with object, optional
---@field on_spawn? fun(game_object: GameObject) Function called when entity spawns, optional
---@field on_tick? fun(game_object: GameObject, delta: number) On-tick function, optional

---@class GameObject
---@field position Vector3
---@field rotation Vector3
---@field scale Vector3
GameObject = {}

---Deletes this GameObject
function GameObject:delete() end