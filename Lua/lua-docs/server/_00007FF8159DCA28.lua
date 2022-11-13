---@meta
---@class Barotrauma.Networking.ServerPeer : System.Object
---`Field NonPublic Instance`
---@field callbacks Barotrauma.Networking.ServerPeer.Callbacks
---`Field NonPublic Instance`
---@field connectedClients System.Collections.Generic.List*1Barotrauma*Networking*NetworkConnection|Barotrauma.Networking.NetworkConnection[]
---`Field NonPublic Instance`
---@field pendingClients System.Collections.Generic.List*1Barotrauma*Networking*ServerPeer*PendingClient|Barotrauma.Networking.ServerPeer.PendingClient[]
---`Field NonPublic Instance`
---@field serverSettings Barotrauma.Networking.ServerSettings
---`Field NonPublic Instance`
---@field ownerKey Barotrauma.Option*1System*Int32
---`Field NonPublic Instance`
---@field OwnerConnection Barotrauma.Networking.NetworkConnection
_G['ServerPeer'] = {}

---`Method Public Instance Abstract Virtual`
_G['ServerPeer'].InitializeSteamServerCallbacks = function() end

---`Method Public Instance Abstract Virtual`
_G['ServerPeer'].Start = function() end

---`Method Public Instance Abstract Virtual`
_G['ServerPeer'].Close = function() end

---`Method Public Instance Abstract Virtual`
---@param deltaTime System.Single|number
_G['ServerPeer'].Update = function(deltaTime) end

---`Method NonPublic Instance`
---@param pendingClient Barotrauma.Networking.ServerPeer.PendingClient
---@param inc Barotrauma.Networking.IReadMessage
---@param initializationStep Barotrauma.Networking.ConnectionInitialization
_G['ServerPeer'].ReadConnectionInitializationStep = function(pendingClient, inc, initializationStep) end

---`Method NonPublic Instance Abstract Virtual`
---@param packet Barotrauma.Networking.ClientSteamTicketAndVersionPacket
---@param pendingClient Barotrauma.Networking.ServerPeer.PendingClient
_G['ServerPeer'].ProcessAuthTicket = function(packet, pendingClient) end

---`Method NonPublic Instance`
---@param pendingClient Barotrauma.Networking.ServerPeer.PendingClient
---@param banReason System.String|string
---@param duration System.Nullable*1System*TimeSpan
_G['ServerPeer'].BanPendingClient = function(pendingClient, banReason, duration) end

---`Method NonPublic Instance`
---@param pendingClient Barotrauma.Networking.ServerPeer.PendingClient
---@param banReason System.String-ref
---@return System.Boolean|boolean
_G['ServerPeer'].IsPendingClientBanned = function(pendingClient, banReason) end

---`Method NonPublic Instance Abstract Virtual`
---@param conn Barotrauma.Networking.NetworkConnection
---@param headers Barotrauma.Networking.PeerPacketHeaders
---@param body Barotrauma.INetSerializableStruct
_G['ServerPeer'].SendMsgInternal = function(conn, headers, body) end

---`Method NonPublic Instance`
---@param pendingClient Barotrauma.Networking.ServerPeer.PendingClient
_G['ServerPeer'].UpdatePendingClient = function(pendingClient) end

---`Method NonPublic Instance Virtual`
---@param pendingClient Barotrauma.Networking.ServerPeer.PendingClient
_G['ServerPeer'].CheckOwnership = function(pendingClient) end

---`Method Public Instance`
---@param pendingClient Barotrauma.Networking.ServerPeer.PendingClient
---@param peerDisconnectPacket Barotrauma.Networking.PeerDisconnectPacket
_G['ServerPeer'].RemovePendingClient = function(pendingClient, peerDisconnectPacket) end

---`Method Public Instance Abstract Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param conn Barotrauma.Networking.NetworkConnection
---@param deliveryMethod Barotrauma.Networking.DeliveryMethod
---@param compressPastThreshold? System.Boolean|boolean
_G['ServerPeer'].Send = function(msg, conn, deliveryMethod, compressPastThreshold) end

---`Method Public Instance Abstract Virtual`
---@param conn Barotrauma.Networking.NetworkConnection
---@param peerDisconnectPacket Barotrauma.Networking.PeerDisconnectPacket
_G['ServerPeer'].Disconnect = function(conn, peerDisconnectPacket) end

---`Constructor NonPublic Instance`
---@param callbacks Barotrauma.Networking.ServerPeer.Callbacks
---@return Barotrauma.Networking.ServerPeer
_G['ServerPeer'] = function(callbacks) end

---`Constructor NonPublic Instance`
---@param callbacks Barotrauma.Networking.ServerPeer.Callbacks
---@return Barotrauma.Networking.ServerPeer
_G['ServerPeer'].__new = function(callbacks) end

