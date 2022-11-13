---@meta
---@class Barotrauma.ContentPackage : System.Object
---`Field Public Instance`
---@field Name System.String|string
---`Field Public Instance`
---@field AltNames System.Collections.Immutable.ImmutableArray*1System*String|System.String|string[]
---`Field Public Instance`
---@field Path System.String|string
---`Field Public Instance`
---@field UgcId Barotrauma.Option*1Barotrauma*ContentPackageId
---`Field Public Instance`
---@field GameVersion System.Version
---`Field Public Instance`
---@field ModVersion System.String|string
---`Field Public Instance`
---@field InstallTime Barotrauma.Option*1System*DateTime
---`Field Public Static`
---@field MinimumHashCompatibleVersion System.Version
---`Field Public Static`
---@field WorkshopModsDir System.String|string
---`Field Public Static`
---@field LocalModsDir System.String|string
---`Field Public Static`
---@field FileListFileName System.String|string
---`Field Public Static`
---@field DefaultModVersion System.String|string
---`Getter Public Instance`
---@field Dir System.String|string
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Hash Barotrauma.Md5Hash
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Files System.Collections.Immutable.ImmutableArray*1Barotrauma*ContentFile|Barotrauma.ContentFile[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Errors System.Collections.Immutable.ImmutableArray*1Barotrauma*ContentFile*LoadError|Barotrauma.ContentFile.LoadError[]
---`Getter Public Instance`
---@field Index System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field HasMultiplayerSyncedContent System.Boolean|boolean
_G['ContentPackage'] = {}

---`Method Public Instance`
---@return System.Threading.Tasks.Task*1System*Boolean
_G['ContentPackage'].IsUpToDate = function() end

---`Method Public Instance`
---@param expectedHash System.String|string
---@return System.Boolean|boolean
_G['ContentPackage'].HashMismatches = function(expectedHash) end

---`Method Public Instance`
---@overload fun():System.Collections.Generic.IEnumerable*1Barotrauma*ContentPackage*T|(fun():Barotrauma.ContentPackage.T)
---@param type System.Type
---@return System.Collections.Generic.IEnumerable*1Barotrauma*ContentFile|(fun():Barotrauma.ContentFile)
_G['ContentPackage'].GetFiles = function(type) end

---`Method Public Instance`
---@overload fun(name:Barotrauma.Identifier):System.Boolean|boolean
---@param name System.String|string
---@return System.Boolean|boolean
_G['ContentPackage'].NameMatches = function(name) end

---`Method Public Static`
---@param path System.String|string
---@return Barotrauma.ContentPackage
_G['ContentPackage'].TryLoad = function(path) end

---`Method Public Instance`
---@param logging? System.Boolean|boolean
---@return Barotrauma.Md5Hash
_G['ContentPackage'].CalculateHash = function(logging) end

---`Method NonPublic Instance`
---@param condition System.Boolean|boolean
---@param errorMsg System.String|string
_G['ContentPackage'].AssertCondition = function(condition, errorMsg) end

---`Method Public Instance`
_G['ContentPackage'].LoadFilesOfType = function() end

---`Method Public Instance`
_G['ContentPackage'].UnloadFilesOfType = function() end

---`Method Public Instance`
---@return Barotrauma.ContentPackage.LoadResult
_G['ContentPackage'].LoadPackage = function() end

---`Method Public Instance`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*ContentPackageManager*LoadProgress|(fun():Barotrauma.ContentPackageManager.LoadProgress)
_G['ContentPackage'].LoadPackageEnumerable = function() end

---`Method NonPublic Instance Abstract Virtual`
---@param e System.Exception
_G['ContentPackage'].HandleLoadException = function(e) end

---`Method Public Instance`
_G['ContentPackage'].UnloadPackage = function() end

---`Method Public Instance`
_G['ContentPackage'].ReloadSubsAndItemAssemblies = function() end

---`Method Public Static`
---@param path System.String|string
---@return System.Boolean|boolean
_G['ContentPackage'].PathAllowedAsLocalModFile = function(path) end

---`Method Public Instance`
_G['ContentPackage'].LogErrors = function() end

---`Constructor NonPublic Instance`
---@overload fun(doc:System.Xml.Linq.XDocument, path:System.String|string):Barotrauma.ContentPackage
---@return Barotrauma.ContentPackage
_G['ContentPackage'] = function() end

---`Constructor NonPublic Instance`
---@overload fun(doc:System.Xml.Linq.XDocument, path:System.String|string):Barotrauma.ContentPackage
---@return Barotrauma.ContentPackage
_G['ContentPackage'].__new = function() end

---`Constructor Private Static`
---@overload fun(doc:System.Xml.Linq.XDocument, path:System.String|string):Barotrauma.ContentPackage
---@return Barotrauma.ContentPackage
_G['ContentPackage'] = function() end

---`Constructor Private Static`
---@overload fun(doc:System.Xml.Linq.XDocument, path:System.String|string):Barotrauma.ContentPackage
---@return Barotrauma.ContentPackage
_G['ContentPackage'].__new = function() end

