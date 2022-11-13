---@meta
---@class Barotrauma.ConcatLString : Barotrauma.LocalizedString
---`Field Private Instance`
---@field left Barotrauma.LocalizedString
---`Field Private Instance`
---@field right Barotrauma.LocalizedString
---`Getter Public Instance Virtual`
---@field Loaded System.Boolean|boolean
_G['ConcatLString'] = {}

---`Method Public Instance Virtual`
_G['ConcatLString'].RetrieveValue = function() end

---`Constructor Public Instance`
---@param l Barotrauma.LocalizedString
---@param r Barotrauma.LocalizedString
---@return Barotrauma.ConcatLString
_G['ConcatLString'] = function(l, r) end

---`Constructor Public Instance`
---@param l Barotrauma.LocalizedString
---@param r Barotrauma.LocalizedString
---@return Barotrauma.ConcatLString
_G['ConcatLString'].__new = function(l, r) end

