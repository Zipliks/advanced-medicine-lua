---@meta
---@class Barotrauma.Items.Components.ExponentiationComponent : Barotrauma.Items.Components.ItemComponent
---`Field Private Instance`
---@field exponent System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Exponent System.Single|number
_G['Components']['ExponentiationComponent'] = {}

---`Method Public Instance Virtual`
---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
_G['Components']['ExponentiationComponent'].ReceiveSignal = function(signal, connection) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.ExponentiationComponent
_G['Components']['ExponentiationComponent'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.ExponentiationComponent
_G['Components']['ExponentiationComponent'].__new = function(item, element) end

