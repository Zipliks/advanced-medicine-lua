---@meta
---@class Barotrauma.SplitLString : Barotrauma.LocalizedString
---`Field Private Instance`
---@field loaded System.Boolean|boolean
---`Field Private Instance`
---@field splitter Barotrauma.LStringSplitter
---`Field Private Instance`
---@field index System.Int32|integer
---`Getter Public Instance Virtual`
---@field Loaded System.Boolean|boolean
_G['SplitLString'] = {}

---`Method Public Instance Virtual`
_G['SplitLString'].RetrieveValue = function() end

---`Constructor Public Instance`
---@param splitter Barotrauma.LStringSplitter
---@param index System.Int32|integer
---@return Barotrauma.SplitLString
_G['SplitLString'] = function(splitter, index) end

---`Constructor Public Instance`
---@param splitter Barotrauma.LStringSplitter
---@param index System.Int32|integer
---@return Barotrauma.SplitLString
_G['SplitLString'].__new = function(splitter, index) end

