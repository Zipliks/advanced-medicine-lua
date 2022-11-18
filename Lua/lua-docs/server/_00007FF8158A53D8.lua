---@meta
---@class Barotrauma.StatusEffect : System.Object
---`Field Private Instance`
---@field targetTypes Barotrauma.StatusEffect.TargetType
---`Field Public Instance`
---@field TargetSlot System.Int32|integer
---`Field Private Instance`
---@field requiredItems System.Collections.Generic.List*1Barotrauma*RelatedItem|Barotrauma.RelatedItem[]
---`Field Public Instance`
---@field propertyNames Barotrauma.Identifier-arr|Barotrauma.Identifier[]
---`Field Public Instance`
---@field propertyEffects System.Object-arr|System.Object[]
---`Field Private Instance`
---@field conditionalComparison Barotrauma.PropertyConditional.Comparison
---`Field Private Instance`
---@field propertyConditionals System.Collections.Generic.List*1Barotrauma*PropertyConditional|Barotrauma.PropertyConditional[]
---`Field Private Instance`
---@field setValue System.Boolean|boolean
---`Field Private Instance`
---@field disableDeltaTime System.Boolean|boolean
---`Field Private Instance`
---@field tags System.Collections.Generic.HashSet*1System*String|System.String|string[]
---`Field Private Instance`
---@field duration System.Single|number
---`Field Private Instance`
---@field lifeTime System.Single|number
---`Field Private Instance`
---@field lifeTimer System.Single|number
---`Field Public Instance`
---@field intervalTimer System.Single|number
---`Field Public Instance`
---@field CheckConditionalAlways System.Boolean|boolean
---`Field Public Instance`
---@field Stackable System.Boolean|boolean
---`Field Public Instance`
---@field Interval System.Single|number
---`Field Private Instance`
---@field useItemCount System.Int32|integer
---`Field Private Instance`
---@field removeItem System.Boolean|boolean
---`Field Private Instance`
---@field dropContainedItems System.Boolean|boolean
---`Field Private Instance`
---@field removeCharacter System.Boolean|boolean
---`Field Private Instance`
---@field breakLimb System.Boolean|boolean
---`Field Private Instance`
---@field hideLimb System.Boolean|boolean
---`Field Private Instance`
---@field hideLimbTimer System.Single|number
---`Field Public Instance`
---@field type Barotrauma.ActionType
---`Field Public Instance`
---@field Explosions System.Collections.Generic.List*1Barotrauma*Explosion|Barotrauma.Explosion[]
---`Field Private Instance`
---@field spawnItems System.Collections.Generic.List*1Barotrauma*StatusEffect*ItemSpawnInfo|Barotrauma.StatusEffect.ItemSpawnInfo[]
---`Field Private Instance`
---@field spawnItemRandomly System.Boolean|boolean
---`Field Private Instance`
---@field spawnCharacters System.Collections.Generic.List*1Barotrauma*StatusEffect*CharacterSpawnInfo|Barotrauma.StatusEffect.CharacterSpawnInfo[]
---`Field Public Instance`
---@field giveTalentInfos System.Collections.Generic.List*1Barotrauma*StatusEffect*GiveTalentInfo|Barotrauma.StatusEffect.GiveTalentInfo[]
---`Field Private Instance`
---@field aiTriggers System.Collections.Generic.List*1Barotrauma*AITrigger|Barotrauma.AITrigger[]
---`Field Private Instance`
---@field triggeredEvents System.Collections.Generic.List*1Barotrauma*EventPrefab|Barotrauma.EventPrefab[]
---`Field Private Instance`
---@field triggeredEventTargetTag Barotrauma.Identifier
---`Field Private Instance`
---@field triggeredEventEntityTag Barotrauma.Identifier
---`Field Private Instance`
---@field user Barotrauma.Character
---`Field Public Instance`
---@field FireSize System.Single|number
---`Field Public Instance`
---@field targetLimbs Barotrauma.LimbType-arr|Barotrauma.LimbType[]
---`Field Public Instance`
---@field SeverLimbsProbability System.Single|number
---`Field Public Instance`
---@field sourceBody Barotrauma.PhysicsBody
---`Field Public Instance`
---@field OnlyInside System.Boolean|boolean
---`Field Public Instance`
---@field OnlyOutside System.Boolean|boolean
---`Field Public Instance`
---@field OnlyPlayerTriggered System.Boolean|boolean
---`Field Public Instance`
---@field AllowWhenBroken System.Boolean|boolean
---`Field Public Instance`
---@field TargetIdentifiers System.Collections.Immutable.ImmutableHashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field Private Instance`
---@field requiredAfflictions System.Collections.Generic.HashSet*1System*ValueTuple*2Barotrauma*Identifier*2System*Single|System.ValueTuple*1Barotrauma*Identifier*1System*Single[]
---`Field Public Instance`
---@field AfflictionMultiplier System.Single|number
---`Field Private Instance`
---@field multiplyAfflictionsByMaxVitality System.Boolean|boolean
---`Field Public Instance`
---@field ReduceAffliction System.Collections.Generic.List*1System*ValueTuple*2Barotrauma*Identifier*2System*Single|System.ValueTuple*1Barotrauma*Identifier*1System*Single[]
---`Field Private Instance`
---@field talentTriggers System.Collections.Generic.List*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field Private Instance`
---@field giveExperiences System.Collections.Generic.List*1System*Int32|System.Int32|integer[]
---`Field Private Instance`
---@field giveSkills System.Collections.Generic.List*1Barotrauma*StatusEffect*GiveSkill|Barotrauma.StatusEffect.GiveSkill[]
---`Field Private Instance`
---@field luaHook System.Collections.Generic.List*1System*String|System.String|string[]
---`Field NonPublic Instance`
---@field currentTargets System.Collections.Generic.List*1Barotrauma*ISerializableEntity|Barotrauma.ISerializableEntity[]
---`Field Public Static`
---@field DurationList System.Collections.Generic.List*1Barotrauma*DurationListElement|Barotrauma.DurationListElement[]
---`Getter Public Instance`
---@field HasConditions System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Afflictions System.Collections.Generic.List*1Barotrauma*Affliction|Barotrauma.Affliction[]
---`Getter Public Instance`
---@field SpawnCharacters System.Collections.Generic.IEnumerable*1Barotrauma*StatusEffect*CharacterSpawnInfo|(fun():Barotrauma.StatusEffect.CharacterSpawnInfo)
---`Getter Public Instance`
---@field Duration System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Range System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Offset Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Tags System.String|string
_G['StatusEffect'] = {}

