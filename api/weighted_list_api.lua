---@meta

---@class WeightedList<T> Simple weighted list that can store any items
WeightedList = {}

---Constructs new WeightedList
---@generic T
---@return WeightedList<T>
function WeightedList.new() end

---Add new item to the list
---@generic T
---@param item T Item to add
---@param weight number Item weight
---@return WeightedList<T>
function WeightedList:add(item, weight) end

---Get random item from the list based on item weight
---@generic T
---@return T
function WeightedList:get() end