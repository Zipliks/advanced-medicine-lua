---@meta
---@class Barotrauma.LuaCsNetworking : System.Object
---`Field Public Instance`
---@field RestrictMessageSize System.Boolean|boolean
---`Field Public Instance`
---@field LuaCsNetReceives System.Collections.Generic.Dictionary*1System*String*1Barotrauma*LuaCsAction|{[System.String|string]:Barotrauma.LuaCsAction|(fun(...:System.Object))}
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field LastClientListUpdateID System.UInt16|integer
_G['Networking'] = {}

---`Method Public Instance`
---@param netMessage Barotrauma.Networking.IReadMessage
---@param header Barotrauma.Networking.ServerPacketHeader
---@param client? Barotrauma.Networking.Client
_G['Networking'].NetMessageReceived = function(netMessage, header, client) end

---`Method Public Instance`
---@param netMessageName System.String|string
---@param callback Barotrauma.LuaCsAction|(fun(...:System.Object))
_G['Networking'].Receive = function(netMessageName, callback) end

---`Method Public Instance`
---@overload fun(netMessageName:System.String|string):Barotrauma.Networking.IWriteMessage
---@return Barotrauma.Networking.IWriteMessage
_G['Networking'].Start = function() end

---`Method Public Instance`
---@param netMessage Barotrauma.Networking.IWriteMessage
---@param deliveryMethod? Barotrauma.Networking.DeliveryMethod
_G['Networking'].Send = function(netMessage, deliveryMethod) end

---`Method Public Instance`
---@param url System.String|string
---@param callback Barotrauma.LuaCsAction|(fun(...:System.Object))
---@param data? System.String|string
---@param method? System.String|string
---@param contentType? System.String|string
_G['Networking'].HttpRequest = function(url, callback, data, method, contentType) end

---`Method Public Instance`
---@param url System.String|string
---@param callback Barotrauma.LuaCsAction|(fun(...:System.Object))
---@param data System.String|string
---@param contentType? System.String|string
_G['Networking'].HttpPost = function(url, callback, data, contentType) end

---`Method Public Instance`
---@param url System.String|string
---@param callback Barotrauma.LuaCsAction|(fun(...:System.Object))
_G['Networking'].HttpGet = function(url, callback) end

---`Method Public Static`
---@param listener System.Net.HttpListener
---@param onRequestReceived Barotrauma.LuaCsAction|(fun(...:System.Object))
_G['Networking'].HandleIncomingConnections = function(listener, onRequestReceived) end

---`Method Public Instance`
---@param address System.String|string
---@param onRequestReceived Barotrauma.LuaCsAction|(fun(...:System.Object))
---@return Barotrauma.LuaCsNetworking.HttpListener
_G['Networking'].StartHttpServer = function(address, onRequestReceived) end

---`Method Public Instance`
---@param entity Barotrauma.Networking.INetSerializable
---@param extraData Barotrauma.Networking.NetEntityEvent.IData
_G['Networking'].CreateEntityEvent = function(entity, extraData) end

---`Constructor Public Instance`
---@return Barotrauma.LuaCsNetworking
_G['Networking'] = function() end

---`Constructor Public Instance`
---@return Barotrauma.LuaCsNetworking
_G['Networking'].__new = function() end

