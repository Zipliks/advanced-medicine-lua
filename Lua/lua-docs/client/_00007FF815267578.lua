---@meta
---@class Barotrauma.SoundPlayer : System.Object
---`Field Private Static`
---@field currentMusic Barotrauma.BackgroundMusic-arr|Barotrauma.BackgroundMusic[]
---`Field Private Static`
---@field musicChannel Barotrauma.Sounds.SoundChannel-arr|Barotrauma.Sounds.SoundChannel[]
---`Field Private Static`
---@field targetMusic Barotrauma.BackgroundMusic-arr|Barotrauma.BackgroundMusic[]
---`Field Private Static`
---@field previousDefaultMusic Barotrauma.BackgroundMusic
---`Field Private Static`
---@field updateMusicTimer System.Single|number
---`Field Private Static`
---@field waterAmbienceChannels System.Collections.Generic.HashSet*1Barotrauma*Sounds*SoundChannel|Barotrauma.Sounds.SoundChannel[]
---`Field Private Static`
---@field ambientSoundTimer System.Single|number
---`Field Private Static`
---@field ambientSoundInterval Microsoft.Xna.Framework.Vector2
---`Field Private Static`
---@field hullSoundChannel Barotrauma.Sounds.SoundChannel
---`Field Private Static`
---@field hullSoundSource Barotrauma.Hull
---`Field Private Static`
---@field hullSoundTimer System.Single|number
---`Field Private Static`
---@field hullSoundInterval Microsoft.Xna.Framework.Vector2
---`Field Private Static`
---@field targetFlowLeft System.Single-arr|System.Single|number[]
---`Field Private Static`
---@field targetFlowRight System.Single-arr|System.Single|number[]
---`Field Private Static`
---@field flowSoundChannels Barotrauma.Sounds.SoundChannel-arr|Barotrauma.Sounds.SoundChannel[]
---`Field Private Static`
---@field flowVolumeLeft System.Single-arr|System.Single|number[]
---`Field Private Static`
---@field flowVolumeRight System.Single-arr|System.Single|number[]
---`Field Private Static`
---@field fireSoundChannels Barotrauma.Sounds.SoundChannel-arr|Barotrauma.Sounds.SoundChannel[]
---`Field Private Static`
---@field fireVolumeLeft System.Single-arr|System.Single|number[]
---`Field Private Static`
---@field fireVolumeRight System.Single-arr|System.Single|number[]
---`Field Private Static`
---@field fireSoundTags System.String-arr|System.String|string[]
---`Field Private Static`
---@field firstTimeInMainMenu System.Boolean|boolean
---`Field Public Static`
---@field OverrideMusicDuration System.Nullable*1System*Single|number
---`Field Private Static`
---@field tempList System.Collections.Generic.List*1Barotrauma*DamageSound|Barotrauma.DamageSound[]
---`Field Private Static`
---@field MusicLerpSpeed System.Single|number
---`Field Private Static`
---@field UpdateMusicInterval System.Single|number
---`Field Private Static`
---@field MaxMusicChannels System.Int32|integer
---`Field Private Static`
---@field FlowSoundRange System.Single|number
---`Field Private Static`
---@field MaxFlowStrength System.Single|number
---`Field Private Static`
---@field FireSoundRange System.Single|number
---`Field Private Static`
---@field FireSoundMediumLimit System.Single|number
---`Field Private Static`
---@field FireSoundLargeLimit System.Single|number
---`Field Private Static`
---@field fireSizes System.Int32|integer
---`Getter Private Static`
---@field musicClips System.Collections.Generic.IEnumerable*1Barotrauma*BackgroundMusic|(fun():Barotrauma.BackgroundMusic)
---`Getter Private Static`
---@field waterAmbienceIn Barotrauma.Sounds.Sound
---`Getter Private Static`
---@field waterAmbienceOut Barotrauma.Sounds.Sound
---`Getter Private Static`
---@field waterAmbienceMoving Barotrauma.Sounds.Sound
---`Getter Public Static`
---@field FlowSounds System.Collections.Generic.IReadOnlyList*1Barotrauma*SoundPrefab|Barotrauma.SoundPrefab[]
---`Getter Public Static`
---@field SplashSounds System.Collections.Generic.IReadOnlyList*1Barotrauma*SoundPrefab|Barotrauma.SoundPrefab[]
---`Getter Private Static`
---@field damageSounds System.Collections.Generic.IEnumerable*1Barotrauma*DamageSound|(fun():Barotrauma.DamageSound)
---`Getter Private Static`
---@field startUpSound Barotrauma.Sounds.Sound
---`Getter Public Static`
---<br/>`Setter Public Static`
---@field OverrideMusicType Barotrauma.Identifier
_G['SoundPlayer'] = {}

