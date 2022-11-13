---@meta
---@class Barotrauma.Networking.VoipConfig : System.Object
---`Field Public Static`
---@field SEND_INTERVAL System.TimeSpan
---`Field Public Static`
---@field FREQUENCY System.Int32|integer
---`Field Public Static`
---@field BITRATE System.Int32|integer
---`Field Public Static`
---@field BUFFER_SIZE System.Int32|integer
---`Field Public Static`
---@field MAX_COMPRESSED_SIZE System.Int32|integer
_G['VoipConfig'] = {}

---`Method Public Static`
---@return Concentus.Structs.OpusEncoder
_G['VoipConfig'].CreateEncoder = function() end

---`Method Public Static`
---@return Concentus.Structs.OpusDecoder
_G['VoipConfig'].CreateDecoder = function() end

---`Constructor Private Static`
---@return Barotrauma.Networking.VoipConfig
_G['VoipConfig'] = function() end

---`Constructor Private Static`
---@return Barotrauma.Networking.VoipConfig
_G['VoipConfig'].__new = function() end

