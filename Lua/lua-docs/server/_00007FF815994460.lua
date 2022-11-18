---@meta
---@class Barotrauma.SkillSettings : Barotrauma.Prefab
---`Field Private Instance`
---@field skillIncreasePerRepair System.Single|number
---`Field Private Instance`
---@field skillIncreasePerSabotage System.Single|number
---`Field Private Instance`
---@field skillIncreasePerCprRevive System.Single|number
---`Field Private Instance`
---@field skillIncreasePerRepairedStructureDamage System.Single|number
---`Field Private Instance`
---@field skillIncreasePerSecondWhenSteering System.Single|number
---`Field Private Instance`
---@field skillIncreasePerFabricatorRequiredSkill System.Single|number
---`Field Private Instance`
---@field skillIncreasePerHostileDamage System.Single|number
---`Field Private Instance`
---@field skillIncreasePerSecondWhenOperatingTurret System.Single|number
---`Field Private Instance`
---@field skillIncreasePerFriendlyHealed System.Single|number
---`Field Public Static`
---@field Prefabs Barotrauma.PrefabSelector*1Barotrauma*SkillSettings|(fun():Barotrauma.SkillSettings)
---`Getter Public Static`
---@field Current Barotrauma.SkillSettings
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SingleRoundSkillGainMultiplier System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SkillIncreasePerRepair System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SkillIncreasePerSabotage System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SkillIncreasePerCprRevive System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SkillIncreasePerRepairedStructureDamage System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SkillIncreasePerSecondWhenSteering System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SkillIncreasePerFabricatorRequiredSkill System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SkillIncreasePerHostileDamage System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SkillIncreasePerSecondWhenOperatingTurret System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SkillIncreasePerFriendlyHealed System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AssistantSkillIncreaseMultiplier System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MaximumSkillWithTalents System.Single|number
---`Getter Public Instance Virtual`
---@field Name System.String|string
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance`
---@field SerializableProperties System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1Barotrauma*SerializableProperty|{[Barotrauma.Identifier]:Barotrauma.SerializableProperty}
_G['SkillSettings'] = {}

---`Method Private Instance`
---@return System.Single|number
_G['SkillSettings'].GetCurrentSkillGainMultiplier = function() end

---`Method Public Instance Virtual`
_G['SkillSettings'].Dispose = function() end

---`Constructor Public Instance`
---@overload fun(element:System.Xml.Linq.XElement, file:Barotrauma.SkillSettingsFile):Barotrauma.SkillSettings
---@return Barotrauma.SkillSettings
_G['SkillSettings'] = function() end

---`Constructor Public Instance`
---@overload fun(element:System.Xml.Linq.XElement, file:Barotrauma.SkillSettingsFile):Barotrauma.SkillSettings
---@return Barotrauma.SkillSettings
_G['SkillSettings'].__new = function() end

---`Constructor Private Static`
---@overload fun(element:System.Xml.Linq.XElement, file:Barotrauma.SkillSettingsFile):Barotrauma.SkillSettings
---@return Barotrauma.SkillSettings
_G['SkillSettings'] = function() end

---`Constructor Private Static`
---@overload fun(element:System.Xml.Linq.XElement, file:Barotrauma.SkillSettingsFile):Barotrauma.SkillSettings
---@return Barotrauma.SkillSettings
_G['SkillSettings'].__new = function() end

