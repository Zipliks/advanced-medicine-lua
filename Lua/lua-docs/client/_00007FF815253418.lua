---@meta
---@class Barotrauma.GUIFontPrefab : Barotrauma.GUIPrefab
---`Field Private Instance`
---@field element Barotrauma.ContentXElement
---`Field Private Instance`
---@field font Barotrauma.ScalableFont
---`Field Private Instance`
---@field cjkFont Barotrauma.ScalableFont
---`Getter Public Instance`
---@field Font Barotrauma.ScalableFont
---`Getter Public Instance`
---@field CjkFont Barotrauma.ScalableFont
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Language Barotrauma.LanguageIdentifier
_G['GUIFontPrefab'] = {}

---`Method Public Instance`
_G['GUIFontPrefab'].LoadFont = function() end

---`Method Public Instance Virtual`
_G['GUIFontPrefab'].Dispose = function() end

---`Method Private Instance`
---@param element Barotrauma.ContentXElement
---@return Barotrauma.ScalableFont
_G['GUIFontPrefab'].ExtractCjkFont = function(element) end

---`Method Private Instance`
---@param element Barotrauma.ContentXElement
---@return System.String|string
_G['GUIFontPrefab'].GetFontFilePath = function(element) end

---`Method Private Instance`
---@param element System.Xml.Linq.XElement
---@param defaultSize? System.UInt32|integer
---@return System.UInt32|integer
_G['GUIFontPrefab'].GetFontSize = function(element, defaultSize) end

---`Method Private Instance`
---@param element System.Xml.Linq.XElement
---@return System.Boolean|boolean
_G['GUIFontPrefab'].GetFontDynamicLoading = function(element) end

---`Method Private Instance`
---@param element System.Xml.Linq.XElement
---@return System.Boolean|boolean
_G['GUIFontPrefab'].GetIsCJK = function(element) end

---`Method Private Instance`
---@param element System.Xml.Linq.XElement
---@return System.Boolean|boolean
_G['GUIFontPrefab'].IsValidOverride = function(element) end

---`Constructor Public Instance`
---@param element Barotrauma.ContentXElement
---@param file Barotrauma.UIStyleFile
---@return Barotrauma.GUIFontPrefab
_G['GUIFontPrefab'] = function(element, file) end

---`Constructor Public Instance`
---@param element Barotrauma.ContentXElement
---@param file Barotrauma.UIStyleFile
---@return Barotrauma.GUIFontPrefab
_G['GUIFontPrefab'].__new = function(element, file) end

