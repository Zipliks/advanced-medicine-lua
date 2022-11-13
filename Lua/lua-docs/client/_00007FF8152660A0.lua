---@meta
---@class Barotrauma.Networking.VoipCapture : Barotrauma.Networking.VoipQueue
---`Field Private Instance`
---@field captureDevice System.IntPtr
---`Field Private Instance`
---@field captureThread System.Threading.Thread
---`Field Private Instance`
---@field capturing System.Boolean|boolean
---`Field Private Instance`
---@field encoder Concentus.Structs.OpusEncoder
---`Field Public Instance`
---@field LastEnqueueAudio System.DateTime
---`Field Public Instance`
---@field CanDetectDisconnect System.Boolean|boolean
---`Field Private Instance`
---@field nativeBuffer System.IntPtr
---`Field Private Instance`
---@field uncompressedBuffer System.Int16-arr|System.Int16|integer[]
---`Field Private Instance`
---@field prevUncompressedBuffer System.Int16-arr|System.Int16|integer[]
---`Field Private Instance`
---@field prevCaptured System.Boolean|boolean
---`Field Private Instance`
---@field captureTimer System.Int32|integer
---`Field Private Instance`
---@field overrideSound Barotrauma.Sounds.Sound
---`Field Private Instance`
---@field overridePos System.Int32|integer
---`Field Private Instance`
---@field overrideBuf System.Int16-arr|System.Int16|integer[]
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field Instance Barotrauma.Networking.VoipCapture
---`Getter Public Static`
---@field CaptureDeviceNames System.Collections.Generic.IReadOnlyList*1System*String|System.String|string[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field LastdB System.Double|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field LastAmplitude System.Double|number
---`Getter Public Instance`
---@field Gain System.Single|number
---`Getter Public Instance Virtual`
---<br/>`Setter NonPublic Instance Virtual`
---@field QueueID System.Byte|integer
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Disconnected System.Boolean|boolean
_G['VoipCapture'] = {}

---`Method Public Static`
---@param deviceName System.String|string
---@param storedBufferID? System.Nullable*1System*UInt16|integer
_G['VoipCapture'].Create = function(deviceName, storedBufferID) end

---`Method Public Static`
---@param deviceName System.String|string
_G['VoipCapture'].ChangeCaptureDevice = function(deviceName) end

---`Method Private Instance`
_G['VoipCapture'].UpdateCapture = function() end

---`Method Private Instance`
_G['VoipCapture'].FillBuffer = function() end

---`Method Public Instance`
---@param fileName System.String|string
_G['VoipCapture'].SetOverrideSound = function(fileName) end

---`Method Public Instance Virtual`
_G['VoipCapture'].Dispose = function() end

---`Constructor Private Instance`
---@param deviceName System.String|string
---@return Barotrauma.Networking.VoipCapture
_G['VoipCapture'] = function(deviceName) end

---`Constructor Private Instance`
---@param deviceName System.String|string
---@return Barotrauma.Networking.VoipCapture
_G['VoipCapture'].__new = function(deviceName) end

