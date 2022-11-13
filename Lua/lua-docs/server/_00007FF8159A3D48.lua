---@meta
---@class Barotrauma.Items.Components.SubtractComponent : Barotrauma.Items.Components.ArithmeticComponent
_G['Components']['SubtractComponent'] = {}

---`Method NonPublic Instance Virtual`
---@param signal1 System.Single|number
---@param signal2 System.Single|number
---@return System.Single|number
_G['Components']['SubtractComponent'].Calculate = function(signal1, signal2) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.SubtractComponent
_G['Components']['SubtractComponent'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.SubtractComponent
_G['Components']['SubtractComponent'].__new = function(item, element) end

