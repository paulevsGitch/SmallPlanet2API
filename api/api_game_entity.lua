---@meta

---@class EntityInteractionDefinition
---@field title? string Interaction title, optional. Default is "Interact"
---@field action fun(game_entity: GameEntity, player: Player) Interaction function

---@class GameEntityDefinition
---@field affected_by_gravity? boolean Is entity affected by gravity, optional. Default is false
---@field orient_by_gravity? boolean Is entity rotated by local gravity, optional. Default is false
---@field visual_model? string Visual Mesh identifier, optional
---@field shadow_model? string Shadow Mesh identifier, optional
---@field collisions? CollisionDefinition Colliders definition, optional
---@field interaction? EntityInteractionDefinition key-based interaction with entity, optional
---@field on_spawn? fun(game_entity: GameEntity) Function called when entity spawns, optional
---@field on_tick? fun(game_entity: GameEntity, delta: number) On-tick function, optional
---@field player_collision? PlayerCollisionDefinition Area-based player interraction, optional

---@class GameEntity Common class for all movable and living objects in the game (except Player)
---@field identifier Identifier GameEntity identifier
---@field position Vector3 GameEntity position in meters
---@field rotation Vector3 GameEntity rotation in radians
---@field scale Vector3 GameEntity scale in meters
---@field linear_velocity Vector3 GameEntity linear velocity in meters/second
---@field angular_velocity Vector3 GameEntity angular velocity in radians/second
---@field planet string GameEntity planet Identifier
---@field custom_data table Table for custom data storage
GameEntity = {}

---Deletes this GameEntity
function GameEntity:delete() end