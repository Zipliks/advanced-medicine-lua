---@meta
---@class Barotrauma.Items.Components.Scanner : Barotrauma.Items.Components.ItemComponent
---`Field Private Instance`
---@field scanTimer System.Single|number
---`Field Public Instance`
---@field OnScanStarted System.Action*1Barotrauma*Items*Components*Scanner|(fun(obj:Barotrauma.Items.Components.Scanner))
---`Field Public Instance`
---@field OnScanCompleted System.Action*1Barotrauma*Items*Components*Scanner|(fun(obj:Barotrauma.Items.Components.Scanner))
---`Getter Private Instance`
---<br/>`Setter Private Instance`
---@field LastSentScanTimer System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ScanDuration System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ScanTimer System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ScanRadius System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AlwaysDisplayProgressBar System.Boolean|boolean
---`Getter Private Instance`
---<br/>`Setter Private Instance`
---@field Holdable Barotrauma.Items.Components.Holdable
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DisplayProgressBar System.Boolean|boolean
---`Getter Private Instance`
---@field IsScanCompleted System.Boolean|boolean
_G['Components']['Scanner'] = {}

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
_G['Components']['Scanner'].ServerEventWrite = function(msg, c, extraData) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['Scanner'].Update = function(deltaTime, cam) end

---`Method Public Instance Virtual`
_G['Components']['Scanner'].OnItemLoaded = function() end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Scanner
_G['Components']['Scanner'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Scanner
_G['Components']['Scanner'].__new = function(item, element) end

