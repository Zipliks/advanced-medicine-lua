---@meta
---@class Barotrauma.EditableParams : System.Object
---`Field NonPublic Instance`
---@field rootElement Barotrauma.ContentXElement
---`Field NonPublic Instance`
---@field doc System.Xml.Linq.XDocument
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field IsLoaded System.Boolean|boolean
---`Getter Public Instance Virtual`
---<br/>`Setter Private Instance`
---@field Name System.String|string
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field FileName System.String|string
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Folder System.String|string
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field Path Barotrauma.ContentPath
---`Getter Public Instance Virtual`
---<br/>`Setter NonPublic Instance`
---@field SerializableProperties System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1Barotrauma*SerializableProperty|{[Barotrauma.Identifier]:Barotrauma.SerializableProperty}
---`Getter Private Instance`
---<br/>`Setter Private Instance`
---@field Doc System.Xml.Linq.XDocument
---`Getter Public Instance Virtual`
---@field MainElement Barotrauma.ContentXElement
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field OriginalElement Barotrauma.ContentXElement
_G['EditableParams'] = {}

---`Method NonPublic Instance`
---@param name System.String|string
---@param ... System.Object
---@return Barotrauma.ContentXElement
_G['EditableParams'].CreateElement = function(name, ...) end

---`Method NonPublic Instance Virtual`
---@return System.String|string
_G['EditableParams'].GetName = function() end

---`Method NonPublic Instance Virtual`
---@param element? System.Xml.Linq.XElement
---@return System.Boolean|boolean
_G['EditableParams'].Deserialize = function(element) end

---`Method NonPublic Instance Virtual`
---@param element? System.Xml.Linq.XElement
---@return System.Boolean|boolean
_G['EditableParams'].Serialize = function(element) end

---`Method NonPublic Instance Virtual`
---@param file Barotrauma.ContentPath
---@return System.Boolean|boolean
_G['EditableParams'].Load = function(file) end

---`Method NonPublic Instance Virtual`
---@param fullPath Barotrauma.ContentPath
_G['EditableParams'].UpdatePath = function(fullPath) end

---`Method Public Instance Virtual`
---@param fileNameWithoutExtension? System.String|string
---@param settings? System.Xml.XmlWriterSettings
---@return System.Boolean|boolean
_G['EditableParams'].Save = function(fileNameWithoutExtension, settings) end

---`Method Public Instance Virtual`
---@param forceReload? System.Boolean|boolean
---@return System.Boolean|boolean
_G['EditableParams'].Reset = function(forceReload) end

---`Constructor NonPublic Instance`
---@return Barotrauma.EditableParams
_G['EditableParams'] = function() end

---`Constructor NonPublic Instance`
---@return Barotrauma.EditableParams
_G['EditableParams'].__new = function() end

