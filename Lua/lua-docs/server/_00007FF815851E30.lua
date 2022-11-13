---@meta
---@class Barotrauma.ContentFile : System.Object
---`Field Public Instance`
---@field ContentPackage Barotrauma.ContentPackage
---`Field Public Instance`
---@field Path Barotrauma.ContentPath
---`Field Public Instance`
---@field Hash Barotrauma.Md5Hash
---`Field Public Static`
---@field Types System.Collections.Immutable.ImmutableHashSet*1Barotrauma*ContentFile*TypeInfo|Barotrauma.ContentFile.TypeInfo[]
---`Getter Public Instance`
---@field NotSyncedInMultiplayer System.Boolean|boolean
_G['ContentFile'] = {}

---`Method Public Static`
---@param contentPackage Barotrauma.ContentPackage
---@param element System.Xml.Linq.XElement
---@return Barotrauma.Result*1Barotrauma*ContentFile*1Barotrauma*ContentFile*LoadError
_G['ContentFile'].CreateFromXElement = function(contentPackage, element) end

---`Method Public Instance Abstract Virtual`
_G['ContentFile'].LoadFile = function() end

---`Method Public Instance Abstract Virtual`
_G['ContentFile'].UnloadFile = function() end

---`Method Public Instance Abstract Virtual`
_G['ContentFile'].Sort = function() end

---`Method Public Instance Virtual`
---@param addPreloadedSprite System.Action*1Barotrauma*Sprite|(fun(obj:Barotrauma.Sprite))
_G['ContentFile'].Preload = function(addPreloadedSprite) end

---`Method Public Instance Virtual`
---@return Barotrauma.Md5Hash
_G['ContentFile'].CalculateHash = function() end

---`Constructor Private Static`
---@overload fun():Barotrauma.ContentFile
---@param contentPackage Barotrauma.ContentPackage
---@param path Barotrauma.ContentPath
---@return Barotrauma.ContentFile
_G['ContentFile'] = function(contentPackage, path) end

---`Constructor Private Static`
---@overload fun():Barotrauma.ContentFile
---@param contentPackage Barotrauma.ContentPackage
---@param path Barotrauma.ContentPath
---@return Barotrauma.ContentFile
_G['ContentFile'].__new = function(contentPackage, path) end

---`Constructor NonPublic Instance`
---@overload fun():Barotrauma.ContentFile
---@param contentPackage Barotrauma.ContentPackage
---@param path Barotrauma.ContentPath
---@return Barotrauma.ContentFile
_G['ContentFile'] = function(contentPackage, path) end

---`Constructor NonPublic Instance`
---@overload fun():Barotrauma.ContentFile
---@param contentPackage Barotrauma.ContentPackage
---@param path Barotrauma.ContentPath
---@return Barotrauma.ContentFile
_G['ContentFile'].__new = function(contentPackage, path) end

