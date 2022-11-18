---@meta
---@class Barotrauma.CharacterParams.AIParams : Barotrauma.CharacterParams.SubParam
---`Field NonPublic Instance`
---@field targets System.Collections.Generic.List*1Barotrauma*CharacterParams*TargetParams|Barotrauma.CharacterParams.TargetParams[]
---`Getter Public Instance Virtual`
---@field Name System.String|string
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field CombatStrength System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Sight System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Hearing System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AggressionHurt System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AggressionGreed System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field FleeHealthThreshold System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AttackWhenProvoked System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AvoidGunfire System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field DamageThreshold System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AvoidTime System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field MinFleeTime System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AggressiveBoarding System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field EnforceAggressiveBehaviorForMissions System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field TargetOuterWalls System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field RandomAttack System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field CanOpenDoors System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field KeepDoorsClosed System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AvoidAbyss System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field StayInAbyss System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field PatrolFlooded System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field PatrolDry System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field StartAggression System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field MaxAggression System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AggressionCumulation System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field WallTargetingMethod Barotrauma.WallTargetingMethod
---`Getter Public Instance`
---@field Targets System.Collections.Generic.IEnumerable*1Barotrauma*CharacterParams*TargetParams|(fun():Barotrauma.CharacterParams.TargetParams)
_G['CharacterParams']['AIParams'] = {}

---`Method Private Instance`
---@param targetElement Barotrauma.ContentXElement
---@param target Barotrauma.TargetParams-ref
---@return System.Boolean|boolean
_G['CharacterParams']['AIParams'].TryAddTarget = function(targetElement, target) end

---`Method Public Instance`
---@param targetParams Barotrauma.TargetParams-ref
---@return System.Boolean|boolean
_G['CharacterParams']['AIParams'].TryAddEmptyTarget = function(targetParams) end

---`Method Public Instance`
---@overload fun(tag:System.String|string, state:Barotrauma.AIState, priority:System.Single|number, targetParams:Barotrauma.TargetParams-ref):System.Boolean|boolean
---@param tag Barotrauma.Identifier
---@param state Barotrauma.AIState
---@param priority System.Single|number
---@param targetParams Barotrauma.TargetParams-ref
---@return System.Boolean|boolean
_G['CharacterParams']['AIParams'].TryAddNewTarget = function(tag, state, priority, targetParams) end

---`Method Public Instance`
---@overload fun(tag:System.String|string):System.Boolean|boolean
---@param tag Barotrauma.Identifier
---@return System.Boolean|boolean
_G['CharacterParams']['AIParams'].HasTag = function(tag) end

---`Method Public Instance`
---@param target Barotrauma.CharacterParams.TargetParams
---@return System.Boolean|boolean
_G['CharacterParams']['AIParams'].RemoveTarget = function(target) end

---`Method Public Instance`
---@overload fun(targetTag:System.String|string, target:Barotrauma.TargetParams-ref):System.Boolean|boolean
---@overload fun(targetTag:Barotrauma.Identifier, target:Barotrauma.TargetParams-ref):System.Boolean|boolean
---@overload fun(targetCharacter:Barotrauma.Character, target:Barotrauma.TargetParams-ref):System.Boolean|boolean
---@param tags System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
---@param target Barotrauma.TargetParams-ref
---@return System.Boolean|boolean
_G['CharacterParams']['AIParams'].TryGetTarget = function(tags, target) end

---`Method Public Instance`
---@overload fun(targetTag:System.String|string, throwError?:System.Boolean|boolean):Barotrauma.CharacterParams.TargetParams
---@param targetTag Barotrauma.Identifier
---@param throwError? System.Boolean|boolean
---@return Barotrauma.CharacterParams.TargetParams
_G['CharacterParams']['AIParams'].GetTarget = function(targetTag, throwError) end

---`Constructor Public Instance`
---@param element Barotrauma.ContentXElement
---@param character Barotrauma.CharacterParams
---@return Barotrauma.CharacterParams.AIParams
_G['CharacterParams']['AIParams'] = function(element, character) end

---`Constructor Public Instance`
---@param element Barotrauma.ContentXElement
---@param character Barotrauma.CharacterParams
---@return Barotrauma.CharacterParams.AIParams
_G['CharacterParams']['AIParams'].__new = function(element, character) end

