---@meta
---@class Barotrauma.RegularPackage : Barotrauma.ContentPackage
_G['RegularPackage'] = {}

---`Method NonPublic Instance Virtual`
---@param e System.Exception
_G['RegularPackage'].HandleLoadException = function(e) end

---`Constructor Public Instance`
---@param doc System.Xml.Linq.XDocument
---@param path System.String|string
---@return Barotrauma.RegularPackage
_G['RegularPackage'] = function(doc, path) end

---`Constructor Public Instance`
---@param doc System.Xml.Linq.XDocument
---@param path System.String|string
---@return Barotrauma.RegularPackage
_G['RegularPackage'].__new = function(doc, path) end

