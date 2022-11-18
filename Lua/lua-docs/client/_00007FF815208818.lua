---@meta
---@class Barotrauma.Items.Components.ColorComponent : Barotrauma.Items.Components.ItemComponent
---`Field NonPublic Instance`
---@field receivedSignal System.Single-arr|System.Single|number[]
---`Field Private Instance`
---@field output System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field UseHSV System.Boolean|boolean
_G['Components']['ColorComponent'] = {}

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['ColorComponent'].Update = function(deltaTime, cam) end

---`Method Private Instance`
_G['Components']['ColorComponent'].UpdateOutput = function() end

---`Method Public Instance Virtual`
---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
_G['Components']['ColorComponent'].ReceiveSignal = function(signal, connection) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.ColorComponent
_G['Components']['ColorComponent'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.ColorComponent
_G['Components']['ColorComponent'].__new = function(item, element) end

