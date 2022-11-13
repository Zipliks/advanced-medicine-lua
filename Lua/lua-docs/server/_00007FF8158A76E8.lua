---@meta
---@class Barotrauma.Screen : System.Object
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field Selected Barotrauma.Screen
---`Getter Public Instance Virtual`
---@field Cam Barotrauma.Camera
---`Getter Public Instance Virtual`
---@field IsEditor System.Boolean|boolean
_G['GUI']['Screen'] = {}

---`Method Public Static`
_G['GUI']['Screen'].SelectNull = function() end

---`Method Public Instance Virtual`
_G['GUI']['Screen'].Deselect = function() end

---`Method Public Instance Virtual`
_G['GUI']['Screen'].Select = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Double|number
_G['GUI']['Screen'].Update = function(deltaTime) end

---`Constructor NonPublic Instance`
---@return Barotrauma.Screen
_G['GUI']['Screen'] = function() end

---`Constructor NonPublic Instance`
---@return Barotrauma.Screen
_G['GUI']['Screen'].__new = function() end

