---@meta
---@class Barotrauma.Items.Components.OxygenDetector : Barotrauma.Items.Components.ItemComponent
---`Field Private Instance`
---@field prevSentOxygenValue System.Int32|integer
---`Field Private Instance`
---@field oxygenSignal System.String|string
---`Field Public Static`
---@field LowOxygenPercentage System.Int32|integer
_G['Components']['OxygenDetector'] = {}

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['OxygenDetector'].Update = function(deltaTime, cam) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.OxygenDetector
_G['Components']['OxygenDetector'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.OxygenDetector
_G['Components']['OxygenDetector'].__new = function(item, element) end

