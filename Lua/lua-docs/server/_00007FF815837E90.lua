---@meta
---@class Barotrauma.FormattedLString : Barotrauma.LocalizedString
---`Field Private Instance`
---@field str Barotrauma.LocalizedString
---`Field Private Instance`
---@field subStrs System.Collections.Immutable.ImmutableArray*1Barotrauma*LocalizedString|Barotrauma.LocalizedString[]
---`Getter Public Instance Virtual`
---@field Loaded System.Boolean|boolean
_G['FormattedLString'] = {}

---`Method Public Instance Virtual`
_G['FormattedLString'].RetrieveValue = function() end

---`Constructor Public Instance`
---@param str Barotrauma.LocalizedString
---@param ... Barotrauma.LocalizedString
---@return Barotrauma.FormattedLString
_G['FormattedLString'] = function(str, ...) end

---`Constructor Public Instance`
---@param str Barotrauma.LocalizedString
---@param ... Barotrauma.LocalizedString
---@return Barotrauma.FormattedLString
_G['FormattedLString'].__new = function(str, ...) end

