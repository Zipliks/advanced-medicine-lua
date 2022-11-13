---@meta
---@class Barotrauma.CharacterPrefab : Barotrauma.PrefabWithUintIdentifier
---`Field Private Instance`
---@field originalElement System.Xml.Linq.XElement
---`Field Public Static`
---@field Prefabs Barotrauma.PrefabCollection*1Barotrauma*CharacterPrefab|(fun():Barotrauma.CharacterPrefab)
---`Field Public Static`
---@field HumanSpeciesName Barotrauma.Identifier
---`Getter Public Instance`
---@field Name System.String|string
---`Getter Public Instance Virtual`
---@field VariantOf Barotrauma.Identifier
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ConfigElement Barotrauma.ContentXElement
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field CharacterInfoPrefab Barotrauma.CharacterInfoPrefab
---`Getter Public Static`
---@field ConfigElements System.Collections.Generic.IEnumerable*1Barotrauma*ContentXElement|(fun():Barotrauma.ContentXElement)
---`Getter Public Static`
---@field HumanConfigFile Barotrauma.CharacterFile
---`Getter Public Static`
---@field HumanPrefab Barotrauma.CharacterPrefab
_G['CharacterPrefab'] = {}

---`Method Public Instance Virtual`
_G['CharacterPrefab'].Dispose = function() end

---`Method Public Instance Virtual`
---@param parent Barotrauma.CharacterPrefab
_G['CharacterPrefab'].InheritFrom = function(parent) end

---`Method Private Instance`
_G['CharacterPrefab'].ParseConfigElement = function() end

---`Method Public Static`
---@param speciesName Barotrauma.Identifier
---@return Barotrauma.CharacterPrefab
_G['CharacterPrefab'].FindBySpeciesName = function(speciesName) end

---`Method Public Static`
---@param filePath System.String|string
---@return Barotrauma.CharacterPrefab
_G['CharacterPrefab'].FindByFilePath = function(filePath) end

---`Method Public Static`
---@param predicate System.Predicate*1Barotrauma*CharacterPrefab|(fun(obj:Barotrauma.CharacterPrefab):System.Boolean|boolean)
---@return Barotrauma.CharacterPrefab
_G['CharacterPrefab'].Find = function(predicate) end

---`Method Public Static`
---@param element System.Xml.Linq.XElement
---@param file Barotrauma.CharacterFile
---@return Barotrauma.Identifier
_G['CharacterPrefab'].ParseName = function(element, file) end

---`Method Public Static`
---@param mainElement System.Xml.Linq.XElement
---@param file Barotrauma.CharacterFile
---@param name Barotrauma.Identifier-ref
---@return System.Boolean|boolean
_G['CharacterPrefab'].CheckSpeciesName = function(mainElement, file, name) end

---`Constructor Public Instance`
---@overload fun(mainElement:Barotrauma.ContentXElement, file:Barotrauma.CharacterFile):Barotrauma.CharacterPrefab
---@return Barotrauma.CharacterPrefab
_G['CharacterPrefab'] = function() end

---`Constructor Public Instance`
---@overload fun(mainElement:Barotrauma.ContentXElement, file:Barotrauma.CharacterFile):Barotrauma.CharacterPrefab
---@return Barotrauma.CharacterPrefab
_G['CharacterPrefab'].__new = function() end

---`Constructor Private Static`
---@overload fun(mainElement:Barotrauma.ContentXElement, file:Barotrauma.CharacterFile):Barotrauma.CharacterPrefab
---@return Barotrauma.CharacterPrefab
_G['CharacterPrefab'] = function() end

---`Constructor Private Static`
---@overload fun(mainElement:Barotrauma.ContentXElement, file:Barotrauma.CharacterFile):Barotrauma.CharacterPrefab
---@return Barotrauma.CharacterPrefab
_G['CharacterPrefab'].__new = function() end

