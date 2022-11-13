---@meta
---@class Barotrauma.LocationConnection : System.Object
---`Field Public Instance`
---@field Biome Barotrauma.Biome
---`Field Public Instance`
---@field Difficulty System.Single|number
---`Field Public Instance`
---@field CrackSegments System.Collections.Generic.List*1Microsoft*Xna*Framework*Vector2-arr|Microsoft.Xna.Framework.Vector2-arr|Microsoft.Xna.Framework.Vector2[][]
---`Field Public Instance`
---@field Passed System.Boolean|boolean
---`Field Public Instance`
---@field Locked System.Boolean|boolean
---`Field Private Instance`
---@field availableMissions System.Collections.Generic.List*1Barotrauma*Mission|Barotrauma.Mission[]
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field LevelData Barotrauma.LevelData
---`Getter Public Instance`
---@field CenterPos Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Locations Barotrauma.Location-arr|Barotrauma.Location[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Length System.Single|number
---`Getter Public Instance`
---@field AvailableMissions System.Collections.Generic.IEnumerable*1Barotrauma*Mission|(fun():Barotrauma.Mission)
_G['LocationConnection'] = {}

---`Method Public Instance`
---@param location Barotrauma.Location
---@return Barotrauma.Location
_G['LocationConnection'].OtherLocation = function(location) end

---`Constructor Public Instance`
---@param location1 Barotrauma.Location
---@param location2 Barotrauma.Location
---@return Barotrauma.LocationConnection
_G['LocationConnection'] = function(location1, location2) end

---`Constructor Public Instance`
---@param location1 Barotrauma.Location
---@param location2 Barotrauma.Location
---@return Barotrauma.LocationConnection
_G['LocationConnection'].__new = function(location1, location2) end

