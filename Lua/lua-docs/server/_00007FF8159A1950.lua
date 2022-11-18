---@meta
---@class Barotrauma.Items.Components.ModuloComponent : Barotrauma.Items.Components.ItemComponent
---`Field Private Instance`
---@field modulus System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Modulus System.Single|number
_G['Components']['ModuloComponent'] = {}

---`Method Public Instance Virtual`
---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
_G['Components']['ModuloComponent'].ReceiveSignal = function(signal, connection) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.ModuloComponent
_G['Components']['ModuloComponent'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.ModuloComponent
_G['Components']['ModuloComponent'].__new = function(item, element) end

