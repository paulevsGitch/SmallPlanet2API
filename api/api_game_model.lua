---@meta

---@class GameModelLODDefinition
---@field mesh string Mesh identifier. Will be transformed to path "<namespace>/meshes/<path>.bmesh"
---@field distance number Distance when LOD start become visible

---@alias GameModelDefinition StaticGameModelDefinition|DynamicGameModelDefinition

---@class StaticGameModelDefinition
---@field type "static"
---@field mesh string Mesh identifier. Will be transformed to path "<namespace>/meshes/<path>.bmesh"
---@field lods? "auto"|GameModelLODDefinition[] Mesh levels of details, optional
---@field impostor_type? "vertical"|"horizontal" Mesh impostor type for rendering on large distance, optional

---@class DynamicGameModelDefinition
---@field type "dynamic"
---@field custom_data_field string Custom data field to read the model ID from, field must be string