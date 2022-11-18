---@meta
---@class Barotrauma.JobPrefab : Barotrauma.PrefabWithUintIdentifier
---`Field Public Instance`
---@field ItemSets System.Collections.Generic.Dictionary*1System*Int32*1Barotrauma*ContentXElement|{[System.Int32|integer]:Barotrauma.ContentXElement}
---`Field Public Instance`
---@field PreviewItems System.Collections.Immutable.ImmutableDictionary*1System*Int32*1System*Collections*Immutable*ImmutableArray*2Barotrauma*JobPrefab*PreviewItem|{[System.Int32|integer]:System.Collections.Immutable.ImmutableArray*1Barotrauma*JobPrefab*PreviewItem|Barotrauma.JobPrefab.PreviewItem[]}
---`Field Public Instance`
---@field Skills System.Collections.Generic.List*1Barotrauma*SkillPrefab|Barotrauma.SkillPrefab[]
---`Field Public Instance`
---@field AutonomousObjectives System.Collections.Generic.List*1Barotrauma*AutonomousObjective|Barotrauma.AutonomousObjective[]
---`Field Public Instance`
---@field AppropriateOrders System.Collections.Generic.List*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field Public Instance`
---@field Name Barotrauma.LocalizedString
---`Field Public Instance`
---@field Description Barotrauma.LocalizedString
---`Field Public Instance`
---@field Icon Barotrauma.Sprite
---`Field Public Instance`
---@field IconSmall Barotrauma.Sprite
---`Field Public Static`
---@field Prefabs Barotrauma.PrefabCollection*1Barotrauma*JobPrefab|(fun():Barotrauma.JobPrefab)
---`Field Private Static`
---@field _itemRepairPriorities System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1System*Single|{[Barotrauma.Identifier]:System.Single|number}
---`Getter Public Static`
---@field ItemRepairPriorities System.Collections.Generic.IReadOnlyDictionary*1Barotrauma*Identifier*1System*Single|{[Barotrauma.Identifier]:System.Single|number}
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field UIColor Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field IdleBehavior Barotrauma.AIObjectiveIdle.BehaviorType
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field OnlyJobSpecificDialog System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field InitialCount System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AllowAlways System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field MaxNumber System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field MinNumber System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field MinKarma System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field PriceMultiplier System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Commonness System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field VitalityModifier System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field HiddenJob System.Boolean|boolean
---`Getter Public Instance`
---@field PrimarySkill Barotrauma.SkillPrefab
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Element Barotrauma.ContentXElement
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Variants System.Int32|integer
_G['JobPrefab'] = {}

---`Method Public Instance`
---@param buttonContainer Barotrauma.GUIComponent-ref
---@return Barotrauma.GUIButton
_G['JobPrefab'].CreateInfoFrame = function(buttonContainer) end

---`Method Public Instance`
---@param charInfoPrefab Barotrauma.CharacterInfoPrefab
---@param useInventoryIcon System.Boolean|boolean
---@param maxDimensions Microsoft.Xna.Framework.Vector2-ref
---@return System.Collections.Generic.List*1Barotrauma*JobPrefab*OutfitPreview|Barotrauma.JobPrefab.OutfitPreview[]
_G['JobPrefab'].GetJobOutfitSprites = function(charInfoPrefab, useInventoryIcon, maxDimensions) end

---`Method Public Instance Virtual`
_G['JobPrefab'].Dispose = function() end

---`Method Public Static`
---@param identifier Barotrauma.Identifier
---@return Barotrauma.JobPrefab
_G['JobPrefab'].Get = function(identifier) end

---`Method Public Static`
---@param sync Barotrauma.Rand.RandSync
---@param predicate? System.Func*1Barotrauma*JobPrefab*1System*Boolean|(fun(arg:Barotrauma.JobPrefab):System.Boolean|boolean)
---@return Barotrauma.JobPrefab
_G['JobPrefab'].Random = function(sync, predicate) end

---`Constructor Public Instance`
---@overload fun(element:Barotrauma.ContentXElement, file:Barotrauma.JobsFile):Barotrauma.JobPrefab
---@return Barotrauma.JobPrefab
_G['JobPrefab'] = function() end

---`Constructor Public Instance`
---@overload fun(element:Barotrauma.ContentXElement, file:Barotrauma.JobsFile):Barotrauma.JobPrefab
---@return Barotrauma.JobPrefab
_G['JobPrefab'].__new = function() end

---`Constructor Private Static`
---@overload fun(element:Barotrauma.ContentXElement, file:Barotrauma.JobsFile):Barotrauma.JobPrefab
---@return Barotrauma.JobPrefab
_G['JobPrefab'] = function() end

---`Constructor Private Static`
---@overload fun(element:Barotrauma.ContentXElement, file:Barotrauma.JobsFile):Barotrauma.JobPrefab
---@return Barotrauma.JobPrefab
_G['JobPrefab'].__new = function() end

