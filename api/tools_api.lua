---@meta

---@class Tools Tools API class, provides different dunctions for making default tools and realise their behaviour
Tools = {}

---@class GameObjectToolData Drop definition used by Tools API
---@field max_hits number|fun(game_object: GameObject): number Maximum amount of tool hits that object can handle before breaking
---@field tool_tag Identifier Tool tag ID that can destroy this object
---@field break_sound? Identifier Breaking sound, this field is used by Tools API
---@field drop_item? ItemStack Item that will be dropped on each position
---@field drop_position? Vector3|Vector3[]|fun(game_object: GameObject): Vector3[] Drop positions relative to object

---Register new tool with default functionality and tags
---@param tool_id Identifier Tool Identifier
---@param hit_sound Identifier Tool hit sound Identifier
---@param tags table<string,integer> Item tags, should include tool type tag (for example "default:axe" for axes)
---@param mesh_id? Identifier Item model identifier, optional. If not provided it will be constructed based on tool Identifier
function Tools.register_tool(tool_id, hit_sound, tags, mesh_id) end

---Helper function to register a new axe tool with default functionality and tags
---@param tool_id Identifier Tool identifier
---@param level integer Tool level starting from 1 (basic tool)
---@param tags? table<string,integer> Additional item tags, optional
---@param mesh_id? Identifier Item model identifier, optional. If not provided it will be constructed based on tool Identifier
function Tools.register_axe(tool_id, level, tags, mesh_id) end

---Helper function to register a new pickaxe tool with default functionality and tags
---@param tool_id Identifier Tool identifier
---@param level integer Tool level starting from 1 (basic tool)
---@param tags? table<string,integer> Additional item tags, optional
---@param mesh_id? Identifier Item model identifier, optional. If not provided it will be constructed based on tool Identifier
function Tools.register_pickaxe(tool_id, level, tags, mesh_id) end