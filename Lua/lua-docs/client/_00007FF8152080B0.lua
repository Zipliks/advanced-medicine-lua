---@meta
---@class Barotrauma.Items.Components.AndComponent : Barotrauma.Items.Components.BooleanOperatorComponent
_G['Components']['AndComponent'] = {}

---`Method NonPublic Instance Virtual`
---@param numTrueInputs System.Int32|integer
---@return System.Boolean|boolean
_G['Components']['AndComponent'].GetOutput = function(numTrueInputs) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.AndComponent
_G['Components']['AndComponent'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.AndComponent
_G['Components']['AndComponent'].__new = function(item, element) end

