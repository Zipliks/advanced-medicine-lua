---@meta
---@class Barotrauma.Items.Components.SmokeDetector : Barotrauma.Items.Components.ItemComponent
---`Field Private Instance`
---@field fireCheckTimer System.Single|number
---`Field Private Instance`
---@field fireInRange System.Boolean|boolean
---`Field Private Instance`
---@field maxOutputLength System.Int32|integer
---`Field Private Instance`
---@field output System.String|string
---`Field Private Instance`
---@field falseOutput System.String|string
---`Field Private Static`
---@field FireCheckInterval System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MaxOutputLength System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Output System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field FalseOutput System.String|string
_G['Components']['SmokeDetector'] = {}

---`Method Private Instance`
---@return System.Boolean|boolean
_G['Components']['SmokeDetector'].IsFireInRange = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['SmokeDetector'].Update = function(deltaTime, cam) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.SmokeDetector
_G['Components']['SmokeDetector'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.SmokeDetector
_G['Components']['SmokeDetector'].__new = function(item, element) end

