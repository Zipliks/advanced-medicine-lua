---@meta
---@class Barotrauma.Upgrade : System.Object
---`Field Private Instance`
---@field sourceElement Barotrauma.ContentXElement
---`Getter Private Instance`
---@field TargetEntity Barotrauma.ISerializableEntity
---`Getter Public Instance`
---@field TargetComponents System.Collections.Generic.Dictionary*1Barotrauma*ISerializableEntity*1Barotrauma*PropertyReference-arr|{[Barotrauma.ISerializableEntity]:Barotrauma.PropertyReference-arr|Barotrauma.PropertyReference[]}
---`Getter Public Instance`
---@field Prefab Barotrauma.UpgradePrefab
---`Getter Public Instance`
---@field Identifier Barotrauma.Identifier
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Level System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Disposed System.Boolean|boolean
_G['Upgrade'] = {}

---`Method Private Instance`
---@param saveElement System.Xml.Linq.XContainer
_G['Upgrade'].ResetNonAffectedProperties = function(saveElement) end

---`Method Private Static`
---@param item Barotrauma.Item
---@param name System.String|string
---@return Barotrauma.ISerializableEntity-arr|Barotrauma.ISerializableEntity[]
_G['Upgrade'].FindItemComponent = function(item, name) end

---`Method Public Instance`
---@param element System.Xml.Linq.XElement
_G['Upgrade'].Save = function(element) end

---`Method Public Instance`
_G['Upgrade'].ApplyUpgrade = function() end

---`Method Public Instance Virtual`
_G['Upgrade'].Dispose = function() end

---`Constructor Public Instance`
---@param targetEntity Barotrauma.ISerializableEntity
---@param prefab Barotrauma.UpgradePrefab
---@param level System.Int32|integer
---@param saveElement? System.Xml.Linq.XContainer
---@return Barotrauma.Upgrade
_G['Upgrade'] = function(targetEntity, prefab, level, saveElement) end

---`Constructor Public Instance`
---@param targetEntity Barotrauma.ISerializableEntity
---@param prefab Barotrauma.UpgradePrefab
---@param level System.Int32|integer
---@param saveElement? System.Xml.Linq.XContainer
---@return Barotrauma.Upgrade
_G['Upgrade'].__new = function(targetEntity, prefab, level, saveElement) end

