---@meta
---@class Barotrauma.TrimLString : Barotrauma.LocalizedString
---`Field Private Instance`
---@field nestedStr Barotrauma.LocalizedString
---`Field Private Instance`
---@field mode Barotrauma.TrimLString.Mode
---`Getter Public Instance Virtual`
---@field Loaded System.Boolean|boolean
_G['TrimLString'] = {}

---`Method Public Instance Virtual`
_G['TrimLString'].RetrieveValue = function() end

---`Constructor Public Instance`
---@param nestedStr Barotrauma.LocalizedString
---@param mode Barotrauma.TrimLString.Mode
---@return Barotrauma.TrimLString
_G['TrimLString'] = function(nestedStr, mode) end

---`Constructor Public Instance`
---@param nestedStr Barotrauma.LocalizedString
---@param mode Barotrauma.TrimLString.Mode
---@return Barotrauma.TrimLString
_G['TrimLString'].__new = function(nestedStr, mode) end

