---@meta
---@class Barotrauma.Networking.WriteOnlyMessage : System.Object
---`Field Private Instance`
---@field buf System.Byte-arr|System.Byte|integer[]
---`Field Private Instance`
---@field seekPos System.Int32|integer
---`Field Private Instance`
---@field lengthBits System.Int32|integer
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field BitPosition System.Int32|integer
---`Getter Public Instance Virtual`
---@field BytePosition System.Int32|integer
---`Getter Public Instance Virtual`
---@field Buffer System.Byte-arr|System.Byte|integer[]
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field LengthBits System.Int32|integer
---`Getter Public Instance Virtual`
---@field LengthBytes System.Int32|integer
_G['WriteOnlyMessage'] = {}

---`Method Public Instance Virtual`
---@param val System.Boolean|boolean
_G['WriteOnlyMessage'].WriteBoolean = function(val) end

---`Method Public Instance Virtual`
_G['WriteOnlyMessage'].WritePadBits = function() end

---`Method Public Instance Virtual`
---@param val System.Byte|integer
_G['WriteOnlyMessage'].WriteByte = function(val) end

---`Method Public Instance Virtual`
---@param val System.UInt16|integer
_G['WriteOnlyMessage'].WriteUInt16 = function(val) end

---`Method Public Instance Virtual`
---@param val System.Int16|integer
_G['WriteOnlyMessage'].WriteInt16 = function(val) end

---`Method Public Instance Virtual`
---@param val System.UInt32|integer
_G['WriteOnlyMessage'].WriteUInt32 = function(val) end

---`Method Public Instance Virtual`
---@param val System.Int32|integer
_G['WriteOnlyMessage'].WriteInt32 = function(val) end

---`Method Public Instance Virtual`
---@param val System.UInt64|integer
_G['WriteOnlyMessage'].WriteUInt64 = function(val) end

---`Method Public Instance Virtual`
---@param val System.Int64|integer
_G['WriteOnlyMessage'].WriteInt64 = function(val) end

---`Method Public Instance Virtual`
---@param val System.Single|number
_G['WriteOnlyMessage'].WriteSingle = function(val) end

---`Method Public Instance Virtual`
---@param val System.Double|number
_G['WriteOnlyMessage'].WriteDouble = function(val) end

---`Method Public Instance Virtual`
---@param val Microsoft.Xna.Framework.Color
_G['WriteOnlyMessage'].WriteColorR8G8B8 = function(val) end

---`Method Public Instance Virtual`
---@param val Microsoft.Xna.Framework.Color
_G['WriteOnlyMessage'].WriteColorR8G8B8A8 = function(val) end

---`Method Public Instance Virtual`
---@param val System.UInt32|integer
_G['WriteOnlyMessage'].WriteVariableUInt32 = function(val) end

---`Method Public Instance Virtual`
---@param val System.String|string
_G['WriteOnlyMessage'].WriteString = function(val) end

---`Method Public Instance Virtual`
---@param val Barotrauma.Identifier
_G['WriteOnlyMessage'].WriteIdentifier = function(val) end

---`Method Public Instance Virtual`
---@param val System.Int32|integer
---@param min System.Int32|integer
---@param max System.Int32|integer
_G['WriteOnlyMessage'].WriteRangedInteger = function(val, min, max) end

---`Method Public Instance Virtual`
---@param val System.Single|number
---@param min System.Single|number
---@param max System.Single|number
---@param bitCount System.Int32|integer
_G['WriteOnlyMessage'].WriteRangedSingle = function(val, min, max, bitCount) end

---`Method Public Instance Virtual`
---@param val System.Byte-arr|System.Byte|integer[]
---@param startPos System.Int32|integer
---@param length System.Int32|integer
_G['WriteOnlyMessage'].WriteBytes = function(val, startPos, length) end

---`Method Public Instance Virtual`
---@param compressPastThreshold System.Boolean|boolean
---@param isCompressed System.Boolean-ref
---@param length System.Int32-ref
---@return System.Byte-arr|System.Byte|integer[]
_G['WriteOnlyMessage'].PrepareForSending = function(compressPastThreshold, isCompressed, length) end

---`Constructor Public Instance`
---@return Barotrauma.Networking.WriteOnlyMessage
_G['WriteOnlyMessage'] = function() end

---`Constructor Public Instance`
---@return Barotrauma.Networking.WriteOnlyMessage
_G['WriteOnlyMessage'].__new = function() end

