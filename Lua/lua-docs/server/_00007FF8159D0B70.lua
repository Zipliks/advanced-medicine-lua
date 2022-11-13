---@meta
---@class Barotrauma.EventManagerSettings : Barotrauma.PrefabWithUintIdentifier
---`Field Public Instance`
---@field Name Barotrauma.LocalizedString
---`Field Public Instance`
---@field EventThresholdIncrease System.Single|number
---`Field Public Instance`
---@field DefaultEventThreshold System.Single|number
---`Field Public Instance`
---@field EventCooldown System.Single|number
---`Field Public Instance`
---@field MinLevelDifficulty System.Single|number
---`Field Public Instance`
---@field MaxLevelDifficulty System.Single|number
---`Field Public Instance`
---@field FreezeDurationWhenCrewAway System.Single|number
---`Field Public Static`
---@field Prefabs Barotrauma.PrefabCollection*1Barotrauma*EventManagerSettings|(fun():Barotrauma.EventManagerSettings)
---`Getter Public Static`
---@field OrderedByDifficulty System.Linq.IOrderedEnumerable*1Barotrauma*EventManagerSettings|(fun():Barotrauma.EventManagerSettings)
_G['EventManagerSettings'] = {}

---`Method Public Static`
---@param p System.Single|number
---@return Barotrauma.EventManagerSettings
_G['EventManagerSettings'].GetByDifficultyPercentile = function(p) end

---`Method Public Instance Virtual`
_G['EventManagerSettings'].Dispose = function() end

---`Constructor Public Instance`
---@overload fun(element:System.Xml.Linq.XElement, file:Barotrauma.EventManagerSettingsFile):Barotrauma.EventManagerSettings
---@return Barotrauma.EventManagerSettings
_G['EventManagerSettings'] = function() end

---`Constructor Public Instance`
---@overload fun(element:System.Xml.Linq.XElement, file:Barotrauma.EventManagerSettingsFile):Barotrauma.EventManagerSettings
---@return Barotrauma.EventManagerSettings
_G['EventManagerSettings'].__new = function() end

---`Constructor Private Static`
---@overload fun(element:System.Xml.Linq.XElement, file:Barotrauma.EventManagerSettingsFile):Barotrauma.EventManagerSettings
---@return Barotrauma.EventManagerSettings
_G['EventManagerSettings'] = function() end

---`Constructor Private Static`
---@overload fun(element:System.Xml.Linq.XElement, file:Barotrauma.EventManagerSettingsFile):Barotrauma.EventManagerSettings
---@return Barotrauma.EventManagerSettings
_G['EventManagerSettings'].__new = function() end

