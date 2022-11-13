---@meta
---@class Barotrauma.Prefab : System.Object
---`Field Public Instance`
---@field Identifier Barotrauma.Identifier
---`Field Public Instance`
---@field ContentFile Barotrauma.ContentFile
---`Field Public Static`
---@field Types System.Collections.Immutable.ImmutableHashSet*1System*Type|System.Type[]
---`Field Private Static`
---@field potentialCallFromConstructor System.Boolean|boolean
---`Getter Public Instance`
---@field ContentPackage Barotrauma.ContentPackage
---`Getter Public Instance`
---@field FilePath Barotrauma.ContentPath
_G['Prefab'] = {}

---`Method Public Static`
_G['Prefab'].DisallowCallFromConstructor = function() end

---`Method NonPublic Instance Virtual`
---@param element System.Xml.Linq.XElement
---@return Barotrauma.Identifier
_G['Prefab'].DetermineIdentifier = function(element) end

---`Method Public Instance Abstract Virtual`
_G['Prefab'].Dispose = function() end

---`Constructor Private Static`
---@overload fun():Barotrauma.Prefab
---@overload fun(file:Barotrauma.ContentFile, identifier:Barotrauma.Identifier):Barotrauma.Prefab
---@param file Barotrauma.ContentFile
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Prefab
_G['Prefab'] = function(file, element) end

---`Constructor Private Static`
---@overload fun():Barotrauma.Prefab
---@overload fun(file:Barotrauma.ContentFile, identifier:Barotrauma.Identifier):Barotrauma.Prefab
---@param file Barotrauma.ContentFile
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Prefab
_G['Prefab'].__new = function(file, element) end

---`Constructor Public Instance`
---@overload fun():Barotrauma.Prefab
---@overload fun(file:Barotrauma.ContentFile, identifier:Barotrauma.Identifier):Barotrauma.Prefab
---@param file Barotrauma.ContentFile
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Prefab
_G['Prefab'] = function(file, element) end

---`Constructor Public Instance`
---@overload fun():Barotrauma.Prefab
---@overload fun(file:Barotrauma.ContentFile, identifier:Barotrauma.Identifier):Barotrauma.Prefab
---@param file Barotrauma.ContentFile
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Prefab
_G['Prefab'].__new = function(file, element) end

