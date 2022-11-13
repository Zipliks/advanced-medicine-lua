---@meta
---@class Barotrauma.Items.Components.Ladder : Barotrauma.Items.Components.ItemComponent
---`Getter Public Static`
---@field List System.Collections.Generic.List*1Barotrauma*Items*Components*Ladder|Barotrauma.Items.Components.Ladder[]
_G['Components']['Ladder'] = {}

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['Ladder'].Select = function(character) end

---`Method NonPublic Instance Virtual`
_G['Components']['Ladder'].RemoveComponentSpecific = function() end

---`Constructor Public Instance`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.Ladder
---@return Barotrauma.Items.Components.Ladder
_G['Components']['Ladder'] = function() end

---`Constructor Public Instance`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.Ladder
---@return Barotrauma.Items.Components.Ladder
_G['Components']['Ladder'].__new = function() end

---`Constructor Private Static`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.Ladder
---@return Barotrauma.Items.Components.Ladder
_G['Components']['Ladder'] = function() end

---`Constructor Private Static`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.Ladder
---@return Barotrauma.Items.Components.Ladder
_G['Components']['Ladder'].__new = function() end

