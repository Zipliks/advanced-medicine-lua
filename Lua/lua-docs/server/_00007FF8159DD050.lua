---@meta
---@class Barotrauma.Networking.SteamP2PServerPeer : Barotrauma.Networking.ServerPeer
---`Field Private Instance`
---@field started System.Boolean|boolean
---`Field Private Instance`
---@field ownerSteamId Barotrauma.Networking.SteamId
---`Getter Private Instance`
---@field ownerKey64 System.UInt64|integer
_G['SteamP2PServerPeer'] = {}

---`Method Private Instance`
---@param inc Barotrauma.Networking.IReadMessage
---@return Barotrauma.Networking.SteamId
_G['SteamP2PServerPeer'].ReadSteamId = function(inc) end

---`Method Private Instance`
---@param msg Barotrauma.Networking.IWriteMessage
---@param val Barotrauma.Networking.SteamId
_G['SteamP2PServerPeer'].WriteSteamId = function(msg, val) end

---`Method Public Instance Virtual`
_G['SteamP2PServerPeer'].Start = function() end

---`Method Public Instance Virtual`
_G['SteamP2PServerPeer'].Close = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
_G['SteamP2PServerPeer'].Update = function(deltaTime) end

---`Method Private Instance`
---@param inc Barotrauma.Networking.IReadMessage
_G['SteamP2PServerPeer'].HandleDataMessage = function(inc) end

---`Method Public Instance Virtual`
_G['SteamP2PServerPeer'].InitializeSteamServerCallbacks = function() end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param conn Barotrauma.Networking.NetworkConnection
---@param deliveryMethod Barotrauma.Networking.DeliveryMethod
---@param compressPastThreshold? System.Boolean|boolean
_G['SteamP2PServerPeer'].Send = function(msg, conn, deliveryMethod, compressPastThreshold) end

---`Method Private Instance`
---@param steamId Barotrauma.Networking.SteamId
---@param peerDisconnectPacket Barotrauma.Networking.PeerDisconnectPacket
_G['SteamP2PServerPeer'].SendDisconnectMessage = function(steamId, peerDisconnectPacket) end

---`Method Public Instance Virtual`
---@param conn Barotrauma.Networking.NetworkConnection
---@param peerDisconnectPacket Barotrauma.Networking.PeerDisconnectPacket
_G['SteamP2PServerPeer'].Disconnect = function(conn, peerDisconnectPacket) end

---`Method NonPublic Instance Virtual`
---@param conn Barotrauma.Networking.NetworkConnection
---@param headers Barotrauma.Networking.PeerPacketHeaders
---@param body Barotrauma.INetSerializableStruct
_G['SteamP2PServerPeer'].SendMsgInternal = function(conn, headers, body) end

---`Method Private Instance`
---@param connSteamId Barotrauma.Networking.SteamId
---@param headers Barotrauma.Networking.PeerPacketHeaders
---@param body Barotrauma.INetSerializableStruct
_G['SteamP2PServerPeer'].SendMsgInternal = function(connSteamId, headers, body) end

---`Method Private Static`
---@param msg Barotrauma.Networking.IWriteMessage
_G['SteamP2PServerPeer'].ForwardToOwnerProcess = function(msg) end

---`Method NonPublic Instance Virtual`
---@param packet Barotrauma.Networking.ClientSteamTicketAndVersionPacket
---@param pendingClient Barotrauma.Networking.ServerPeer.PendingClient
_G['SteamP2PServerPeer'].ProcessAuthTicket = function(packet, pendingClient) end

---`Constructor Public Instance`
---@param steamId Barotrauma.Networking.SteamId
---@param ownerKey System.Int32|integer
---@param settings Barotrauma.Networking.ServerSettings
---@param callbacks Barotrauma.Networking.ServerPeer.Callbacks
---@return Barotrauma.Networking.SteamP2PServerPeer
_G['SteamP2PServerPeer'] = function(steamId, ownerKey, settings, callbacks) end

---`Constructor Public Instance`
---@param steamId Barotrauma.Networking.SteamId
---@param ownerKey System.Int32|integer
---@param settings Barotrauma.Networking.ServerSettings
---@param callbacks Barotrauma.Networking.ServerPeer.Callbacks
---@return Barotrauma.Networking.SteamP2PServerPeer
_G['SteamP2PServerPeer'].__new = function(steamId, ownerKey, settings, callbacks) end

