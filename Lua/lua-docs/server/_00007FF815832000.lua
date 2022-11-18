---@meta
---@class Barotrauma.PerformanceCounter : System.Object
---`Field Private Instance`
---@field mutex System.Object
---`Field Private Instance`
---@field sampleBuffer System.Collections.Generic.Queue*1System*Double|(fun():System.Double|number)
---`Field Private Instance`
---@field elapsedTicks System.Collections.Generic.Dictionary*1System*String*1System*Collections*Generic*Queue*2System*Int64|{[System.String|string]:System.Collections.Generic.Queue*1System*Int64|(fun():System.Int64|integer)}
---`Field Private Instance`
---@field avgTicksPerFrame System.Collections.Generic.Dictionary*1System*String*1System*Int64|{[System.String|string]:System.Int64|integer}
---`Field Private Instance`
---@field tempSavedIdentifiers System.Collections.Generic.List*1System*String|System.String|string[]
---`Field Public Static`
---@field MaximumSamples System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AverageFramesPerSecond System.Double|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field CurrentFramesPerSecond System.Double|number
---`Getter Public Instance`
---@field GetSavedIdentifiers System.Collections.Generic.IReadOnlyList*1System*String|System.String|string[]
_G['PerformanceCounter'] = {}

---`Method Public Instance`
---@param identifier System.String|string
---@param ticks System.Int64|integer
_G['PerformanceCounter'].AddElapsedTicks = function(identifier, ticks) end

---`Method Public Instance`
---@param identifier System.String|string
---@return System.Single|number
_G['PerformanceCounter'].GetAverageElapsedMillisecs = function(identifier) end

---`Method Public Instance`
---@param deltaTime System.Double|number
---@return System.Boolean|boolean
_G['PerformanceCounter'].Update = function(deltaTime) end

---`Constructor Public Instance`
---@return Barotrauma.PerformanceCounter
_G['PerformanceCounter'] = function() end

---`Constructor Public Instance`
---@return Barotrauma.PerformanceCounter
_G['PerformanceCounter'].__new = function() end

