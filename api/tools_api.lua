---@meta

---@class Tools Tools API class, provides different dunctions for making default tools and realise their behaviour
Tools = {}

---Register a new axe tool with default functionality and tags
---@param tool_id Identifier Tool identifier
---@param level integer Tool level starting from 1 (basic tool)
---@param tags? table<string,integer> Additional item tags, optional
---@param mesh_id? Identifier Item model identifier, optional. If not provided it will be constructed based on tool Identifier
function Tools.register_axe(tool_id, level, tags, mesh_id) end