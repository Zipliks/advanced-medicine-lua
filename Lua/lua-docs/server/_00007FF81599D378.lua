---@meta
---@class Barotrauma.Items.Components.Vent : Barotrauma.Items.Components.ItemComponent
---`Field Private Instance`
---@field oxygenFlow System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field OxygenFlow System.Single|number
_G['Components']['Vent'] = {}

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['Vent'].Update = function(deltaTime, cam) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Vent
_G['Components']['Vent'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Vent
_G['Components']['Vent'].__new = function(item, element) end

