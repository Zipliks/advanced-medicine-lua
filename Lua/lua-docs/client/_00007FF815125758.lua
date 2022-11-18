---@meta
---@class Barotrauma.Location : System.Object
---`Field Public Instance`
---@field Connections System.Collections.Generic.List*1Barotrauma*LocationConnection|Barotrauma.LocationConnection[]
---`Field Private Instance`
---@field baseName System.String|string
---`Field Private Instance`
---@field nameFormatIndex System.Int32|integer
---`Field Private Instance`
---@field addInitialMissionsForType Barotrauma.LocationType
---`Field Public Instance`
---@field ProximityTimer System.Collections.Generic.Dictionary*1Barotrauma*LocationTypeChange*Requirement*1System*Int32|{[Barotrauma.LocationTypeChange.Requirement]:System.Int32|integer}
---`Field Public Instance`
---@field PendingLocationTypeChange System.Nullable*1System*ValueTuple*2Barotrauma*LocationTypeChange*2System*Int32*2Barotrauma*MissionPrefab
---`Field Public Instance`
---@field LocationTypeChangeCooldown System.Int32|integer
---`Field Private Instance`
---@field takenItems System.Collections.Generic.List*1Barotrauma*Location*TakenItem|Barotrauma.Location.TakenItem[]
---`Field Private Instance`
---@field killedCharacterIdentifiers System.Collections.Generic.HashSet*1System*Int32|System.Int32|integer[]
---`Field Private Instance`
---@field availableMissions System.Collections.Generic.List*1Barotrauma*Mission|Barotrauma.Mission[]
---`Field Private Instance`
---@field selectedMissions System.Collections.Generic.List*1Barotrauma*Mission|Barotrauma.Mission[]
---`Field Private Instance`
---@field priceMultiplier System.Single|number
---`Field Private Instance`
---@field mechanicalpriceMultiplier System.Single|number
---`Field Public Instance`
---@field LastTypeChangeMessage System.String|string
---`Field Public Instance`
---@field TimeSinceLastTypeChange System.Int32|integer
---`Field Public Instance`
---@field IsGateBetweenBiomes System.Boolean|boolean
---`Field Private Instance`
---@field loadedMissions System.Collections.Generic.List*1Barotrauma*Location*LoadedMission|Barotrauma.Location.LoadedMission[]
---`Field Public Instance`
---@field HireManager Barotrauma.HireManager
---`Field Private Static`
---@field SpecialsUpdateInterval System.Int32|integer
---`Field Private Static`
---@field MechanicalMaxDiscountPercentage System.Single|number
---`Field Private Static`
---@field HealMaxDiscountPercentage System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Discovered System.Boolean|boolean
---`Getter Public Instance`
---@field BaseName System.String|string
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Name System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Biome Barotrauma.Biome
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field MapPosition Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Type Barotrauma.LocationType
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field OriginalType Barotrauma.LocationType
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field LevelData Barotrauma.LevelData
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field PortraitId System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Reputation Barotrauma.Reputation
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TurnsInRadiation System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Stores System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1Barotrauma*Location*StoreInfo|{[Barotrauma.Identifier]:Barotrauma.Location.StoreInfo}
---`Getter Private Instance`
---@field StoreMaxReputationModifier System.Single|number
---`Getter Private Instance`
---@field StoreSellPriceModifier System.Single|number
---`Getter Private Instance`
---@field DailySpecialPriceModifier System.Single|number
---`Getter Private Instance`
---@field RequestGoodPriceModifier System.Single|number
---`Getter Public Instance`
---@field StoreInitialBalance System.Int32|integer
---`Getter Private Instance`
---@field StorePriceModifierRange System.Int32|integer
---`Getter Public Instance`
---@field DailySpecialsCount System.Int32|integer
---`Getter Public Instance`
---@field RequestedGoodsCount System.Int32|integer
---`Getter Private Instance`
---<br/>`Setter Private Instance`
---@field StepsSinceSpecialsUpdated System.Int32|integer
---`Getter Public Instance`
---@field StoreIdentifiers System.Collections.Generic.HashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Getter Public Instance`
---@field TakenItems System.Collections.Generic.IEnumerable*1Barotrauma*Location*TakenItem|(fun():Barotrauma.Location.TakenItem)
---`Getter Public Instance`
---@field KilledCharacterIdentifiers System.Collections.Generic.IEnumerable*1System*Int32|(fun():System.Int32|integer)
---`Getter Public Instance`
---@field AvailableMissions System.Collections.Generic.IEnumerable*1Barotrauma*Mission|(fun():Barotrauma.Mission)
---`Getter Public Instance`
---@field SelectedMissions System.Collections.Generic.IEnumerable*1Barotrauma*Mission|(fun():Barotrauma.Mission)
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field PriceMultiplier System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MechanicalPriceMultiplier System.Single|number
_G['Location'] = {}

---`Method Public Instance`
---@return System.Int32|integer
_G['Location'].GetExtraSpecialSalesCount = function() end

---`Method Public Instance`
---@param checkTalents? System.Boolean|boolean
_G['Location'].Discover = function(checkTalents) end

---`Method Public Instance`
_G['Location'].Reset = function() end

---`Method Public Instance`
---@param map Barotrauma.Map
---@param parentElement System.Xml.Linq.XElement
---@return System.Xml.Linq.XElement
_G['Location'].Save = function(map, parentElement) end

---`Method Public Instance`
_G['Location'].Remove = function() end

---`Method Public Instance`
_G['Location'].RemoveProjSpecific = function() end

---`Method Public Instance`
---@param mission Barotrauma.Mission
_G['Location'].SelectMission = function(mission) end

---`Method Public Instance`
---@param mission Barotrauma.Mission
_G['Location'].DeselectMission = function(mission) end

---`Method Public Instance`
---@return System.Collections.Generic.List*1System*Int32|System.Int32|integer[]
_G['Location'].GetSelectedMissionIndices = function() end

---`Method Public Instance`
---@param missionIndices System.Collections.Generic.IEnumerable*1System*Int32|(fun():System.Int32|integer)
_G['Location'].SetSelectedMissionIndices = function(missionIndices) end

---`Method Public Instance Virtual`
---@return System.String|string
_G['Location'].ToString = function() end

---`Method Public Instance`
---@param locationElement System.Xml.Linq.XElement
_G['Location'].LoadLocationTypeChange = function(locationElement) end

---`Method Public Instance`
---@param locationElement System.Xml.Linq.XElement
_G['Location'].LoadMissions = function(locationElement) end

---`Method Public Static`
---@param position Microsoft.Xna.Framework.Vector2
---@param zone System.Nullable*1System*Int32|integer
---@param rand System.Random
---@param requireOutpost System.Boolean|boolean
---@param forceLocationType? Barotrauma.LocationType
---@param existingLocations? System.Collections.Generic.IEnumerable*1Barotrauma*Location|(fun():Barotrauma.Location)
---@return Barotrauma.Location
_G['Location'].CreateRandom = function(position, zone, rand, requireOutpost, forceLocationType, existingLocations) end

---`Method Public Instance`
---@param newType Barotrauma.LocationType
_G['Location'].ChangeType = function(newType) end

---`Method Public Instance`
_G['Location'].UnlockInitialMissions = function() end

---`Method Public Instance`
---@overload fun(missionPrefab:Barotrauma.MissionPrefab, connection:Barotrauma.LocationConnection)
---@param missionPrefab Barotrauma.MissionPrefab
_G['Location'].UnlockMission = function(missionPrefab) end

---`Method Public Instance`
---@param identifier Barotrauma.Identifier
---@return Barotrauma.Mission
_G['Location'].UnlockMissionByIdentifier = function(identifier) end

---`Method Public Instance`
---@param tag Barotrauma.Identifier
---@return Barotrauma.Mission
_G['Location'].UnlockMissionByTag = function(tag) end

---`Method Private Instance`
---@overload fun(prefab:Barotrauma.MissionPrefab, connection:Barotrauma.LocationConnection-ref):Barotrauma.Mission
---@overload fun(prefab:Barotrauma.MissionPrefab, connection:Barotrauma.LocationConnection):Barotrauma.Mission
---@param prefab Barotrauma.MissionPrefab
---@return Barotrauma.Mission
_G['Location'].InstantiateMission = function(prefab) end

---`Method Public Instance`
---@param map Barotrauma.Map
_G['Location'].InstantiateLoadedMissions = function(map) end

---`Method Public Instance`
_G['Location'].ClearMissions = function() end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['Location'].HasOutpost = function() end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['Location'].IsCriticallyRadiated = function() end

---`Method Public Instance`
---@return Barotrauma.LocationType
_G['Location'].GetLocationType = function() end

---`Method Public Instance`
---@param connection Barotrauma.LocationConnection
---@return System.Collections.Generic.IEnumerable*1Barotrauma*Mission|(fun():Barotrauma.Mission)
_G['Location'].GetMissionsInConnection = function(connection) end

---`Method Public Instance`
---@param character Barotrauma.CharacterInfo
_G['Location'].RemoveHireableCharacter = function(character) end

---`Method Public Instance`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CharacterInfo|(fun():Barotrauma.CharacterInfo)
_G['Location'].GetHireableCharacters = function() end

---`Method Private Instance`
---@param type Barotrauma.LocationType
---@param rand System.Random
---@param existingLocations System.Collections.Generic.IEnumerable*1Barotrauma*Location|(fun():Barotrauma.Location)
---@return System.String|string
_G['Location'].RandomName = function(type, rand, existingLocations) end

---`Method Public Instance`
---@param locationElement System.Xml.Linq.XElement
_G['Location'].LoadStores = function(locationElement) end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['Location'].IsRadiated = function() end

---`Method Public Instance`
---@param items System.Collections.Generic.IEnumerable*1Barotrauma*Item|(fun():Barotrauma.Item)
_G['Location'].RegisterTakenItems = function(items) end

---`Method Public Instance`
---@param characters System.Collections.Generic.IEnumerable*1Barotrauma*Character|(fun():Barotrauma.Character)
_G['Location'].RegisterKilledCharacters = function(characters) end

---`Method Public Instance`
_G['Location'].RemoveTakenItems = function() end

---`Method Public Instance`
---@param cost System.Int32|integer
---@return System.Int32|integer
_G['Location'].GetAdjustedMechanicalCost = function(cost) end

---`Method Public Instance`
---@param cost System.Int32|integer
---@return System.Int32|integer
_G['Location'].GetAdjustedHealCost = function(cost) end

---`Method Public Instance`
---@param identifier Barotrauma.Identifier
---@return Barotrauma.Location.StoreInfo
_G['Location'].GetStore = function(identifier) end

---`Method Public Instance`
---@param force? System.Boolean|boolean
_G['Location'].CreateStores = function(force) end

---`Method Public Instance`
_G['Location'].UpdateStores = function() end

---`Method Private Instance`
_G['Location'].UpdateStoreIdentifiers = function() end

---`Method Private Instance`
---@param identifier Barotrauma.Identifier
_G['Location'].AddNewStore = function(identifier) end

---`Method Public Instance`
---@param items System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1System*Collections*Generic*List*2Barotrauma*SoldItem|{[Barotrauma.Identifier]:System.Collections.Generic.List*1Barotrauma*SoldItem|Barotrauma.SoldItem[]}
_G['Location'].AddStock = function(items) end

---`Method Public Instance`
---@param items System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1System*Collections*Generic*List*2Barotrauma*PurchasedItem|{[Barotrauma.Identifier]:System.Collections.Generic.List*1Barotrauma*PurchasedItem|Barotrauma.PurchasedItem[]}
_G['Location'].RemoveStock = function(items) end

---`Method Public Instance`
---@param buying System.Boolean|boolean
---@return System.Single|number
_G['Location'].GetStoreReputationModifier = function(buying) end

---`Constructor Public Instance`
---@overload fun(mapPosition:Microsoft.Xna.Framework.Vector2, zone:System.Nullable*1System*Int32|integer, rand:System.Random, requireOutpost?:System.Boolean|boolean, forceLocationType?:Barotrauma.LocationType, existingLocations?:System.Collections.Generic.IEnumerable*1Barotrauma*Location|(fun():Barotrauma.Location)):Barotrauma.Location
---@param element System.Xml.Linq.XElement
---@return Barotrauma.Location
_G['Location'] = function(element) end

---`Constructor Public Instance`
---@overload fun(mapPosition:Microsoft.Xna.Framework.Vector2, zone:System.Nullable*1System*Int32|integer, rand:System.Random, requireOutpost?:System.Boolean|boolean, forceLocationType?:Barotrauma.LocationType, existingLocations?:System.Collections.Generic.IEnumerable*1Barotrauma*Location|(fun():Barotrauma.Location)):Barotrauma.Location
---@param element System.Xml.Linq.XElement
---@return Barotrauma.Location
_G['Location'].__new = function(element) end

