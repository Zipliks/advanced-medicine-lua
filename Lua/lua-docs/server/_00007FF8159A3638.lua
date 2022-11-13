---@meta
---@class Barotrauma.Items.Components.Signal : System.ValueType
---`Field Public Instance`
---@field value System.String|string
---`Field Public Instance`
---@field stepsTaken System.Int32|integer
---`Field Public Instance`
---@field sender Barotrauma.Character
---`Field Public Instance`
---@field source Barotrauma.Item
---`Field Public Instance`
---@field power System.Single|number
---`Field Public Instance`
---@field strength System.Single|number
_G['Signal'] = {}

---`Method Public Static`
---@param value System.String|string
---@param stepsTaken? System.Int32|integer
---@param sender? Barotrauma.Character
---@param source? Barotrauma.Item
---@param power? System.Single|number
---@param strength? System.Single|number
---@return Barotrauma.Items.Components.Signal
_G['Signal'].Create = function(value, stepsTaken, sender, source, power, strength) end

---`Method NonPublic Instance`
---@param stepsTaken System.Int32|integer
---@return Barotrauma.Items.Components.Signal
_G['Signal'].WithStepsTaken = function(stepsTaken) end

---`Constructor Public Instance`
---@param value System.String|string
---@param stepsTaken? System.Int32|integer
---@param sender? Barotrauma.Character
---@param source? Barotrauma.Item
---@param power? System.Single|number
---@param strength? System.Single|number
---@return Barotrauma.Items.Components.Signal
_G['Signal'] = function(value, stepsTaken, sender, source, power, strength) end

---`Constructor Public Instance`
---@param value System.String|string
---@param stepsTaken? System.Int32|integer
---@param sender? Barotrauma.Character
---@param source? Barotrauma.Item
---@param power? System.Single|number
---@param strength? System.Single|number
---@return Barotrauma.Items.Components.Signal
_G['Signal'].__new = function(value, stepsTaken, sender, source, power, strength) end

