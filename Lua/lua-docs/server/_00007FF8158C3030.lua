---@meta
---@class Barotrauma.LevelTrigger : System.Object
---`Field Public Instance`
---@field OnTriggered System.Action*1Barotrauma*LevelTrigger*1Barotrauma*Entity|(fun(arg1:Barotrauma.LevelTrigger, arg2:Barotrauma.Entity))
---`Field Private Instance`
---@field statusEffects System.Collections.Generic.List*1Barotrauma*StatusEffect|Barotrauma.StatusEffect[]
---`Field Private Instance`
---@field attacks System.Collections.Generic.List*1Barotrauma*Attack|Barotrauma.Attack[]
---`Field Private Instance`
---@field cameraShake System.Single|number
---`Field Private Instance`
---@field unrotatedForce Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field forceFluctuationTimer System.Single|number
---`Field Private Instance`
---@field currentForceFluctuation System.Single|number
---`Field Private Instance`
---@field triggerers System.Collections.Generic.HashSet*1Barotrauma*Entity|Barotrauma.Entity[]
---`Field Private Instance`
---@field triggeredBy Barotrauma.LevelTrigger.TriggererType
---`Field Private Instance`
---@field randomTriggerInterval System.Single|number
---`Field Private Instance`
---@field randomTriggerProbability System.Single|number
---`Field Private Instance`
---@field randomTriggerTimer System.Single|number
---`Field Private Instance`
---@field triggeredTimer System.Single|number
---`Field Private Instance`
---@field tags System.Collections.Generic.HashSet*1System*String|System.String|string[]
---`Field Private Instance`
---@field allowedOtherTriggerTags System.Collections.Generic.HashSet*1System*String|System.String|string[]
---`Field Private Instance`
---@field stayTriggeredDelay System.Single|number
---`Field Public Instance`
---@field ParentTrigger Barotrauma.LevelTrigger
---`Field Private Instance`
---@field worldPosition Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field forceMode Barotrauma.LevelTrigger.TriggerForceMode
---`Field Private Instance`
---@field triggeredOnce System.Boolean|boolean
---`Field Private Instance`
---@field triggerOnce System.Boolean|boolean
---`Field Private Instance`
---@field targets System.Collections.Generic.List*1Barotrauma*ISerializableEntity|Barotrauma.ISerializableEntity[]
---`Field Private Static`
---@field triggerersToRemove System.Collections.Generic.List*1Barotrauma*Entity|Barotrauma.Entity[]
---`Getter Public Instance`
---@field StatusEffects System.Collections.Generic.IEnumerable*1Barotrauma*StatusEffect|(fun():Barotrauma.StatusEffect)
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field TriggererPosition System.Collections.Generic.Dictionary*1Barotrauma*Entity*1Microsoft*Xna*Framework*Vector2|{[Barotrauma.Entity]:Microsoft.Xna.Framework.Vector2}
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field WorldPosition Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Rotation System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field PhysicsBody Barotrauma.PhysicsBody
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field TriggerOthersDistance System.Single|number
---`Getter Public Instance`
---@field Triggerers System.Collections.Generic.IEnumerable*1Barotrauma*Entity|(fun():Barotrauma.Entity)
---`Getter Public Instance`
---@field IsTriggered System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Force Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ForceFalloff System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ForceFluctuationInterval System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ForceFluctuationStrength System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field GlobalForceDecreaseInterval System.Single|number
---`Getter Public Instance`
---@field ForceMode Barotrauma.LevelTrigger.TriggerForceMode
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ForceVelocityLimit System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ColliderRadius System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field UseNetworkSyncing System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field NeedsNetworkSyncing System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field InfectIdentifier Barotrauma.Identifier
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field InfectionChance System.Single|number
_G['LevelTrigger'] = {}

---`Method Public Static`
---@param triggeredBy Barotrauma.LevelTrigger.TriggererType
---@return FarseerPhysics.Dynamics.Category
_G['LevelTrigger'].GetCollisionCategories = function(triggeredBy) end

---`Method Private Instance`
_G['LevelTrigger'].CalculateDirectionalForce = function() end

---`Method Public Static`
---@param statusEffects System.Collections.Generic.List*1Barotrauma*StatusEffect|Barotrauma.StatusEffect[]
---@param element Barotrauma.ContentXElement
---@param parentDebugName System.String|string
_G['LevelTrigger'].LoadStatusEffect = function(statusEffects, element, parentDebugName) end

---`Method Public Static`
---@param element Barotrauma.ContentXElement
---@param parentDebugName System.String|string
---@param triggerOnce System.Boolean|boolean
---@param attacks System.Collections.Generic.List*1Barotrauma*Attack|Barotrauma.Attack[]
_G['LevelTrigger'].LoadAttack = function(element, parentDebugName, triggerOnce, attacks) end

---`Method Private Instance`
---@param fixtureA FarseerPhysics.Dynamics.Fixture
---@param fixtureB FarseerPhysics.Dynamics.Fixture
---@param contact FarseerPhysics.Dynamics.Contacts.Contact
---@return System.Boolean|boolean
_G['LevelTrigger'].PhysicsBody_OnCollision = function(fixtureA, fixtureB, contact) end

---`Method Public Static`
---@param entity Barotrauma.Entity
---@param triggeredBy Barotrauma.LevelTrigger.TriggererType
---@param mustBeOutside? System.Boolean|boolean
---@param mustBeOnSpecificSub? System.ValueTuple*1System*Boolean*1Barotrauma*Submarine
---@return System.Boolean|boolean
_G['LevelTrigger'].IsTriggeredByEntity = function(entity, triggeredBy, mustBeOutside, mustBeOnSpecificSub) end

