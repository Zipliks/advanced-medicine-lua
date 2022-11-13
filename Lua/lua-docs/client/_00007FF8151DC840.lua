---@meta
---@class Barotrauma.Items.Components.Pump : Barotrauma.Items.Components.Powered
---`Field Private Instance`
---@field pumpSpeedSlider Barotrauma.GUIScrollBar
---`Field Private Instance`
---@field powerLight Barotrauma.GUITickBox
---`Field Private Instance`
---@field autoControlIndicator Barotrauma.GUITickBox
---`Field Private Instance`
---@field pumpOutEmitters System.Collections.Generic.List*1System*ValueTuple*2Microsoft*Xna*Framework*Vector2*2Barotrauma*Particles*ParticleEmitter|System.ValueTuple*1Microsoft*Xna*Framework*Vector2*1Barotrauma*Particles*ParticleEmitter[]
---`Field Private Instance`
---@field pumpInEmitters System.Collections.Generic.List*1System*ValueTuple*2Microsoft*Xna*Framework*Vector2*2Barotrauma*Particles*ParticleEmitter|System.ValueTuple*1Microsoft*Xna*Framework*Vector2*1Barotrauma*Particles*ParticleEmitter[]
---`Field Private Instance`
---@field flickerTimer System.Single|number
---`Field Private Instance`
---@field flickerFrequency System.Single|number
---`Field Private Instance`
---@field flowPercentage System.Single|number
---`Field Private Instance`
---@field maxFlow System.Single|number
---`Field Public Instance`
---@field TargetLevel System.Nullable*1System*Single|number
---`Field Private Instance`
---@field hijacked System.Boolean|boolean
---`Field Private Instance`
---@field pumpSpeedLockTimer System.Single|number
---`Field Private Instance`
---@field isActiveLockTimer System.Single|number
---`Field Private Instance`
---@field currFlow System.Single|number
---`Field Private Static`
---@field TinkeringSpeedIncrease System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field PowerButton Barotrauma.GUIButton
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Hijacked System.Boolean|boolean
---`Getter Public Instance`
---@field CurrentBrokenVolume System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field FlowPercentage System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MaxFlow System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field IsOn System.Boolean|boolean
---`Getter Public Instance`
---@field CurrFlow System.Single|number
---`Getter Public Instance`
---@field HasPower System.Boolean|boolean
---`Getter Public Instance`
---@field IsAutoControlled System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field UpdateWhenInactive System.Boolean|boolean
_G['Components']['Pump'] = {}

---`Method Public Instance Virtual`
_G['Components']['Pump'].OnItemLoaded = function() end

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['Pump'].UpdateHUD = function(character, deltaTime, cam) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
_G['Components']['Pump'].ClientEventWrite = function(msg, extraData) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IReadMessage
---@param sendingTime System.Single|number
_G['Components']['Pump'].ClientEventRead = function(msg, sendingTime) end

---`Method Private Instance`
---@param element Barotrauma.ContentXElement
_G['Components']['Pump'].InitProjSpecific = function(element) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['Pump'].Update = function(deltaTime, cam) end

---`Method Public Instance`
---@param identifier Barotrauma.Identifier
---@param allowMultiplePerShip? System.Boolean|boolean
_G['Components']['Pump'].InfectBallast = function(identifier, allowMultiplePerShip) end

---`Method Public Instance Virtual`
---@param connection? Barotrauma.Items.Components.Connection
---@return System.Single|number
_G['Components']['Pump'].GetCurrentPowerConsumption = function(connection) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['Components']['Pump'].UpdateProjSpecific = function(deltaTime) end

---`Method Public Instance Virtual`
---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
_G['Components']['Pump'].ReceiveSignal = function(signal, connection) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param character Barotrauma.Character
---@param objective Barotrauma.AIObjectiveOperateItem
---@return System.Boolean|boolean
_G['Components']['Pump'].AIOperate = function(deltaTime, character, objective) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Pump
_G['Components']['Pump'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Pump
_G['Components']['Pump'].__new = function(item, element) end

