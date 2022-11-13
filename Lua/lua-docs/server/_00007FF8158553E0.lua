---@meta
---@class Barotrauma.ContentPackageManager.EnabledPackages : System.Object
---`Field Private Static`
---@field regular System.Collections.Generic.List*1Barotrauma*RegularPackage|Barotrauma.RegularPackage[]
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field Core Barotrauma.CorePackage
---`Getter Public Static`
---@field Regular System.Collections.Generic.IReadOnlyList*1Barotrauma*RegularPackage|Barotrauma.RegularPackage[]
---`Getter Public Static`
---@field All System.Collections.Generic.IEnumerable*1Barotrauma*ContentPackage|(fun():Barotrauma.ContentPackage)
_G['ContentPackageManager']['EnabledPackages'] = {}

---`Method Public Static`
---@param newCore Barotrauma.CorePackage
_G['ContentPackageManager']['EnabledPackages'].SetCore = function(newCore) end

---`Method Public Static`
---@param newCore Barotrauma.CorePackage
---@return System.Collections.Generic.IEnumerable*1Barotrauma*ContentPackageManager*LoadProgress|(fun():Barotrauma.ContentPackageManager.LoadProgress)
_G['ContentPackageManager']['EnabledPackages'].SetCoreEnumerable = function(newCore) end

---`Method Public Static`
_G['ContentPackageManager']['EnabledPackages'].ReloadCore = function() end

---`Method Public Static`
---@param p Barotrauma.RegularPackage
_G['ContentPackageManager']['EnabledPackages'].EnableRegular = function(p) end

---`Method Public Static`
---@param newRegular System.Collections.Generic.IReadOnlyList*1Barotrauma*RegularPackage|Barotrauma.RegularPackage[]
_G['ContentPackageManager']['EnabledPackages'].SetRegular = function(newRegular) end

---`Method Public Static`
---@param inNewRegular System.Collections.Generic.IReadOnlyList*1Barotrauma*RegularPackage|Barotrauma.RegularPackage[]
---@return System.Collections.Generic.IEnumerable*1Barotrauma*ContentPackageManager*LoadProgress|(fun():Barotrauma.ContentPackageManager.LoadProgress)
_G['ContentPackageManager']['EnabledPackages'].SetRegularEnumerable = function(inNewRegular) end

---`Method Public Static`
---@param pkgs System.Collections.Generic.IEnumerable*1Barotrauma*ContentPackage|(fun():Barotrauma.ContentPackage)
_G['ContentPackageManager']['EnabledPackages'].ThrowIfDuplicates = function(pkgs) end

---`Method Private Static`
_G['ContentPackageManager']['EnabledPackages'].SortContent = function() end

---`Method Public Static`
---@param contentPackage Barotrauma.ContentPackage
---@return System.Int32|integer
_G['ContentPackageManager']['EnabledPackages'].IndexOf = function(contentPackage) end

---`Method Public Static`
---@param mods System.Collections.Generic.IReadOnlyCollection*1Barotrauma*ContentPackage|(fun():Barotrauma.ContentPackage)
_G['ContentPackageManager']['EnabledPackages'].DisableMods = function(mods) end

---`Method Public Static`
_G['ContentPackageManager']['EnabledPackages'].DisableRemovedMods = function() end

---`Method Public Static`
_G['ContentPackageManager']['EnabledPackages'].RefreshUpdatedMods = function() end

---`Method Public Static`
_G['ContentPackageManager']['EnabledPackages'].BackUp = function() end

---`Method Public Static`
_G['ContentPackageManager']['EnabledPackages'].Restore = function() end

---`Constructor Private Static`
---@return Barotrauma.ContentPackageManager.EnabledPackages
_G['ContentPackageManager']['EnabledPackages'] = function() end

---`Constructor Private Static`
---@return Barotrauma.ContentPackageManager.EnabledPackages
_G['ContentPackageManager']['EnabledPackages'].__new = function() end

