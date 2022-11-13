---@meta
---@class Barotrauma.Sprite : System.Object
---`Field Private Instance`
---@field cannotBeLoaded System.Boolean|boolean
---`Field NonPublic Instance`
---@field loadingAsync System.Boolean|boolean
---`Field Private Instance`
---@field disposeStackTrace System.String|string
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
---`Field Public Instance`
---@field effects Microsoft.Xna.Framework.Graphics.SpriteEffects
---`Field NonPublic Instance`
---@field depth System.Single|number
---`Field Private Instance`
---@field _relativeOrigin Microsoft.Xna.Framework.Vector2
---`Field Private Static`
---@field textureRefCounts System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1Barotrauma*Sprite*TextureRefCounter|{[Barotrauma.Identifier]:Barotrauma.Sprite.TextureRefCounter}
---`Field Private Static`
---@field list System.Collections.Generic.List*1System*WeakReference*2Barotrauma*Sprite|System.WeakReference*1Barotrauma*Sprite[]
---`Getter NonPublic Instance`
---<br/>`Setter Private Instance`
---@field texture Microsoft.Xna.Framework.Graphics.Texture2D
---`Getter Public Instance`
---@field Texture Microsoft.Xna.Framework.Graphics.Texture2D
---`Getter Public Instance`
---@field Loaded System.Boolean|boolean
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

---`Method Public Instance`
---@return System.Threading.Tasks.Task
_G['Sprite'].LazyLoadAsync = function() end

---`Method Public Instance`
---@param isAsync? System.Boolean|boolean
_G['Sprite'].EnsureLazyLoaded = function(isAsync) end

---`Method Public Instance`
_G['Sprite'].ReloadTexture = function() end

---`Method Public Static`
---@param file System.String|string
---@param compress? System.Boolean|boolean
---@return Microsoft.Xna.Framework.Graphics.Texture2D
_G['Sprite'].LoadTexture = function(file, compress) end

---`Method Private Instance`
---@param sourceVector Microsoft.Xna.Framework.Vector4-ref
---@param shouldReturn System.Boolean-ref
_G['Sprite'].LoadTexture = function(sourceVector, shouldReturn) end

---`Method Public Instance`
---@overload fun(spriteBatch:Microsoft.Xna.Framework.Graphics.ISpriteBatch, pos:Microsoft.Xna.Framework.Vector2, rotate?:System.Single|number, scale?:System.Single|number, spriteEffect?:Microsoft.Xna.Framework.Graphics.SpriteEffects)
---@overload fun(spriteBatch:Microsoft.Xna.Framework.Graphics.ISpriteBatch, pos:Microsoft.Xna.Framework.Vector2, color:Microsoft.Xna.Framework.Color, rotate?:System.Single|number, scale?:System.Single|number, spriteEffect?:Microsoft.Xna.Framework.Graphics.SpriteEffects, depth?:System.Nullable*1System*Single|number)
---@param spriteBatch Microsoft.Xna.Framework.Graphics.ISpriteBatch
---@param pos Microsoft.Xna.Framework.Vector2
---@param color Microsoft.Xna.Framework.Color
---@param origin Microsoft.Xna.Framework.Vector2
---@param rotate? System.Single|number
---@param scale? System.Single|number
---@param spriteEffect? Microsoft.Xna.Framework.Graphics.SpriteEffects
---@param depth? System.Nullable*1System*Single|number
_G['Sprite'].Draw = function(spriteBatch, pos, color, origin, rotate, scale, spriteEffect, depth) end

---`Method Public Instance Virtual`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.ISpriteBatch
---@param pos Microsoft.Xna.Framework.Vector2
---@param color Microsoft.Xna.Framework.Color
---@param origin Microsoft.Xna.Framework.Vector2
---@param rotate System.Single|number
---@param scale Microsoft.Xna.Framework.Vector2
---@param spriteEffect? Microsoft.Xna.Framework.Graphics.SpriteEffects
---@param depth? System.Nullable*1System*Single|number
_G['Sprite'].Draw = function(spriteBatch, pos, color, origin, rotate, scale, spriteEffect, depth) end

---`Method Public Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param pos Microsoft.Xna.Framework.Vector2
---@param origin Microsoft.Xna.Framework.Vector2
---@param rotate System.Single|number
---@param scale Microsoft.Xna.Framework.Vector2
---@param spriteEffect? Microsoft.Xna.Framework.Graphics.SpriteEffects
---@param depth? System.Nullable*1System*Single|number
_G['Sprite'].DrawSilhouette = function(spriteBatch, pos, origin, rotate, scale, spriteEffect, depth) end

---`Method Public Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.ISpriteBatch
---@param position Microsoft.Xna.Framework.Vector2
---@param targetSize Microsoft.Xna.Framework.Vector2
---@param color? System.Nullable*1Microsoft*Xna*Framework*Color
---@param startOffset? System.Nullable*1Microsoft*Xna*Framework*Vector2
---@param textureScale? System.Nullable*1Microsoft*Xna*Framework*Vector2
---@param depth? System.Nullable*1System*Single|number
_G['Sprite'].DrawTiled = function(spriteBatch, position, targetSize, color, startOffset, textureScale, depth) end

