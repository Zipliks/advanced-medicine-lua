---@meta
---@class Barotrauma.Items.Components.OutpostTerminal : Barotrauma.Items.Components.ItemComponent
---`Field Private Instance`
---@field selectionUI Barotrauma.SubmarineSelection
_G['Components']['OutpostTerminal'] = {}

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['OutpostTerminal'].Select = function(character) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['OutpostTerminal'].Update = function(deltaTime, cam) end

---`Method NonPublic Instance Virtual`
_G['Components']['OutpostTerminal'].RemoveComponentSpecific = function() end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.OutpostTerminal
_G['Components']['OutpostTerminal'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.OutpostTerminal
_G['Components']['OutpostTerminal'].__new = function(item, element) end

