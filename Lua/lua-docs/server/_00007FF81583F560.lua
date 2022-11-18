---@meta
---@class Barotrauma.INetSerializableStruct
_G['INetSerializableStruct'] = {}

---`Method Public Static`
---@param inc Barotrauma.Networking.IReadMessage
---@return Barotrauma.INetSerializableStruct.T
_G['INetSerializableStruct'].Read = function(inc) end

---`Method Public Static`
---@param inc Barotrauma.Networking.IReadMessage
---@param bitField Barotrauma.ReadOnlyBitField
---@return Barotrauma.INetSerializableStruct.T
_G['INetSerializableStruct'].ReadInternal = function(inc, bitField) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
_G['INetSerializableStruct'].Write = function(msg) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param bitField Barotrauma.WriteOnlyBitField
_G['INetSerializableStruct'].WriteInternal = function(msg, bitField) end