---`Method Public Static`
---@param element Barotrauma.ContentXElement
---@param parentDebugName System.String|string
---@return Barotrauma.StatusEffect
_G['StatusEffect'].Load = function(element, parentDebugName) end

---`Method Public Instance`
---@param targetType Barotrauma.StatusEffect.TargetType
---@return System.Boolean|boolean
_G['StatusEffect'].HasTargetType = function(targetType) end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['StatusEffect'].ReducesItemCondition = function() end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['StatusEffect'].IncreasesItemCondition = function() end

---`Method Public Instance`
---@param itemPrefab Barotrauma.ItemPrefab
---@return System.Boolean|boolean
_G['StatusEffect'].MatchesTagConditionals = function(itemPrefab) end

---`Method Public Instance`
---@param attackResult Barotrauma.AttackResult
---@return System.Boolean|boolean
_G['StatusEffect'].HasRequiredAfflictions = function(attackResult) end

---`Method Public Instance Virtual`
---@param entity Barotrauma.Entity
---@return System.Boolean|boolean
_G['StatusEffect'].HasRequiredItems = function(entity) end

---`Method Public Instance`
---@param worldPosition Microsoft.Xna.Framework.Vector2
---@param targets? System.Collections.Generic.List*1Barotrauma*ISerializableEntity|Barotrauma.ISerializableEntity[]
---@return System.Collections.Generic.IReadOnlyList*1Barotrauma*ISerializableEntity|Barotrauma.ISerializableEntity[]
_G['StatusEffect'].GetNearbyTargets = function(worldPosition, targets) end

---`Method Public Instance`
---@param targets System.Collections.Generic.IReadOnlyList*1Barotrauma*ISerializableEntity|Barotrauma.ISerializableEntity[]
---@return System.Boolean|boolean
_G['StatusEffect'].HasRequiredConditions = function(targets) end

---`Method Private Instance`
---@param targets System.Collections.Generic.IReadOnlyList*1Barotrauma*ISerializableEntity|Barotrauma.ISerializableEntity[]
---@param conditionals System.Collections.Generic.IReadOnlyList*1Barotrauma*PropertyConditional|Barotrauma.PropertyConditional[]
---@param targetingContainer? System.Boolean|boolean
---@return System.Boolean|boolean
_G['StatusEffect'].HasRequiredConditions = function(targets, conditionals, targetingContainer) end

---`Method NonPublic Instance`
---@overload fun(entity:Barotrauma.ISerializableEntity):System.Boolean|boolean
---@overload fun(itemComponent:Barotrauma.Items.Components.ItemComponent):System.Boolean|boolean
---@overload fun(item:Barotrauma.Item):System.Boolean|boolean
---@param character Barotrauma.Character
---@return System.Boolean|boolean
_G['StatusEffect'].IsValidTarget = function(character) end

