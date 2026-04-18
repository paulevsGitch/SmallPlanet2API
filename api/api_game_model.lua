---@meta

---@class GameModelLODDef
---@field mesh string Mesh identifier. Will be transformed to path "<namespace>/meshes/<path>.bmesh"
---@field distance number Distance when LOD start become visible

---@alias GameModelDef StaticGameModelDef|DynamicGameModelDef

---@class StaticGameModelDef
---@field type "static"
---@field mesh string Mesh identifier. Will be transformed to path "<namespace>/meshes/<path>.bmesh"
---@field lods? "auto"|GameModelLODDef[] Mesh levels of details, optional
---@field impostor_type? "vertical"|"horizontal" Mesh impostor type for rendering on large distance, optional

---@class DynamicGameModelDef
---@field type "dynamic"
---@field custom_data_field string Custom data field to read the model ID from, field must be string

---Register GameModel with specidied identifier and definition.
---@param identifier string GameEntity identifier
---@param def_table GameModelDef GameModel definition
---@param override_object? boolean Override existing object, optional. Default is false (will throw an error)
Core.register_game_model = function (identifier, def_table, override_object) end

---@type GameModelDef[] Table of tables with identifier as a key and definition table as a value
Core.registered_definitions.game_models = {}