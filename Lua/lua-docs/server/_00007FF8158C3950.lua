---@meta
---@class Barotrauma.Biome : Barotrauma.PrefabWithUintIdentifier
---`Field Public Instance`
---@field OldIdentifier Barotrauma.Identifier
---`Field Public Instance`
---@field DisplayName Barotrauma.LocalizedString
---`Field Public Instance`
---@field Description Barotrauma.LocalizedString
---`Field Public Instance`
---@field IsEndBiome System.Boolean|boolean
---`Field Public Instance`
---@field MinDifficulty System.Single|number
---`Field Private Instance`
---@field maxDifficulty System.Single|number
---`Field Public Instance`
---@field AllowedZones System.Collections.Immutable.ImmutableHashSet*1System*Int32|System.Int32|integer[]
---`Field Public Static`
---@field Prefabs Barotrauma.PrefabCollection*1Barotrauma*Biome|(fun():Barotrauma.Biome)
---`Getter Public Instance`
---@field ActualMaxDifficulty System.Single|number
---`Getter Public Instance`
---@field AdjustedMaxDifficulty System.Single|number
_G['Biome'] = {}

---`Method Public Static`
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Identifier
_G['Biome'].ParseIdentifier = function(element) end

---`Method Public Instance Virtual`
_G['Biome'].Dispose = function() end

---`Constructor Public Instance`
---@overload fun(element:Barotrauma.ContentXElement, file:Barotrauma.LevelGenerationParametersFile):Barotrauma.Biome
---@return Barotrauma.Biome
_G['Biome'] = function() end

---`Constructor Public Instance`
---@overload fun(element:Barotrauma.ContentXElement, file:Barotrauma.LevelGenerationParametersFile):Barotrauma.Biome
---@return Barotrauma.Biome
_G['Biome'].__new = function() end

---`Constructor Private Static`
---@overload fun(element:Barotrauma.ContentXElement, file:Barotrauma.LevelGenerationParametersFile):Barotrauma.Biome
---@return Barotrauma.Biome
_G['Biome'] = function() end

---`Constructor Private Static`
---@overload fun(element:Barotrauma.ContentXElement, file:Barotrauma.LevelGenerationParametersFile):Barotrauma.Biome
---@return Barotrauma.Biome
_G['Biome'].__new = function() end

