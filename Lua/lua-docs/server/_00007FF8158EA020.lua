---@meta
---@class Barotrauma.Items.Components.ItemComponent : System.Object
---`Field NonPublic Instance`
---@field item Barotrauma.Item
---`Field NonPublic Instance`
---@field name System.String|string
---`Field Private Instance`
---@field isActive System.Boolean|boolean
---`Field NonPublic Instance`
---@field characterUsable System.Boolean|boolean
---`Field NonPublic Instance`
---@field canBePicked System.Boolean|boolean
---`Field NonPublic Instance`
---@field canBeSelected System.Boolean|boolean
---`Field NonPublic Instance`
---@field canBeCombined System.Boolean|boolean
---`Field NonPublic Instance`
---@field removeOnCombined System.Boolean|boolean
---`Field Public Instance`
---@field WasUsed System.Boolean|boolean
---`Field Public Instance`
---@field WasSecondaryUsed System.Boolean|boolean
---`Field Public Instance`
---@field statusEffectLists System.Collections.Generic.Dictionary*1Barotrauma*ActionType*1System*Collections*Generic*List*2Barotrauma*StatusEffect|{[Barotrauma.ActionType]:System.Collections.Generic.List*1Barotrauma*StatusEffect|Barotrauma.StatusEffect[]}
---`Field Public Instance`
---@field requiredItems System.Collections.Generic.Dictionary*1Barotrauma*RelatedItem*RelationType*1System*Collections*Generic*List*2Barotrauma*RelatedItem|{[Barotrauma.RelatedItem.RelationType]:System.Collections.Generic.List*1Barotrauma*RelatedItem|Barotrauma.RelatedItem[]}
---`Field Public Instance`
---@field DisabledRequiredItems System.Collections.Generic.List*1Barotrauma*RelatedItem|Barotrauma.RelatedItem[]
---`Field Public Instance`
---@field requiredSkills System.Collections.Generic.List*1Barotrauma*Skill|Barotrauma.Skill[]
---`Field Private Instance`
---@field parent Barotrauma.Items.Components.ItemComponent
---`Field Public Instance`
---@field originalElement Barotrauma.ContentXElement
---`Field NonPublic Instance`
---@field delayedCorrectionCoroutine Barotrauma.CoroutineHandle
---`Field Public Instance`
---@field OnActiveStateChanged System.Action*1System*Boolean|(fun(obj:System.Boolean|boolean))
---`Field Private Instance`
---@field drawable System.Boolean|boolean
---`Field Public Instance`
---@field IsActiveConditionals System.Collections.Generic.List*1Barotrauma*PropertyConditional|Barotrauma.PropertyConditional[]
---`Field NonPublic Instance`
---@field aiUpdateTimer System.Single|number
---`Field NonPublic Static`
---@field CorrectionDelay System.Single|number
---`Field NonPublic Static`
---@field AIUpdateInterval System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Parent Barotrauma.Items.Components.ItemComponent
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field PickingTime System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field PickingMsg System.String|string
---`Getter Public Instance Virtual`
---<br/>`Setter NonPublic Instance`
---@field SerializableProperties System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1Barotrauma*SerializableProperty|{[Barotrauma.Identifier]:Barotrauma.SerializableProperty}
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field IsActive System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Drawable System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CanBePicked System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field DrawHudWhenEquipped System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CanBeSelected System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CanBeCombined System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field RemoveOnCombined System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CharacterUsable System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AllowInGameEditing System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field PickKey Barotrauma.InputType
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field SelectKey Barotrauma.InputType
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DeleteOnUse System.Boolean|boolean
---`Getter Public Instance`
---@field Item Barotrauma.Item
---`Getter Public Instance Virtual`
---@field Name System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Msg System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DisplayMsg Barotrauma.LocalizedString
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field CombatPriority System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ManuallySelectedSound System.Int32|integer
---`Getter Public Instance Virtual`
---@field UpdateWhenInactive System.Boolean|boolean
_G['Components']['ItemComponent'] = {}

---`Method Private Instance`
---@param subElement Barotrauma.ContentXElement
---@return System.Boolean|boolean
_G['Components']['ItemComponent'].LoadElemProjSpecific = function(subElement) end

