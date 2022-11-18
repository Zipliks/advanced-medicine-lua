---@meta
---@class Barotrauma.Item.ComponentStateEventData : System.ValueType
---`Field Public Instance`
---@field Component Barotrauma.Items.Components.ItemComponent
---`Field Public Instance`
---@field ComponentData Barotrauma.Items.Components.ItemComponent.IEventData
---`Getter Public Instance Virtual`
---@field EventType Barotrauma.Item.EventType
_G['Item']['ComponentStateEventData'] = {}

---`Constructor Public Instance`
---@param component Barotrauma.Items.Components.ItemComponent
---@param componentData Barotrauma.Items.Components.ItemComponent.IEventData
---@return Barotrauma.Item.ComponentStateEventData
_G['Item']['ComponentStateEventData'] = function(component, componentData) end

---`Constructor Public Instance`
---@param component Barotrauma.Items.Components.ItemComponent
---@param componentData Barotrauma.Items.Components.ItemComponent.IEventData
---@return Barotrauma.Item.ComponentStateEventData
_G['Item']['ComponentStateEventData'].__new = function(component, componentData) end

