---@meta
---@class Barotrauma.Networking.VoipServer : System.Object
---`Field Private Instance`
---@field netServer Barotrauma.Networking.ServerPeer
---`Field Private Instance`
---@field queues System.Collections.Generic.List*1Barotrauma*Networking*VoipQueue|Barotrauma.Networking.VoipQueue[]
---`Field Private Instance`
---@field lastSendTime System.Collections.Generic.Dictionary*1Barotrauma*Networking*VoipQueue*1System*DateTime|{[Barotrauma.Networking.VoipQueue]:System.DateTime}
_G['VoipServer'] = {}

---`Method Public Instance`
---@param queue Barotrauma.Networking.VoipQueue
_G['VoipServer'].RegisterQueue = function(queue) end

---`Method Public Instance`
---@param queue Barotrauma.Networking.VoipQueue
_G['VoipServer'].UnregisterQueue = function(queue) end

---`Method Public Instance`
---@param clients System.Collections.Generic.List*1Barotrauma*Networking*Client|Barotrauma.Networking.Client[]
_G['VoipServer'].SendToClients = function(clients) end

---`Method Private Instance`
---@param sender Barotrauma.Networking.Client
---@param recipient Barotrauma.Networking.Client
---@return System.Boolean|boolean
_G['VoipServer'].CanReceive = function(sender, recipient) end

---`Constructor Public Instance`
---@param server Barotrauma.Networking.ServerPeer
---@return Barotrauma.Networking.VoipServer
_G['VoipServer'] = function(server) end

---`Constructor Public Instance`
---@param server Barotrauma.Networking.ServerPeer
---@return Barotrauma.Networking.VoipServer
_G['VoipServer'].__new = function(server) end

