---@meta
---@class Barotrauma.ContentPackageManager : System.Object
---`Field Public Static`
---@field LocalPackages Barotrauma.ContentPackageManager.PackageSource
---`Field Public Static`
---@field WorkshopPackages Barotrauma.ContentPackageManager.PackageSource
---`Field Public Static`
---@field CopyIndicatorFileName System.String|string
---`Field Public Static`
---@field VanillaFileList System.String|string
---`Field Public Static`
---@field CorePackageElementName System.String|string
---`Field Public Static`
---@field RegularPackagesElementName System.String|string
---`Field Public Static`
---@field RegularPackagesSubElementName System.String|string
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field VanillaCorePackage Barotrauma.CorePackage
---`Getter Public Static`
---@field CorePackages System.Collections.Generic.IEnumerable*1Barotrauma*CorePackage|(fun():Barotrauma.CorePackage)
---`Getter Public Static`
---@field RegularPackages System.Collections.Generic.IEnumerable*1Barotrauma*RegularPackage|(fun():Barotrauma.RegularPackage)
---`Getter Public Static`
---@field AllPackages System.Collections.Generic.IEnumerable*1Barotrauma*ContentPackage|(fun():Barotrauma.ContentPackage)
_G['ContentPackageManager'] = {}

---`Method Private Static`
---@return System.Threading.Tasks.Task*1System*Collections*Generic*IEnumerable*2Steamworks*Ugc*Item
_G['ContentPackageManager'].EnqueueWorkshopUpdates = function() end

---`Method Public Static`
_G['ContentPackageManager'].UpdateContentPackageList = function() end

---`Method Public Static`
---@param p Barotrauma.ContentPackage
---@return Barotrauma.ContentPackage
_G['ContentPackageManager'].ReloadContentPackage = function(p) end

---`Method Public Static`
_G['ContentPackageManager'].LoadVanillaFileList = function() end

---`Method Public Static`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*ContentPackageManager*LoadProgress|(fun():Barotrauma.ContentPackageManager.LoadProgress)
_G['ContentPackageManager'].Init = function() end

---`Method Public Static`
_G['ContentPackageManager'].LogEnabledRegularPackageErrors = function() end

---`Constructor Private Static`
---@return Barotrauma.ContentPackageManager
_G['ContentPackageManager'] = function() end

---`Constructor Private Static`
---@return Barotrauma.ContentPackageManager
_G['ContentPackageManager'].__new = function() end

