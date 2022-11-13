---@meta
---@class Barotrauma.ContentPackageManager.PackageSource : System.Object
---`Field Private Instance`
---@field skipPredicate System.Predicate*1System*String|(fun(obj:System.String|string):System.Boolean|boolean)
---`Field Private Instance`
---@field directory System.String|string
---`Field Private Instance`
---@field regularPackages System.Collections.Generic.HashSet*1Barotrauma*RegularPackage|Barotrauma.RegularPackage[]
---`Field Private Instance`
---@field corePackages System.Collections.Generic.HashSet*1Barotrauma*CorePackage|Barotrauma.CorePackage[]
---`Getter Public Instance`
---@field Regular System.Collections.Generic.IEnumerable*1Barotrauma*RegularPackage|(fun():Barotrauma.RegularPackage)
---`Getter Public Instance`
---@field Core System.Collections.Generic.IEnumerable*1Barotrauma*CorePackage|(fun():Barotrauma.CorePackage)
---`Getter Public Instance Virtual`
---@field Count System.Int32|integer
---`Getter Public Instance Virtual`
---@field IsReadOnly System.Boolean|boolean
_G['ContentPackageManager']['PackageSource'] = {}

---`Method Public Instance`
---@param modProject Barotrauma.ModProject
---@return System.String|string
_G['ContentPackageManager']['PackageSource'].SaveRegularMod = function(modProject) end

---`Method Public Instance`
---@param fileListPath System.String|string
---@return Barotrauma.RegularPackage
_G['ContentPackageManager']['PackageSource'].GetRegularModByPath = function(fileListPath) end

---`Method Public Instance`
---@param modProject Barotrauma.ModProject
---@return Barotrauma.RegularPackage
_G['ContentPackageManager']['PackageSource'].SaveAndEnableRegularMod = function(modProject) end

---`Method Public Instance`
---@param oldPackage Barotrauma.ContentPackage
---@param newPackage Barotrauma.ContentPackage
_G['ContentPackageManager']['PackageSource'].SwapPackage = function(oldPackage, newPackage) end

---`Method Public Instance`
_G['ContentPackageManager']['PackageSource'].Refresh = function() end

---`Method Public Instance Virtual`
---@return System.Collections.Generic.IEnumerator*1Barotrauma*ContentPackage
_G['ContentPackageManager']['PackageSource'].GetEnumerator = function() end

---`Method Public Instance Virtual`
---@param item Barotrauma.ContentPackage
---@return System.Boolean|boolean
_G['ContentPackageManager']['PackageSource'].Contains = function(item) end

---`Constructor Public Instance`
---@param dir System.String|string
---@param skipPredicate System.Predicate*1System*String|(fun(obj:System.String|string):System.Boolean|boolean)
---@return Barotrauma.ContentPackageManager.PackageSource
_G['ContentPackageManager']['PackageSource'] = function(dir, skipPredicate) end

---`Constructor Public Instance`
---@param dir System.String|string
---@param skipPredicate System.Predicate*1System*String|(fun(obj:System.String|string):System.Boolean|boolean)
---@return Barotrauma.ContentPackageManager.PackageSource
_G['ContentPackageManager']['PackageSource'].__new = function(dir, skipPredicate) end

