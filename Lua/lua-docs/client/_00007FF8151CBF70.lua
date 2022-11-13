---@meta
---@class Barotrauma.AITrigger : System.Object
---`Getter Public Instance Virtual`
---@field Name System.String|string
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance`
---@field SerializableProperties System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1Barotrauma*SerializableProperty|{[Barotrauma.Identifier]:Barotrauma.SerializableProperty}
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field State Barotrauma.AIState
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Duration System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Probability System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field MinDamage System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AllowToOverride System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AllowToBeOverridden System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field IsTriggered System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Timer System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field IsActive System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field IsPermanent System.Boolean|boolean
_G['AITrigger'] = {}

---`Method Public Instance`
_G['AITrigger'].Launch = function() end

---`Method Public Instance`
_G['AITrigger'].Reset = function() end

---`Method Public Instance`
---@param deltaTime System.Single|number
_G['AITrigger'].UpdateTimer = function(deltaTime) end

---`Constructor Public Instance`
---@param element System.Xml.Linq.XElement
---@return Barotrauma.AITrigger
_G['AITrigger'] = function(element) end

---`Constructor Public Instance`
---@param element System.Xml.Linq.XElement
---@return Barotrauma.AITrigger
_G['AITrigger'].__new = function(element) end

