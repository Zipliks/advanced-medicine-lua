---@meta
---@class Barotrauma.Items.Components.Engine : Barotrauma.Items.Components.Powered
---`Field Private Instance`
---@field spriteIndex System.Single|number
---`Field Private Instance`
---@field propellerSprite Barotrauma.SpriteSheet
---`Field Private Instance`
---@field powerIndicator Barotrauma.GUITickBox
---`Field Private Instance`
---@field forceSlider Barotrauma.GUIScrollBar
---`Field Private Instance`
---@field autoControlIndicator Barotrauma.GUITickBox
---`Field Private Instance`
---@field particlesPerSec System.Int32|integer
---`Field Private Instance`
---@field particleTimer System.Single|number
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
---<br/>`Setter Private Instance`
---@field AnimSpeed System.Single|number
---`Getter Public Instance Virtual`
---@field DrawSize Microsoft.Xna.Framework.Vector2
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
---@param character Barotrauma.Character
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['Engine'].UpdateHUD = function(character, deltaTime, cam) end

---`Method Public Instance Virtual`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param editing System.Boolean|boolean
---@param itemDepth? System.Single|number
_G['Components']['Engine'].Draw = function(spriteBatch, editing, itemDepth) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
_G['Components']['Engine'].ClientEventWrite = function(msg, extraData) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IReadMessage
---@param sendingTime System.Single|number
_G['Components']['Engine'].ClientEventRead = function(msg, sendingTime) end

---`Method Private Instance`
---@param element Barotrauma.ContentXElement
_G['Components']['Engine'].InitProjSpecific = function(element) end

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

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['Components']['Engine'].UpdateAnimation = function(deltaTime) end

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

