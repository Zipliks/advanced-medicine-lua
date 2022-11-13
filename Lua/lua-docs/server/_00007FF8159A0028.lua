---@meta
---@class Barotrauma.Items.Components.DelayComponent : Barotrauma.Items.Components.ItemComponent
---`Field Private Instance`
---@field signalQueueSize System.Int32|integer
---`Field Private Instance`
---@field delayTicks System.Int32|integer
---`Field Private Instance`
---@field signalQueue System.Collections.Generic.Queue*1Barotrauma*Items*Components*DelayComponent*DelayedSignal|(fun():Barotrauma.Items.Components.DelayComponent.DelayedSignal)
---`Field Private Instance`
---@field prevQueuedSignal Barotrauma.Items.Components.DelayComponent.DelayedSignal
---`Field Private Instance`
---@field delay System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Delay System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ResetWhenSignalReceived System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ResetWhenDifferentSignalReceived System.Boolean|boolean
_G['Components']['DelayComponent'] = {}

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['DelayComponent'].Update = function(deltaTime, cam) end

---`Method Public Instance Virtual`
---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
_G['Components']['DelayComponent'].ReceiveSignal = function(signal, connection) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.DelayComponent
_G['Components']['DelayComponent'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.DelayComponent
_G['Components']['DelayComponent'].__new = function(item, element) end

