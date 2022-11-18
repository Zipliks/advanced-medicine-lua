---@meta
---@class Barotrauma.SoundsFile : Barotrauma.GenericPrefabFile*1Barotrauma*SoundPrefab
---`Getter NonPublic Instance Virtual`
---@field Prefabs Barotrauma.PrefabCollection*1Barotrauma*SoundPrefab|(fun():Barotrauma.SoundPrefab)
_G['SoundsFile'] = {}

---`Method NonPublic Instance Virtual`
---@param element Barotrauma.ContentXElement
---@return Barotrauma.SoundPrefab
_G['SoundsFile'].CreatePrefab = function(element) end

---`Method NonPublic Instance Virtual`
---@param identifier Barotrauma.Identifier
---@return System.Boolean|boolean
_G['SoundsFile'].MatchesPlural = function(identifier) end

---`Method NonPublic Instance Virtual`
---@param identifier Barotrauma.Identifier
---@return System.Boolean|boolean
_G['SoundsFile'].MatchesSingular = function(identifier) end

---`Method Public Instance Virtual`
---@return Barotrauma.Md5Hash
_G['SoundsFile'].CalculateHash = function() end

---`Constructor Public Instance`
---@param contentPackage Barotrauma.ContentPackage
---@param path Barotrauma.ContentPath
---@return Barotrauma.SoundsFile
_G['SoundsFile'] = function(contentPackage, path) end

---`Constructor Public Instance`
---@param contentPackage Barotrauma.ContentPackage
---@param path Barotrauma.ContentPath
---@return Barotrauma.SoundsFile
_G['SoundsFile'].__new = function(contentPackage, path) end

