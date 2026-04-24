---@meta Time

---Time access class
---@class Time
Time = {}

---Get time in milliseconds since the game start. Each world has its own starting time
---@return integer
Time.get_milliseconds = function () end

---Get time in microseconds since the game start. Each world has its own starting time
---@return integer
Time.get_microseconds = function () end

---Get time in seconds since the game start. Each world has its own starting time
---@return number
Time.get_seconds = function () end