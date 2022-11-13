---@meta
---@class Barotrauma.Items.Components.GreaterComponent : Barotrauma.Items.Components.EqualsComponent
---`Field Private Instance`
---@field val1 System.Single|number
---`Field Private Instance`
---@field val2 System.Single|number
_G['Components']['GreaterComponent'] = {}

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['GreaterComponent'].Update = function(deltaTime, cam) end

---`Method Public Instance Virtual`
---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
_G['Components']['GreaterComponent'].ReceiveSignal = function(signal, connection) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.GreaterComponent
_G['Components']['GreaterComponent'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.GreaterComponent
_G['Components']['GreaterComponent'].__new = function(item, element) end

