---@meta

---@alias Collider ModelCollider|SphereCollider|CubeCollider

---@class ModelCollider
---@field type "model"
---@field model string Model identifier
---@field model_collision? "default"|"convex" Model collision type, optional. Default will collide with all model triangles, convex will create a convex shape for collision

---@class SphereCollider
---@field type "sphere"
---@field radius? number Spherical collider radius, optional
---@field position? Vector3 Collider position relative to object center, optional

---@class CubeCollider
---@field type "cube"
---@field size? Vector3 Cube collider size, optional
---@field position? Vector3 Collider position relative to object center, optional

---@class CollisionDefinition
---@field colliders Collider[] Array of colliders
---@field collide_with? string[] Optional collider flags, possible values: "terrain", "game_objects", "players", "entities", "items"

---@class PlayerCollisionDefinition
---@field colliders Collider[] Array of colliders
---@field on_collision fun(game_entity: GameEntity, player: Player) Function called when entity collides with player