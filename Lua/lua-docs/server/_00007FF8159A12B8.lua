---@meta
---@class Barotrauma.Items.Components.LightComponent : Barotrauma.Items.Components.Powered
---`Field Private Instance`
---@field sendStateCoroutine Barotrauma.CoroutineHandle
---`Field Private Instance`
---@field lastSentState System.Boolean|boolean
---`Field Private Instance`
---@field sendStateTimer System.Single|number
---`Field Private Instance`
---@field lightColor Microsoft.Xna.Framework.Color
---`Field Private Instance`
---@field lightBrightness System.Single|number
---`Field Private Instance`
---@field blinkFrequency System.Single|number
---`Field Private Instance`
---@field pulseFrequency System.Single|number
---`Field Private Instance`
---@field pulseAmount System.Single|number
---`Field Private Instance`
---@field range System.Single|number
---`Field Private Instance`
---@field flicker System.Single|number
---`Field Private Instance`
---@field flickerSpeed System.Single|number
---`Field Private Instance`
---@field castShadows System.Boolean|boolean
---`Field Private Instance`
---@field drawBehindSubs System.Boolean|boolean
---`Field Private Instance`
---@field lastToggleSignalTime System.Double|number
---`Field Private Instance`
---@field prevColorSignal System.String|string
---`Field Public Instance`
---@field ParentBody Barotrauma.PhysicsBody
---`Field Private Instance`
---@field isOn System.Boolean|boolean
---`Field Private Instance`
---@field turret Barotrauma.Items.Components.Turret
---`Field Private Instance`
---@field rotation System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Range System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Rotation System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CastShadows System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DrawBehindSubs System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field IsOn System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Flicker System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field FlickerSpeed System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field PulseFrequency System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field PulseAmount System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field BlinkFrequency System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field LightColor Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field IgnoreContinuousToggle System.Boolean|boolean
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field IsActive System.Boolean|boolean
_G['Components']['LightComponent'] = {}

---`Method Private Instance`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
_G['Components']['LightComponent'].SendStateAfterDelay = function() end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
_G['Components']['LightComponent'].ServerEventWrite = function(msg, c, extraData) end

---`Method Public Instance Virtual`
---@param amount Microsoft.Xna.Framework.Vector2
---@param ignoreContacts? System.Boolean|boolean
_G['Components']['LightComponent'].Move = function(amount, ignoreContacts) end

---`Method Public Instance Virtual`
_G['Components']['LightComponent'].OnItemLoaded = function() end

---`Method Public Instance Virtual`
_G['Components']['LightComponent'].OnMapLoaded = function() end

---`Method Public Instance`
_G['Components']['LightComponent'].CheckIfNeedsUpdate = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['LightComponent'].Update = function(deltaTime, cam) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['LightComponent'].UpdateBroken = function(deltaTime, cam) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param character? Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['LightComponent'].Use = function(deltaTime, character) end

---`Method Private Instance`
_G['Components']['LightComponent'].OnStateChanged = function() end

---`Method Public Instance Virtual`
---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
_G['Components']['LightComponent'].ReceiveSignal = function(signal, connection) end

---`Method Private Instance`
---@param target Barotrauma.AITarget
_G['Components']['LightComponent'].UpdateAITarget = function(target) end

---`Method Public Instance`
_G['Components']['LightComponent'].SetLightSourceTransform = function() end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.LightComponent
_G['Components']['LightComponent'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.LightComponent
_G['Components']['LightComponent'].__new = function(item, element) end

