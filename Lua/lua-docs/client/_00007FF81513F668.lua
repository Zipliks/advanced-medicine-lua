---@meta
---@class Barotrauma.CharacterTalent : System.Object
---`Field Public Instance`
---@field Prefab Barotrauma.TalentPrefab
---`Field Public Instance`
---@field AddedThisRound System.Boolean|boolean
---`Field Private Instance`
---@field characterAbilityGroupEffectDictionary System.Collections.Generic.Dictionary*1Barotrauma*AbilityEffectType*1System*Collections*Generic*List*2Barotrauma*Abilities*CharacterAbilityGroupEffect|{[Barotrauma.AbilityEffectType]:System.Collections.Generic.List*1Barotrauma*Abilities*CharacterAbilityGroupEffect|Barotrauma.Abilities.CharacterAbilityGroupEffect[]}
---`Field Private Instance`
---@field characterAbilityGroupIntervals System.Collections.Generic.List*1Barotrauma*Abilities*CharacterAbilityGroupInterval|Barotrauma.Abilities.CharacterAbilityGroupInterval[]
---`Getter Public Instance`
---@field Character Barotrauma.Character
---`Getter Public Instance`
---@field DebugIdentifier System.String|string
---`Getter Public Instance`
---@field UnlockedRecipes System.Collections.Generic.List*1Barotrauma*Identifier|Barotrauma.Identifier[]
_G['CharacterTalent'] = {}

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
_G['CharacterTalent'].UpdateTalent = function(deltaTime) end

---`Method Public Instance`
---@param abilityEffectType Barotrauma.AbilityEffectType
---@param abilityObject Barotrauma.Abilities.AbilityObject
_G['CharacterTalent'].CheckTalent = function(abilityEffectType, abilityObject) end

---`Method Public Instance`
---@param addingFirstTime System.Boolean|boolean
_G['CharacterTalent'].ActivateTalent = function(addingFirstTime) end

---`Method Private Instance`
---@param abilityGroup Barotrauma.ContentXElement
_G['CharacterTalent'].LoadAbilityGroupInterval = function(abilityGroup) end

---`Method Private Instance`
---@param abilityGroup Barotrauma.ContentXElement
_G['CharacterTalent'].LoadAbilityGroupEffect = function(abilityGroup) end

---`Method Public Instance`
---@param characterAbilityGroup Barotrauma.Abilities.CharacterAbilityGroupEffect
---@param abilityEffectType? Barotrauma.AbilityEffectType
_G['CharacterTalent'].AddAbilityGroupEffect = function(characterAbilityGroup, abilityEffectType) end

---`Method Public Static`
---@param characterTalent Barotrauma.CharacterTalent
---@param abilityEffectTypeString System.String|string
---@return Barotrauma.AbilityEffectType
_G['CharacterTalent'].ParseAbilityEffectType = function(characterTalent, abilityEffectTypeString) end

---`Constructor Public Instance`
---@param talentPrefab Barotrauma.TalentPrefab
---@param character Barotrauma.Character
---@return Barotrauma.CharacterTalent
_G['CharacterTalent'] = function(talentPrefab, character) end

---`Constructor Public Instance`
---@param talentPrefab Barotrauma.TalentPrefab
---@param character Barotrauma.Character
---@return Barotrauma.CharacterTalent
_G['CharacterTalent'].__new = function(talentPrefab, character) end

