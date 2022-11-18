---@meta
---@class Barotrauma.Sounds.VideoSound : Barotrauma.Sounds.Sound
---`Field Private Instance`
---@field mutex System.Object
---`Field Private Instance`
---@field sampleQueue System.Collections.Generic.Queue*1System*Int16-arr|(fun():System.Int16-arr|System.Int16|integer[])
---`Field Private Instance`
---@field soundChannel Barotrauma.Sounds.SoundChannel
---`Field Private Instance`
---@field video Barotrauma.Media.Video
_G['VideoSound'] = {}

---`Method Public Instance Virtual`
---@param playbackPos System.Int32|integer
---@return System.Single|number
_G['VideoSound'].GetAmplitudeAtPlaybackPos = function(playbackPos) end

---`Method Public Instance Virtual`
---@return System.Boolean|boolean
_G['VideoSound'].IsPlaying = function() end

---`Method Public Instance`
---@param buf System.Int16-arr|System.Int16|integer[]
_G['VideoSound'].Enqueue = function(buf) end

---`Method Public Instance Virtual`
---@overload fun(gain:System.Single|number, range:System.Single|number, position:Microsoft.Xna.Framework.Vector2, muffle?:System.Boolean|boolean):Barotrauma.Sounds.SoundChannel
---@overload fun(position:System.Nullable*1Microsoft*Xna*Framework*Vector3, gain:System.Single|number, freqMult?:System.Single|number, muffle?:System.Boolean|boolean):Barotrauma.Sounds.SoundChannel
---@overload fun(gain:System.Single|number):Barotrauma.Sounds.SoundChannel
---@return Barotrauma.Sounds.SoundChannel
_G['VideoSound'].Play = function() end

---`Method Public Instance Virtual`
---@param samplePos System.Int32|integer
---@param buffer System.Int16-arr|System.Int16|integer[]
---@return System.Int32|integer
_G['VideoSound'].FillStreamBuffer = function(samplePos, buffer) end

---`Method Public Instance Virtual`
_G['VideoSound'].Dispose = function() end

---`Constructor Public Instance`
---@param owner Barotrauma.Sounds.SoundManager
---@param filename System.String|string
---@param sampleRate System.Int32|integer
---@param channelCount System.Int32|integer
---@param vid Barotrauma.Media.Video
---@return Barotrauma.Sounds.VideoSound
_G['VideoSound'] = function(owner, filename, sampleRate, channelCount, vid) end

---`Constructor Public Instance`
---@param owner Barotrauma.Sounds.SoundManager
---@param filename System.String|string
---@param sampleRate System.Int32|integer
---@param channelCount System.Int32|integer
---@param vid Barotrauma.Media.Video
---@return Barotrauma.Sounds.VideoSound
_G['VideoSound'].__new = function(owner, filename, sampleRate, channelCount, vid) end

