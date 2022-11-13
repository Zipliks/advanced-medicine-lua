---@meta
---@class Barotrauma.CharacterParams.SubParam : System.Object
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field Name System.String|string
---`Getter Public Instance Virtual`
---<br/>`Setter Private Instance`
---@field SerializableProperties System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1Barotrauma*SerializableProperty|{[Barotrauma.Identifier]:Barotrauma.SerializableProperty}
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Element Barotrauma.ContentXElement
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SubParams System.Collections.Generic.List*1Barotrauma*CharacterParams*SubParam|Barotrauma.CharacterParams.SubParam[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Character Barotrauma.CharacterParams
_G['CharacterParams']['SubParam'] = {}

---`Method NonPublic Instance`
---@param name System.String|string
---@param ... System.Object
---@return Barotrauma.ContentXElement
_G['CharacterParams']['SubParam'].CreateElement = function(name, ...) end

---`Method Public Instance Virtual`
---@param recursive? System.Boolean|boolean
---@return System.Boolean|boolean
_G['CharacterParams']['SubParam'].Deserialize = function(recursive) end

---`Method Public Instance Virtual`
---@param recursive? System.Boolean|boolean
---@return System.Boolean|boolean
_G['CharacterParams']['SubParam'].Serialize = function(recursive) end

---`Method Public Instance Virtual`
_G['CharacterParams']['SubParam'].Reset = function() end

---`Method NonPublic Instance`
---@param subParam Barotrauma.CharacterParams.SubParam.T
---@param collection? System.Collections.Generic.IList*1Barotrauma*CharacterParams*SubParam*T|Barotrauma.CharacterParams.SubParam.T[]
---@return System.Boolean|boolean
_G['CharacterParams']['SubParam'].RemoveSubParam = function(subParam, collection) end

---`Constructor Public Instance`
---@param element Barotrauma.ContentXElement
---@param character Barotrauma.CharacterParams
---@return Barotrauma.CharacterParams.SubParam
_G['CharacterParams']['SubParam'] = function(element, character) end

---`Constructor Public Instance`
---@param element Barotrauma.ContentXElement
---@param character Barotrauma.CharacterParams
---@return Barotrauma.CharacterParams.SubParam
_G['CharacterParams']['SubParam'].__new = function(element, character) end

