---@meta
---@class Barotrauma.Map : System.Object
---`Field Public Instance`
---@field AllowDebugTeleport System.Boolean|boolean
---`Field Private Instance`
---@field generationParams Barotrauma.MapGenerationParams
---`Field Private Instance`
---@field furthestDiscoveredLocation Barotrauma.Location
---`Field Public Instance`
---@field OnLocationSelected System.Action*1Barotrauma*Location*1Barotrauma*LocationConnection|(fun(arg1:Barotrauma.Location, arg2:Barotrauma.LocationConnection))
---`Field Public Instance`
---@field OnMissionsSelected System.Action*1Barotrauma*LocationConnection*1System*Collections*Generic*IEnumerable*2Barotrauma*Mission|(fun(arg1:Barotrauma.LocationConnection, arg2:System.Collections.Generic.IEnumerable*1Barotrauma*Mission|(fun():Barotrauma.Mission)))
---`Field Public Instance`
---@field OnLocationChanged Barotrauma.NamedEvent*1Barotrauma*Map*LocationChangeInfo
---`Field Public Instance`
---@field Radiation Barotrauma.Radiation
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Width System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Height System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field EndLocation Barotrauma.Location
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field StartLocation Barotrauma.Location
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field CurrentLocation Barotrauma.Location
---`Getter Public Instance`
---@field CurrentLocationIndex System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SelectedLocation Barotrauma.Location
---`Getter Public Instance`
---@field SelectedLocationIndex System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SelectedConnection Barotrauma.LocationConnection
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Seed System.String|string
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Locations System.Collections.Generic.List*1Barotrauma*Location|Barotrauma.Location[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Connections System.Collections.Generic.List*1Barotrauma*LocationConnection|Barotrauma.LocationConnection[]
_G['Map'] = {}

---`Method Public Instance`
---@return System.Collections.Generic.IEnumerable*1System*Int32|(fun():System.Int32|integer)
_G['Map'].GetSelectedMissionIndices = function() end

---`Method Private Instance`
---@param settings Barotrauma.CampaignSettings
_G['Map'].Generate = function(settings) end

---`Method Private Instance`
---@param xPos System.Single|number
---@return System.Int32|integer
_G['Map'].GetZoneIndex = function(xPos) end

---`Method Public Instance`
---@overload fun(mapPos:Microsoft.Xna.Framework.Vector2):Barotrauma.Biome
---@param xPos System.Single|number
---@return Barotrauma.Biome
_G['Map'].GetBiome = function(xPos) end

---`Method Private Instance`
---@param rand System.Random
_G['Map'].AssignBiomes = function(rand) end

---`Method Private Instance`
_G['Map'].CreateEndLocation = function() end

---`Method Private Instance`
---@param seeds System.Collections.Generic.List*1Barotrauma*LocationConnection|Barotrauma.LocationConnection[]
_G['Map'].ExpandBiomes = function(seeds) end

---`Method Public Instance`
_G['Map'].MoveToNextLocation = function() end

---`Method Public Instance`
---@param index System.Int32|integer
_G['Map'].SetLocation = function(index) end

---`Method Public Instance`
---@overload fun(index:System.Int32|integer)
---@param location Barotrauma.Location
_G['Map'].SelectLocation = function(location) end

---`Method Public Instance`
---@param missionIndices System.Collections.Generic.IEnumerable*1System*Int32|(fun():System.Int32|integer)
_G['Map'].SelectMission = function(missionIndices) end

---`Method Public Instance`
---@param preferUndiscovered System.Boolean|boolean
_G['Map'].SelectRandomLocation = function(preferUndiscovered) end

---`Method Public Instance`
---@param transitionType Barotrauma.CampaignMode.TransitionType
---@param roundDuration System.Single|number
_G['Map'].ProgressWorld = function(transitionType, roundDuration) end

---`Method Private Instance`
_G['Map'].ProgressWorld = function() end

---`Method Private Instance`
---@param location Barotrauma.Location
---@return System.Boolean|boolean
_G['Map'].ProgressLocationTypeChanges = function(location) end

---`Method Public Instance`
---@param startingLocation Barotrauma.Location
---@param endingLocation Barotrauma.Location-ref
---@return System.Int32|integer
_G['Map'].DistanceToClosestLocationWithOutpost = function(startingLocation, endingLocation) end

---`Method Private Instance`
---@param location Barotrauma.Location
---@param change Barotrauma.LocationTypeChange
---@return System.Boolean|boolean
_G['Map'].ChangeLocationType = function(location, change) end

---`Method Public Static`
---@param campaign Barotrauma.CampaignMode
---@param element System.Xml.Linq.XElement
---@return Barotrauma.Map
_G['Map'].Load = function(campaign, element) end

---`Method Public Instance`
---@param element System.Xml.Linq.XElement
---@param showNotifications System.Boolean|boolean
_G['Map'].LoadState = function(element, showNotifications) end

---`Method Public Instance`
---@param element System.Xml.Linq.XElement
_G['Map'].Save = function(element) end

---`Method Public Instance`
_G['Map'].Remove = function() end

---`Constructor Public Instance`
---@overload fun(settings:Barotrauma.CampaignSettings):Barotrauma.Map
---@overload fun(campaign:Barotrauma.CampaignMode, element:System.Xml.Linq.XElement):Barotrauma.Map
---@param campaign Barotrauma.CampaignMode
---@param seed System.String|string
---@return Barotrauma.Map
_G['Map'] = function(campaign, seed) end

---`Constructor Public Instance`
---@overload fun(settings:Barotrauma.CampaignSettings):Barotrauma.Map
---@overload fun(campaign:Barotrauma.CampaignMode, element:System.Xml.Linq.XElement):Barotrauma.Map
---@param campaign Barotrauma.CampaignMode
---@param seed System.String|string
---@return Barotrauma.Map
_G['Map'].__new = function(campaign, seed) end

---`Constructor Private Instance`
---@overload fun(settings:Barotrauma.CampaignSettings):Barotrauma.Map
---@overload fun(campaign:Barotrauma.CampaignMode, element:System.Xml.Linq.XElement):Barotrauma.Map
---@param campaign Barotrauma.CampaignMode
---@param seed System.String|string
---@return Barotrauma.Map
_G['Map'] = function(campaign, seed) end

---`Constructor Private Instance`
---@overload fun(settings:Barotrauma.CampaignSettings):Barotrauma.Map
---@overload fun(campaign:Barotrauma.CampaignMode, element:System.Xml.Linq.XElement):Barotrauma.Map
---@param campaign Barotrauma.CampaignMode
---@param seed System.String|string
---@return Barotrauma.Map
_G['Map'].__new = function(campaign, seed) end

