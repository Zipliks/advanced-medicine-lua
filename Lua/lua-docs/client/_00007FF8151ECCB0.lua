---@meta
---@class Barotrauma.Items.Components.Propulsion : Barotrauma.Items.Components.ItemComponent
---`Field Private Instance`
---@field useState System.Single|number
---`Field Private Instance`
---@field particles System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field UsableIn Barotrauma.Items.Components.Propulsion.UseEnvironment
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Force System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Particles System.String|string
_G['Components']['Propulsion'] = {}

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param character? Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['Propulsion'].Use = function(deltaTime, character) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['Propulsion'].Update = function(deltaTime, cam) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Propulsion
_G['Components']['Propulsion'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Propulsion
_G['Components']['Propulsion'].__new = function(item, element) end

