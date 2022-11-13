---@meta
---@class Barotrauma.EventPrefab : Barotrauma.Prefab
---`Field Public Instance`
---@field ConfigElement Barotrauma.ContentXElement
---`Field Public Instance`
---@field EventType System.Type
---`Field Public Instance`
---@field Probability System.Single|number
---`Field Public Instance`
---@field TriggerEventCooldown System.Boolean|boolean
---`Field Public Instance`
---@field Commonness System.Single|number
---`Field Public Instance`
---@field BiomeIdentifier Barotrauma.Identifier
---`Field Public Instance`
---@field SpawnDistance System.Single|number
---`Field Public Instance`
---@field UnlockPathEvent System.Boolean|boolean
---`Field Public Instance`
---@field UnlockPathTooltip System.String|string
---`Field Public Instance`
---@field UnlockPathReputation System.Int32|integer
---`Field Public Instance`
---@field UnlockPathFaction System.String|string
---`Field Public Static`
---@field Prefabs Barotrauma.PrefabCollection*1Barotrauma*EventPrefab|(fun():Barotrauma.EventPrefab)
_G['EventPrefab'] = {}

---`Method Public Instance`
---@param instance Barotrauma.T-ref
---@return System.Boolean|boolean
_G['EventPrefab'].TryCreateInstance = function(instance) end

---`Method Public Instance`
---@return Barotrauma.Event
_G['EventPrefab'].CreateInstance = function() end

---`Method Public Instance Virtual`
_G['EventPrefab'].Dispose = function() end

---`Method Public Instance Virtual`
---@return System.String|string
_G['EventPrefab'].ToString = function() end

---`Constructor Public Instance`
---@overload fun(element:Barotrauma.ContentXElement, file:Barotrauma.RandomEventsFile, fallbackIdentifier?:Barotrauma.Identifier):Barotrauma.EventPrefab
---@return Barotrauma.EventPrefab
_G['EventPrefab'] = function() end

---`Constructor Public Instance`
---@overload fun(element:Barotrauma.ContentXElement, file:Barotrauma.RandomEventsFile, fallbackIdentifier?:Barotrauma.Identifier):Barotrauma.EventPrefab
---@return Barotrauma.EventPrefab
_G['EventPrefab'].__new = function() end

---`Constructor Private Static`
---@overload fun(element:Barotrauma.ContentXElement, file:Barotrauma.RandomEventsFile, fallbackIdentifier?:Barotrauma.Identifier):Barotrauma.EventPrefab
---@return Barotrauma.EventPrefab
_G['EventPrefab'] = function() end

---`Constructor Private Static`
---@overload fun(element:Barotrauma.ContentXElement, file:Barotrauma.RandomEventsFile, fallbackIdentifier?:Barotrauma.Identifier):Barotrauma.EventPrefab
---@return Barotrauma.EventPrefab
_G['EventPrefab'].__new = function() end

