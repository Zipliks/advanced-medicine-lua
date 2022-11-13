---@meta
---@class Barotrauma.Items.Components.Engine : Barotrauma.Items.Components.Powered
---`Field Private Instance`
---@field force System.Single|number
---`Field Private Instance`
---@field targetForce System.Single|number
---`Field Private Instance`
---@field maxForce System.Single|number
---`Field Private Instance`
---@field propellerDamage Barotrauma.Attack
---`Field Private Instance`
---@field damageTimer System.Single|number
---`Field Private Instance`
---@field hasPower System.Boolean|boolean
---`Field Private Instance`
---@field prevVoltage System.Single|number
---`Field Private Instance`
---@field controlLockTimer System.Single|number
---`Field Public Instance`
---@field User Barotrauma.Character
---`Field Private Static`
---@field TinkeringForceIncrease System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MaxForce System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field PropellerPos Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DisablePropellerDamage System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Force System.Single|number
---`Getter Public Instance`
---@field CurrentVolume System.Single|number
---`Getter Public Instance`
---@field CurrentBrokenVolume System.Single|number
_G['Components']['Engine'] = {}

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
_G['Components']['Engine'].ServerEventWrite = function(msg, c, extraData) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IReadMessage
---@param c Barotrauma.Networking.Client
_G['Components']['Engine'].ServerEventRead = function(msg, c) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['Engine'].Update = function(deltaTime, cam) end

---`Method Public Instance Virtual`
---@param connection? Barotrauma.Items.Components.Connection
---@return System.Single|number
_G['Components']['Engine'].GetCurrentPowerConsumption = function(connection) end

---`Method Public Instance Virtual`
---@param connection Barotrauma.Items.Components.Connection
_G['Components']['Engine'].GridResolved = function(connection) end

---`Method Private Instance`
---@param noise System.Single|number
_G['Components']['Engine'].UpdateAITargets = function(noise) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['Components']['Engine'].UpdatePropellerDamage = function(deltaTime) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['Engine'].UpdateBroken = function(deltaTime, cam) end

---`Method Public Instance Virtual`
---@param relativeToSub System.Boolean|boolean
_G['Components']['Engine'].FlipX = function(relativeToSub) end

---`Method Public Instance Virtual`
---@param relativeToSub System.Boolean|boolean
_G['Components']['Engine'].FlipY = function(relativeToSub) end

---`Method Public Instance Virtual`
---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
_G['Components']['Engine'].ReceiveSignal = function(signal, connection) end

---`Method Public Instance Virtual`
---@param parentElement System.Xml.Linq.XElement
---@return System.Xml.Linq.XElement
_G['Components']['Engine'].Save = function(parentElement) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Engine
_G['Components']['Engine'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Engine
_G['Components']['Engine'].__new = function(item, element) end

