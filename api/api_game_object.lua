---@meta

---@class ObjectInteractionDefinition
---@field title? string Interaction title, optional. Default is "Interact"
---@field action fun(game_object: GameObject, player: Player) Interaction function

---@class GameObjectDefinition
---@field visual_model? string Visual Model identifier, optional
---@field shadow_model? string Shadow Model identifier, optional
---@field colliders? Collider[] Array of colliders, optional
---@field interaction? ObjectInteractionDefinition key-based interaction with object, optional
---@field on_spawn? fun(game_object: GameObject) Function called when entity spawns, optional
---@field on_tick? fun(game_object: GameObject, delta: number) On-tick function, optional
---@field player_collision? PlayerCollisionDefinition Area-based player interraction, optional

---@class GameObject Common class for all static objects in the game
---@field position Vector3 Object position in meters
---@field rotation Vector3 Object rotation in radians
---@field scale Vector3 Object scale in meters
---@field custom_data table Table for custom data storage
GameObject = {}

---Deletes this GameObject
function GameObject:delete() end