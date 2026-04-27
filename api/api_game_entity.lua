---@meta

---@class EntityInteractionDef
---@field title? string Interaction title, optional. Default is "Interact"
---@field action fun(game_entity: GameEntity, player: Player) Interaction function

---@class GameEntityDef
---@field affected_by_gravity? boolean Is entity affected by gravity, optional. Default is false
---@field orient_by_gravity? boolean Is entity rotated by local gravity, optional. Default is false
---@field visual_model? string Visual Mesh identifier, optional
---@field shadow_model? string Shadow Mesh identifier, optional
---@field collisions? CollisionDef Colliders definition, optional
---@field interaction? EntityInteractionDef key-based interaction with entity, optional
---@field on_spawn? fun(game_entity: GameEntity) Function called when entity spawns, optional
---@field on_tick? fun(game_entity: GameEntity, delta: number) On-tick function, optional
---@field player_collision? PlayerCollisionDef Area-based player interraction, optional

---Register GameEntity with specidied identifier and definition.
---@param identifier string GameEntity identifier
---@param def_table GameEntityDef GameEntity definition
---@param override_object? boolean Override existing object, optional. Default is false (will throw an error)
Core.register_game_entity = function (identifier, def_table, override_object) end

---@class GameEntity Common class for all movable and living objects in the game (except Player)
---@field position Vector3 Entity position in meters
---@field rotation Vector3 Entity rotation in radians
---@field scale Vector3 Entity scale in meters
---@field linear_velocity Vector3 Entity linear velocity in meters/second
---@field angular_velocity Vector3 Entity angular velocity in radians/second
---@field planet string Entity planet Identifier
---@field custom_data table Table for custom data storage
GameEntity = {}

---Deletes this GameEntity
function GameEntity:delete() end

---@type GameEntityDef[] Table of tables with identifier as a key and definition table as a value
Core.registered_definitions.game_entities = {}