---@meta
---@class System.Xml.Linq.XAttribute : System.Xml.Linq.XObject
---`Field NonPublic Instance`
---@field next System.Xml.Linq.XAttribute
---`Field NonPublic Instance`
---@field name System.Xml.Linq.XName
---`Field NonPublic Instance`
---@field value System.String|string
---`Getter Public Static`
---@field EmptySequence System.Collections.Generic.IEnumerable*1System*Xml*Linq*XAttribute|(fun():System.Xml.Linq.XAttribute)
---`Getter Public Instance`
---@field IsNamespaceDeclaration System.Boolean|boolean
---`Getter Public Instance`
---@field Name System.Xml.Linq.XName
---`Getter Public Instance`
---@field NextAttribute System.Xml.Linq.XAttribute
---`Getter Public Instance Virtual`
---@field NodeType System.Xml.XmlNodeType
---`Getter Public Instance`
---@field PreviousAttribute System.Xml.Linq.XAttribute
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Value System.String|string
_G['XAttribute'] = {}

---`Method Public Instance`
_G['XAttribute'].Remove = function() end

---`Method Public Instance`
---@param value System.Object
_G['XAttribute'].SetValue = function(value) end

---`Method Public Instance Virtual`
---@return System.String|string
_G['XAttribute'].ToString = function() end

---`Method NonPublic Instance`
---@return System.Int32|integer
_G['XAttribute'].GetDeepHashCode = function() end

---`Method NonPublic Instance`
---@param ns System.Xml.Linq.XNamespace
---@return System.String|string
_G['XAttribute'].GetPrefixOfNamespace = function(ns) end

---`Method Private Static`
---@param name System.Xml.Linq.XName
---@param value System.String|string
_G['XAttribute'].ValidateAttribute = function(name, value) end

---`Constructor Public Instance`
---@overload fun(name:System.Xml.Linq.XName, value:System.Object):System.Xml.Linq.XAttribute
---@param other System.Xml.Linq.XAttribute
---@return System.Xml.Linq.XAttribute
_G['XAttribute'] = function(other) end

---`Constructor Public Instance`
---@overload fun(name:System.Xml.Linq.XName, value:System.Object):System.Xml.Linq.XAttribute
---@param other System.Xml.Linq.XAttribute
---@return System.Xml.Linq.XAttribute
_G['XAttribute'].__new = function(other) end

