---@meta
---@class Barotrauma.Sounds.VoipSound : Barotrauma.Sounds.Sound
---`Field Private Instance`
---@field queue Barotrauma.Networking.VoipQueue
---`Field Private Instance`
---@field bufferID System.Int32|integer
---`Field Private Instance`
---@field soundChannel Barotrauma.Sounds.SoundChannel
---`Field Private Instance`
---@field decoder Concentus.Structs.OpusDecoder
---`Field Public Instance`
---@field UseRadioFilter System.Boolean|boolean
---`Field Public Instance`
---@field UseMuffleFilter System.Boolean|boolean
---`Field Private Instance`
---@field muffleFilters Barotrauma.Sounds.BiQuad-arr|Barotrauma.Sounds.BiQuad[]
---`Field Private Instance`
---@field radioFilters Barotrauma.Sounds.BiQuad-arr|Barotrauma.Sounds.BiQuad[]
---`Field Private Instance`
---@field gain System.Single|number
---`Field Private Static`
---@field PostRadioFilterBoost System.Single|number
---`Getter Public Instance Virtual`
---@field SourcePoolIndex Barotrauma.Sounds.SoundManager.SourcePoolIndex
---`Getter Public Instance`
---@field IsPlaying System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Near System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Far System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Gain System.Single|number
---`Getter Public Instance`
---@field CurrentAmplitude System.Single|number
_G['VoipSound'] = {}

---`Method Public Instance Virtual`
---@param playbackPos System.Int32|integer
---@return System.Single|number
_G['VoipSound'].GetAmplitudeAtPlaybackPos = function(playbackPos) end

---`Method Public Instance`
---@param pos System.Nullable*1Microsoft*Xna*Framework*Vector3
_G['VoipSound'].SetPosition = function(pos) end

---`Method Public Instance`
---@param near System.Single|number
---@param far System.Single|number
_G['VoipSound'].SetRange = function(near, far) end

---`Method Public Instance`
---@param buffer System.Int16-arr|System.Int16|integer[]
---@param readSamples System.Int32|integer
_G['VoipSound'].ApplyFilters = function(buffer, readSamples) end

---`Method Public Instance Virtual`
---@overload fun(gain:System.Single|number, range:System.Single|number, position:Microsoft.Xna.Framework.Vector2, muffle?:System.Boolean|boolean):Barotrauma.Sounds.SoundChannel
---@overload fun(position:System.Nullable*1Microsoft*Xna*Framework*Vector3, gain:System.Single|number, freqMult?:System.Single|number, muffle?:System.Boolean|boolean):Barotrauma.Sounds.SoundChannel
---@overload fun(gain:System.Single|number):Barotrauma.Sounds.SoundChannel
---@return Barotrauma.Sounds.SoundChannel
_G['VoipSound'].Play = function() end

---`Method Public Instance Virtual`
---@param samplePos System.Int32|integer
---@param buffer System.Int16-arr|System.Int16|integer[]
---@return System.Int32|integer
_G['VoipSound'].FillStreamBuffer = function(samplePos, buffer) end

---`Method Public Instance Virtual`
_G['VoipSound'].Dispose = function() end

---`Constructor Public Instance`
---@param name System.String|string
---@param owner Barotrauma.Sounds.SoundManager
---@param q Barotrauma.Networking.VoipQueue
---@return Barotrauma.Sounds.VoipSound
_G['VoipSound'] = function(name, owner, q) end

---`Constructor Public Instance`
---@param name System.String|string
---@param owner Barotrauma.Sounds.SoundManager
---@param q Barotrauma.Networking.VoipQueue
---@return Barotrauma.Sounds.VoipSound
_G['VoipSound'].__new = function(name, owner, q) end

