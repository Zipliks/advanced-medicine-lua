---@meta
---@class Barotrauma.Networking.ReadOnlyMessage : System.Object
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
_G['ReadOnlyMessage'] = {}

---`Method Public Instance Virtual`
---@return System.Boolean|boolean
_G['ReadOnlyMessage'].ReadBoolean = function() end

---`Method Public Instance Virtual`
_G['ReadOnlyMessage'].ReadPadBits = function() end

---`Method Public Instance Virtual`
---@return System.Byte|integer
_G['ReadOnlyMessage'].ReadByte = function() end

---`Method Public Instance Virtual`
---@return System.Byte|integer
_G['ReadOnlyMessage'].PeekByte = function() end

---`Method Public Instance Virtual`
---@return System.UInt16|integer
_G['ReadOnlyMessage'].ReadUInt16 = function() end

---`Method Public Instance Virtual`
---@return System.Int16|integer
_G['ReadOnlyMessage'].ReadInt16 = function() end

---`Method Public Instance Virtual`
---@return System.UInt32|integer
_G['ReadOnlyMessage'].ReadUInt32 = function() end

---`Method Public Instance Virtual`
---@return System.Int32|integer
_G['ReadOnlyMessage'].ReadInt32 = function() end

---`Method Public Instance Virtual`
---@return System.UInt64|integer
_G['ReadOnlyMessage'].ReadUInt64 = function() end

---`Method Public Instance Virtual`
---@return System.Int64|integer
_G['ReadOnlyMessage'].ReadInt64 = function() end

---`Method Public Instance Virtual`
---@return System.Single|number
_G['ReadOnlyMessage'].ReadSingle = function() end

---`Method Public Instance Virtual`
---@return System.Double|number
_G['ReadOnlyMessage'].ReadDouble = function() end

---`Method Public Instance Virtual`
---@return System.UInt32|integer
_G['ReadOnlyMessage'].ReadVariableUInt32 = function() end

---`Method Public Instance Virtual`
---@return System.String|string
_G['ReadOnlyMessage'].ReadString = function() end

---`Method Public Instance Virtual`
---@return Barotrauma.Identifier
_G['ReadOnlyMessage'].ReadIdentifier = function() end

---`Method Public Instance Virtual`
---@return Microsoft.Xna.Framework.Color
_G['ReadOnlyMessage'].ReadColorR8G8B8 = function() end

---`Method Public Instance Virtual`
---@return Microsoft.Xna.Framework.Color
_G['ReadOnlyMessage'].ReadColorR8G8B8A8 = function() end

---`Method Public Instance Virtual`
---@param min System.Int32|integer
---@param max System.Int32|integer
---@return System.Int32|integer
_G['ReadOnlyMessage'].ReadRangedInteger = function(min, max) end

---`Method Public Instance Virtual`
---@param min System.Single|number
---@param max System.Single|number
---@param bitCount System.Int32|integer
---@return System.Single|number
_G['ReadOnlyMessage'].ReadRangedSingle = function(min, max, bitCount) end

---`Method Public Instance Virtual`
---@param numberOfBytes System.Int32|integer
---@return System.Byte-arr|System.Byte|integer[]
_G['ReadOnlyMessage'].ReadBytes = function(numberOfBytes) end

---`Constructor Public Instance`
---@param inBuf System.Byte-arr|System.Byte|integer[]
---@param isCompressed System.Boolean|boolean
---@param startPos System.Int32|integer
---@param byteLength System.Int32|integer
---@param sender Barotrauma.Networking.NetworkConnection
---@return Barotrauma.Networking.ReadOnlyMessage
_G['ReadOnlyMessage'] = function(inBuf, isCompressed, startPos, byteLength, sender) end

---`Constructor Public Instance`
---@param inBuf System.Byte-arr|System.Byte|integer[]
---@param isCompressed System.Boolean|boolean
---@param startPos System.Int32|integer
---@param byteLength System.Int32|integer
---@param sender Barotrauma.Networking.NetworkConnection
---@return Barotrauma.Networking.ReadOnlyMessage
_G['ReadOnlyMessage'].__new = function(inBuf, isCompressed, startPos, byteLength, sender) end

