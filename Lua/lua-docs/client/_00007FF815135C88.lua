---@meta
---@class Barotrauma.SoundPrefab : Barotrauma.Prefab
---`Field Public Instance`
---@field SoundPath Barotrauma.ContentPath
---`Field Public Instance`
---@field Element Barotrauma.ContentXElement
---`Field Public Instance`
---@field ElementName Barotrauma.Identifier
---`Field Public Static`
---@field WaterAmbienceIn Barotrauma.PrefabSelector*1Barotrauma*SoundPrefab|(fun():Barotrauma.SoundPrefab)
---`Field Public Static`
---@field WaterAmbienceOut Barotrauma.PrefabSelector*1Barotrauma*SoundPrefab|(fun():Barotrauma.SoundPrefab)
---`Field Public Static`
---@field WaterAmbienceMoving Barotrauma.PrefabSelector*1Barotrauma*SoundPrefab|(fun():Barotrauma.SoundPrefab)
---`Field Public Static`
---@field StartupSound Barotrauma.PrefabSelector*1Barotrauma*SoundPrefab|(fun():Barotrauma.SoundPrefab)
---`Field Private Static`
---@field flowSounds System.Collections.Generic.List*1Barotrauma*SoundPrefab|Barotrauma.SoundPrefab[]
---`Field Private Static`
---@field splashSounds System.Collections.Generic.List*1Barotrauma*SoundPrefab|Barotrauma.SoundPrefab[]
---`Field Public Static`
---@field TagToDerivedPrefab System.Collections.Immutable.ImmutableDictionary*1Barotrauma*Identifier*1System*Type|{[Barotrauma.Identifier]:System.Type}
---`Field Private Static`
---@field derivedPrefabCollections System.Collections.Immutable.ImmutableDictionary*1System*Type*1Barotrauma*SoundPrefab*PrefabCollectionHandler|{[System.Type]:Barotrauma.SoundPrefab.PrefabCollectionHandler}
---`Field Private Static`
---@field prefabSelectors System.Collections.Immutable.ImmutableDictionary*1Barotrauma*Identifier*1Barotrauma*PrefabSelector*2Barotrauma*SoundPrefab|{[Barotrauma.Identifier]:Barotrauma.PrefabSelector*1Barotrauma*SoundPrefab|(fun():Barotrauma.SoundPrefab)}
---`Field Private Static`
---@field prefabsWithTag System.Collections.Immutable.ImmutableDictionary*1Barotrauma*Identifier*1System*Collections*Generic*List*2Barotrauma*SoundPrefab|{[Barotrauma.Identifier]:System.Collections.Generic.List*1Barotrauma*SoundPrefab|Barotrauma.SoundPrefab[]}
---`Field Public Static`
---@field Prefabs Barotrauma.PrefabCollection*1Barotrauma*SoundPrefab|(fun():Barotrauma.SoundPrefab)
---`Getter Public Static`
---@field FlowSounds System.Collections.Generic.IReadOnlyList*1Barotrauma*SoundPrefab|Barotrauma.SoundPrefab[]
---`Getter Public Static`
---@field SplashSounds System.Collections.Generic.IReadOnlyList*1Barotrauma*SoundPrefab|Barotrauma.SoundPrefab[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Sound Barotrauma.Sounds.Sound
_G['SoundPrefab'] = {}

---`Method Private Static`
_G['SoundPrefab'].UpdateSoundsWithTag = function() end

---`Method NonPublic Instance Virtual`
---@param element System.Xml.Linq.XElement
---@return Barotrauma.Identifier
_G['SoundPrefab'].DetermineIdentifier = function(element) end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['SoundPrefab'].IsPlaying = function() end

---`Method Public Instance Virtual`
_G['SoundPrefab'].Dispose = function() end

---`Constructor Private Static`
---@overload fun():Barotrauma.SoundPrefab
---@param element Barotrauma.ContentXElement
---@param file Barotrauma.SoundsFile
---@param stream? System.Boolean|boolean
---@return Barotrauma.SoundPrefab
_G['SoundPrefab'] = function(element, file, stream) end

---`Constructor Private Static`
---@overload fun():Barotrauma.SoundPrefab
---@param element Barotrauma.ContentXElement
---@param file Barotrauma.SoundsFile
---@param stream? System.Boolean|boolean
---@return Barotrauma.SoundPrefab
_G['SoundPrefab'].__new = function(element, file, stream) end

---`Constructor Public Instance`
---@overload fun():Barotrauma.SoundPrefab
---@param element Barotrauma.ContentXElement
---@param file Barotrauma.SoundsFile
---@param stream? System.Boolean|boolean
---@return Barotrauma.SoundPrefab
_G['SoundPrefab'] = function(element, file, stream) end

---`Constructor Public Instance`
---@overload fun():Barotrauma.SoundPrefab
---@param element Barotrauma.ContentXElement
---@param file Barotrauma.SoundsFile
---@param stream? System.Boolean|boolean
---@return Barotrauma.SoundPrefab
_G['SoundPrefab'].__new = function(element, file, stream) end

