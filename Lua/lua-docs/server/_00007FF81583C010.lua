---@meta
---@class Barotrauma.RichTextData : System.Object
---`Field Public Instance`
---@field StartIndex System.Int32|integer
---`Field Public Instance`
---@field EndIndex System.Int32|integer
---`Field Public Instance`
---@field Color System.Nullable*1Microsoft*Xna*Framework*Color
---`Field Public Instance`
---@field Metadata System.String|string
---`Field Public Instance`
---@field Alpha System.Single|number
---`Field Private Static`
---@field definitionIndicator System.Char
---`Field Private Static`
---@field attributeSeparator System.Char
---`Field Private Static`
---@field keyValueSeparator System.Char
---`Field Private Static`
---@field colorDefinition System.String|string
---`Field Private Static`
---@field metadataDefinition System.String|string
---`Field Private Static`
---@field endDefinition System.String|string
_G['RichTextData'] = {}

---`Method Public Static`
---@param text System.String|string
---@param sanitizedText System.String-ref
---@return System.Nullable*1System*Collections*Immutable*ImmutableArray*2Barotrauma*RichTextData
_G['RichTextData'].GetRichTextData = function(text, sanitizedText) end

---`Constructor Public Instance`
---@return Barotrauma.RichTextData
_G['RichTextData'] = function() end

---`Constructor Public Instance`
---@return Barotrauma.RichTextData
_G['RichTextData'].__new = function() end

