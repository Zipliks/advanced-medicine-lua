---@meta
---@class Barotrauma.Items.Components.LightComponent : Barotrauma.Items.Components.Powered
---`Field Private Instance`
---@field lastReceivedState System.Nullable*1System*Boolean|boolean
---`Field Private Instance`
---@field resetPredictionCoroutine Barotrauma.CoroutineHandle
---`Field Private Instance`
---@field resetPredictionTimer System.Single|number
---`Field Private Instance`
---@field currentBrightness System.Single|number
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
---`Getter Public Instance Virtual`
---@field DrawSize Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---@field Light Barotrauma.Lights.LightSource
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

---`Method Public Instance Virtual`
_G['Components']['LightComponent'].OnScaleChanged = function() end

---`Method Public Instance Virtual`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param editing? System.Boolean|boolean
---@param itemDepth? System.Single|number
_G['Components']['LightComponent'].Draw = function(spriteBatch, editing, itemDepth) end

---`Method Public Instance Virtual`
---@param relativeToSub System.Boolean|boolean
_G['Components']['LightComponent'].FlipX = function(relativeToSub) end

---`Method Private Instance`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
_G['Components']['LightComponent'].ResetPredictionAfterDelay = function() end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IReadMessage
---@param sendingTime System.Single|number
_G['Components']['LightComponent'].ClientEventRead = function(msg, sendingTime) end

---`Method NonPublic Instance Virtual`
_G['Components']['LightComponent'].RemoveComponentSpecific = function() end

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

---`Method Private Instance`
---@param enabled System.Boolean|boolean
---@param brightness System.Single|number
_G['Components']['LightComponent'].SetLightSourceState = function(enabled, brightness) end

---`Method Public Instance`
_G['Components']['LightComponent'].SetLightSourceTransform = function() end

---`Method Private Instance`
_G['Components']['LightComponent'].SetLightSourceTransformProjSpecific = function() end

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

