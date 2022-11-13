---@meta
---@class Barotrauma.LuaCsTimer : System.Object
---`Field Private Instance`
---@field timedActions System.Collections.Generic.List*1Barotrauma*LuaCsTimer*TimedAction|Barotrauma.LuaCsTimer.TimedAction[]
---`Getter Public Static`
---@field Time System.Double|number
---`Getter Public Static`
---<br/>`Setter Public Static`
---@field AccumulatorMax System.Double|number
_G['Timer'] = {}

---`Method Public Static`
---@return System.Double|number
_G['Timer'].GetTime = function() end

---`Method Private Instance`
---@param timedAction Barotrauma.LuaCsTimer.TimedAction
_G['Timer'].AddTimer = function(timedAction) end

---`Method Public Instance`
_G['Timer'].Update = function() end

---`Method Public Instance`
_G['Timer'].Clear = function() end

---`Method Public Instance`
---@param action Barotrauma.LuaCsAction|(fun(...:System.Object))
---@param millisecondDelay System.Int32|integer
_G['Timer'].Wait = function(action, millisecondDelay) end

---`Constructor Public Instance`
---@return Barotrauma.LuaCsTimer
_G['Timer'] = function() end

---`Constructor Public Instance`
---@return Barotrauma.LuaCsTimer
_G['Timer'].__new = function() end

