---@meta
---@class Barotrauma.Networking.ClientPeer : System.Object
---`Field NonPublic Instance`
---@field callbacks Barotrauma.Networking.ClientPeer.Callbacks
---`Field Public Instance`
---@field ServerEndpoint Barotrauma.Networking.Endpoint
---`Field NonPublic Instance`
---@field isOwner System.Boolean|boolean
---`Field NonPublic Instance`
---@field ownerKey Barotrauma.Option*1System*Int32
---`Field NonPublic Instance`
---@field isActive System.Boolean|boolean
---`Field NonPublic Instance`
---@field initializationStep Barotrauma.Networking.ConnectionInitialization
---`Field NonPublic Instance`
---@field passwordSalt System.Int32|integer
---`Field NonPublic Instance`
---@field steamAuthTicket Steamworks.AuthTicket
---`Field Private Instance`
---@field passwordMsgBox Barotrauma.GUIMessageBox
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ServerContentPackages System.Collections.Immutable.ImmutableArray*1Barotrauma*Networking*ServerContentPackage|Barotrauma.Networking.ServerContentPackage[]
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field ServerConnection Barotrauma.Networking.NetworkConnection
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ContentPackageOrderReceived System.Boolean|boolean
---`Getter Public Instance`
---@field WaitingForPassword System.Boolean|boolean
_G['ClientPeer'] = {}

---`Method Public Instance Abstract Virtual`
_G['ClientPeer'].Start = function() end

---`Method Public Instance Abstract Virtual`
---@param peerDisconnectPacket Barotrauma.Networking.PeerDisconnectPacket
_G['ClientPeer'].Close = function(peerDisconnectPacket) end

---`Method Public Instance Abstract Virtual`
---@param deltaTime System.Single|number
_G['ClientPeer'].Update = function(deltaTime) end

---`Method Public Instance Abstract Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param deliveryMethod Barotrauma.Networking.DeliveryMethod
---@param compressPastThreshold? System.Boolean|boolean
_G['ClientPeer'].Send = function(msg, deliveryMethod, compressPastThreshold) end

---`Method Public Instance Abstract Virtual`
---@param password System.String|string
_G['ClientPeer'].SendPassword = function(password) end

---`Method NonPublic Instance Abstract Virtual`
---@param headers Barotrauma.Networking.PeerPacketHeaders
---@param body Barotrauma.INetSerializableStruct
_G['ClientPeer'].SendMsgInternal = function(headers, body) end

---`Method NonPublic Instance`
---@param inc Barotrauma.Networking.ClientPeer.IncomingInitializationMessage
_G['ClientPeer'].ReadConnectionInitializationStep = function(inc) end

---`Constructor Public Instance`
---@param serverEndpoint Barotrauma.Networking.Endpoint
---@param callbacks Barotrauma.Networking.ClientPeer.Callbacks
---@param ownerKey Barotrauma.Option*1System*Int32
---@return Barotrauma.Networking.ClientPeer
_G['ClientPeer'] = function(serverEndpoint, callbacks, ownerKey) end

---`Constructor Public Instance`
---@param serverEndpoint Barotrauma.Networking.Endpoint
---@param callbacks Barotrauma.Networking.ClientPeer.Callbacks
---@param ownerKey Barotrauma.Option*1System*Int32
---@return Barotrauma.Networking.ClientPeer
_G['ClientPeer'].__new = function(serverEndpoint, callbacks, ownerKey) end

