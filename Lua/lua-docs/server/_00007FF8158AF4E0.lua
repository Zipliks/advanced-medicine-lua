---@meta
---@class Barotrauma.LevelData : System.Object
---`Field Public Instance`
---@field Type Barotrauma.LevelData.LevelType
---`Field Public Instance`
---@field Seed System.String|string
---`Field Public Instance`
---@field Difficulty System.Single|number
---`Field Public Instance`
---@field Biome Barotrauma.Biome
---`Field Public Instance`
---@field GenerationParams Barotrauma.LevelGenerationParams
---`Field Public Instance`
---@field HasBeaconStation System.Boolean|boolean
---`Field Public Instance`
---@field IsBeaconActive System.Boolean|boolean
---`Field Public Instance`
---@field HasHuntingGrounds System.Boolean|boolean
---`Field Public Instance`
---@field OriginallyHadHuntingGrounds System.Boolean|boolean
---`Field Public Instance`
---@field ForceOutpostGenerationParams Barotrauma.OutpostGenerationParams
---`Field Public Instance`
---@field AllowInvalidOutpost System.Boolean|boolean
---`Field Public Instance`
---@field Size Microsoft.Xna.Framework.Point
---`Field Public Instance`
---@field InitialDepth System.Int32|integer
---`Field Public Instance`
---@field MinMainPathWidth System.Nullable*1System*Int32|integer
---`Field Public Instance`
---@field EventHistory System.Collections.Generic.List*1Barotrauma*EventPrefab|Barotrauma.EventPrefab[]
---`Field Public Instance`
---@field NonRepeatableEvents System.Collections.Generic.List*1Barotrauma*EventPrefab|Barotrauma.EventPrefab[]
---`Field Public Static`
---@field HuntingGroundsDifficultyThreshold System.Single|number
---`Field Public Static`
---@field MaxHuntingGroundsProbability System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field EventsExhausted System.Boolean|boolean
---`Getter Public Instance`
---@field CrushDepth System.Single|number
---`Getter Public Instance`
---@field RealWorldCrushDepth System.Single|number
_G['LevelData'] = {}

---`Method Public Static`
---@param seed? System.String|string
---@param difficulty? System.Nullable*1System*Single|number
---@param generationParams? Barotrauma.LevelGenerationParams
---@param requireOutpost? System.Boolean|boolean
---@return Barotrauma.LevelData
_G['LevelData'].CreateRandom = function(seed, difficulty, generationParams, requireOutpost) end

---`Method Public Instance`
---@param parentElement System.Xml.Linq.XElement
_G['LevelData'].Save = function(parentElement) end

---`Constructor Public Instance`
---@overload fun(seed:System.String|string, difficulty:System.Single|number, sizeFactor:System.Single|number, generationParams:Barotrauma.LevelGenerationParams, biome:Barotrauma.Biome):Barotrauma.LevelData
---@overload fun(element:System.Xml.Linq.XElement, forceDifficulty?:System.Nullable*1System*Single|number):Barotrauma.LevelData
---@overload fun(locationConnection:Barotrauma.LocationConnection):Barotrauma.LevelData
---@param location Barotrauma.Location
---@param difficulty System.Single|number
---@return Barotrauma.LevelData
_G['LevelData'] = function(location, difficulty) end

---`Constructor Public Instance`
---@overload fun(seed:System.String|string, difficulty:System.Single|number, sizeFactor:System.Single|number, generationParams:Barotrauma.LevelGenerationParams, biome:Barotrauma.Biome):Barotrauma.LevelData
---@overload fun(element:System.Xml.Linq.XElement, forceDifficulty?:System.Nullable*1System*Single|number):Barotrauma.LevelData
---@overload fun(locationConnection:Barotrauma.LocationConnection):Barotrauma.LevelData
---@param location Barotrauma.Location
---@param difficulty System.Single|number
---@return Barotrauma.LevelData
_G['LevelData'].__new = function(location, difficulty) end

