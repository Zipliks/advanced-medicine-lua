---@meta
---@class Barotrauma.SubmarineInfo : System.Object
---`Field Public Instance`
---@field PreviewImage Barotrauma.Sprite
---`Field Private Instance`
---@field hashTask System.Threading.Tasks.Task
---`Field Private Instance`
---@field hash Barotrauma.Md5Hash
---`Field Public Instance`
---@field LastModifiedTime System.DateTime
---`Field Public Instance`
---@field RecommendedCrewSizeMin System.Int32|integer
---`Field Public Instance`
---@field RecommendedCrewSizeMax System.Int32|integer
---`Field Public Instance`
---@field RecommendedCrewExperience Barotrauma.SubmarineInfo.CrewExperienceLevel
---`Field Public Instance`
---@field RequiredContentPackages System.Collections.Generic.HashSet*1System*String|System.String|string[]
---`Field Public Instance`
---@field SubmarineClass Barotrauma.SubmarineClass
---`Field Private Instance`
---@field requiredContentPackagesInstalled System.Nullable*1System*Boolean|boolean
---`Field Private Instance`
---@field subsLeftBehind System.Nullable*1System*Boolean|boolean
---`Field Public Instance`
---@field LeftBehindDockingPortIDs System.Collections.Generic.List*1System*UInt16|System.UInt16|integer[]
---`Field Public Instance`
---@field BlockedDockingPortIDs System.Collections.Generic.List*1System*UInt16|System.UInt16|integer[]
---`Field Public Instance`
---@field OutpostGenerationParams Barotrauma.OutpostGenerationParams
---`Field Public Instance`
---@field OutpostNPCs System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1System*Collections*Generic*List*2Barotrauma*Character|{[Barotrauma.Identifier]:System.Collections.Generic.List*1Barotrauma*Character|Barotrauma.Character[]}
---`Field Private Static`
---@field savedSubmarines System.Collections.Generic.List*1Barotrauma*SubmarineInfo|Barotrauma.SubmarineInfo[]
---`Getter Public Static`
---@field SavedSubmarines System.Collections.Generic.IEnumerable*1Barotrauma*SubmarineInfo|(fun():Barotrauma.SubmarineInfo)
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Tags Barotrauma.SubmarineTag
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Tier System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field EqualityCheckVal System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Name System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DisplayName Barotrauma.LocalizedString
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Description Barotrauma.LocalizedString
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Price System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field InitialSuppliesSpawned System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field NoItems System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field LowFuel System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field GameVersion System.Version
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Type Barotrauma.SubmarineType
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field IsManuallyOutfitted System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field OutpostModuleInfo Barotrauma.OutpostModuleInfo
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field BeaconStationInfo Barotrauma.BeaconStationInfo
---`Getter Public Instance`
---@field IsOutpost System.Boolean|boolean
---`Getter Public Instance`
---@field IsWreck System.Boolean|boolean
---`Getter Public Instance`
---@field IsBeacon System.Boolean|boolean
---`Getter Public Instance`
---@field IsPlayer System.Boolean|boolean
---`Getter Public Instance`
---@field IsRuin System.Boolean|boolean
---`Getter Public Instance`
---@field IsCampaignCompatible System.Boolean|boolean
---`Getter Public Instance`
---@field IsCampaignCompatibleIgnoreClass System.Boolean|boolean
---`Getter Public Instance`
---@field AllowPreviewImage System.Boolean|boolean
---`Getter Public Instance`
---@field MD5Hash Barotrauma.Md5Hash
---`Getter Public Instance`
---@field CalculatingHash System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Dimensions Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field CargoCapacity System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field FilePath System.String|string
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SubmarineElement System.Xml.Linq.XElement
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field IsFileCorrupted System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field RequiredContentPackagesInstalled System.Boolean|boolean
---`Getter Public Instance`
---@field SubsLeftBehind System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field LeftBehindSubDockingPortOccupied System.Boolean|boolean
_G['SubmarineInfo'] = {}

---`Method Public Instance`
---@param parent Barotrauma.GUIComponent
_G['SubmarineInfo'].CreatePreviewWindow = function(parent) end

---`Method Public Instance`
---@param parent Barotrauma.GUIListBox
---@param font Barotrauma.GUIFont
---@param includeTitle? System.Boolean|boolean
---@param includeClass? System.Boolean|boolean
---@param includeDescription? System.Boolean|boolean
_G['SubmarineInfo'].CreateSpecsWindow = function(parent, font, includeTitle, includeClass, includeDescription) end

---`Method Public Instance Virtual`
---@return System.String|string
_G['SubmarineInfo'].ToString = function() end

---`Method Public Instance`
_G['SubmarineInfo'].Reload = function() end