---`Method Private Instance`
---@param fixtureA FarseerPhysics.Dynamics.Fixture
---@param fixtureB FarseerPhysics.Dynamics.Fixture
---@param contact FarseerPhysics.Dynamics.Contacts.Contact
_G['LevelTrigger'].PhysicsBody_OnSeparation = function(fixtureA, fixtureB, contact) end

---`Method Public Static`
---@param triggerBody Barotrauma.PhysicsBody
---@param otherFixture FarseerPhysics.Dynamics.Fixture
---@param separatingEntity Barotrauma.Entity
---@return System.Boolean|boolean
_G['LevelTrigger'].CheckContactsForOtherFixtures = function(triggerBody, otherFixture, separatingEntity) end

---`Method Public Static`
---@param triggerBody Barotrauma.PhysicsBody
---@param targetEntity Barotrauma.Entity
---@return System.Boolean|boolean
_G['LevelTrigger'].CheckContactsForEntity = function(triggerBody, targetEntity) end

---`Method Public Static`
---@param fixture FarseerPhysics.Dynamics.Fixture
---@return Barotrauma.Entity
_G['LevelTrigger'].GetEntity = function(fixture) end

---`Method Public Instance`
---@param levelObject Barotrauma.LevelObject
---@param otherTrigger Barotrauma.LevelTrigger
_G['LevelTrigger'].OtherTriggered = function(levelObject, otherTrigger) end

---`Method Public Instance`
---@param deltaTime System.Single|number
_G['LevelTrigger'].Update = function(deltaTime) end

---`Method Public Static`
---@param physicsBody Barotrauma.PhysicsBody
---@param triggerers System.Collections.Generic.HashSet*1Barotrauma*Entity|Barotrauma.Entity[]
_G['LevelTrigger'].RemoveInActiveTriggerers = function(physicsBody, triggerers) end

---`Method Public Static`
---@param statusEffects System.Collections.Generic.List*1Barotrauma*StatusEffect|Barotrauma.StatusEffect[]
---@param worldPosition Microsoft.Xna.Framework.Vector2
---@param triggerer Barotrauma.Entity
---@param deltaTime System.Single|number
---@param targets System.Collections.Generic.List*1Barotrauma*ISerializableEntity|Barotrauma.ISerializableEntity[]
_G['LevelTrigger'].ApplyStatusEffects = function(statusEffects, worldPosition, triggerer, deltaTime, targets) end

---`Method Public Static`
---@overload fun(attacks:System.Collections.Generic.List*1Barotrauma*Attack|Barotrauma.Attack[], damageable:Barotrauma.IDamageable, worldPosition:Microsoft.Xna.Framework.Vector2, deltaTime:System.Single|number)
---@param attacks System.Collections.Generic.List*1Barotrauma*Attack|Barotrauma.Attack[]
---@param worldPosition Microsoft.Xna.Framework.Vector2
---@param deltaTime System.Single|number
_G['LevelTrigger'].ApplyAttacks = function(attacks, worldPosition, deltaTime) end

---`Method Private Instance`
---@param body Barotrauma.PhysicsBody
_G['LevelTrigger'].ApplyForce = function(body) end

---`Method Public Static`
---@param triggererBody Barotrauma.PhysicsBody
---@param triggerBody Barotrauma.PhysicsBody
---@param colliderRadius System.Single|number
---@return System.Single|number
_G['LevelTrigger'].GetDistanceFactor = function(triggererBody, triggerBody, colliderRadius) end

---`Method Public Instance`
---@overload fun(viewPosition:Microsoft.Xna.Framework.Vector2):Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Vector2
_G['LevelTrigger'].GetWaterFlowVelocity = function() end

---`Method Public Instance`
---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
_G['LevelTrigger'].ServerWrite = function(msg, c) end

---`Constructor Public Instance`
---@overload fun(element:Barotrauma.ContentXElement, position:Microsoft.Xna.Framework.Vector2, rotation:System.Single|number, scale?:System.Single|number, parentDebugName?:System.String|string):Barotrauma.LevelTrigger
---@return Barotrauma.LevelTrigger
_G['LevelTrigger'] = function() end

---`Constructor Public Instance`
---@overload fun(element:Barotrauma.ContentXElement, position:Microsoft.Xna.Framework.Vector2, rotation:System.Single|number, scale?:System.Single|number, parentDebugName?:System.String|string):Barotrauma.LevelTrigger
---@return Barotrauma.LevelTrigger
_G['LevelTrigger'].__new = function() end

---`Constructor Private Static`
---@overload fun(element:Barotrauma.ContentXElement, position:Microsoft.Xna.Framework.Vector2, rotation:System.Single|number, scale?:System.Single|number, parentDebugName?:System.String|string):Barotrauma.LevelTrigger
---@return Barotrauma.LevelTrigger
_G['LevelTrigger'] = function() end

---`Constructor Private Static`
---@overload fun(element:Barotrauma.ContentXElement, position:Microsoft.Xna.Framework.Vector2, rotation:System.Single|number, scale?:System.Single|number, parentDebugName?:System.String|string):Barotrauma.LevelTrigger
---@return Barotrauma.LevelTrigger
_G['LevelTrigger'].__new = function() end

