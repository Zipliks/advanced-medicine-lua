---@meta
---@class Barotrauma.Items.Components.Powered : Barotrauma.Items.Components.ItemComponent
---`Field NonPublic Instance`
---@field currPowerConsumption System.Single|number
---`Field Private Instance`
---@field voltage System.Single|number
---`Field Private Instance`
---@field minVoltage System.Single|number
---`Field NonPublic Instance`
---@field powerConsumption System.Single|number
---`Field NonPublic Instance`
---@field powerIn Barotrauma.Items.Components.Connection
---`Field NonPublic Instance`
---@field powerOut Barotrauma.Items.Components.Connection
---`Field Private Static`
---@field poweredList System.Collections.Generic.List*1Barotrauma*Items*Components*Powered|Barotrauma.Items.Components.Powered[]
---`Field Public Static`
---@field ChangedConnections System.Collections.Generic.HashSet*1Barotrauma*Items*Components*Connection|Barotrauma.Items.Components.Connection[]
---`Field Public Static`
---@field Grids System.Collections.Generic.Dictionary*1System*Int32*1Barotrauma*Items*Components*GridInfo|{[System.Int32|integer]:Barotrauma.Items.Components.GridInfo}
---`Field NonPublic Static`
---@field UpdateInterval System.Single|number
---`Field NonPublic Static`
---@field MaxOverVoltageFactor System.Single|number
---`Getter Public Static`
---@field PoweredList System.Collections.Generic.IEnumerable*1Barotrauma*Items*Components*Powered|(fun():Barotrauma.Items.Components.Powered)
---`Getter NonPublic Instance Virtual`
---@field Priority Barotrauma.Items.Components.PowerPriority
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MinVoltage System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field PowerConsumption System.Single|number
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field IsActive System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CurrPowerConsumption System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Voltage System.Single|number
---`Getter Public Instance`
---@field RelativeVoltage System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field PoweredByTinkering System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field VulnerableToEMP System.Boolean|boolean
_G['Components']['Powered'] = {}

---`Method NonPublic Instance`
---@param deltaTime System.Single|number
_G['Components']['Powered'].UpdateOnActiveEffects = function(deltaTime) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['Powered'].Update = function(deltaTime, cam) end

---`Method Public Instance Virtual`
_G['Components']['Powered'].OnItemLoaded = function() end

---`Method Public Static`
---@param useCache? System.Boolean|boolean
_G['Components']['Powered'].UpdateGrids = function(useCache) end

---`Method Private Static`
---@overload fun(conn:Barotrauma.Items.Components.Connection):Barotrauma.Items.Components.GridInfo
---@param conn Barotrauma.Items.Components.Connection
---@param gridID System.Int32|integer
---@return Barotrauma.Items.Components.GridInfo
_G['Components']['Powered'].PropagateGrid = function(conn, gridID) end

---`Method Public Static`
---@param deltaTime System.Single|number
_G['Components']['Powered'].UpdatePower = function(deltaTime) end

---`Method Public Instance Virtual`
---@param connection? Barotrauma.Items.Components.Connection
---@return System.Single|number
_G['Components']['Powered'].GetCurrentPowerConsumption = function(connection) end

---`Method Public Instance Virtual`
---@param conn Barotrauma.Items.Components.Connection
---@param load? System.Single|number
---@return Barotrauma.Items.Components.PowerRange
_G['Components']['Powered'].MinMaxPowerOut = function(conn, load) end

---`Method Public Instance Virtual`
---@param conn Barotrauma.Items.Components.Connection
---@param power System.Single|number
---@param minMaxPower Barotrauma.Items.Components.PowerRange
---@param load System.Single|number
---@return System.Single|number
_G['Components']['Powered'].GetConnectionPowerOut = function(conn, power, minMaxPower, load) end

---`Method Public Instance Virtual`
---@param conn Barotrauma.Items.Components.Connection
_G['Components']['Powered'].GridResolved = function(conn) end

---`Method Public Static`
---@param conn1 Barotrauma.Items.Components.Connection
---@param conn2 Barotrauma.Items.Components.Connection
---@return System.Boolean|boolean
_G['Components']['Powered'].ValidPowerConnection = function(conn1, conn2) end

---`Method NonPublic Instance`
---@return System.Single|number
_G['Components']['Powered'].GetAvailableInstantaneousBatteryPower = function() end

---`Method NonPublic Instance`
---@return System.Collections.Generic.List*1Barotrauma*Items*Components*PowerContainer|Barotrauma.Items.Components.PowerContainer[]
_G['Components']['Powered'].GetDirectlyConnectedBatteries = function() end

---`Method NonPublic Instance Virtual`
_G['Components']['Powered'].RemoveComponentSpecific = function() end

---`Constructor Public Instance`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.Powered
---@return Barotrauma.Items.Components.Powered
_G['Components']['Powered'] = function() end

---`Constructor Public Instance`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.Powered
---@return Barotrauma.Items.Components.Powered
_G['Components']['Powered'].__new = function() end

---`Constructor Private Static`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.Powered
---@return Barotrauma.Items.Components.Powered
_G['Components']['Powered'] = function() end

---`Constructor Private Static`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.Powered
---@return Barotrauma.Items.Components.Powered
_G['Components']['Powered'].__new = function() end