---`Method Private Instance`
_G['SubmarineInfo'].Init = function() end

---`Method Private Instance`
_G['SubmarineInfo'].InitProjectSpecific = function() end

---`Method Public Instance Virtual`
_G['SubmarineInfo'].Dispose = function() end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['SubmarineInfo'].IsVanillaSubmarine = function() end

---`Method Public Instance`
---@param doc System.Xml.Linq.XDocument
_G['SubmarineInfo'].StartHashDocTask = function(doc) end

---`Method Public Instance`
---@param tag Barotrauma.SubmarineTag
---@return System.Boolean|boolean
_G['SubmarineInfo'].HasTag = function(tag) end

---`Method Public Instance`
---@param tag Barotrauma.SubmarineTag
_G['SubmarineInfo'].AddTag = function(tag) end

---`Method Public Instance`
---@param tag Barotrauma.SubmarineTag
_G['SubmarineInfo'].RemoveTag = function(tag) end

---`Method Public Instance`
---@param element? System.Xml.Linq.XElement
_G['SubmarineInfo'].CheckSubsLeftBehind = function(element) end

---`Method Public Instance`
---@return System.Single|number
_G['SubmarineInfo'].GetRealWorldCrushDepth = function() end

---`Method Public Instance`
---@param filePath System.String|string
---@param previewImage? System.IO.MemoryStream
_G['SubmarineInfo'].SaveAs = function(filePath, previewImage) end

---`Method Public Static`
---@param subInfo Barotrauma.SubmarineInfo
_G['SubmarineInfo'].AddToSavedSubs = function(subInfo) end

---`Method Public Static`
---@param filePath System.String|string
_G['SubmarineInfo'].RemoveSavedSub = function(filePath) end

---`Method Public Static`
---@param filePath System.String|string
_G['SubmarineInfo'].RefreshSavedSub = function(filePath) end

---`Method Public Static`
_G['SubmarineInfo'].RefreshSavedSubs = function() end

---`Method Public Static`
---@overload fun(file:System.String|string):System.Xml.Linq.XDocument
---@param file System.String|string
---@param exception System.Exception-ref
---@return System.Xml.Linq.XDocument
_G['SubmarineInfo'].OpenFile = function(file, exception) end

---`Method Public Static`
---@param price System.Int32|integer
---@return System.Int32|integer
_G['SubmarineInfo'].GetDefaultTier = function(price) end

---`Constructor Public Instance`
---@overload fun():Barotrauma.SubmarineInfo
---@overload fun(filePath:System.String|string, hash?:System.String|string, element?:System.Xml.Linq.XElement, tryLoad?:System.Boolean|boolean):Barotrauma.SubmarineInfo
---@overload fun(sub:Barotrauma.Submarine):Barotrauma.SubmarineInfo
---@overload fun(original:Barotrauma.SubmarineInfo):Barotrauma.SubmarineInfo
---@return Barotrauma.SubmarineInfo
_G['SubmarineInfo'] = function() end

---`Constructor Public Instance`
---@overload fun():Barotrauma.SubmarineInfo
---@overload fun(filePath:System.String|string, hash?:System.String|string, element?:System.Xml.Linq.XElement, tryLoad?:System.Boolean|boolean):Barotrauma.SubmarineInfo
---@overload fun(sub:Barotrauma.Submarine):Barotrauma.SubmarineInfo
---@overload fun(original:Barotrauma.SubmarineInfo):Barotrauma.SubmarineInfo
---@return Barotrauma.SubmarineInfo
_G['SubmarineInfo'].__new = function() end

---`Constructor Private Static`
---@overload fun():Barotrauma.SubmarineInfo
---@overload fun(filePath:System.String|string, hash?:System.String|string, element?:System.Xml.Linq.XElement, tryLoad?:System.Boolean|boolean):Barotrauma.SubmarineInfo
---@overload fun(sub:Barotrauma.Submarine):Barotrauma.SubmarineInfo
---@overload fun(original:Barotrauma.SubmarineInfo):Barotrauma.SubmarineInfo
---@return Barotrauma.SubmarineInfo
_G['SubmarineInfo'] = function() end

---`Constructor Private Static`
---@overload fun():Barotrauma.SubmarineInfo
---@overload fun(filePath:System.String|string, hash?:System.String|string, element?:System.Xml.Linq.XElement, tryLoad?:System.Boolean|boolean):Barotrauma.SubmarineInfo
---@overload fun(sub:Barotrauma.Submarine):Barotrauma.SubmarineInfo
---@overload fun(original:Barotrauma.SubmarineInfo):Barotrauma.SubmarineInfo
---@return Barotrauma.SubmarineInfo
_G['SubmarineInfo'].__new = function() end

