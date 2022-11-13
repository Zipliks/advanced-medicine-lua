---@meta
---@class Barotrauma.Items.Components.Throwable : Barotrauma.Items.Components.Holdable
---`Field Private Instance`
---@field throwPos System.Single|number
---`Field Private Instance`
---@field throwing System.Boolean|boolean
---`Field Private Instance`
---@field throwDone System.Boolean|boolean
---`Field Private Instance`
---@field midAir System.Boolean|boolean
---`Field Private Static`
---@field ContinuousCollisionThreshold System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field CurrentThrower Barotrauma.Character
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ThrowForce System.Single|number
_G['Components']['Throwable'] = {}

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param character? Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['Throwable'].Use = function(deltaTime, character) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param character? Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['Throwable'].SecondaryUse = function(deltaTime, character) end

---`Method Public Instance Virtual`
---@param dropper Barotrauma.Character
_G['Components']['Throwable'].Drop = function(dropper) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['Throwable'].UpdateBroken = function(deltaTime, cam) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['Throwable'].Update = function(deltaTime, cam) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Throwable
_G['Components']['Throwable'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Throwable
_G['Components']['Throwable'].__new = function(item, element) end

