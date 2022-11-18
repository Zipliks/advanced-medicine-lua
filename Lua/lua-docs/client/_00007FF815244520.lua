---@meta
---@class Barotrauma.Networking.IWriteMessage
---`Getter Public Instance Abstract Virtual`
---<br/>`Setter Public Instance Abstract Virtual`
---@field BitPosition System.Int32|integer
---`Getter Public Instance Abstract Virtual`
---@field BytePosition System.Int32|integer
---`Getter Public Instance Abstract Virtual`
---@field Buffer System.Byte-arr|System.Byte|integer[]
---`Getter Public Instance Abstract Virtual`
---<br/>`Setter Public Instance Abstract Virtual`
---@field LengthBits System.Int32|integer
---`Getter Public Instance Abstract Virtual`
---@field LengthBytes System.Int32|integer
_G['IWriteMessage'] = {}

---`Method Public Instance Abstract Virtual`
---@param val System.Boolean|boolean
_G['IWriteMessage'].WriteBoolean = function(val) end

---`Method Public Instance Abstract Virtual`
_G['IWriteMessage'].WritePadBits = function() end

---`Method Public Instance Abstract Virtual`
---@param val System.Byte|integer
_G['IWriteMessage'].WriteByte = function(val) end

---`Method Public Instance Abstract Virtual`
---@param val System.Int16|integer
_G['IWriteMessage'].WriteInt16 = function(val) end

---`Method Public Instance Abstract Virtual`
---@param val System.UInt16|integer
_G['IWriteMessage'].WriteUInt16 = function(val) end

---`Method Public Instance Abstract Virtual`
---@param val System.Int32|integer
_G['IWriteMessage'].WriteInt32 = function(val) end

---`Method Public Instance Abstract Virtual`
---@param val System.UInt32|integer
_G['IWriteMessage'].WriteUInt32 = function(val) end

---`Method Public Instance Abstract Virtual`
---@param val System.Int64|integer
_G['IWriteMessage'].WriteInt64 = function(val) end

---`Method Public Instance Abstract Virtual`
---@param val System.UInt64|integer
_G['IWriteMessage'].WriteUInt64 = function(val) end

---`Method Public Instance Abstract Virtual`
---@param val System.Single|number
_G['IWriteMessage'].WriteSingle = function(val) end

---`Method Public Instance Abstract Virtual`
---@param val System.Double|number
_G['IWriteMessage'].WriteDouble = function(val) end

---`Method Public Instance Abstract Virtual`
---@param val Microsoft.Xna.Framework.Color
_G['IWriteMessage'].WriteColorR8G8B8 = function(val) end

---`Method Public Instance Abstract Virtual`
---@param val Microsoft.Xna.Framework.Color
_G['IWriteMessage'].WriteColorR8G8B8A8 = function(val) end

---`Method Public Instance Abstract Virtual`
---@param val System.UInt32|integer
_G['IWriteMessage'].WriteVariableUInt32 = function(val) end

---`Method Public Instance Abstract Virtual`
---@param val System.String|string
_G['IWriteMessage'].WriteString = function(val) end

---`Method Public Instance Abstract Virtual`
---@param val Barotrauma.Identifier
_G['IWriteMessage'].WriteIdentifier = function(val) end

---`Method Public Instance Abstract Virtual`
---@param val System.Int32|integer
---@param min System.Int32|integer
---@param max System.Int32|integer
_G['IWriteMessage'].WriteRangedInteger = function(val, min, max) end

---`Method Public Instance Abstract Virtual`
---@param val System.Single|number
---@param min System.Single|number
---@param max System.Single|number
---@param bitCount System.Int32|integer
_G['IWriteMessage'].WriteRangedSingle = function(val, min, max, bitCount) end

---`Method Public Instance Abstract Virtual`
---@param val System.Byte-arr|System.Byte|integer[]
---@param startIndex System.Int32|integer
---@param length System.Int32|integer
_G['IWriteMessage'].WriteBytes = function(val, startIndex, length) end

---`Method Public Instance Abstract Virtual`
---@param compressPastThreshold System.Boolean|boolean
---@param isCompressed System.Boolean-ref
---@param outLength System.Int32-ref
---@return System.Byte-arr|System.Byte|integer[]
_G['IWriteMessage'].PrepareForSending = function(compressPastThreshold, isCompressed, outLength) end

