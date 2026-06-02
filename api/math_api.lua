---@meta math

---@param value number The value to round.
---@return number
function math.round(value) end

---@param a number The starting value.
---@param b number The ending value.
---@param weight number The interpolation weight in range [0.0 - 1.0].
---@return number
function math.lerp(a, b, weight) end

---@param value number The value to clamp.
---@param min_value number The minimum allowed value.
---@param max_value number The maximum allowed value.
---@return number
function math.clamp(value, min_value, max_value) end

---@param min_value number The minimum range value.
---@param max_value number The maximum range value.
---@return number
function math.random_range(min_value, max_value) end

---Convert angle from degrees to radians
---@param value number Angle to convert
---@return number
function math.degrees_to_radians(value) end

---Convert angle from radians to degrees
---@param value number Angle to convert
---@return number
function math.radians_to_degrees(value) end

---Create a line from vectors
---@param start_position Vector3 Line starting point
---@param offset Vector3 Offset to the next point from the current one
---@param point_count integer Line points count (includes starting point)
---@return Vector3[]
function math.create_line(start_position, offset, point_count) end

---Create a Fibonacci sphere with specified amount of points
---@param point_count integer Sphere points count
---@param center_position? Vector3 Sphere center position, optional. Default is [0.0, 0.0, 0.0]
---@param radius? number Sphere radius, optional. Default is 1.0
---@return Vector3[]
function math.fibonacci_sphere(point_count, center_position, radius) end