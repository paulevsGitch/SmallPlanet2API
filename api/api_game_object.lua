---@meta

---@class ObjectInteractionDefinition
---@field action fun(game_object: GameObject, player: Player) Interaction function
---@field title? string Interaction title, optional. Default is "Interact"

---@class GameObjectDefinition
---@field collisions? CollisionDefinition
---@field interaction? ObjectInteractionDefinition key-based interaction with object, optional
---@field on_spawn? fun(game_object: GameObject) Function called when entity spawns, optional
---@field on_tick? fun(game_object: GameObject, delta: number) On-tick function, optional
---@field player_collision? PlayerCollisionDefinition Area-based player interraction, optional
---@field shadow_model? string Shadow Model identifier, optional
---@field visual_model? string Visual Model identifier, optional

---@class GameObject Common class for all static objects in the game
---@field custom_data table Table for custom data storage
---@field identifier Identifier GameObject identifier
---@field planet Identifier GameEntity planet Identifier
---@field position Vector3 GameObject position in meters
---@field rotation Vector3 GameObject rotation in radians
---@field scale Vector3 GameObject scale in meters
GameObject = {}

---Deletes this GameObject
function GameObject:delete() end