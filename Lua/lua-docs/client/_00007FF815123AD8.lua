---@meta
---@class Barotrauma.LocationType : Barotrauma.PrefabWithUintIdentifier
---`Field Private Instance`
---@field names System.Collections.Generic.List*1System*String|System.String|string[]
---`Field Private Instance`
---@field portraits System.Collections.Generic.List*1Barotrauma*Sprite|Barotrauma.Sprite[]
---`Field Private Instance`
---@field hireableJobs System.Collections.Immutable.ImmutableArray*1System*ValueTuple*2Barotrauma*Identifier*2System*Single|System.ValueTuple*1Barotrauma*Identifier*1System*Single[]
---`Field Private Instance`
---@field totalHireableWeight System.Single|number
---`Field Public Instance`
---@field CommonnessPerZone System.Collections.Generic.Dictionary*1System*Int32*1System*Single|{[System.Int32|integer]:System.Single|number}
---`Field Public Instance`
---@field MinCountPerZone System.Collections.Generic.Dictionary*1System*Int32*1System*Int32|{[System.Int32|integer]:System.Int32|integer}
---`Field Public Instance`
---@field Name Barotrauma.LocalizedString
---`Field Public Instance`
---@field BeaconStationChance System.Single|number
---`Field Public Instance`
---@field OutpostTeam Barotrauma.CharacterTeamType
---`Field Public Instance`
---@field CanChangeTo System.Collections.Generic.List*1Barotrauma*LocationTypeChange|Barotrauma.LocationTypeChange[]
---`Field Public Instance`
---@field MissionIdentifiers System.Collections.Immutable.ImmutableArray*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field Public Instance`
---@field MissionTags System.Collections.Immutable.ImmutableArray*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field Public Instance`
---@field HideEntitySubcategories System.Collections.Generic.List*1System*String|System.String|string[]
---`Field Private Instance`
---@field nameFormats System.Nullable*1System*Collections*Immutable*ImmutableArray*2System*String
---`Field Public Static`
---@field Prefabs Barotrauma.PrefabCollection*1Barotrauma*LocationType|(fun():Barotrauma.LocationType)
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field IsEnterable System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field UseInMainMenu System.Boolean|boolean
---`Getter Public Instance`
---@field NameFormats System.Collections.Generic.IReadOnlyList*1System*String|System.String|string[]
---`Getter Public Instance`
---@field HasHireableCharacters System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field HasOutpost System.Boolean|boolean
---`Getter Public Instance`
---@field ReplaceInRadiation Barotrauma.Identifier
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Sprite Barotrauma.Sprite
---`Getter Public Instance`
---@field RadiationSprite Barotrauma.Sprite
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SpriteColor Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---@field StoreMaxReputationModifier System.Single|number
---`Getter Public Instance`
---@field StoreSellPriceModifier System.Single|number
---`Getter Public Instance`
---@field DailySpecialPriceModifier System.Single|number
---`Getter Public Instance`
---@field RequestGoodPriceModifier System.Single|number
---`Getter Public Instance`
---@field StoreInitialBalance System.Int32|integer
---`Getter Public Instance`
---@field StorePriceModifierRange System.Int32|integer
---`Getter Public Instance`
---@field DailySpecialsCount System.Int32|integer
---`Getter Public Instance`
---@field RequestedGoodsCount System.Int32|integer
_G['LocationType'] = {}

---`Method Public Instance Virtual`
---@return System.String|string
_G['LocationType'].ToString = function() end

---`Method Public Instance`
---@return Barotrauma.JobPrefab
_G['LocationType'].GetRandomHireable = function() end

---`Method Public Instance`
---@param portraitId System.Int32|integer
---@return Barotrauma.Sprite
_G['LocationType'].GetPortrait = function(portraitId) end

---`Method Public Instance`
---@param rand System.Random
---@param existingLocations System.Collections.Generic.IEnumerable*1Barotrauma*Location|(fun():Barotrauma.Location)
---@return System.String|string
_G['LocationType'].GetRandomName = function(rand, existingLocations) end

---`Method Public Static`
---@param rand System.Random
---@param zone? System.Nullable*1System*Int32|integer
---@param requireOutpost? System.Boolean|boolean
---@return Barotrauma.LocationType
_G['LocationType'].Random = function(rand, zone, requireOutpost) end

---`Method Public Instance Virtual`
_G['LocationType'].Dispose = function() end

---`Constructor Public Instance`
---@overload fun(element:Barotrauma.ContentXElement, file:Barotrauma.LocationTypesFile):Barotrauma.LocationType
---@return Barotrauma.LocationType
_G['LocationType'] = function() end

---`Constructor Public Instance`
---@overload fun(element:Barotrauma.ContentXElement, file:Barotrauma.LocationTypesFile):Barotrauma.LocationType
---@return Barotrauma.LocationType
_G['LocationType'].__new = function() end

---`Constructor Private Static`
---@overload fun(element:Barotrauma.ContentXElement, file:Barotrauma.LocationTypesFile):Barotrauma.LocationType
---@return Barotrauma.LocationType
_G['LocationType'] = function() end

---`Constructor Private Static`
---@overload fun(element:Barotrauma.ContentXElement, file:Barotrauma.LocationTypesFile):Barotrauma.LocationType
---@return Barotrauma.LocationType
_G['LocationType'].__new = function() end

