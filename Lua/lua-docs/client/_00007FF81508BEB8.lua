---@meta
---@class Barotrauma.InputTypeLString : Barotrauma.LocalizedString
---`Field Private Instance`
---@field nestedStr Barotrauma.LocalizedString
---`Field Private Instance`
---@field useColorHighlight System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field Loaded System.Boolean|boolean
_G['InputTypeLString'] = {}

---`Method NonPublic Instance Virtual`
---@return System.Boolean|boolean
_G['InputTypeLString'].MustRetrieveValue = function() end

---`Method Public Instance Virtual`
_G['InputTypeLString'].RetrieveValue = function() end

---`Constructor Public Instance`
---@param nStr Barotrauma.LocalizedString
---@param useColorHighlight? System.Boolean|boolean
---@return Barotrauma.InputTypeLString
_G['InputTypeLString'] = function(nStr, useColorHighlight) end

---`Constructor Public Instance`
---@param nStr Barotrauma.LocalizedString
---@param useColorHighlight? System.Boolean|boolean
---@return Barotrauma.InputTypeLString
_G['InputTypeLString'].__new = function(nStr, useColorHighlight) end

