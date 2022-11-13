---@meta
---@class Barotrauma.FallbackLString : Barotrauma.LocalizedString
---`Field Private Instance`
---@field primary Barotrauma.LocalizedString
---`Field Private Instance`
---@field fallback Barotrauma.LocalizedString
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field PrimaryIsLoaded System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field Loaded System.Boolean|boolean
_G['FallbackLString'] = {}

---`Method NonPublic Instance Virtual`
---@return System.Boolean|boolean
_G['FallbackLString'].MustRetrieveValue = function() end

---`Method Public Instance Virtual`
_G['FallbackLString'].RetrieveValue = function() end

---`Method Public Instance`
---@return Barotrauma.LocalizedString
_G['FallbackLString'].GetLastFallback = function() end

---`Constructor Public Instance`
---@param primary Barotrauma.LocalizedString
---@param fallback Barotrauma.LocalizedString
---@return Barotrauma.FallbackLString
_G['FallbackLString'] = function(primary, fallback) end

---`Constructor Public Instance`
---@param primary Barotrauma.LocalizedString
---@param fallback Barotrauma.LocalizedString
---@return Barotrauma.FallbackLString
_G['FallbackLString'].__new = function(primary, fallback) end

