---@meta
---@class Barotrauma.ContentPath : System.Object
---`Field Public Instance`
---@field RawValue System.String|string
---`Field Public Instance`
---@field ContentPackage Barotrauma.ContentPackage
---`Field Private Instance`
---@field cachedValue System.String|string
---`Field Private Instance`
---@field cachedFullPath System.String|string
---`Field Public Static`
---@field Empty Barotrauma.ContentPath
---`Field Private Static`
---@field OtherModDirRegex System.Text.RegularExpressions.Regex
---`Field Public Static`
---@field ModDirStr System.String|string
---`Field Public Static`
---@field OtherModDirFmt System.String|string
---`Getter Public Instance`
---@field Value System.String|string
---`Getter Public Instance`
---@field FullPath System.String|string
_G['ContentPath'] = {}

---`Method Public Static`
---@overload fun(rawValue:System.String|string):Barotrauma.ContentPath
---@param contentPackage Barotrauma.ContentPackage
---@param rawValue System.String|string
---@return Barotrauma.ContentPath
_G['ContentPath'].FromRaw = function(contentPackage, rawValue) end

---`Method Public Static`
---@param contentPackage Barotrauma.ContentPackage
---@param evaluatedValue System.String|string
---@return Barotrauma.ContentPath
_G['ContentPath'].FromEvaluated = function(contentPackage, evaluatedValue) end

---`Method Private Static`
---@param a System.String|string
---@param b System.String|string
---@return System.Boolean|boolean
_G['ContentPath'].StringEquality = function(a, b) end

---`Method NonPublic Instance`
---@param other Barotrauma.ContentPath
---@return System.Boolean|boolean
_G['ContentPath'].Equals = function(other) end

---`Method Public Instance Virtual`
---@param obj System.Object
---@return System.Boolean|boolean
_G['ContentPath'].Equals = function(obj) end

---`Method Public Instance Virtual`
---@return System.Int32|integer
_G['ContentPath'].GetHashCode = function() end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['ContentPath'].IsNullOrEmpty = function() end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['ContentPath'].IsNullOrWhiteSpace = function() end

---`Method Public Instance`
---@param suffix System.String|string
---@return System.Boolean|boolean
_G['ContentPath'].EndsWith = function(suffix) end

---`Method Public Instance Virtual`
---@return System.String|string
_G['ContentPath'].ToString = function() end

---`Constructor Private Instance`
---@overload fun(contentPackage:Barotrauma.ContentPackage, rawValue:System.String|string):Barotrauma.ContentPath
---@return Barotrauma.ContentPath
_G['ContentPath'] = function() end

---`Constructor Private Instance`
---@overload fun(contentPackage:Barotrauma.ContentPackage, rawValue:System.String|string):Barotrauma.ContentPath
---@return Barotrauma.ContentPath
_G['ContentPath'].__new = function() end

---`Constructor Private Static`
---@overload fun(contentPackage:Barotrauma.ContentPackage, rawValue:System.String|string):Barotrauma.ContentPath
---@return Barotrauma.ContentPath
_G['ContentPath'] = function() end

---`Constructor Private Static`
---@overload fun(contentPackage:Barotrauma.ContentPackage, rawValue:System.String|string):Barotrauma.ContentPath
---@return Barotrauma.ContentPath
_G['ContentPath'].__new = function() end

