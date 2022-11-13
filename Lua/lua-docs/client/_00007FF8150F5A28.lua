---@meta
---@class System.Xml.Linq.XName : System.Object
---`Field Private Instance`
---@field _ns System.Xml.Linq.XNamespace
---`Field Private Instance`
---@field _localName System.String|string
---`Field Private Instance`
---@field _hashCode System.Int32|integer
---`Getter Public Instance`
---@field LocalName System.String|string
---`Getter Public Instance`
---@field Namespace System.Xml.Linq.XNamespace
---`Getter Public Instance`
---@field NamespaceName System.String|string
_G['XName'] = {}

---`Method Public Instance Virtual`
---@return System.String|string
_G['XName'].ToString = function() end

---`Method Public Static`
---@overload fun(expandedName:System.String|string):System.Xml.Linq.XName
---@param localName System.String|string
---@param namespaceName System.String|string
---@return System.Xml.Linq.XName
_G['XName'].Get = function(localName, namespaceName) end

---`Method Public Instance Virtual`
---@param obj System.Object
---@return System.Boolean|boolean
_G['XName'].Equals = function(obj) end

---`Method Public Instance Virtual`
---@return System.Int32|integer
_G['XName'].GetHashCode = function() end

---`Constructor NonPublic Instance`
---@param ns System.Xml.Linq.XNamespace
---@param localName System.String|string
---@return System.Xml.Linq.XName
_G['XName'] = function(ns, localName) end

---`Constructor NonPublic Instance`
---@param ns System.Xml.Linq.XNamespace
---@param localName System.String|string
---@return System.Xml.Linq.XName
_G['XName'].__new = function(ns, localName) end

