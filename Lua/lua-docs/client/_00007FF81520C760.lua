---@meta
---@class Barotrauma.Items.Components.OrComponent : Barotrauma.Items.Components.BooleanOperatorComponent
_G['Components']['OrComponent'] = {}

---`Method NonPublic Instance Virtual`
---@param numTrueInputs System.Int32|integer
---@return System.Boolean|boolean
_G['Components']['OrComponent'].GetOutput = function(numTrueInputs) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.OrComponent
_G['Components']['OrComponent'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.OrComponent
_G['Components']['OrComponent'].__new = function(item, element) end

