---@meta
---@class Barotrauma.Sounds.SoundChannel : System.Object
---`Field Private Instance`
---@field streamShortBuffer System.Int16-arr|System.Int16|integer[]
---`Field Private Instance`
---@field debugName System.String|string
---`Field Private Instance`
---@field position System.Nullable*1Microsoft*Xna*Framework*Vector3
---`Field Private Instance`
---@field near System.Single|number
---`Field Private Instance`
---@field far System.Single|number
---`Field Private Instance`
---@field gain System.Single|number
---`Field Private Instance`
---@field looping System.Boolean|boolean
---`Field Public Instance`
---@field frequencyMultiplier System.Single|number
---`Field Private Instance`
---@field decayTimer System.Int32|integer
---`Field Private Instance`
---@field muffled System.Boolean|boolean
---`Field Private Instance`
---@field streamAmplitude System.Single|number
---`Field Private Instance`
---@field category System.String|string
---`Field Private Instance`
---@field streamSeekPos System.Int32|integer
---`Field Private Instance`
---@field buffersToRequeue System.Int32|integer
---`Field Private Instance`
---@field reachedEndSample System.Boolean|boolean
---`Field Private Instance`
---@field queueStartIndex System.Int32|integer
---`Field Private Instance`
---@field streamBuffers System.UInt32-arr|System.UInt32|integer[]
---`Field Private Instance`
---@field unqueuedBuffers System.UInt32-arr|System.UInt32|integer[]
---`Field Private Instance`
---@field streamBufferAmplitudes System.Single-arr|System.Single|number[]
---`Field Private Instance`
---@field mutex System.Object
---`Field Private Static`
---@field STREAM_BUFFER_SIZE System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Position System.Nullable*1Microsoft*Xna*Framework*Vector3
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Near System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Far System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Gain System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Looping System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field FrequencyMultiplier System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field FilledByNetwork System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Muffled System.Boolean|boolean
---`Getter Public Instance`
---@field CurrentAmplitude System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Category System.String|string
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Sound Barotrauma.Sounds.Sound
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ALSourceIndex System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field IsStream System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field StreamSeekPos System.Int32|integer
---`Getter Public Instance`
---@field IsPlaying System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field FadingOutAndDisposing System.Boolean|boolean
_G['SoundChannel'] = {}

---`Method Public Instance Virtual`
---@return System.String|string
_G['SoundChannel'].ToString = function() end

---`Method Public Instance`
_G['SoundChannel'].FadeOutAndDispose = function() end

---`Method Public Instance Virtual`
_G['SoundChannel'].Dispose = function() end

---`Method Public Instance`
_G['SoundChannel'].UpdateStream = function() end

---`Constructor Public Instance`
---@param sound Barotrauma.Sounds.Sound
---@param gain System.Single|number
---@param position System.Nullable*1Microsoft*Xna*Framework*Vector3
---@param freqMult System.Single|number
---@param near System.Single|number
---@param far System.Single|number
---@param category System.String|string
---@param muffle? System.Boolean|boolean
---@return Barotrauma.Sounds.SoundChannel
_G['SoundChannel'] = function(sound, gain, position, freqMult, near, far, category, muffle) end

---`Constructor Public Instance`
---@param sound Barotrauma.Sounds.Sound
---@param gain System.Single|number
---@param position System.Nullable*1Microsoft*Xna*Framework*Vector3
---@param freqMult System.Single|number
---@param near System.Single|number
---@param far System.Single|number
---@param category System.String|string
---@param muffle? System.Boolean|boolean
---@return Barotrauma.Sounds.SoundChannel
_G['SoundChannel'].__new = function(sound, gain, position, freqMult, near, far, category, muffle) end

