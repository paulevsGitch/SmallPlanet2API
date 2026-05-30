---@meta

---Get nested field from the table
---@param tbl table Source table to get field from
---@param ... string Nested fields name sequence
---@return any
function table.get_nested_field(tbl, ...) end

---Merges content of the table_b into table_a, returns modified table_a
---@param table_a table Table where values will be merged into
---@param table_b table Table where values will be copied from
---@param skip_existing_keys? boolean If true will not override existing keys in table_a, optional. Default is false
---@return table
function table.merge_into(table_a, table_b, skip_existing_keys) end