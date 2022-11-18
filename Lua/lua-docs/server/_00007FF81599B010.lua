---@meta
---@class Barotrauma.Items.Components.MiniMap : Barotrauma.Items.Components.Powered
---`Field Private Instance`
---@field resetDataTime System.DateTime
---`Field Private Instance`
---@field hasPower System.Boolean|boolean
---`Field Private Instance`
---@field hullDatas System.Collections.Generic.Dictionary*1Barotrauma*Hull*1Barotrauma*Items*Components*MiniMap*HullData|{[Barotrauma.Hull]:Barotrauma.Items.Components.MiniMap.HullData}
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field RequireWaterDetectors System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field RequireOxygenDetectors System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ShowHullIntegrity System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field EnableHullStatus System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field EnableElectricalView System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field EnableItemFinder System.Boolean|boolean
_G['Components']['MiniMap'] = {}

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['MiniMap'].Update = function(deltaTime, cam) end

---`Method Public Instance Virtual`
---@param connection? Barotrauma.Items.Components.Connection
---@return System.Single|number
_G['Components']['MiniMap'].GetCurrentPowerConsumption = function(connection) end

---`Method Public Instance Virtual`
---@param picker Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['MiniMap'].Pick = function(picker) end

---`Method Public Instance Virtual`
---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
_G['Components']['MiniMap'].ReceiveSignal = function(signal, connection) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.MiniMap
_G['Components']['MiniMap'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.MiniMap
_G['Components']['MiniMap'].__new = function(item, element) end

