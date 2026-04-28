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

---Calls function with a delay
---@param action fun() Function that will be called after delay will be ended
---@param start_delay number Delay in seconds before function will be called
Time.call_with_delay = function (action, start_delay) end

---Calls function with a specified period after specified delay
---@param action fun(): boolean Function that will be called after delay will be ended. If function will return `true` the timer will stop
---@param period number Delay in seconds between function calls
---@param start_delay? number Delay in seconds before time will start
Time.make_timer = function (action, period, start_delay) end