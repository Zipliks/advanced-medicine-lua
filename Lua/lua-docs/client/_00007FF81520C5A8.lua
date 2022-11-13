---@meta
---@class Barotrauma.Items.Components.NotComponent : Barotrauma.Items.Components.ItemComponent
---`Field Private Instance`
---@field signalReceived System.Boolean|boolean
---`Field Private Instance`
---@field continuousOutput System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ContinuousOutput System.Boolean|boolean
_G['Components']['NotComponent'] = {}

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['NotComponent'].Update = function(deltaTime, cam) end

---`Method Public Instance Virtual`
---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
_G['Components']['NotComponent'].ReceiveSignal = function(signal, connection) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.NotComponent
_G['Components']['NotComponent'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.NotComponent
_G['Components']['NotComponent'].__new = function(item, element) end

