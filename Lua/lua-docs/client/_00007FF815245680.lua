---@meta
---@class Barotrauma.Networking.ReadWriteMessage : System.Object
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
---`Getter Public Instance Virtual`
---@field Sender Barotrauma.Networking.NetworkConnection
_G['ReadWriteMessage'] = {}

---`Method Public Instance Virtual`
---@param val System.Boolean|boolean
_G['ReadWriteMessage'].WriteBoolean = function(val) end

---`Method Public Instance Virtual`
_G['ReadWriteMessage'].WritePadBits = function() end

---`Method Public Instance Virtual`
---@param val System.Byte|integer
_G['ReadWriteMessage'].WriteByte = function(val) end

---`Method Public Instance Virtual`
---@param val System.UInt16|integer
_G['ReadWriteMessage'].WriteUInt16 = function(val) end

---`Method Public Instance Virtual`
---@param val System.Int16|integer
_G['ReadWriteMessage'].WriteInt16 = function(val) end

---`Method Public Instance Virtual`
---@param val System.UInt32|integer
_G['ReadWriteMessage'].WriteUInt32 = function(val) end

---`Method Public Instance Virtual`
---@param val System.Int32|integer
_G['ReadWriteMessage'].WriteInt32 = function(val) end

---`Method Public Instance Virtual`
---@param val System.UInt64|integer
_G['ReadWriteMessage'].WriteUInt64 = function(val) end

---`Method Public Instance Virtual`
---@param val System.Int64|integer
_G['ReadWriteMessage'].WriteInt64 = function(val) end

---`Method Public Instance Virtual`
---@param val System.Single|number
_G['ReadWriteMessage'].WriteSingle = function(val) end

---`Method Public Instance Virtual`
---@param val System.Double|number
_G['ReadWriteMessage'].WriteDouble = function(val) end

---`Method Public Instance Virtual`
---@param val Microsoft.Xna.Framework.Color
_G['ReadWriteMessage'].WriteColorR8G8B8 = function(val) end

---`Method Public Instance Virtual`
---@param val Microsoft.Xna.Framework.Color
_G['ReadWriteMessage'].WriteColorR8G8B8A8 = function(val) end

---`Method Public Instance Virtual`
---@param val System.UInt32|integer
_G['ReadWriteMessage'].WriteVariableUInt32 = function(val) end

---`Method Public Instance Virtual`
---@param val System.String|string
_G['ReadWriteMessage'].WriteString = function(val) end

---`Method Public Instance Virtual`
---@param val Barotrauma.Identifier
_G['ReadWriteMessage'].WriteIdentifier = function(val) end

---`Method Public Instance Virtual`
---@param val System.Int32|integer
---@param min System.Int32|integer
---@param max System.Int32|integer
_G['ReadWriteMessage'].WriteRangedInteger = function(val, min, max) end

---`Method Public Instance Virtual`
---@param val System.Single|number
---@param min System.Single|number
---@param max System.Single|number
---@param bitCount System.Int32|integer
_G['ReadWriteMessage'].WriteRangedSingle = function(val, min, max, bitCount) end

---`Method Public Instance Virtual`
---@param val System.Byte-arr|System.Byte|integer[]
---@param startPos System.Int32|integer
---@param length System.Int32|integer
_G['ReadWriteMessage'].WriteBytes = function(val, startPos, length) end

---`Method Public Instance Virtual`
---@return System.Boolean|boolean
_G['ReadWriteMessage'].ReadBoolean = function() end

---`Method Public Instance Virtual`
_G['ReadWriteMessage'].ReadPadBits = function() end

---`Method Public Instance Virtual`
---@return System.Byte|integer
_G['ReadWriteMessage'].ReadByte = function() end

---`Method Public Instance Virtual`
---@return System.Byte|integer
_G['ReadWriteMessage'].PeekByte = function() end

---`Method Public Instance Virtual`
---@return System.UInt16|integer
_G['ReadWriteMessage'].ReadUInt16 = function() end

---`Method Public Instance Virtual`
---@return System.Int16|integer
_G['ReadWriteMessage'].ReadInt16 = function() end

---`Method Public Instance Virtual`
---@return System.UInt32|integer
_G['ReadWriteMessage'].ReadUInt32 = function() end

---`Method Public Instance Virtual`
---@return System.Int32|integer
_G['ReadWriteMessage'].ReadInt32 = function() end

---`Method Public Instance Virtual`
---@return System.UInt64|integer
_G['ReadWriteMessage'].ReadUInt64 = function() end

---`Method Public Instance Virtual`
---@return System.Int64|integer
_G['ReadWriteMessage'].ReadInt64 = function() end

---`Method Public Instance Virtual`
---@return System.Single|number
_G['ReadWriteMessage'].ReadSingle = function() end

---`Method Public Instance Virtual`
---@return System.Double|number
_G['ReadWriteMessage'].ReadDouble = function() end

---`Method Public Instance Virtual`
---@return System.UInt32|integer
_G['ReadWriteMessage'].ReadVariableUInt32 = function() end

---`Method Public Instance Virtual`
---@return System.String|string
_G['ReadWriteMessage'].ReadString = function() end

---`Method Public Instance Virtual`
---@return Barotrauma.Identifier
_G['ReadWriteMessage'].ReadIdentifier = function() end

---`Method Public Instance Virtual`
---@return Microsoft.Xna.Framework.Color
_G['ReadWriteMessage'].ReadColorR8G8B8 = function() end

---`Method Public Instance Virtual`
---@return Microsoft.Xna.Framework.Color
_G['ReadWriteMessage'].ReadColorR8G8B8A8 = function() end

---`Method Public Instance Virtual`
---@param min System.Int32|integer
---@param max System.Int32|integer
---@return System.Int32|integer
_G['ReadWriteMessage'].ReadRangedInteger = function(min, max) end

---`Method Public Instance Virtual`
---@param min System.Single|number
---@param max System.Single|number
---@param bitCount System.Int32|integer
---@return System.Single|number
_G['ReadWriteMessage'].ReadRangedSingle = function(min, max, bitCount) end

---`Method Public Instance Virtual`
---@param numberOfBytes System.Int32|integer
---@return System.Byte-arr|System.Byte|integer[]
_G['ReadWriteMessage'].ReadBytes = function(numberOfBytes) end

---`Method Public Instance Virtual`
---@param compressPastThreshold System.Boolean|boolean
---@param isCompressed System.Boolean-ref
---@param outLength System.Int32-ref
---@return System.Byte-arr|System.Byte|integer[]
_G['ReadWriteMessage'].PrepareForSending = function(compressPastThreshold, isCompressed, outLength) end

---`Constructor Public Instance`
---@overload fun():Barotrauma.Networking.ReadWriteMessage
---@param b System.Byte-arr|System.Byte|integer[]
---@param bitPos System.Int32|integer
---@param lBits System.Int32|integer
---@param copyBuf System.Boolean|boolean
---@return Barotrauma.Networking.ReadWriteMessage
_G['ReadWriteMessage'] = function(b, bitPos, lBits, copyBuf) end

---`Constructor Public Instance`
---@overload fun():Barotrauma.Networking.ReadWriteMessage
---@param b System.Byte-arr|System.Byte|integer[]
---@param bitPos System.Int32|integer
---@param lBits System.Int32|integer
---@param copyBuf System.Boolean|boolean
---@return Barotrauma.Networking.ReadWriteMessage
_G['ReadWriteMessage'].__new = function(b, bitPos, lBits, copyBuf) end

