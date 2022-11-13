---@meta
---@class Barotrauma.KarmaManager : System.Object
---`Field Private Instance`
---@field allowedWireDisconnectionsPerMinute System.Int32|integer
---`Field Private Instance`
---@field herpesAffliction Barotrauma.AfflictionPrefab
---`Field Public Instance`
---@field Presets System.Collections.Generic.Dictionary*1System*String*1System*Xml*Linq*XElement|{[System.String|string]:System.Xml.Linq.XElement}
---`Field Public Static`
---@field ConfigFile System.String|string
---`Getter Public Instance Virtual`
---@field Name System.String|string
---`Getter Public Instance Virtual`
---<br/>`Setter Private Instance`
---@field SerializableProperties System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1Barotrauma*SerializableProperty|{[Barotrauma.Identifier]:Barotrauma.SerializableProperty}
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ResetKarmaBetweenRounds System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field KarmaDecay System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field KarmaDecayThreshold System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field KarmaIncrease System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field KarmaIncreaseThreshold System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field StructureRepairKarmaIncrease System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field StructureDamageKarmaDecrease System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MaxStructureDamageKarmaDecreasePerSecond System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ItemRepairKarmaIncrease System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ReactorOverheatKarmaDecrease System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ReactorMeltdownKarmaDecrease System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DamageEnemyKarmaIncrease System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field HealFriendlyKarmaIncrease System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DamageFriendlyKarmaDecrease System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field StunFriendlyKarmaDecrease System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field StunFriendlyKarmaDecreaseThreshold System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ExtinguishFireKarmaIncrease System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DangerousItemStealKarmaDecrease System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DangerousItemStealBots System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field BallastFloraKarmaIncrease System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AllowedWireDisconnectionsPerMinute System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field WireDisconnectionKarmaDecrease System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SteerSubKarmaIncrease System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SpamFilterKarmaDecrease System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field HerpesThreshold System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field KickBanThreshold System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field KicksBeforeBan System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field KarmaNotificationInterval System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AllowedRetaliationTime System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DangerousItemContainKarmaDecrease System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field IsDangerousItemContainKarmaDecreaseIncremental System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MaxDangerousItemContainKarmaDecrease System.Single|number
_G['KarmaManager'] = {}

---`Method Public Instance`
---@param parent Barotrauma.GUIComponent
_G['KarmaManager'].CreateSettingsFrame = function(parent) end

---`Method Private Instance`
---@param parent Barotrauma.GUIComponent
---@param min System.Single|number
---@param max System.Single|number
---@param step System.Single|number
---@param propertyName System.String|string
_G['KarmaManager'].CreateLabeledSlider = function(parent, min, max, step, propertyName) end

---`Method Private Instance`
---@param parent Barotrauma.GUIComponent
---@param min System.Int32|integer
---@param max System.Int32|integer
---@param propertyName System.String|string
_G['KarmaManager'].CreateLabeledNumberInput = function(parent, min, max, propertyName) end

---`Method Private Instance`
---@param parent Barotrauma.GUIComponent
---@param propertyName System.String|string
_G['KarmaManager'].CreateLabeledTickBox = function(parent, propertyName) end

---`Method Public Instance`
---@param presetName System.String|string
_G['KarmaManager'].SelectPreset = function(presetName) end

---`Method Public Instance`
_G['KarmaManager'].SaveCustomPreset = function() end

---`Method Public Instance`
_G['KarmaManager'].Save = function() end

---`Constructor Public Instance`
---@overload fun():Barotrauma.KarmaManager
---@return Barotrauma.KarmaManager
_G['KarmaManager'] = function() end

---`Constructor Public Instance`
---@overload fun():Barotrauma.KarmaManager
---@return Barotrauma.KarmaManager
_G['KarmaManager'].__new = function() end

---`Constructor Private Static`
---@overload fun():Barotrauma.KarmaManager
---@return Barotrauma.KarmaManager
_G['KarmaManager'] = function() end

---`Constructor Private Static`
---@overload fun():Barotrauma.KarmaManager
---@return Barotrauma.KarmaManager
_G['KarmaManager'].__new = function() end

