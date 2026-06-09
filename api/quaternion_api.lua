---@meta

---Quaternion used for 3D rotations.
---@class Quaternion
---@field x number X component.
---@field y number Y component.
---@field z number Z component.
---@field w number W component.
---@field axis Vector3 Rotation axis.
---@field angle number Rotation angle in radians.
---@operator mul(Quaternion): Quaternion
Quaternion = {}

---Constructs a new quaternion from raw components.
---@param x number X component.
---@param y number Y component.
---@param z number Z component.
---@param w number W component.
---@return Quaternion
function Quaternion.new(x, y, z, w) end

---Constructs a quaternion from an axis and rotation angle.
---@param axis Vector3 Rotation axis.
---@param angle number Rotation angle in radians.
---@return Quaternion
function Quaternion.from_axis_and_angle(axis, angle) end

---Constructs a quaternion from Euler angles.
---@param euler Vector3 Euler angles in radians.
---@return Quaternion
function Quaternion.from_euler(euler) end

---Returns a normalized version of this quaternion.
---@return Quaternion
function Quaternion:normalized() end

---Returns the inverse of this quaternion.
---@return Quaternion
function Quaternion:inverted() end

---Returns this quaternion rotated around the specified axis by the given angle.
---@param axis Vector3 Rotation axis.
---@param angle number Rotation angle in radians.
---@return Quaternion
function Quaternion:rotate(axis, angle) end

---Rotates a vector by this quaternion.
---@param vector Vector3
---@return Vector3
function Quaternion:rotate_vector(vector) end