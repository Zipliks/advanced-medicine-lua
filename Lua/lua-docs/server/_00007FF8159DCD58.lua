---@meta
---@class Barotrauma.Networking.LidgrenServerPeer : Barotrauma.Networking.ServerPeer
---`Field Private Instance`
---@field netPeerConfiguration Lidgren.Network.NetPeerConfiguration
---`Field Private Instance`
---@field netServer Lidgren.Network.NetServer
---`Field Private Instance`
---@field incomingLidgrenMessages System.Collections.Generic.List*1Lidgren*Network*NetIncomingMessage|Lidgren.Network.NetIncomingMessage[]
_G['LidgrenServerPeer'] = {}

---`Method Public Instance Virtual`
_G['LidgrenServerPeer'].Start = function() end

---`Method Public Instance Virtual`
_G['LidgrenServerPeer'].Close = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
_G['LidgrenServerPeer'].Update = function(deltaTime) end

---`Method Private Instance`
_G['LidgrenServerPeer'].InitUPnP = function() end

---`Method Private Instance`
---@return System.Boolean|boolean
_G['LidgrenServerPeer'].DiscoveringUPnP = function() end

---`Method Private Instance`
_G['LidgrenServerPeer'].FinishUPnP = function() end

---`Method Private Instance`
---@param inc Lidgren.Network.NetIncomingMessage
_G['LidgrenServerPeer'].HandleConnection = function(inc) end

---`Method Private Instance`
---@param lidgrenMsg Lidgren.Network.NetIncomingMessage
_G['LidgrenServerPeer'].HandleDataMessage = function(lidgrenMsg) end

---`Method Private Instance`
---@param inc Lidgren.Network.NetIncomingMessage
_G['LidgrenServerPeer'].HandleStatusChanged = function(inc) end

---`Method Public Instance Virtual`
_G['LidgrenServerPeer'].InitializeSteamServerCallbacks = function() end

---`Method Private Instance`
---@param steamId Steamworks.SteamId
---@param ownerId Steamworks.SteamId
---@param status Steamworks.AuthResponse
_G['LidgrenServerPeer'].OnAuthChange = function(steamId, ownerId, status) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param conn Barotrauma.Networking.NetworkConnection
---@param deliveryMethod Barotrauma.Networking.DeliveryMethod
---@param compressPastThreshold? System.Boolean|boolean
_G['LidgrenServerPeer'].Send = function(msg, conn, deliveryMethod, compressPastThreshold) end

---`Method Public Instance Virtual`
---@param conn Barotrauma.Networking.NetworkConnection
---@param peerDisconnectPacket Barotrauma.Networking.PeerDisconnectPacket
_G['LidgrenServerPeer'].Disconnect = function(conn, peerDisconnectPacket) end

---`Method NonPublic Instance Virtual`
---@param conn Barotrauma.Networking.NetworkConnection
---@param headers Barotrauma.Networking.PeerPacketHeaders
---@param body Barotrauma.INetSerializableStruct
_G['LidgrenServerPeer'].SendMsgInternal = function(conn, headers, body) end

---`Method NonPublic Instance Virtual`
---@param pendingClient Barotrauma.Networking.ServerPeer.PendingClient
_G['LidgrenServerPeer'].CheckOwnership = function(pendingClient) end

---`Method NonPublic Instance Virtual`
---@param packet Barotrauma.Networking.ClientSteamTicketAndVersionPacket
---@param pendingClient Barotrauma.Networking.ServerPeer.PendingClient
_G['LidgrenServerPeer'].ProcessAuthTicket = function(packet, pendingClient) end

---`Method Private Instance`
---@param msg Barotrauma.Networking.IWriteMessage
---@param connection Barotrauma.Networking.NetworkConnection
---@param deliveryMethod Barotrauma.Networking.DeliveryMethod
---@return Lidgren.Network.NetSendResult
_G['LidgrenServerPeer'].ForwardToLidgren = function(msg, connection, deliveryMethod) end

---`Constructor Public Instance`
---@param ownKey Barotrauma.Option*1System*Int32
---@param settings Barotrauma.Networking.ServerSettings
---@param callbacks Barotrauma.Networking.ServerPeer.Callbacks
---@return Barotrauma.Networking.LidgrenServerPeer
_G['LidgrenServerPeer'] = function(ownKey, settings, callbacks) end

---`Constructor Public Instance`
---@param ownKey Barotrauma.Option*1System*Int32
---@param settings Barotrauma.Networking.ServerSettings
---@param callbacks Barotrauma.Networking.ServerPeer.Callbacks
---@return Barotrauma.Networking.LidgrenServerPeer
_G['LidgrenServerPeer'].__new = function(ownKey, settings, callbacks) end

