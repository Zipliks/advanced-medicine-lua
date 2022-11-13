---@meta
---@class Barotrauma.Networking.SteamP2POwnerPeer : Barotrauma.Networking.ClientPeer
---`Field Private Instance`
---@field selfSteamID Barotrauma.Networking.SteamId
---`Field Private Instance`
---@field sentBytes System.Int64|integer
---`Field Private Instance`
---@field receivedBytes System.Int64|integer
---`Field Private Instance`
---@field remotePeers System.Collections.Generic.List*1Barotrauma*Networking*SteamP2POwnerPeer*RemotePeer|Barotrauma.Networking.SteamP2POwnerPeer.RemotePeer[]
---`Getter Private Instance`
---@field ownerKey64 System.UInt64|integer
_G['SteamP2POwnerPeer'] = {}

---`Method Private Instance`
---@param inc Barotrauma.Networking.IReadMessage
---@return Barotrauma.Networking.SteamId
_G['SteamP2POwnerPeer'].ReadSteamId = function(inc) end

---`Method Private Instance`
---@param msg Barotrauma.Networking.IWriteMessage
---@param val Barotrauma.Networking.SteamId
_G['SteamP2POwnerPeer'].WriteSteamId = function(msg, val) end

---`Method Public Instance Virtual`
_G['SteamP2POwnerPeer'].Start = function() end

---`Method Private Instance`
---@param steamId Steamworks.SteamId
---@param ownerId Steamworks.SteamId
---@param status Steamworks.AuthResponse
_G['SteamP2POwnerPeer'].OnAuthChange = function(steamId, ownerId, status) end

---`Method Private Instance`
---@param steamId Steamworks.SteamId
_G['SteamP2POwnerPeer'].OnIncomingConnection = function(steamId) end

---`Method Private Instance`
---@param steamId System.UInt64|integer
---@param inc Barotrauma.Networking.IReadMessage
_G['SteamP2POwnerPeer'].OnP2PData = function(steamId, inc) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
_G['SteamP2POwnerPeer'].Update = function(deltaTime) end

---`Method Private Instance`
---@param inc Barotrauma.Networking.IReadMessage
_G['SteamP2POwnerPeer'].HandleDataMessage = function(inc) end

---`Method Private Static`
---@param msg Barotrauma.Networking.IReadMessage
---@return System.Byte-arr|System.Byte|integer[]
_G['SteamP2POwnerPeer'].GetRemainingBytes = function(msg) end

---`Method Private Instance`
---@param peerPacketHeaders Barotrauma.Networking.PeerPacketHeaders
---@param recipientSteamId Barotrauma.Networking.SteamId
---@param inc Barotrauma.Networking.IReadMessage
_G['SteamP2POwnerPeer'].HandleMessageForRemotePeer = function(peerPacketHeaders, recipientSteamId, inc) end

---`Method Private Instance`
---@param peerPacketHeaders Barotrauma.Networking.PeerPacketHeaders
---@param inc Barotrauma.Networking.IReadMessage
_G['SteamP2POwnerPeer'].HandleMessageForOwner = function(peerPacketHeaders, inc) end

---`Method Private Instance`
---@param peer Barotrauma.Networking.SteamP2POwnerPeer.RemotePeer
---@param peerDisconnectPacket Barotrauma.Networking.PeerDisconnectPacket
_G['SteamP2POwnerPeer'].DisconnectPeer = function(peer, peerDisconnectPacket) end

---`Method Private Instance`
---@param peer Barotrauma.Networking.SteamP2POwnerPeer.RemotePeer
_G['SteamP2POwnerPeer'].ClosePeerSession = function(peer) end

---`Method Public Instance Virtual`
---@param password System.String|string
_G['SteamP2POwnerPeer'].SendPassword = function(password) end

---`Method Public Instance Virtual`
---@param peerDisconnectPacket Barotrauma.Networking.PeerDisconnectPacket
_G['SteamP2POwnerPeer'].Close = function(peerDisconnectPacket) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param deliveryMethod Barotrauma.Networking.DeliveryMethod
---@param compressPastThreshold? System.Boolean|boolean
_G['SteamP2POwnerPeer'].Send = function(msg, deliveryMethod, compressPastThreshold) end

---`Method NonPublic Instance Virtual`
---@param headers Barotrauma.Networking.PeerPacketHeaders
---@param body Barotrauma.INetSerializableStruct
_G['SteamP2POwnerPeer'].SendMsgInternal = function(headers, body) end

---`Method Private Static`
---@param msg Barotrauma.Networking.IWriteMessage
_G['SteamP2POwnerPeer'].ForwardToServerProcess = function(msg) end

---`Method Private Instance`
---@param deliveryMethod Barotrauma.Networking.DeliveryMethod
---@param recipent Barotrauma.Networking.SteamId
---@param outMsg Barotrauma.Networking.IWriteMessage
_G['SteamP2POwnerPeer'].ForwardToRemotePeer = function(deliveryMethod, recipent, outMsg) end

---`Constructor Public Instance`
---@param callbacks Barotrauma.Networking.ClientPeer.Callbacks
---@param ownerKey System.Int32|integer
---@return Barotrauma.Networking.SteamP2POwnerPeer
_G['SteamP2POwnerPeer'] = function(callbacks, ownerKey) end

---`Constructor Public Instance`
---@param callbacks Barotrauma.Networking.ClientPeer.Callbacks
---@param ownerKey System.Int32|integer
---@return Barotrauma.Networking.SteamP2POwnerPeer
_G['SteamP2POwnerPeer'].__new = function(callbacks, ownerKey) end

