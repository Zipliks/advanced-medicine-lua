---@meta
---@class Barotrauma.Items.Components.MultiplyComponent : Barotrauma.Items.Components.ArithmeticComponent
_G['Components']['MultiplyComponent'] = {}

---`Method NonPublic Instance Virtual`
---@param signal1 System.Single|number
---@param signal2 System.Single|number
---@return System.Single|number
_G['Components']['MultiplyComponent'].Calculate = function(signal1, signal2) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.MultiplyComponent
_G['Components']['MultiplyComponent'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.MultiplyComponent
_G['Components']['MultiplyComponent'].__new = function(item, element) end

