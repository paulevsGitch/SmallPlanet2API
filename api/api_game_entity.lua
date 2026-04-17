---@meta

---@class EntityInteractionDef
---@field title? string Interaction title, optional. Default is "Interact"
---@field action fun(game_entity: GameEntity, player: Player) Interaction function

---@class DynamicMeshDef
---@field type "dynamic"
---@field custom_data_field string Custom data field, used to read value from custom_data what mesh should be rendered

---@class GameEntityDef
---@field affected_by_gravity? boolean Is entity affected by gravity, optional. Default is false
---@field orient_by_gravity? boolean Is entity rotated by local gravity, optional. Default is false
---@field shadow_mesh? string|DynamicMeshDef Shadow Mesh identifier, optional
---@field visual_mesh? string|DynamicMeshDef|MeshDef[] Visual Mesh identifier or mesh with LODs array, optional
---@field collisions? CollisionDef Colliders definition, optional
---@field interaction? EntityInteractionDef key-based interaction with entity, optional
---@field on_spawn? fun(game_entity: GameEntity) Function called when entity spawns, optional
---@field on_tick? fun(game_entity: GameEntity, delta: number) On-tick function, optional
---@field on_player_collision? fun(game_entity: GameEntity, player: Player) Function called when entity collides with player, optional

---@class GameEntity
---@field position Vector3
---@field rotation Vector3
---@field scale Vector3
---@field linear_velocity Vector3
---@field angular_velocity Vector3
---@field planet string Entity planet Identifier
---@field custom_data table Table for custom data storage
GameEntity = {}

---Deletes this GameEntity
function GameEntity:delete() end