---`Method Public Static`
---@param deltaTime System.Single|number
_G['SoundPlayer'].Update = function(deltaTime) end

---`Method Private Static`
---@param ambienceVolume System.Single|number
---@param deltaTime System.Single|number
_G['SoundPlayer'].UpdateWaterAmbience = function(ambienceVolume, deltaTime) end

---`Method Private Static`
---@param deltaTime System.Single|number
_G['SoundPlayer'].UpdateWaterFlowSounds = function(deltaTime) end

---`Method Private Static`
---@param deltaTime System.Single|number
_G['SoundPlayer'].UpdateFireSounds = function(deltaTime) end

---`Method Private Static`
---@param deltaTime System.Single|number
_G['SoundPlayer'].UpdateRandomAmbience = function(deltaTime) end

---`Method Private Static`
---@param deltaTime System.Single|number
_G['SoundPlayer'].UpdateHullSounds = function(deltaTime) end

---`Method Public Static`
---@param soundTag System.String|string
---@return Barotrauma.Sounds.Sound
_G['SoundPlayer'].GetSound = function(soundTag) end

---`Method Public Static`
---@overload fun(soundTag:System.String|string, volume?:System.Single|number):Barotrauma.Sounds.SoundChannel
---@overload fun(soundTag:System.String|string, position:Microsoft.Xna.Framework.Vector2, volume?:System.Nullable*1System*Single|number, range?:System.Nullable*1System*Single|number, hullGuess?:Barotrauma.Hull):Barotrauma.Sounds.SoundChannel
---@param sound Barotrauma.Sounds.Sound
---@param position Microsoft.Xna.Framework.Vector2
---@param volume? System.Nullable*1System*Single|number
---@param range? System.Nullable*1System*Single|number
---@param freqMult? System.Nullable*1System*Single|number
---@param hullGuess? Barotrauma.Hull
---@param ignoreMuffling? System.Boolean|boolean
---@return Barotrauma.Sounds.SoundChannel
_G['SoundPlayer'].PlaySound = function(sound, position, volume, range, freqMult, hullGuess, ignoreMuffling) end

---`Method Public Static`
_G['SoundPlayer'].DisposeDisabledMusic = function() end

---`Method Private Static`
---@param deltaTime System.Single|number
_G['SoundPlayer'].UpdateMusic = function(deltaTime) end

---`Method Private Static`
---@param index System.Int32|integer
_G['SoundPlayer'].DisposeMusicChannel = function(index) end

---`Method Private Static`
---@param musicType Barotrauma.Identifier
---@param currentIntensity System.Single|number
---@return System.Collections.Generic.IEnumerable*1Barotrauma*BackgroundMusic|(fun():Barotrauma.BackgroundMusic)
_G['SoundPlayer'].GetSuitableMusicClips = function(musicType, currentIntensity) end

---`Method Private Static`
---@return Barotrauma.Identifier
_G['SoundPlayer'].GetCurrentMusicType = function() end

---`Method Public Static`
---@param listener Barotrauma.Character
---@param soundWorldPos Microsoft.Xna.Framework.Vector2
---@param range System.Single|number
---@param hullGuess Barotrauma.Hull
---@return System.Boolean|boolean
_G['SoundPlayer'].ShouldMuffleSound = function(listener, soundWorldPos, range, hullGuess) end

---`Method Public Static`
---@param worldPosition Microsoft.Xna.Framework.Vector2
---@param strength System.Single|number
_G['SoundPlayer'].PlaySplashSound = function(worldPosition, strength) end

---`Method Public Static`
---@overload fun(damageType:System.String|string, damage:System.Single|number, body:Barotrauma.PhysicsBody)
---@param damageType System.String|string
---@param damage System.Single|number
---@param position Microsoft.Xna.Framework.Vector2
---@param range? System.Single|number
---@param tags? System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
_G['SoundPlayer'].PlayDamageSound = function(damageType, damage, position, range, tags) end

---`Method Public Static`
---@overload fun(soundType:Barotrauma.GUISoundType)
---@param soundType System.Nullable*1Barotrauma*GUISoundType
_G['SoundPlayer'].PlayUISound = function(soundType) end

---`Constructor Private Static`
---@return Barotrauma.SoundPlayer
_G['SoundPlayer'] = function() end

---`Constructor Private Static`
---@return Barotrauma.SoundPlayer
_G['SoundPlayer'].__new = function() end

