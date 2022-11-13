---@meta
---@class Barotrauma.AIChatMessage : System.Object
---`Field Public Instance`
---@field Message System.String|string
---`Field Public Instance`
---@field Identifier Barotrauma.Identifier
---`Field Public Instance`
---@field MessageType System.Nullable*1Barotrauma*Networking*ChatMessageType
---`Field Public Instance`
---@field SendDelay System.Single|number
---`Field Public Instance`
---@field SendTime System.Double|number
_G['AIChatMessage'] = {}

---`Constructor Public Instance`
---@param message System.String|string
---@param type System.Nullable*1Barotrauma*Networking*ChatMessageType
---@param identifier? Barotrauma.Identifier
---@param delay? System.Single|number
---@return Barotrauma.AIChatMessage
_G['AIChatMessage'] = function(message, type, identifier, delay) end

---`Constructor Public Instance`
---@param message System.String|string
---@param type System.Nullable*1Barotrauma*Networking*ChatMessageType
---@param identifier? Barotrauma.Identifier
---@param delay? System.Single|number
---@return Barotrauma.AIChatMessage
_G['AIChatMessage'].__new = function(message, type, identifier, delay) end

