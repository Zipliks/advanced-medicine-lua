---@meta
---@class Barotrauma.Networking.IReadMessage
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
---`Getter Public Instance Abstract Virtual`
---@field Sender Barotrauma.Networking.NetworkConnection
_G['IReadMessage'] = {}

---`Method Public Instance Abstract Virtual`
---@return System.Boolean|boolean
_G['IReadMessage'].ReadBoolean = function() end

---`Method Public Instance Abstract Virtual`
_G['IReadMessage'].ReadPadBits = function() end

---`Method Public Instance Abstract Virtual`
---@return System.Byte|integer
_G['IReadMessage'].ReadByte = function() end

---`Method Public Instance Abstract Virtual`
---@return System.Byte|integer
_G['IReadMessage'].PeekByte = function() end

---`Method Public Instance Abstract Virtual`
---@return System.UInt16|integer
_G['IReadMessage'].ReadUInt16 = function() end

---`Method Public Instance Abstract Virtual`
---@return System.Int16|integer
_G['IReadMessage'].ReadInt16 = function() end

---`Method Public Instance Abstract Virtual`
---@return System.UInt32|integer
_G['IReadMessage'].ReadUInt32 = function() end

---`Method Public Instance Abstract Virtual`
---@return System.Int32|integer
_G['IReadMessage'].ReadInt32 = function() end

---`Method Public Instance Abstract Virtual`
---@return System.UInt64|integer
_G['IReadMessage'].ReadUInt64 = function() end

---`Method Public Instance Abstract Virtual`
---@return System.Int64|integer
_G['IReadMessage'].ReadInt64 = function() end

---`Method Public Instance Abstract Virtual`
---@return System.Single|number
_G['IReadMessage'].ReadSingle = function() end

---`Method Public Instance Abstract Virtual`
---@return System.Double|number
_G['IReadMessage'].ReadDouble = function() end

---`Method Public Instance Abstract Virtual`
---@return System.UInt32|integer
_G['IReadMessage'].ReadVariableUInt32 = function() end

---`Method Public Instance Abstract Virtual`
---@return System.String|string
_G['IReadMessage'].ReadString = function() end

---`Method Public Instance Abstract Virtual`
---@return Barotrauma.Identifier
_G['IReadMessage'].ReadIdentifier = function() end

---`Method Public Instance Abstract Virtual`
---@return Microsoft.Xna.Framework.Color
_G['IReadMessage'].ReadColorR8G8B8 = function() end

---`Method Public Instance Abstract Virtual`
---@return Microsoft.Xna.Framework.Color
_G['IReadMessage'].ReadColorR8G8B8A8 = function() end

---`Method Public Instance Abstract Virtual`
---@param min System.Int32|integer
---@param max System.Int32|integer
---@return System.Int32|integer
_G['IReadMessage'].ReadRangedInteger = function(min, max) end

---`Method Public Instance Abstract Virtual`
---@param min System.Single|number
---@param max System.Single|number
---@param bitCount System.Int32|integer
---@return System.Single|number
_G['IReadMessage'].ReadRangedSingle = function(min, max, bitCount) end

---`Method Public Instance Abstract Virtual`
---@param numberOfBytes System.Int32|integer
---@return System.Byte-arr|System.Byte|integer[]
_G['IReadMessage'].ReadBytes = function(numberOfBytes) end

