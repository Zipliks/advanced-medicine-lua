---@meta
---@class Barotrauma.Sounds.SoundManager : System.Object
---`Field Private Instance`
---@field alcDevice System.IntPtr
---`Field Private Instance`
---@field alcContext System.IntPtr
---`Field Private Instance`
---@field sourcePools Barotrauma.Sounds.SoundSourcePool-arr|Barotrauma.Sounds.SoundSourcePool[]
---`Field Private Instance`
---@field loadedSounds System.Collections.Generic.List*1Barotrauma*Sounds*Sound|Barotrauma.Sounds.Sound[]
---`Field Private Instance`
---@field playingChannels Barotrauma.Sounds.SoundChannel-arr-arr|Barotrauma.Sounds.SoundChannel-arr|Barotrauma.Sounds.SoundChannel[][]
---`Field Private Instance`
---@field threadDeathMutex System.Object
---`Field Private Instance`
---@field streamingThread System.Threading.Thread
---`Field Private Instance`
---@field listenerPosition Microsoft.Xna.Framework.Vector3
---`Field Private Instance`
---@field listenerOrientation System.Single-arr|System.Single|number[]
---`Field Private Instance`
---@field listenerGain System.Single|number
---`Field Private Instance`
---@field voipAttenuatedGain System.Single|number
---`Field Private Instance`
---@field lastAttenuationTime System.Double|number
---`Field Private Instance`
---@field categoryModifiers System.Collections.Generic.Dictionary*1System*String*1Barotrauma*Sounds*SoundManager*CategoryModifier|{[System.String|string]:Barotrauma.Sounds.SoundManager.CategoryModifier}
---`Field Private Instance`
---@field areStreamsPlaying System.Boolean|boolean
---`Field Private Instance`
---@field streamMre System.Threading.ManualResetEvent
---`Field Public Static`
---@field SOURCE_COUNT System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Disabled System.Boolean|boolean
---`Getter Public Instance`
---@field LoadedSounds System.Collections.Generic.IReadOnlyList*1Barotrauma*Sounds*Sound|Barotrauma.Sounds.Sound[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field CanDetectDisconnect System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Disconnected System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ListenerPosition Microsoft.Xna.Framework.Vector3
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ListenerTargetVector Microsoft.Xna.Framework.Vector3
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ListenerUpVector Microsoft.Xna.Framework.Vector3
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ListenerGain System.Single|number
---`Getter Public Instance`
---@field PlaybackAmplitude System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field CompressionDynamicRangeGain System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field VoipAttenuatedGain System.Single|number
---`Getter Public Instance`
---@field LoadedSoundCount System.Int32|integer
---`Getter Public Instance`
---@field UniqueLoadedSoundCount System.Int32|integer
_G['SoundManager'] = {}

---`Method Private Static`
---@param deviceName System.String|string
_G['SoundManager'].SetAudioOutputDevice = function(deviceName) end

---`Method Public Instance`
---@param deviceName System.String|string
---@return System.Boolean|boolean
_G['SoundManager'].InitializeAlcDevice = function(deviceName) end

---`Method Public Instance`
---@overload fun(filename:System.String|string, stream?:System.Boolean|boolean):Barotrauma.Sounds.Sound
---@param element Barotrauma.ContentXElement
---@param stream? System.Boolean|boolean
---@param overrideFilePath? System.String|string
---@return Barotrauma.Sounds.Sound
_G['SoundManager'].LoadSound = function(element, stream, overrideFilePath) end

---`Method Public Instance`
---@param poolIndex Barotrauma.Sounds.SoundManager.SourcePoolIndex
---@param ind System.Int32|integer
---@return Barotrauma.Sounds.SoundChannel
_G['SoundManager'].GetSoundChannelFromIndex = function(poolIndex, ind) end

---`Method Public Instance`
---@param poolIndex Barotrauma.Sounds.SoundManager.SourcePoolIndex
---@param srcInd System.Int32|integer
---@return System.UInt32|integer
_G['SoundManager'].GetSourceFromIndex = function(poolIndex, srcInd) end

---`Method Public Instance`
---@param newChannel Barotrauma.Sounds.SoundChannel
---@return System.Int32|integer
_G['SoundManager'].AssignFreeSourceToChannel = function(newChannel) end

---`Method Public Instance`
---@param sound Barotrauma.Sounds.Sound
---@return System.Boolean|boolean
_G['SoundManager'].IsPlaying = function(sound) end

---`Method Public Instance`
---@param sound Barotrauma.Sounds.Sound
---@return System.Int32|integer
_G['SoundManager'].CountPlayingInstances = function(sound) end

---`Method Public Instance`
---@param sound Barotrauma.Sounds.Sound
---@return Barotrauma.Sounds.SoundChannel
_G['SoundManager'].GetChannelFromSound = function(sound) end

---`Method Public Instance`
---@param sound Barotrauma.Sounds.Sound
_G['SoundManager'].KillChannels = function(sound) end

---`Method Public Instance`
---@param sound Barotrauma.Sounds.Sound
_G['SoundManager'].RemoveSound = function(sound) end

---`Method Public Instance`
---@param sound Barotrauma.Sounds.Sound
---@param pos System.Int32|integer
_G['SoundManager'].MoveSoundToPosition = function(sound, pos) end

---`Method Public Instance`
---@param category System.String|string
---@param gain System.Single|number
---@param index? System.Int32|integer
_G['SoundManager'].SetCategoryGainMultiplier = function(category, gain, index) end

---`Method Public Instance`
---@param category System.String|string
---@param index? System.Int32|integer
---@return System.Single|number
_G['SoundManager'].GetCategoryGainMultiplier = function(category, index) end

---`Method Public Instance`
---@param category System.String|string
---@param muffle System.Boolean|boolean
_G['SoundManager'].SetCategoryMuffle = function(category, muffle) end

---`Method Public Instance`
---@param category System.String|string
---@return System.Boolean|boolean
_G['SoundManager'].GetCategoryMuffle = function(category) end

---`Method Public Instance`
_G['SoundManager'].Update = function() end

---`Method Public Instance`
_G['SoundManager'].ApplySettings = function() end

---`Method Public Instance`
_G['SoundManager'].InitStreamThread = function() end

---`Method Private Instance`
_G['SoundManager'].UpdateStreaming = function() end

---`Method Public Instance`
_G['SoundManager'].ForceStreamUpdate = function() end

---`Method Private Instance`
_G['SoundManager'].ReloadSounds = function() end

---`Method Private Instance`
---@param keepSounds System.Boolean|boolean
_G['SoundManager'].ReleaseResources = function(keepSounds) end

---`Method Public Instance Virtual`
_G['SoundManager'].Dispose = function() end

---`Constructor Public Instance`
---@return Barotrauma.Sounds.SoundManager
_G['SoundManager'] = function() end

---`Constructor Public Instance`
---@return Barotrauma.Sounds.SoundManager
_G['SoundManager'].__new = function() end

