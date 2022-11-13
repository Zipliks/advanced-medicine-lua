---@meta
---@class Barotrauma.CorePackage : Barotrauma.ContentPackage
_G['CorePackage'] = {}

---`Method NonPublic Instance Virtual`
---@param e System.Exception
_G['CorePackage'].HandleLoadException = function(e) end

---`Constructor Public Instance`
---@param doc System.Xml.Linq.XDocument
---@param path System.String|string
---@return Barotrauma.CorePackage
_G['CorePackage'] = function(doc, path) end

---`Constructor Public Instance`
---@param doc System.Xml.Linq.XDocument
---@param path System.String|string
---@return Barotrauma.CorePackage
_G['CorePackage'].__new = function(doc, path) end

