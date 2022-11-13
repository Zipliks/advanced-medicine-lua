---@meta
---@class Barotrauma.Items.Components.EntitySpawnerComponent : Barotrauma.Items.Components.ItemComponent
---`Field Private Instance`
---@field spawnTimer System.Single|number
---`Field Private Instance`
---@field spawnTimerGoal System.Nullable*1System*Single|number
---`Field Private Instance`
---@field spawnedAmount System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ItemIdentifier System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SpeciesName System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field OnlySpawnWhenCrewInRange System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CrewAreaShape Barotrauma.Items.Components.EntitySpawnerComponent.AreaShape
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CrewAreaBounds Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CrewAreaRadius System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CrewAreaOffset Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SpawnAreaShape Barotrauma.Items.Components.EntitySpawnerComponent.AreaShape
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SpawnAreaBounds Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SpawnAreaRadius System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SpawnAreaOffset Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SpawnTimerRange Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SpawnAmountRange Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MaximumAmount System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MaximumAmountInArea System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MaximumAmountRangePadding System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CanSpawn System.Boolean|boolean
_G['Components']['EntitySpawnerComponent'] = {}

---`Method Public Instance Virtual`
_G['Components']['EntitySpawnerComponent'].OnItemLoaded = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['EntitySpawnerComponent'].Update = function(deltaTime, cam) end

---`Method Public Instance Virtual`
---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
_G['Components']['EntitySpawnerComponent'].ReceiveSignal = function(signal, connection) end

---`Method Private Instance`
---@param size Microsoft.Xna.Framework.Vector2
---@param offset Microsoft.Xna.Framework.Vector2
---@param draw System.Boolean|boolean
---@return Microsoft.Xna.Framework.RectangleF
_G['Components']['EntitySpawnerComponent'].GetAreaRectangle = function(size, offset, draw) end

---`Method Private Instance`
---@return System.Boolean|boolean
_G['Components']['EntitySpawnerComponent'].CanSpawnMore = function() end

---`Method Private Instance`
---@param worldPos Microsoft.Xna.Framework.Vector2
---@param crewArea? System.Boolean|boolean
---@param rangePad? System.Boolean|boolean
---@return System.Boolean|boolean
_G['Components']['EntitySpawnerComponent'].IsInRange = function(worldPos, crewArea, rangePad) end

---`Method Public Instance`
_G['Components']['EntitySpawnerComponent'].Spawn = function() end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.EntitySpawnerComponent
_G['Components']['EntitySpawnerComponent'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.EntitySpawnerComponent
_G['Components']['EntitySpawnerComponent'].__new = function(item, element) end