---`Method Public Instance`
---@param user Barotrauma.Character
_G['StatusEffect'].SetUser = function(user) end

---`Method Public Instance Virtual`
---@overload fun(type:Barotrauma.ActionType, deltaTime:System.Single|number, entity:Barotrauma.Entity, target:Barotrauma.ISerializableEntity, worldPosition?:System.Nullable*1Microsoft*Xna*Framework*Vector2)
---@param type Barotrauma.ActionType
---@param deltaTime System.Single|number
---@param entity Barotrauma.Entity
---@param targets System.Collections.Generic.IReadOnlyList*1Barotrauma*ISerializableEntity|Barotrauma.ISerializableEntity[]
---@param worldPosition? System.Nullable*1Microsoft*Xna*Framework*Vector2
_G['StatusEffect'].Apply = function(type, deltaTime, entity, targets, worldPosition) end

---`Method NonPublic Instance`
---@param deltaTime System.Single|number
---@param entity Barotrauma.Entity
---@param targets System.Collections.Generic.IReadOnlyList*1Barotrauma*ISerializableEntity|Barotrauma.ISerializableEntity[]
---@param worldPosition? System.Nullable*1Microsoft*Xna*Framework*Vector2
_G['StatusEffect'].Apply = function(deltaTime, entity, targets, worldPosition) end

---`Method Private Instance`
---@param entity Barotrauma.Entity
---@return Barotrauma.Hull
_G['StatusEffect'].GetHull = function(entity) end

---`Method Private Instance`
---@param entity Barotrauma.Entity
---@param targets System.Collections.Generic.IReadOnlyList*1Barotrauma*ISerializableEntity|Barotrauma.ISerializableEntity[]
---@param worldPosition? System.Nullable*1Microsoft*Xna*Framework*Vector2
---@return Microsoft.Xna.Framework.Vector2
_G['StatusEffect'].GetPosition = function(entity, targets, worldPosition) end

---`Method Private Instance`
---@param target Barotrauma.ISerializableEntity
---@param property Barotrauma.SerializableProperty
---@param effectIndex System.Int32|integer
---@param deltaTime System.Single|number
_G['StatusEffect'].ApplyToProperty = function(target, property, effectIndex, deltaTime) end

---`Method Public Static`
---@param deltaTime System.Single|number
_G['StatusEffect'].UpdateAll = function(deltaTime) end

---`Method Private Instance`
---@param entity Barotrauma.Entity
---@param targetCharacter Barotrauma.Character
---@param deltaTime System.Single|number
---@return System.Single|number
_G['StatusEffect'].GetAfflictionMultiplier = function(entity, targetCharacter, deltaTime) end

---`Method Private Instance`
---@param affliction Barotrauma.Affliction
---@param entity Barotrauma.Entity
---@param targetCharacter Barotrauma.Character
---@param deltaTime System.Single|number
---@param modifyByMaxVitality System.Boolean|boolean
---@return Barotrauma.Affliction
_G['StatusEffect'].GetMultipliedAffliction = function(affliction, entity, targetCharacter, deltaTime, modifyByMaxVitality) end

---`Method Private Instance`
---@param entity Barotrauma.Entity
---@param limb Barotrauma.Limb
---@param affliction Barotrauma.Affliction
---@param result Barotrauma.AttackResult
_G['StatusEffect'].RegisterTreatmentResults = function(entity, limb, affliction, result) end

---`Method Public Static`
_G['StatusEffect'].StopAll = function() end

---`Method Public Instance`
---@param tag System.String|string
_G['StatusEffect'].AddTag = function(tag) end

---`Method Public Instance`
---@param tag System.String|string
---@return System.Boolean|boolean
_G['StatusEffect'].HasTag = function(tag) end

---`Constructor NonPublic Instance`
---@overload fun(element:Barotrauma.ContentXElement, parentDebugName:System.String|string):Barotrauma.StatusEffect
---@return Barotrauma.StatusEffect
_G['StatusEffect'] = function() end

---`Constructor NonPublic Instance`
---@overload fun(element:Barotrauma.ContentXElement, parentDebugName:System.String|string):Barotrauma.StatusEffect
---@return Barotrauma.StatusEffect
_G['StatusEffect'].__new = function() end

---`Constructor Private Static`
---@overload fun(element:Barotrauma.ContentXElement, parentDebugName:System.String|string):Barotrauma.StatusEffect
---@return Barotrauma.StatusEffect
_G['StatusEffect'] = function() end

---`Constructor Private Static`
---@overload fun(element:Barotrauma.ContentXElement, parentDebugName:System.String|string):Barotrauma.StatusEffect
---@return Barotrauma.StatusEffect
_G['StatusEffect'].__new = function() end

