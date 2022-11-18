---@meta
---@class Barotrauma.AfflictionPsychosis : Barotrauma.Affliction
---`Field Private Instance`
---@field createFireSourceTimer System.Single|number
---`Field Private Instance`
---@field fakeFireSources System.Collections.Generic.List*1Barotrauma*DummyFireSource|Barotrauma.DummyFireSource[]
---`Field Private Instance`
---@field currentFloodType Barotrauma.AfflictionPsychosis.FloodType
---`Field Private Instance`
---@field soundTimer System.Single|number
---`Field Private Instance`
---@field createFloodTimer System.Single|number
---`Field Private Instance`
---@field currentFloodState System.Single|number
---`Field Private Instance`
---@field currentFloodDuration System.Single|number
---`Field Private Instance`
---@field fakeBrokenInterval System.Single|number
---`Field Private Instance`
---@field fakeBrokenTimer System.Single|number
---`Field Private Instance`
---@field invisibleCharacterInterval System.Single|number
---`Field Private Instance`
---@field invisibleCharacterTimer System.Single|number
---`Field Private Static`
---@field MaxFakeFireSources System.Int32|integer
---`Field Private Static`
---@field MinFakeFireSourceInterval System.Single|number
---`Field Private Static`
---@field MaxFakeFireSourceInterval System.Single|number
---`Field Private Static`
---@field MinSoundInterval System.Single|number
---`Field Private Static`
---@field MaxSoundInterval System.Single|number
---`Field Private Static`
---@field MinFloodInterval System.Single|number
---`Field Private Static`
---@field MaxFloodInterval System.Single|number
---`Getter Public Instance`
---@field CurrentFloodType Barotrauma.AfflictionPsychosis.FloodType
_G['AfflictionPsychosis'] = {}

---`Method Private Instance`
---@param character Barotrauma.Character
---@param deltaTime System.Single|number
_G['AfflictionPsychosis'].UpdateSounds = function(character, deltaTime) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['AfflictionPsychosis'].UpdateFloods = function(deltaTime) end

---`Method Private Instance`
---@param character Barotrauma.Character
---@param deltaTime System.Single|number
_G['AfflictionPsychosis'].UpdateFires = function(character, deltaTime) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['AfflictionPsychosis'].UpdateInvisibleCharacters = function(deltaTime) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['AfflictionPsychosis'].UpdateFakeBroken = function(deltaTime) end

---`Method Private Instance`
---@param item Barotrauma.Item
---@return System.Boolean|boolean
_G['AfflictionPsychosis'].ShouldFakeBrokenItem = function(item) end

---`Method Public Instance Virtual`
---@param characterHealth Barotrauma.CharacterHealth
---@param targetLimb Barotrauma.Limb
---@param deltaTime System.Single|number
_G['AfflictionPsychosis'].Update = function(characterHealth, targetLimb, deltaTime) end

---`Method Private Instance`
---@param characterHealth Barotrauma.CharacterHealth
---@param targetLimb Barotrauma.Limb
---@param deltaTime System.Single|number
_G['AfflictionPsychosis'].UpdateProjSpecific = function(characterHealth, targetLimb, deltaTime) end

---`Constructor Public Instance`
---@param prefab Barotrauma.AfflictionPrefab
---@param strength System.Single|number
---@return Barotrauma.AfflictionPsychosis
_G['AfflictionPsychosis'] = function(prefab, strength) end

---`Constructor Public Instance`
---@param prefab Barotrauma.AfflictionPrefab
---@param strength System.Single|number
---@return Barotrauma.AfflictionPsychosis
_G['AfflictionPsychosis'].__new = function(prefab, strength) end

