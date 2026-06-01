---@meta

---Simple 3D float vector.
---@class Vector3
---@field x number
---@field y number
---@field z number
---@operator add(Vector3): Vector3
---@operator sub(Vector3): Vector3
---@operator mul(Vector3): Vector3
---@operator div(Vector3): Vector3
Vector3 = {}

---Constructs new vector.
---@param x number
---@param y number
---@param z number
---@return Vector3
function Vector3.new(x, y, z) end

---Get vector length.
---@return number
function Vector3:length() end

---Get vector length squared, should be used instead of length where applicable for optimisation reasons.
---@return number
function Vector3:length_squared() end

---Get normalized version of this vector.
---@return Vector3
function Vector3:normalized() end

---Get scaled version of this vector.
---@param scale number
---@return Vector3
function Vector3:scaled(scale) end

---Get rotated version of this vector.
---@param axis Vector3
---@param angle number
---@return Vector3
function Vector3:rotated(axis, angle) end

---Get cross product of this vector and second vector.
---@param second_vector Vector3
---@return Vector3
function Vector3:cross(second_vector) end

---Get dot product of this vector and second vector.
---@param second_vector Vector3
---@return number
function Vector3:dot(second_vector) end

---Returns the result of the linear interpolation between this vector and to by amount weight
---@param second_vector Vector3
---@param weight number
---@return Vector3
function Vector3:lerp(second_vector, weight) end