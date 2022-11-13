---@meta
---@class Barotrauma.LuaCsPerformanceCounter : System.Object
---`Field Public Instance`
---@field EnablePerformanceCounter System.Boolean|boolean
---`Field Public Instance`
---@field UpdateElapsedTime System.Double|number
---`Field Public Instance`
---@field HookElapsedTime System.Collections.Generic.Dictionary*1System*String*1System*Collections*Generic*Dictionary*2System*String*2System*Double|{[System.String|string]:System.Collections.Generic.Dictionary*1System*String*1System*Double|{[System.String|string]:System.Double|number}}
---`Getter Public Static`
---@field MemoryUsage System.Single|number
_G['PerformanceCounter'] = {}

---`Method Public Instance`
---@param eventName System.String|string
---@param hookName System.String|string
---@param ticks System.Int64|integer
_G['PerformanceCounter'].SetHookElapsedTicks = function(eventName, hookName, ticks) end

---`Constructor Public Instance`
---@return Barotrauma.LuaCsPerformanceCounter
_G['PerformanceCounter'] = function() end

---`Constructor Public Instance`
---@return Barotrauma.LuaCsPerformanceCounter
_G['PerformanceCounter'].__new = function() end

