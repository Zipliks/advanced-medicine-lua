---@meta
---@class Barotrauma.Networking.SteamP2PClientPeer : Barotrauma.Networking.ClientPeer
---`Field Private Instance`
---@field hostSteamId Barotrauma.Networking.SteamId
---`Field Private Instance`
---@field timeout System.Double|number
---`Field Private Instance`
---@field heartbeatTimer System.Double|number
---`Field Private Instance`
---@field connectionStatusTimer System.Double|number
---`Field Private Instance`
---@field sentBytes System.Int64|integer
---`Field Private Instance`
---@field receivedBytes System.Int64|integer
---`Field Private Instance`
---@field incomingInitializationMessages System.Collections.Generic.List*1Barotrauma*Networking*ClientPeer*IncomingInitializationMessage|Barotrauma.Networking.ClientPeer.IncomingInitializationMessage[]
---`Field Private Instance`
---@field incomingDataMessages System.Collections.Generic.List*1Barotrauma*Networking*IReadMessage|Barotrauma.Networking.IReadMessage[]
_G['SteamP2PClientPeer'] = {}

---`Method Public Instance Virtual`
_G['SteamP2PClientPeer'].Start = function() end

---`Method Private Instance`
---@param steamId Steamworks.SteamId
_G['SteamP2PClientPeer'].OnIncomingConnection = function(steamId) end

---`Method Private Instance`
---@param steamId Steamworks.SteamId
---@param error Steamworks.P2PSessionError
_G['SteamP2PClientPeer'].OnConnectionFailed = function(steamId, error) end

---`Method Private Instance`
---@param steamId System.UInt64|integer
---@param data System.Byte-arr|System.Byte|integer[]
---@param dataLength System.Int32|integer
_G['SteamP2PClientPeer'].OnP2PData = function(steamId, data, dataLength) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
_G['SteamP2PClientPeer'].Update = function(deltaTime) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param deliveryMethod Barotrauma.Networking.DeliveryMethod
---@param compressPastThreshold? System.Boolean|boolean
_G['SteamP2PClientPeer'].Send = function(msg, deliveryMethod, compressPastThreshold) end

---`Method Public Instance Virtual`
---@param password System.String|string
_G['SteamP2PClientPeer'].SendPassword = function(password) end

---`Method Public Instance Virtual`
---@param peerDisconnectPacket Barotrauma.Networking.PeerDisconnectPacket
_G['SteamP2PClientPeer'].Close = function(peerDisconnectPacket) end

---`Method NonPublic Instance Virtual`
---@param headers Barotrauma.Networking.PeerPacketHeaders
---@param body Barotrauma.INetSerializableStruct
_G['SteamP2PClientPeer'].SendMsgInternal = function(headers, body) end

---`Method Private Instance`
---@param msg Barotrauma.Networking.IWriteMessage
---@param deliveryMethod Barotrauma.Networking.DeliveryMethod
_G['SteamP2PClientPeer'].ForwardToSteamP2P = function(msg, deliveryMethod) end

---`Constructor Public Instance`
---@param endpoint Barotrauma.Networking.SteamP2PEndpoint
---@param callbacks Barotrauma.Networking.ClientPeer.Callbacks
---@return Barotrauma.Networking.SteamP2PClientPeer
_G['SteamP2PClientPeer'] = function(endpoint, callbacks) end

---`Constructor Public Instance`
---@param endpoint Barotrauma.Networking.SteamP2PEndpoint
---@param callbacks Barotrauma.Networking.ClientPeer.Callbacks
---@return Barotrauma.Networking.SteamP2PClientPeer
_G['SteamP2PClientPeer'].__new = function(endpoint, callbacks) end

