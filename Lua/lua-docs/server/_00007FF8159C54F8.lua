---@meta
---@class Barotrauma.Command : System.Object
_G['Command'] = {}

---`Method Public Instance Abstract Virtual`
_G['Command'].Execute = function() end

---`Method Public Instance Abstract Virtual`
_G['Command'].UnExecute = function() end

---`Method Public Instance Abstract Virtual`
_G['Command'].Cleanup = function() end

---`Constructor NonPublic Instance`
---@return Barotrauma.Command
_G['Command'] = function() end

---`Constructor NonPublic Instance`
---@return Barotrauma.Command
_G['Command'].__new = function() end

