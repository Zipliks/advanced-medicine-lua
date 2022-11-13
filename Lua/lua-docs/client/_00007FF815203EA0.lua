---@meta
---@class Barotrauma.Items.Components.OxygenGenerator : Barotrauma.Items.Components.Powered
---`Field Private Instance`
---@field generatedAmount System.Single|number
---`Field Private Instance`
---@field ventList System.Collections.Generic.List*1System*ValueTuple*2Barotrauma*Items*Components*Vent*2System*Single|System.ValueTuple*1Barotrauma*Items*Components*Vent*1System*Single[]
---`Field Private Instance`
---@field totalHullVolume System.Single|number
---`Field Private Instance`
---@field ventUpdateTimer System.Single|number
---`Field Private Static`
---@field VentUpdateInterval System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field CurrFlow System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field GeneratedAmount System.Single|number
_G['Components']['OxygenGenerator'] = {}

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['OxygenGenerator'].Update = function(deltaTime, cam) end

---`Method Public Instance Virtual`
---@param connection? Barotrauma.Items.Components.Connection
---@return System.Single|number
_G['Components']['OxygenGenerator'].GetCurrentPowerConsumption = function(connection) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['OxygenGenerator'].UpdateBroken = function(deltaTime, cam) end

---`Method Private Instance`
_G['Components']['OxygenGenerator'].GetVents = function() end

---`Method Private Instance`
---@param deltaOxygen System.Single|number
---@param deltaTime System.Single|number
_G['Components']['OxygenGenerator'].UpdateVents = function(deltaOxygen, deltaTime) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.OxygenGenerator
_G['Components']['OxygenGenerator'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.OxygenGenerator
_G['Components']['OxygenGenerator'].__new = function(item, element) end

