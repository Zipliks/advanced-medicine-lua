---@meta
---@class Barotrauma.Items.Components.TriggerComponent : Barotrauma.Items.Components.ItemComponent
---`Field Private Instance`
---@field triggeredBy Barotrauma.LevelTrigger.TriggererType
---`Field Private Instance`
---@field triggerers System.Collections.Generic.HashSet*1Barotrauma*Entity|Barotrauma.Entity[]
---`Field Private Instance`
---@field triggerOnce System.Boolean|boolean
---`Field Private Instance`
---@field statusEffectTargets System.Collections.Generic.List*1Barotrauma*ISerializableEntity|Barotrauma.ISerializableEntity[]
---`Field Private Instance`
---@field statusEffects System.Collections.Generic.List*1Barotrauma*StatusEffect|Barotrauma.StatusEffect[]
---`Field Private Instance`
---@field attacks System.Collections.Generic.List*1Barotrauma*Attack|Barotrauma.Attack[]
---`Field Private Instance`
---@field forceFluctuationStrength System.Single|number
---`Field Private Instance`
---@field forceFluctuationFrequency System.Single|number
---`Field Private Instance`
---@field forceFluctuationInterval System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Force System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DistanceBasedForce System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ForceFluctuation System.Boolean|boolean
---`Getter Private Instance`
---<br/>`Setter Private Instance`
---@field ForceFluctuationStrength System.Single|number
---`Getter Private Instance`
---<br/>`Setter Private Instance`
---@field ForceFluctuationFrequency System.Single|number
---`Getter Private Instance`
---<br/>`Setter Private Instance`
---@field ForceFluctuationInterval System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field PhysicsBody Barotrauma.PhysicsBody
---`Getter Private Instance`
---<br/>`Setter Private Instance`
---@field Radius System.Single|number
---`Getter Private Instance`
---<br/>`Setter Private Instance`
---@field RadiusInDisplayUnits System.Single|number
---`Getter Private Instance`
---<br/>`Setter Private Instance`
---@field TriggeredOnce System.Boolean|boolean
---`Getter Private Instance`
---<br/>`Setter Private Instance`
---@field CurrentForceFluctuation System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field TriggerActive System.Boolean|boolean
---`Getter Private Instance`
---<br/>`Setter Private Instance`
---@field ForceFluctuationTimer System.Single|number
---`Getter Private Static`
---@field TimeInLevel System.Single|number
_G['Components']['TriggerComponent'] = {}

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
_G['Components']['TriggerComponent'].ServerEventWrite = function(msg, c, extraData) end

---`Method Public Instance Virtual`
_G['Components']['TriggerComponent'].OnItemLoaded = function() end

---`Method Public Instance Virtual`
_G['Components']['TriggerComponent'].OnMapLoaded = function() end

---`Method Private Instance`
---@param sender FarseerPhysics.Dynamics.Fixture
---@param other FarseerPhysics.Dynamics.Fixture
---@param contact FarseerPhysics.Dynamics.Contacts.Contact
---@return System.Boolean|boolean
_G['Components']['TriggerComponent'].OnCollision = function(sender, other, contact) end

---`Method Private Instance`
---@param sender FarseerPhysics.Dynamics.Fixture
---@param other FarseerPhysics.Dynamics.Fixture
---@param contact FarseerPhysics.Dynamics.Contacts.Contact
_G['Components']['TriggerComponent'].OnSeparation = function(sender, other, contact) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['TriggerComponent'].Update = function(deltaTime, cam) end

---`Method Private Instance`
---@param body Barotrauma.PhysicsBody
_G['Components']['TriggerComponent'].ApplyForce = function(body) end

---`Method Public Instance Virtual`
---@param amount Microsoft.Xna.Framework.Vector2
---@param ignoreContacts? System.Boolean|boolean
_G['Components']['TriggerComponent'].Move = function(amount, ignoreContacts) end

---`Method Public Instance Virtual`
---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
_G['Components']['TriggerComponent'].ReceiveSignal = function(signal, connection) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.TriggerComponent
_G['Components']['TriggerComponent'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.TriggerComponent
_G['Components']['TriggerComponent'].__new = function(item, element) end

