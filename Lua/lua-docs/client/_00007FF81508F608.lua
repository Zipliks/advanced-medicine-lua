---@meta
---@class Barotrauma.UpperLString : Barotrauma.LocalizedString
---`Field Private Instance`
---@field nestedStr Barotrauma.LocalizedString
---`Getter Public Instance Virtual`
---@field Loaded System.Boolean|boolean
_G['UpperLString'] = {}

---`Method Public Instance Virtual`
_G['UpperLString'].RetrieveValue = function() end

---`Method Public Instance Virtual`
---@return Barotrauma.LocalizedString
_G['UpperLString'].ToUpper = function() end

---`Constructor Public Instance`
---@param nestedStr Barotrauma.LocalizedString
---@return Barotrauma.UpperLString
_G['UpperLString'] = function(nestedStr) end

---`Constructor Public Instance`
---@param nestedStr Barotrauma.LocalizedString
---@return Barotrauma.UpperLString
_G['UpperLString'].__new = function(nestedStr) end

