---@meta
---@class Barotrauma.Items.Components.Wearable : Barotrauma.Items.Components.Pickable
---`Field Private Instance`
---@field wearableElements Barotrauma.ContentXElement-arr|Barotrauma.ContentXElement[]
---`Field Private Instance`
---@field wearableSprites Barotrauma.WearableSprite-arr|Barotrauma.WearableSprite[]
---`Field Private Instance`
---@field limbType Barotrauma.LimbType-arr|Barotrauma.LimbType[]
---`Field Private Instance`
---@field limb Barotrauma.Limb-arr|Barotrauma.Limb[]
---`Field Private Instance`
---@field damageModifiers System.Collections.Generic.List*1Barotrauma*DamageModifier|Barotrauma.DamageModifier[]
---`Field Public Instance`
---@field SkillModifiers System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1System*Single|{[Barotrauma.Identifier]:System.Single|number}
---`Field Public Instance`
---@field WearableStatValues System.Collections.Generic.Dictionary*1Barotrauma*StatTypes*1System*Single|{[Barotrauma.StatTypes]:System.Single|number}
---`Field Public Instance`
---@field Variants System.Int32|integer
---`Field Private Instance`
---@field variant System.Int32|integer
---`Field Private Instance`
---@field loadedVariant System.Int32|integer
---`Getter Public Instance`
---@field DamageModifiers System.Collections.Generic.IEnumerable*1Barotrauma*DamageModifier|(fun():Barotrauma.DamageModifier)
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AutoEquipWhenFull System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field DisplayContainedStatus System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Variant System.Int32|integer
_G['Components']['Wearable'] = {}

---`Method Private Instance`
---@param description Barotrauma.LocalizedString-ref
---@param damageModifier Barotrauma.DamageModifier
---@param afflictionIdentifier Barotrauma.Identifier
_G['Components']['Wearable'].GetDamageModifierText = function(description, damageModifier, afflictionIdentifier) end

---`Method Public Instance Virtual`
---@param name Barotrauma.LocalizedString-ref
---@param description Barotrauma.LocalizedString-ref
_G['Components']['Wearable'].AddTooltipInfo = function(name, description) end

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
_G['Components']['Wearable'].Equip = function(character) end

---`Method Public Instance Virtual`
---@param dropper Barotrauma.Character
_G['Components']['Wearable'].Drop = function(dropper) end

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
_G['Components']['Wearable'].Unequip = function(character) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['Wearable'].UpdateBroken = function(deltaTime, cam) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['Wearable'].Update = function(deltaTime, cam) end

---`Method NonPublic Instance Virtual`
_G['Components']['Wearable'].RemoveComponentSpecific = function() end

---`Method Public Instance Virtual`
---@param parentElement System.Xml.Linq.XElement
---@return System.Xml.Linq.XElement
_G['Components']['Wearable'].Save = function(parentElement) end

---`Method Public Instance Virtual`
---@param componentElement Barotrauma.ContentXElement
---@param usePrefabValues System.Boolean|boolean
---@param idRemap Barotrauma.IdRemap
_G['Components']['Wearable'].Load = function(componentElement, usePrefabValues, idRemap) end

---`Method Public Instance Virtual`
_G['Components']['Wearable'].OnItemLoaded = function() end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
_G['Components']['Wearable'].ServerEventWrite = function(msg, c, extraData) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IReadMessage
---@param sendingTime System.Single|number
_G['Components']['Wearable'].ClientEventRead = function(msg, sendingTime) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Wearable
_G['Components']['Wearable'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Wearable
_G['Components']['Wearable'].__new = function(item, element) end