---`Method Public Instance Virtual`
---@return System.String|string
_G['Sprite'].ToString = function() end

---`Method Private Instance`
_G['Sprite'].CalculateSourceRect = function() end

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

---`Method Private Instance`
_G['Sprite'].DisposeTexture = function() end

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
---@overload fun(other:Barotrauma.Sprite):Barotrauma.Sprite
---@overload fun(texture:Microsoft.Xna.Framework.Graphics.Texture2D, sourceRectangle:System.Nullable*1Microsoft*Xna*Framework*Rectangle, newOffset:System.Nullable*1Microsoft*Xna*Framework*Vector2, newRotation?:System.Single|number, path?:System.String|string):Barotrauma.Sprite
---@overload fun(element:Barotrauma.ContentXElement, path?:System.String|string, file?:System.String|string, lazyLoad?:System.Boolean|boolean):Barotrauma.Sprite
---@overload fun(newFile:System.String|string, newOrigin:Microsoft.Xna.Framework.Vector2):Barotrauma.Sprite
---@overload fun(newFile:System.String|string, sourceRectangle:System.Nullable*1Microsoft*Xna*Framework*Rectangle, origin?:System.Nullable*1Microsoft*Xna*Framework*Vector2, rotation?:System.Single|number):Barotrauma.Sprite
---@return Barotrauma.Sprite
_G['Sprite'] = function() end

---`Constructor Public Instance`
---@overload fun(other:Barotrauma.Sprite):Barotrauma.Sprite
---@overload fun(texture:Microsoft.Xna.Framework.Graphics.Texture2D, sourceRectangle:System.Nullable*1Microsoft*Xna*Framework*Rectangle, newOffset:System.Nullable*1Microsoft*Xna*Framework*Vector2, newRotation?:System.Single|number, path?:System.String|string):Barotrauma.Sprite
---@overload fun(element:Barotrauma.ContentXElement, path?:System.String|string, file?:System.String|string, lazyLoad?:System.Boolean|boolean):Barotrauma.Sprite
---@overload fun(newFile:System.String|string, newOrigin:Microsoft.Xna.Framework.Vector2):Barotrauma.Sprite
---@overload fun(newFile:System.String|string, sourceRectangle:System.Nullable*1Microsoft*Xna*Framework*Rectangle, origin?:System.Nullable*1Microsoft*Xna*Framework*Vector2, rotation?:System.Single|number):Barotrauma.Sprite
---@return Barotrauma.Sprite
_G['Sprite'].__new = function() end

---`Constructor Private Static`
---@overload fun(other:Barotrauma.Sprite):Barotrauma.Sprite
---@overload fun(texture:Microsoft.Xna.Framework.Graphics.Texture2D, sourceRectangle:System.Nullable*1Microsoft*Xna*Framework*Rectangle, newOffset:System.Nullable*1Microsoft*Xna*Framework*Vector2, newRotation?:System.Single|number, path?:System.String|string):Barotrauma.Sprite
---@overload fun(element:Barotrauma.ContentXElement, path?:System.String|string, file?:System.String|string, lazyLoad?:System.Boolean|boolean):Barotrauma.Sprite
---@overload fun(newFile:System.String|string, newOrigin:Microsoft.Xna.Framework.Vector2):Barotrauma.Sprite
---@overload fun(newFile:System.String|string, sourceRectangle:System.Nullable*1Microsoft*Xna*Framework*Rectangle, origin?:System.Nullable*1Microsoft*Xna*Framework*Vector2, rotation?:System.Single|number):Barotrauma.Sprite
---@return Barotrauma.Sprite
_G['Sprite'] = function() end

---`Constructor Private Static`
---@overload fun(other:Barotrauma.Sprite):Barotrauma.Sprite
---@overload fun(texture:Microsoft.Xna.Framework.Graphics.Texture2D, sourceRectangle:System.Nullable*1Microsoft*Xna*Framework*Rectangle, newOffset:System.Nullable*1Microsoft*Xna*Framework*Vector2, newRotation?:System.Single|number, path?:System.String|string):Barotrauma.Sprite
---@overload fun(element:Barotrauma.ContentXElement, path?:System.String|string, file?:System.String|string, lazyLoad?:System.Boolean|boolean):Barotrauma.Sprite
---@overload fun(newFile:System.String|string, newOrigin:Microsoft.Xna.Framework.Vector2):Barotrauma.Sprite
---@overload fun(newFile:System.String|string, sourceRectangle:System.Nullable*1Microsoft*Xna*Framework*Rectangle, origin?:System.Nullable*1Microsoft*Xna*Framework*Vector2, rotation?:System.Single|number):Barotrauma.Sprite
---@return Barotrauma.Sprite
_G['Sprite'].__new = function() end

