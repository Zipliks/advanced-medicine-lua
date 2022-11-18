---@meta
---@class Barotrauma.CharacterInfo : System.Object
---`Field Private Instance`
---@field prevSentSkill System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1System*Single|{[Barotrauma.Identifier]:System.Single|number}
---`Field Public Instance`
---@field Discarded System.Boolean|boolean
---`Field Private Instance`
---@field head Barotrauma.CharacterInfo.HeadInfo
---`Field Private Instance`
---@field maleIdentifier Barotrauma.Identifier
---`Field Private Instance`
---@field femaleIdentifier Barotrauma.Identifier
---`Field Public Instance`
---@field InventoryData System.Xml.Linq.XElement
---`Field Public Instance`
---@field HealthData System.Xml.Linq.XElement
---`Field Public Instance`
---@field OrderData System.Xml.Linq.XElement
---`Field Public Instance`
---@field Name System.String|string
---`Field Public Instance`
---@field Title Barotrauma.LocalizedString
---`Field Public Instance`
---@field HumanPrefabIds System.ValueTuple*1Barotrauma*Identifier*1Barotrauma*Identifier
---`Field Public Instance`
---@field Character Barotrauma.Character
---`Field Public Instance`
---@field Job Barotrauma.Job
---`Field Public Instance`
---@field Salary System.Int32|integer
---`Field Private Instance`
---@field additionalTalentPoints System.Int32|integer
---`Field Private Instance`
---@field _headSprite Barotrauma.Sprite
---`Field Public Instance`
---@field OmitJobInMenus System.Boolean|boolean
---`Field Private Instance`
---@field portrait Barotrauma.Sprite
---`Field Public Instance`
---@field IsDisguised System.Boolean|boolean
---`Field Public Instance`
---@field IsDisguisedAsAnother System.Boolean|boolean
---`Field Private Instance`
---@field attachmentSprites System.Collections.Generic.List*1Barotrauma*WearableSprite|Barotrauma.WearableSprite[]
---`Field Public Instance`
---@field ragdollFileName System.String|string
---`Field Public Instance`
---@field StartItemsGiven System.Boolean|boolean
---`Field Public Instance`
---@field IsNewHire System.Boolean|boolean
---`Field Public Instance`
---@field CauseOfDeath Barotrauma.CauseOfDeath
---`Field Public Instance`
---@field TeamID Barotrauma.CharacterTeamType
---`Field Public Instance`
---@field ID System.UInt16|integer
---`Field Public Instance`
---@field HasSpecifierTags System.Boolean|boolean
---`Field Private Instance`
---@field ragdoll Barotrauma.RagdollParams
---`Field Public Instance`
---@field HairColors System.Collections.Immutable.ImmutableArray*1System*ValueTuple*2Microsoft*Xna*Framework*Color*2System*Single|System.ValueTuple*1Microsoft*Xna*Framework*Color*1System*Single[]
---`Field Public Instance`
---@field FacialHairColors System.Collections.Immutable.ImmutableArray*1System*ValueTuple*2Microsoft*Xna*Framework*Color*2System*Single|System.ValueTuple*1Microsoft*Xna*Framework*Color*1System*Single[]
---`Field Public Instance`
---@field SkinColors System.Collections.Immutable.ImmutableArray*1System*ValueTuple*2Microsoft*Xna*Framework*Color*2System*Single|System.ValueTuple*1Microsoft*Xna*Framework*Color*1System*Single[]
---`Field Public Instance`
---@field MissionsCompletedSinceDeath System.Int32|integer
---`Field Private Instance`
---@field hairs System.Collections.Generic.List*1Barotrauma*ContentXElement|Barotrauma.ContentXElement[]
---`Field Private Instance`
---@field beards System.Collections.Generic.List*1Barotrauma*ContentXElement|Barotrauma.ContentXElement[]
---`Field Private Instance`
---@field moustaches System.Collections.Generic.List*1Barotrauma*ContentXElement|Barotrauma.ContentXElement[]
---`Field Private Instance`
---@field faceAttachments System.Collections.Generic.List*1Barotrauma*ContentXElement|Barotrauma.ContentXElement[]
---`Field Private Instance`
---@field wearables System.Collections.Generic.IEnumerable*1Barotrauma*ContentXElement|(fun():Barotrauma.ContentXElement)
---`Field Public Instance`
---@field SavedStatValues System.Collections.Generic.Dictionary*1Barotrauma*StatTypes*1System*Collections*Generic*List*2Barotrauma*SavedStatValue|{[Barotrauma.StatTypes]:System.Collections.Generic.List*1Barotrauma*SavedStatValue|Barotrauma.SavedStatValue[]}
---`Field Private Static`
---@field idCounter System.UInt16|integer
---`Field Private Static`
---@field disguiseName System.String|string
---`Field Public Static`
---@field MaxAdditionalTalentPoints System.Int32|integer
---`Field Public Static`
---@field MaxCurrentOrders System.Int32|integer
---`Field Private Static`
---@field BaseExperienceRequired System.Int32|integer
---`Field Private Static`
---@field AddedExperienceRequiredPerLevel System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Head Barotrauma.CharacterInfo.HeadInfo
---`Getter Public Instance`
---@field IsMale System.Boolean|boolean
---`Getter Public Instance`
---@field IsFemale System.Boolean|boolean
---`Getter Public Instance`
---@field Prefab Barotrauma.CharacterInfoPrefab
---`Getter Public Instance`
---@field HasNickname System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field OriginalName System.String|string
---`Getter Public Instance`
---@field DisplayName System.String|string
---`Getter Public Instance`
---@field SpeciesName Barotrauma.Identifier
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ExperiencePoints System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field UnlockedTalents System.Collections.Generic.HashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AdditionalTalentPoints System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field HeadSprite Barotrauma.Sprite
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Portrait Barotrauma.Sprite
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AttachmentSprites System.Collections.Generic.List*1Barotrauma*WearableSprite|Barotrauma.WearableSprite[]
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CharacterConfigElement Barotrauma.ContentXElement
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field PersonalityTrait Barotrauma.NPCPersonalityTrait
---`Getter Public Static`
---@field HighestManualOrderPriority System.Int32|integer
---`Getter Public Instance`
---@field CurrentOrders System.Collections.Generic.List*1Barotrauma*Order|Barotrauma.Order[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SpriteTags System.Collections.Generic.List*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Ragdoll Barotrauma.RagdollParams
---`Getter Public Instance`
---@field IsAttachmentsLoaded System.Boolean|boolean
---`Getter Public Instance`
---@field Hairs System.Collections.Generic.IReadOnlyList*1Barotrauma*ContentXElement|Barotrauma.ContentXElement[]
---`Getter Public Instance`
---@field Beards System.Collections.Generic.IReadOnlyList*1Barotrauma*ContentXElement|Barotrauma.ContentXElement[]
---`Getter Public Instance`
---@field Moustaches System.Collections.Generic.IReadOnlyList*1Barotrauma*ContentXElement|Barotrauma.ContentXElement[]
---`Getter Public Instance`
---@field FaceAttachments System.Collections.Generic.IReadOnlyList*1Barotrauma*ContentXElement|Barotrauma.ContentXElement[]
---`Getter Public Instance`
---@field Wearables System.Collections.Generic.IEnumerable*1Barotrauma*ContentXElement|(fun():Barotrauma.ContentXElement)
_G['CharacterInfo'] = {}

---`Method Public Instance`
---@return System.Int32|integer
_G['CharacterInfo'].GetCurrentLevel = function() end

---`Method Private Instance`
---@param experienceRequired System.Int32-ref
---@return System.Int32|integer
_G['CharacterInfo'].GetCurrentLevel = function(experienceRequired) end

---`Method Private Instance`
---@param level System.Int32|integer
---@return System.Int32|integer
_G['CharacterInfo'].ExperienceRequiredPerLevel = function(level) end

---`Method Private Instance`
---@param prevAmount System.Int32|integer
---@param newAmount System.Int32|integer
_G['CharacterInfo'].OnExperienceChanged = function(prevAmount, newAmount) end

---`Method Private Instance`
---@param statType Barotrauma.StatTypes
_G['CharacterInfo'].OnPermanentStatChanged = function(statType) end

---`Method Public Instance`
---@param newName System.String|string
_G['CharacterInfo'].Rename = function(newName) end

---`Method Public Instance`
_G['CharacterInfo'].ResetName = function() end

---`Method Public Instance`
---@param parentElement System.Xml.Linq.XElement
---@return System.Xml.Linq.XElement
_G['CharacterInfo'].Save = function(parentElement) end

---`Method Public Static`
---@param parentElement System.Xml.Linq.XElement
---@param ... Barotrauma.Order
_G['CharacterInfo'].SaveOrders = function(parentElement, ...) end

---`Method Public Static`
---@param characterInfo Barotrauma.CharacterInfo
---@param parentElement System.Xml.Linq.XElement
_G['CharacterInfo'].SaveOrderData = function(characterInfo, parentElement) end

---`Method Public Instance`
_G['CharacterInfo'].SaveOrderData = function() end

---`Method Public Static`
---@param character Barotrauma.Character
---@param orderData System.Xml.Linq.XElement
_G['CharacterInfo'].ApplyOrderData = function(character, orderData) end

---`Method Public Instance`
_G['CharacterInfo'].ApplyOrderData = function() end

---`Method Public Static`
---@param ordersElement System.Xml.Linq.XElement
---@return System.Collections.Generic.List*1Barotrauma*Order|Barotrauma.Order[]
_G['CharacterInfo'].LoadOrders = function(ordersElement) end

---`Method Private Static`
---@return System.Collections.Generic.List*1Barotrauma*LinkedSubmarine|Barotrauma.LinkedSubmarine[]
_G['CharacterInfo'].GetLinkedSubmarines = function() end

---`Method Private Static`
---@param parentSub Barotrauma.Submarine
---@param id System.UInt16|integer
---@return System.UInt16|integer
_G['CharacterInfo'].GetOffsetId = function(parentSub, id) end

---`Method Public Static`
---@param character Barotrauma.Character
---@param healthData System.Xml.Linq.XElement
---@param afflictionPredicate? System.Func*1Barotrauma*AfflictionPrefab*1System*Boolean|(fun(arg:Barotrauma.AfflictionPrefab):System.Boolean|boolean)
_G['CharacterInfo'].ApplyHealthData = function(character, healthData, afflictionPredicate) end

---`Method Public Instance`
_G['CharacterInfo'].ReloadHeadAttachments = function() end

---`Method Private Instance`
_G['CharacterInfo'].ResetAttachmentIndices = function() end

---`Method Private Instance`
_G['CharacterInfo'].ResetLoadedAttachments = function() end

---`Method Public Instance`
_G['CharacterInfo'].ClearCurrentOrders = function() end

---`Method Public Instance`
_G['CharacterInfo'].Remove = function() end

---`Method Private Instance`
_G['CharacterInfo'].RefreshHeadSprites = function() end

---`Method Public Instance`
---@overload fun()
---@param statType Barotrauma.StatTypes
_G['CharacterInfo'].ClearSavedStatValues = function(statType) end

---`Method Public Instance`
_G['CharacterInfo'].RemoveSavedStatValuesOnDeath = function() end

---`Method Public Instance`
---@param statIdentifier System.String|string
_G['CharacterInfo'].ResetSavedStatValue = function(statIdentifier) end

---`Method Public Instance`
---@overload fun(statType:Barotrauma.StatTypes):System.Single|number
---@param statType Barotrauma.StatTypes
---@param statIdentifier Barotrauma.Identifier
---@return System.Single|number
_G['CharacterInfo'].GetSavedStatValue = function(statType, statIdentifier) end

---`Method Public Instance`
---@param statType Barotrauma.StatTypes
---@param value System.Single|number
---@param statIdentifier System.String|string
---@param removeOnDeath System.Boolean|boolean
---@param maxValue? System.Single|number
---@param setValue? System.Boolean|boolean
_G['CharacterInfo'].ChangeSavedStatValue = function(statType, value, statIdentifier, removeOnDeath, maxValue, setValue) end

---`Method Public Instance`
---@param msg Barotrauma.Networking.IWriteMessage
_G['CharacterInfo'].ServerWrite = function(msg) end

---`Method Public Instance`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
_G['CharacterInfo'].GetUnlockedTalentsInTree = function() end

---`Method Public Instance`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
_G['CharacterInfo'].GetUnlockedTalentsOutsideTree = function() end

---`Method Public Instance`
---@param handleBuff System.Boolean|boolean
---@param idCard? Barotrauma.Items.Components.IdCard
_G['CharacterInfo'].CheckDisguiseStatus = function(handleBuff, idCard) end

---`Method Public Instance`
---@param order Barotrauma.Order
---@return System.Int32|integer
_G['CharacterInfo'].GetManualOrderPriority = function(order) end

---`Method Public Instance`
---@param elements System.Collections.Generic.IEnumerable*1Barotrauma*ContentXElement|(fun():Barotrauma.ContentXElement)
---@param headPreset Barotrauma.CharacterInfo.HeadPreset
---@param wearableType? System.Nullable*1Barotrauma*WearableType
---@return System.Collections.Generic.IEnumerable*1Barotrauma*ContentXElement|(fun():Barotrauma.ContentXElement)
_G['CharacterInfo'].GetValidAttachmentElements = function(elements, headPreset, wearableType) end

---`Method Public Instance`
---@param wearableType Barotrauma.WearableType
---@return System.Int32|integer
_G['CharacterInfo'].CountValidAttachmentsOfType = function(wearableType) end

---`Method Private Instance`
---@param randSync Barotrauma.Rand.RandSync
---@param name System.String-ref
_G['CharacterInfo'].GetName = function(randSync, name) end

---`Method Private Static`
---@param element System.Xml.Linq.XElement
---@param tags System.Collections.Generic.HashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
_G['CharacterInfo'].LoadTagsBackwardsCompatibility = function(element, tags) end

---`Method Private Static`
---@param element System.Xml.Linq.XElement
---@return System.Boolean|boolean
_G['CharacterInfo'].ElementHasSpecifierTags = function(element) end

---`Method Private Instance`
_G['CharacterInfo'].SetPersonalityTrait = function() end

---`Method Public Instance`
---@param randSync Barotrauma.Rand.RandSync
---@return System.String|string
_G['CharacterInfo'].GetRandomName = function(randSync) end

---`Method Public Static`
---@param array System.Collections.Immutable.ImmutableArray
---@param randSync Barotrauma.Rand.RandSync
---@return Microsoft.Xna.Framework.Color
_G['CharacterInfo'].SelectRandomColor = function(array, randSync) end

---`Method Private Instance`
---@param randSync Barotrauma.Rand.RandSync
_G['CharacterInfo'].SetAttachments = function(randSync) end

---`Method Private Instance`
---@param randSync Barotrauma.Rand.RandSync
_G['CharacterInfo'].SetColors = function(randSync) end

---`Method Private Instance`
---@param clr Microsoft.Xna.Framework.Color-ref
---@return System.Boolean|boolean
_G['CharacterInfo'].IsColorValid = function(clr) end

---`Method Private Instance`
_G['CharacterInfo'].CheckColors = function() end

---`Method Private Instance`
---@param npcIdentifier Barotrauma.Identifier
_G['CharacterInfo'].TryLoadNameAndTitle = function(npcIdentifier) end

---`Method Public Instance`
---@return System.Int32|integer
_G['CharacterInfo'].GetIdentifier = function() end

---`Method Private Instance`
---@param name System.String|string
---@return System.Int32|integer
_G['CharacterInfo'].GetIdentifier = function(name) end

---`Method Public Instance`
---@return System.Int32|integer
_G['CharacterInfo'].GetIdentifierUsingOriginalName = function() end

---`Method Public Instance`
---@param elements System.Collections.Generic.IEnumerable*1Barotrauma*ContentXElement|(fun():Barotrauma.ContentXElement)
---@param tags System.Collections.Immutable.ImmutableHashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---@param targetType? System.Nullable*1Barotrauma*WearableType
---@return System.Collections.Generic.IEnumerable*1Barotrauma*ContentXElement|(fun():Barotrauma.ContentXElement)
_G['CharacterInfo'].FilterElements = function(elements, tags, targetType) end

---`Method Public Instance`
---@overload fun(tags:System.Collections.Immutable.ImmutableHashSet*1Barotrauma*Identifier|Barotrauma.Identifier[], hairIndex:System.Int32|integer, beardIndex:System.Int32|integer, moustacheIndex:System.Int32|integer, faceAttachmentIndex:System.Int32|integer)
---@param headInfo Barotrauma.CharacterInfo.HeadInfo
_G['CharacterInfo'].RecreateHead = function(headInfo) end

---`Method Public Instance`
---@param str System.String|string
---@return System.String|string
_G['CharacterInfo'].ReplaceVars = function(str) end

---`Method Public Instance`
_G['CharacterInfo'].RefreshHead = function() end

---`Method Private Instance`
_G['CharacterInfo'].LoadHeadSprite = function() end

---`Method Public Instance`
_G['CharacterInfo'].LoadHeadAttachments = function() end

---`Method Public Static`
---@param elements System.Collections.Generic.IEnumerable*1Barotrauma*ContentXElement|(fun():Barotrauma.ContentXElement)
---@param type Barotrauma.WearableType
---@param commonness? System.Single|number
---@return System.Collections.Generic.List*1Barotrauma*ContentXElement|Barotrauma.ContentXElement[]
_G['CharacterInfo'].AddEmpty = function(elements, type, commonness) end

---`Method Public Instance`
---@param elements System.Collections.Generic.IEnumerable*1Barotrauma*ContentXElement|(fun():Barotrauma.ContentXElement)
---@return Barotrauma.ContentXElement
_G['CharacterInfo'].GetRandomElement = function(elements) end

---`Method Private Instance`
---@param element Barotrauma.ContentXElement
---@return System.Boolean|boolean
_G['CharacterInfo'].IsWearableAllowed = function(element) end

---`Method Private Instance`
---@param element System.Xml.Linq.XElement
---@param spriteName System.String|string
---@return System.Boolean|boolean
_G['CharacterInfo'].IsAllowed = function(element, spriteName) end

---`Method Public Static`
---@param index System.Int32|integer
---@param list System.Collections.Generic.List*1Barotrauma*ContentXElement|Barotrauma.ContentXElement[]
---@return System.Boolean|boolean
_G['CharacterInfo'].IsValidIndex = function(index, list) end

---`Method Private Static`
---@param elements System.Collections.Generic.IEnumerable*1Barotrauma*ContentXElement|(fun():Barotrauma.ContentXElement)
---@return System.Collections.Generic.IEnumerable*1System*Single|(fun():System.Single|number)
_G['CharacterInfo'].GetWeights = function(elements) end

---`Method Private Instance`
---@return System.Int32|integer
_G['CharacterInfo'].CalculateSalary = function() end

---`Method Public Instance`
---@param skillIdentifier Barotrauma.Identifier
---@param increase System.Single|number
---@param gainedFromAbility? System.Boolean|boolean
_G['CharacterInfo'].IncreaseSkillLevel = function(skillIdentifier, increase, gainedFromAbility) end

---`Method Public Instance`
---@param skillIdentifier Barotrauma.Identifier
---@param level System.Single|number
_G['CharacterInfo'].SetSkillLevel = function(skillIdentifier, level) end

---`Method Private Instance`
---@param skillIdentifier Barotrauma.Identifier
---@param prevLevel System.Single|number
---@param newLevel System.Single|number
_G['CharacterInfo'].OnSkillChanged = function(skillIdentifier, prevLevel, newLevel) end

---`Method Public Instance`
---@param amount System.Int32|integer
---@param isMissionExperience? System.Boolean|boolean
_G['CharacterInfo'].GiveExperience = function(amount, isMissionExperience) end

---`Method Public Instance`
---@param newExperience System.Int32|integer
_G['CharacterInfo'].SetExperience = function(newExperience) end

---`Method Public Instance`
---@return System.Int32|integer
_G['CharacterInfo'].GetTotalTalentPoints = function() end

---`Method Public Instance`
---@return System.Int32|integer
_G['CharacterInfo'].GetAvailableTalentPoints = function() end

---`Method Public Instance`
---@return System.Single|number
_G['CharacterInfo'].GetProgressTowardsNextLevel = function() end

---`Method Public Instance`
---@return System.Int32|integer
_G['CharacterInfo'].GetExperienceRequiredForCurrentLevel = function() end

---`Method Public Instance`
---@return System.Int32|integer
_G['CharacterInfo'].GetExperienceRequiredToLevelUp = function() end

---`Constructor Public Instance`
---@overload fun(speciesName:Barotrauma.Identifier, name?:System.String|string, originalName?:System.String|string, jobOrJobPrefab?:Barotrauma.Either*1Barotrauma*Job*1Barotrauma*JobPrefab, ragdollFileName?:System.String|string, variant?:System.Int32|integer, randSync?:Barotrauma.Rand.RandSync, npcIdentifier?:Barotrauma.Identifier):Barotrauma.CharacterInfo
---@param infoElement System.Xml.Linq.XElement
---@param npcIdentifier? Barotrauma.Identifier
---@return Barotrauma.CharacterInfo
_G['CharacterInfo'] = function(infoElement, npcIdentifier) end

---`Constructor Public Instance`
---@overload fun(speciesName:Barotrauma.Identifier, name?:System.String|string, originalName?:System.String|string, jobOrJobPrefab?:Barotrauma.Either*1Barotrauma*Job*1Barotrauma*JobPrefab, ragdollFileName?:System.String|string, variant?:System.Int32|integer, randSync?:Barotrauma.Rand.RandSync, npcIdentifier?:Barotrauma.Identifier):Barotrauma.CharacterInfo
---@param infoElement System.Xml.Linq.XElement
---@param npcIdentifier? Barotrauma.Identifier
---@return Barotrauma.CharacterInfo
_G['CharacterInfo'].__new = function(infoElement, npcIdentifier) end

