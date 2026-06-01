---@meta

---Time access class
---@class Time
Time = {}

---Get time in milliseconds since the game start. Each world has its own starting time
---@return integer
function Time.get_milliseconds() end

---Get time in microseconds since the game start. Each world has its own starting time
---@return integer
function Time.get_microseconds() end

---Get time in seconds since the game start. Each world has its own starting time
---@return number
function Time.get_seconds() end

---Calls function with a delay
---@param action fun() Function that will be called after delay will be ended
---@param start_delay number Delay in seconds before function will be called
function Time.call_with_delay(action, start_delay) end

---Calls function with a specified period after specified delay
---@param action fun(): boolean Function that will be called after delay will be ended. If function will return `true` the timer will stop
---@param period number Delay in seconds between function calls
---@param start_delay? number Delay in seconds before time will start
function Time.make_timer(action, period, start_delay) end