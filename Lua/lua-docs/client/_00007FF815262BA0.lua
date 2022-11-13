---@meta
---@class Barotrauma.Networking.VoipQueue : System.Object
---`Field NonPublic Instance`
---@field bufferLengths System.Int32-arr|System.Int32|integer[]
---`Field NonPublic Instance`
---@field buffers System.Byte-arr-arr|System.Byte-arr|System.Byte|integer[][]
---`Field NonPublic Instance`
---@field newestBufferInd System.Int32|integer
---`Field NonPublic Instance`
---@field firstRead System.Boolean|boolean
---`Field Public Static`
---@field BUFFER_COUNT System.Int32|integer
---`Getter Public Instance`
---@field EnqueuedTotalLength System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field BufferToQueue System.Byte-arr|System.Byte|integer[]
---`Getter Public Instance Virtual`
---<br/>`Setter NonPublic Instance Virtual`
---@field QueueID System.Byte|integer
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field LatestBufferID System.UInt16|integer
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field CanSend System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field CanReceive System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ForceLocal System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field LastReadTime System.DateTime
_G['VoipQueue'] = {}

---`Method Public Instance`
---@param length System.Int32|integer
_G['VoipQueue'].EnqueueBuffer = function(length) end

---`Method Public Instance`
---@param id System.Int32|integer
---@param outSize System.Int32-ref
---@param outBuf System.Byte-arr-ref
_G['VoipQueue'].RetrieveBuffer = function(id, outSize, outBuf) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
_G['VoipQueue'].Write = function(msg) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IReadMessage
---@param discardData? System.Boolean|boolean
---@return System.Boolean|boolean
_G['VoipQueue'].Read = function(msg, discardData) end

---`Method Public Instance Virtual`
_G['VoipQueue'].Dispose = function() end

---`Constructor Public Instance`
---@param id System.Byte|integer
---@param canSend System.Boolean|boolean
---@param canReceive System.Boolean|boolean
---@return Barotrauma.Networking.VoipQueue
_G['VoipQueue'] = function(id, canSend, canReceive) end

---`Constructor Public Instance`
---@param id System.Byte|integer
---@param canSend System.Boolean|boolean
---@param canReceive System.Boolean|boolean
---@return Barotrauma.Networking.VoipQueue
_G['VoipQueue'].__new = function(id, canSend, canReceive) end