---`Method Public Instance Virtual`
---@return Barotrauma.Items.Components.ItemComponent.IEventData
_G['Components']['ItemComponent'].ServerGetEventData = function() end

---`Method Private Instance`
---@param isActive System.Boolean|boolean
_G['Components']['ItemComponent'].SetActiveState = function(isActive) end

---`Method Public Instance`
---@param element Barotrauma.ContentXElement
---@param allowEmpty? System.Boolean|boolean
_G['Components']['ItemComponent'].SetRequiredItems = function(element, allowEmpty) end

---`Method Public Instance Virtual`
---@param amount Microsoft.Xna.Framework.Vector2
---@param ignoreContacts? System.Boolean|boolean
_G['Components']['ItemComponent'].Move = function(amount, ignoreContacts) end

---`Method Public Instance Virtual`
---@param picker Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['ItemComponent'].Pick = function(picker) end

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['ItemComponent'].Select = function(character) end

---`Method Public Instance Virtual`
---@param dropper Barotrauma.Character
_G['Components']['ItemComponent'].Drop = function(dropper) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param character Barotrauma.Character
---@param objective Barotrauma.AIObjectiveOperateItem
---@return System.Boolean|boolean
_G['Components']['ItemComponent'].AIOperate = function(deltaTime, character, objective) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['ItemComponent'].Update = function(deltaTime, cam) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['ItemComponent'].UpdateBroken = function(deltaTime, cam) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param character? Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['ItemComponent'].Use = function(deltaTime, character) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param character? Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['ItemComponent'].SecondaryUse = function(deltaTime, character) end

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
_G['Components']['ItemComponent'].Equip = function(character) end

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
_G['Components']['ItemComponent'].Unequip = function(character) end

---`Method Public Instance Virtual`
---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
_G['Components']['ItemComponent'].ReceiveSignal = function(signal, connection) end

---`Method Public Instance Virtual`
---@param item Barotrauma.Item
---@param user Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['ItemComponent'].Combine = function(item, user) end

---`Method Public Instance`
_G['Components']['ItemComponent'].Remove = function() end

---`Method Public Instance`
_G['Components']['ItemComponent'].ShallowRemove = function() end

---`Method NonPublic Instance Virtual`
_G['Components']['ItemComponent'].ShallowRemoveComponentSpecific = function() end

---`Method NonPublic Instance Virtual`
_G['Components']['ItemComponent'].RemoveComponentSpecific = function() end

---`Method NonPublic Instance`
---@param subElement Barotrauma.ContentXElement
---@return System.String|string
_G['Components']['ItemComponent'].GetTextureDirectory = function(subElement) end

---`Method Public Instance`
---@overload fun(character:Barotrauma.Character):System.Boolean|boolean
---@param character Barotrauma.Character
---@param insufficientSkill Barotrauma.Skill-ref
---@return System.Boolean|boolean
_G['Components']['ItemComponent'].HasRequiredSkills = function(character, insufficientSkill) end

---`Method Public Instance Virtual`
---@return System.Single|number
_G['Components']['ItemComponent'].GetSkillMultiplier = function() end

---`Method Public Instance`
---@overload fun(character:Barotrauma.Character):System.Single|number
---@param character Barotrauma.Character
---@param requiredSkills System.Collections.Generic.List*1Barotrauma*Skill|Barotrauma.Skill[]
---@return System.Single|number
_G['Components']['ItemComponent'].DegreeOfSuccess = function(character, requiredSkills) end

---`Method Public Instance Virtual`
---@param relativeToSub System.Boolean|boolean
_G['Components']['ItemComponent'].FlipX = function(relativeToSub) end

---`Method Public Instance Virtual`
---@param relativeToSub System.Boolean|boolean
_G['Components']['ItemComponent'].FlipY = function(relativeToSub) end

---`Method Public Instance`
---@param user Barotrauma.Character
---@param checkContainedItems? System.Boolean|boolean
---@return System.Boolean|boolean
_G['Components']['ItemComponent'].IsLoaded = function(user, checkContainedItems) end

