---@meta
---@class Barotrauma.Sounds.OggSound : Barotrauma.Sounds.Sound
---`Field Private Instance`
---@field reader NVorbis.VorbisReader
---`Field Private Static`
---@field muffleFilters System.Collections.Generic.Dictionary*1System*Int32*1Barotrauma*Sounds*BiQuad|{[System.Int32|integer]:Barotrauma.Sounds.BiQuad}
---`Field Private Static`
---@field playbackAmplitude System.Collections.Generic.List*1System*Single|System.Single|number[]
---`Field Private Static`
---@field AMPLITUDE_SAMPLE_COUNT System.Int32|integer
_G['OggSound'] = {}

---`Method Public Instance Virtual`
---@param playbackPos System.Int32|integer
---@return System.Single|number
_G['OggSound'].GetAmplitudeAtPlaybackPos = function(playbackPos) end

---`Method Public Instance Virtual`
---@param samplePos System.Int32|integer
---@param buffer System.Int16-arr|System.Int16|integer[]
---@return System.Int32|integer
_G['OggSound'].FillStreamBuffer = function(samplePos, buffer) end

---`Method Private Static`
---@param buffer System.Single-arr|System.Single|number[]
---@param sampleRate System.Int32|integer
---@param channelCount System.Int32|integer
_G['OggSound'].MuffleBuffer = function(buffer, sampleRate, channelCount) end

---`Method Public Instance Virtual`
_G['OggSound'].InitializeALBuffers = function() end

---`Method Public Instance Virtual`
_G['OggSound'].FillBuffers = function() end

---`Method Public Instance Virtual`
_G['OggSound'].Dispose = function() end

---`Constructor Public Instance`
---@overload fun(owner:Barotrauma.Sounds.SoundManager, filename:System.String|string, stream:System.Boolean|boolean, xElement:System.Xml.Linq.XElement):Barotrauma.Sounds.OggSound
---@return Barotrauma.Sounds.OggSound
_G['OggSound'] = function() end

---`Constructor Public Instance`
---@overload fun(owner:Barotrauma.Sounds.SoundManager, filename:System.String|string, stream:System.Boolean|boolean, xElement:System.Xml.Linq.XElement):Barotrauma.Sounds.OggSound
---@return Barotrauma.Sounds.OggSound
_G['OggSound'].__new = function() end

---`Constructor Private Static`
---@overload fun(owner:Barotrauma.Sounds.SoundManager, filename:System.String|string, stream:System.Boolean|boolean, xElement:System.Xml.Linq.XElement):Barotrauma.Sounds.OggSound
---@return Barotrauma.Sounds.OggSound
_G['OggSound'] = function() end

---`Constructor Private Static`
---@overload fun(owner:Barotrauma.Sounds.SoundManager, filename:System.String|string, stream:System.Boolean|boolean, xElement:System.Xml.Linq.XElement):Barotrauma.Sounds.OggSound
---@return Barotrauma.Sounds.OggSound
_G['OggSound'].__new = function() end

