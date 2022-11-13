---@meta
---@class Barotrauma.Sprite : System.Object
---`Field Private Instance`
---@field sourceRect Microsoft.Xna.Framework.Rectangle
---`Field NonPublic Instance`
---@field offset Microsoft.Xna.Framework.Vector2
---`Field NonPublic Instance`
---@field origin Microsoft.Xna.Framework.Vector2
---`Field Public Instance`
---@field size Microsoft.Xna.Framework.Vector2
---`Field Public Instance`
---@field rotation System.Single|number
---`Field NonPublic Instance`
---@field depth System.Single|number
---`Field Private Instance`
---@field _relativeOrigin Microsoft.Xna.Framework.Vector2
---`Field Private Static`
---@field list System.Collections.Generic.List*1System*WeakReference*2Barotrauma*Sprite|System.WeakReference*1Barotrauma*Sprite[]
---`Getter Public Static`
---@field LoadedSprites System.Collections.Generic.IEnumerable*1Barotrauma*Sprite|(fun():Barotrauma.Sprite)
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SourceElement Barotrauma.ContentXElement
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field LazyLoad System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SourceRect Microsoft.Xna.Framework.Rectangle
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Depth System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Origin Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field RelativeOrigin Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field RelativeSize Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field FilePath Barotrauma.ContentPath
---`Getter Public Instance`
---@field FullPath System.String|string
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Compress System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Identifier Barotrauma.Identifier
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field EntityIdentifier Barotrauma.Identifier
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Name System.String|string
_G['Sprite'] = {}

---`Method Public Instance Virtual`
---@return System.String|string
_G['Sprite'].ToString = function() end

---`Method Private Static`
---@param elem Barotrauma.Sprite
_G['Sprite'].AddToList = function(elem) end

---`Method NonPublic Instance`
---@param spriteParams Barotrauma.RagdollParams.SpriteParams
---@param isFlipped System.Boolean|boolean
_G['Sprite'].LoadParams = function(spriteParams, isFlipped) end

---`Method Private Instance`
---@param newFile System.String|string
---@param sourceRectangle? System.Nullable*1Microsoft*Xna*Framework*Rectangle
---@param newOrigin? System.Nullable*1Microsoft*Xna*Framework*Vector2
---@param newOffset? System.Nullable*1Microsoft*Xna*Framework*Vector2
---@param newRotation? System.Single|number
_G['Sprite'].Init = function(newFile, sourceRectangle, newOrigin, newOffset, newRotation) end

---`Method Public Static`
---@param sourceElement System.Xml.Linq.XElement
---@return Barotrauma.Identifier
_G['Sprite'].GetIdentifier = function(sourceElement) end

---`Method Public Instance`
_G['Sprite'].Remove = function() end

---`Method NonPublic Instance Virtual`
_G['Sprite'].Finalize = function() end

---`Method Public Instance`
_G['Sprite'].ReloadXML = function() end

---`Method Public Instance`
---@param path? System.String|string
---@param file? System.String|string
---@return System.Boolean|boolean
_G['Sprite'].ParseTexturePath = function(path, file) end

---`Method Private Instance`
---@return System.Xml.Linq.XElement
_G['Sprite'].GetLocalizationOverrideElement = function() end

---`Constructor Public Instance`
---@overload fun(element:Barotrauma.ContentXElement, path?:System.String|string, file?:System.String|string, lazyLoad?:System.Boolean|boolean):Barotrauma.Sprite
---@overload fun(newFile:System.String|string, newOrigin:Microsoft.Xna.Framework.Vector2):Barotrauma.Sprite
---@overload fun(newFile:System.String|string, sourceRectangle:System.Nullable*1Microsoft*Xna*Framework*Rectangle, origin?:System.Nullable*1Microsoft*Xna*Framework*Vector2, rotation?:System.Single|number):Barotrauma.Sprite
---@return Barotrauma.Sprite
_G['Sprite'] = function() end

---`Constructor Public Instance`
---@overload fun(element:Barotrauma.ContentXElement, path?:System.String|string, file?:System.String|string, lazyLoad?:System.Boolean|boolean):Barotrauma.Sprite
---@overload fun(newFile:System.String|string, newOrigin:Microsoft.Xna.Framework.Vector2):Barotrauma.Sprite
---@overload fun(newFile:System.String|string, sourceRectangle:System.Nullable*1Microsoft*Xna*Framework*Rectangle, origin?:System.Nullable*1Microsoft*Xna*Framework*Vector2, rotation?:System.Single|number):Barotrauma.Sprite
---@return Barotrauma.Sprite
_G['Sprite'].__new = function() end

---`Constructor Private Static`
---@overload fun(element:Barotrauma.ContentXElement, path?:System.String|string, file?:System.String|string, lazyLoad?:System.Boolean|boolean):Barotrauma.Sprite
---@overload fun(newFile:System.String|string, newOrigin:Microsoft.Xna.Framework.Vector2):Barotrauma.Sprite
---@overload fun(newFile:System.String|string, sourceRectangle:System.Nullable*1Microsoft*Xna*Framework*Rectangle, origin?:System.Nullable*1Microsoft*Xna*Framework*Vector2, rotation?:System.Single|number):Barotrauma.Sprite
---@return Barotrauma.Sprite
_G['Sprite'] = function() end

---`Constructor Private Static`
---@overload fun(element:Barotrauma.ContentXElement, path?:System.String|string, file?:System.String|string, lazyLoad?:System.Boolean|boolean):Barotrauma.Sprite
---@overload fun(newFile:System.String|string, newOrigin:Microsoft.Xna.Framework.Vector2):Barotrauma.Sprite
---@overload fun(newFile:System.String|string, sourceRectangle:System.Nullable*1Microsoft*Xna*Framework*Rectangle, origin?:System.Nullable*1Microsoft*Xna*Framework*Vector2, rotation?:System.Single|number):Barotrauma.Sprite
---@return Barotrauma.Sprite
_G['Sprite'].__new = function() end