---`Method Public Instance`
---@param user Barotrauma.Character
---@param addMessage System.Boolean|boolean
---@param msg? Barotrauma.LocalizedString
---@return System.Boolean|boolean
_G['Components']['ItemComponent'].HasRequiredContainedItems = function(user, addMessage, msg) end

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['ItemComponent'].HasAccess = function(character) end

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
---@param addMessage System.Boolean|boolean
---@param msg? Barotrauma.LocalizedString
---@return System.Boolean|boolean
_G['Components']['ItemComponent'].HasRequiredItems = function(character, addMessage, msg) end

---`Method Public Instance`
---@param type Barotrauma.ActionType
---@param deltaTime System.Single|number
---@param character? Barotrauma.Character
---@param targetLimb? Barotrauma.Limb
---@param useTarget? Barotrauma.Entity
---@param user? Barotrauma.Character
---@param worldPosition? System.Nullable*1Microsoft*Xna*Framework*Vector2
---@param afflictionMultiplier? System.Single|number
---@param applyOnUserFraction? System.Single|number
_G['Components']['ItemComponent'].ApplyStatusEffects = function(type, deltaTime, character, targetLimb, useTarget, user, worldPosition, afflictionMultiplier, applyOnUserFraction) end

---`Method Public Instance Virtual`
---@param componentElement Barotrauma.ContentXElement
---@param usePrefabValues System.Boolean|boolean
---@param idRemap Barotrauma.IdRemap
_G['Components']['ItemComponent'].Load = function(componentElement, usePrefabValues, idRemap) end

---`Method Public Static`
---@param element Barotrauma.ContentXElement
---@param item Barotrauma.Item
---@param errorMessages? System.Boolean|boolean
---@return Barotrauma.Items.Components.ItemComponent
_G['Components']['ItemComponent'].Load = function(element, item, errorMessages) end

---`Method Public Instance Virtual`
_G['Components']['ItemComponent'].OnMapLoaded = function() end

---`Method Public Instance Virtual`
_G['Components']['ItemComponent'].OnItemLoaded = function() end

---`Method Public Instance Virtual`
_G['Components']['ItemComponent'].OnScaleChanged = function() end

---`Method Public Instance Virtual`
---@param parentElement System.Xml.Linq.XElement
---@return System.Xml.Linq.XElement
_G['Components']['ItemComponent'].Save = function(parentElement) end

---`Method Public Instance Virtual`
_G['Components']['ItemComponent'].Reset = function() end

---`Method Private Instance`
---@param element Barotrauma.ContentXElement
_G['Components']['ItemComponent'].OverrideRequiredItems = function(element) end

---`Method Public Instance Virtual`
_G['Components']['ItemComponent'].ParseMsg = function() end

---`Method Public Instance Virtual`
---@param data Barotrauma.Networking.NetEntityEvent.IData
---@return System.Boolean|boolean
_G['Components']['ItemComponent'].ValidateEventData = function(data) end

---`Method NonPublic Instance`
---@param data Barotrauma.Networking.NetEntityEvent.IData
---@return Barotrauma.Items.Components.ItemComponent.T
_G['Components']['ItemComponent'].ExtractEventData = function(data) end

---`Method NonPublic Instance`
---@param data Barotrauma.Networking.NetEntityEvent.IData
---@param componentData Barotrauma.Items.Components.T-ref
---@return System.Boolean|boolean
_G['Components']['ItemComponent'].TryExtractEventData = function(data, componentData) end

---`Method NonPublic Instance`
---@param container Barotrauma.Items.Components.ItemContainer
---@param character Barotrauma.Character
---@param currentObjective Barotrauma.AIObjective
---@param itemCount System.Int32|integer
---@param equip System.Boolean|boolean
---@param removeEmpty System.Boolean|boolean
---@param spawnItemIfNotFound? System.Boolean|boolean
---@param dropItemOnDeselected? System.Boolean|boolean
---@return Barotrauma.AIObjectiveContainItem
_G['Components']['ItemComponent'].AIContainItems = function(container, character, currentObjective, itemCount, equip, removeEmpty, spawnItemIfNotFound, dropItemOnDeselected) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.ItemComponent
_G['Components']['ItemComponent'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.ItemComponent
_G['Components']['ItemComponent'].__new = function(item, element) end

