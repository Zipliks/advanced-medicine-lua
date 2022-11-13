---@meta
---@class Barotrauma.ScalableFont : System.Object
---`Field Private Instance`
---@field rwl System.Threading.ReaderWriterLockSlim
---`Field Private Instance`
---@field filename System.String|string
---`Field Private Instance`
---@field face SharpFont.Face
---`Field Private Instance`
---@field size System.UInt32|integer
---`Field Private Instance`
---@field baseHeight System.Int32|integer
---`Field Private Instance`
---@field texCoords System.Collections.Generic.Dictionary*1System*UInt32*1Barotrauma*ScalableFont*GlyphData|{[System.UInt32|integer]:Barotrauma.ScalableFont.GlyphData}
---`Field Private Instance`
---@field textures System.Collections.Generic.List*1Microsoft*Xna*Framework*Graphics*Texture2D|Microsoft.Xna.Framework.Graphics.Texture2D[]
---`Field Private Instance`
---@field graphicsDevice Microsoft.Xna.Framework.Graphics.GraphicsDevice
---`Field Private Instance`
---@field currentDynamicAtlasCoords Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field currentDynamicAtlasNextY System.Int32|integer
---`Field Private Instance`
---@field currentDynamicPixelBuffer System.UInt32-arr|System.UInt32|integer[]
---`Field Public Instance`
---@field ForceUpperCase System.Boolean|boolean
---`Field Private Instance`
---@field charRanges System.UInt32-arr|System.UInt32|integer[]
---`Field Private Instance`
---@field texDims System.Int32|integer
---`Field Private Instance`
---@field baseChar System.UInt32|integer
---`Field Private Static`
---@field FontList System.Collections.Generic.List*1Barotrauma*ScalableFont|Barotrauma.ScalableFont[]
---`Field Private Static`
---@field Lib SharpFont.Library
---`Field Private Static`
---@field globalMutex System.Object
---`Field Private Static`
---@field quadVertices Microsoft.Xna.Framework.Graphics.VertexPositionColorTexture-arr|Microsoft.Xna.Framework.Graphics.VertexPositionColorTexture[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field DynamicLoading System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field IsCJK System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Size System.UInt32|integer
---`Getter Public Instance`
---@field LineHeight System.Single|number
_G['ScalableFont'] = {}

---`Method Private Instance`
---@param gd Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@param charRanges? System.UInt32-arr|System.UInt32|integer[]
---@param texDims? System.Int32|integer
---@param baseChar? System.UInt32|integer
_G['ScalableFont'].RenderAtlas = function(gd, charRanges, texDims, baseChar) end

---`Method Private Instance`
---@overload fun(gd:Microsoft.Xna.Framework.Graphics.GraphicsDevice, character:System.UInt32|integer, texDims?:System.Int32|integer, baseChar?:System.UInt32|integer)
---@overload fun(gd:Microsoft.Xna.Framework.Graphics.GraphicsDevice, str:System.String|string, texDims?:System.Int32|integer, baseChar?:System.UInt32|integer)
---@param gd Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@param characters System.Collections.Generic.IEnumerable*1System*UInt32|(fun():System.UInt32|integer)
---@param texDims? System.Int32|integer
---@param baseChar? System.UInt32|integer
_G['ScalableFont'].DynamicRenderAtlas = function(gd, characters, texDims, baseChar) end

---`Method Private Instance`
---@param text System.String|string
---@param advanceUnit Microsoft.Xna.Framework.Vector2-ref
---@param position Microsoft.Xna.Framework.Vector2-ref
---@param scale Microsoft.Xna.Framework.Vector2-ref
---@param alignment Barotrauma.Alignment
---@param i System.Int32|integer
---@param lineWidth System.Single-ref
---@param currentLineOffset Microsoft.Xna.Framework.Vector2-ref
---@param lineNum System.Int32-ref
---@param currentPos Microsoft.Xna.Framework.Vector2-ref
---@param charIndex System.UInt32-ref
---@param shouldContinue System.Boolean-ref
_G['ScalableFont'].HandleNewLineAndAlignment = function(text, advanceUnit, position, scale, alignment, i, lineWidth, currentLineOffset, lineNum, currentPos, charIndex, shouldContinue) end

---`Method Private Instance`
---@param charIndex System.UInt32|integer
---@return Barotrauma.ScalableFont.GlyphData
_G['ScalableFont'].GetGlyphData = function(charIndex) end

---`Method Public Instance`
---@overload fun(sb:Microsoft.Xna.Framework.Graphics.SpriteBatch, text:System.String|string, position:Microsoft.Xna.Framework.Vector2, color:Microsoft.Xna.Framework.Color, rotation:System.Single|number, origin:Microsoft.Xna.Framework.Vector2, scale:Microsoft.Xna.Framework.Vector2, se:Microsoft.Xna.Framework.Graphics.SpriteEffects, layerDepth:System.Single|number, alignment?:Barotrauma.Alignment, forceUpperCase?:Barotrauma.ForceUpperCase)
---@overload fun(sb:Microsoft.Xna.Framework.Graphics.SpriteBatch, text:System.String|string, position:Microsoft.Xna.Framework.Vector2, color:Microsoft.Xna.Framework.Color, rotation:System.Single|number, origin:Microsoft.Xna.Framework.Vector2, scale:System.Single|number, se:Microsoft.Xna.Framework.Graphics.SpriteEffects, layerDepth:System.Single|number, alignment?:Barotrauma.Alignment, forceUpperCase?:Barotrauma.ForceUpperCase)
---@param sb Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param text System.String|string
---@param position Microsoft.Xna.Framework.Vector2
---@param color Microsoft.Xna.Framework.Color
---@param forceUpperCase? Barotrauma.ForceUpperCase
---@param italics? System.Boolean|boolean
_G['ScalableFont'].DrawString = function(sb, text, position, color, forceUpperCase, italics) end

---`Method Private Instance`
---@param text System.String|string
---@param forceUpperCase Barotrauma.ForceUpperCase
---@return System.String|string
_G['ScalableFont'].ApplyUpperCase = function(text, forceUpperCase) end

---`Method Public Instance`
---@overload fun(sb:Microsoft.Xna.Framework.Graphics.SpriteBatch, text:System.String|string, position:Microsoft.Xna.Framework.Vector2, color:Microsoft.Xna.Framework.Color, rotation:System.Single|number, origin:Microsoft.Xna.Framework.Vector2, scale:System.Single|number, se:Microsoft.Xna.Framework.Graphics.SpriteEffects, layerDepth:System.Single|number, richTextData:System.Nullable, rtdOffset?:System.Int32|integer, alignment?:Barotrauma.Alignment, forceUpperCase?:Barotrauma.ForceUpperCase)
---@param sb Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param text System.String|string
---@param position Microsoft.Xna.Framework.Vector2
---@param color Microsoft.Xna.Framework.Color
---@param rotation System.Single|number
---@param origin Microsoft.Xna.Framework.Vector2
---@param scale Microsoft.Xna.Framework.Vector2
---@param se Microsoft.Xna.Framework.Graphics.SpriteEffects
---@param layerDepth System.Single|number
---@param richTextData System.Nullable
---@param rtdOffset? System.Int32|integer
---@param alignment? Barotrauma.Alignment
---@param forceUpperCase? Barotrauma.ForceUpperCase
_G['ScalableFont'].DrawStringWithColors = function(sb, text, position, color, rotation, origin, scale, se, layerDepth, richTextData, rtdOffset, alignment, forceUpperCase) end

---`Method Public Instance`
---@overload fun(text:System.String|string, width:System.Single|number):System.String|string
---@overload fun(text:System.String|string, width:System.Single|number, requestCharPos:System.Int32|integer, requestedCharPos:Microsoft.Xna.Framework.Vector2-ref):System.String|string
---@param text System.String|string
---@param width System.Single|number
---@param allCharPositions Microsoft.Xna.Framework.Vector2-arr-ref
---@return System.String|string
_G['ScalableFont'].WrapText = function(text, width, allCharPositions) end

---`Method Private Instance`
---@param text System.String|string
---@param width System.Single|number
---@param requestCharPos System.Int32|integer
---@param requestedCharPos Microsoft.Xna.Framework.Vector2-ref
---@param returnAllCharPositions System.Boolean|boolean
---@param allCharPositions Microsoft.Xna.Framework.Vector2-arr-ref
---@return System.String|string
_G['ScalableFont'].WrapText = function(text, width, requestCharPos, requestedCharPos, returnAllCharPositions, allCharPositions) end

---`Method Public Instance`
---@overload fun(str:Barotrauma.LocalizedString, removeExtraSpacing?:System.Boolean|boolean):Microsoft.Xna.Framework.Vector2
---@param text System.String|string
---@param removeExtraSpacing? System.Boolean|boolean
---@return Microsoft.Xna.Framework.Vector2
_G['ScalableFont'].MeasureString = function(text, removeExtraSpacing) end

---`Method Public Instance`
---@param c System.Char
---@return Microsoft.Xna.Framework.Vector2
_G['ScalableFont'].MeasureChar = function(c) end

---`Method Public Instance Virtual`
_G['ScalableFont'].Dispose = function() end

---`Constructor Public Instance`
---@overload fun(element:Barotrauma.ContentXElement, gd?:Microsoft.Xna.Framework.Graphics.GraphicsDevice):Barotrauma.ScalableFont
---@overload fun(filename:System.String|string, size:System.UInt32|integer, gd?:Microsoft.Xna.Framework.Graphics.GraphicsDevice, dynamicLoading?:System.Boolean|boolean, isCJK?:System.Boolean|boolean):Barotrauma.ScalableFont
---@return Barotrauma.ScalableFont
_G['ScalableFont'] = function() end

---`Constructor Public Instance`
---@overload fun(element:Barotrauma.ContentXElement, gd?:Microsoft.Xna.Framework.Graphics.GraphicsDevice):Barotrauma.ScalableFont
---@overload fun(filename:System.String|string, size:System.UInt32|integer, gd?:Microsoft.Xna.Framework.Graphics.GraphicsDevice, dynamicLoading?:System.Boolean|boolean, isCJK?:System.Boolean|boolean):Barotrauma.ScalableFont
---@return Barotrauma.ScalableFont
_G['ScalableFont'].__new = function() end

---`Constructor Private Static`
---@overload fun(element:Barotrauma.ContentXElement, gd?:Microsoft.Xna.Framework.Graphics.GraphicsDevice):Barotrauma.ScalableFont
---@overload fun(filename:System.String|string, size:System.UInt32|integer, gd?:Microsoft.Xna.Framework.Graphics.GraphicsDevice, dynamicLoading?:System.Boolean|boolean, isCJK?:System.Boolean|boolean):Barotrauma.ScalableFont
---@return Barotrauma.ScalableFont
_G['ScalableFont'] = function() end

---`Constructor Private Static`
---@overload fun(element:Barotrauma.ContentXElement, gd?:Microsoft.Xna.Framework.Graphics.GraphicsDevice):Barotrauma.ScalableFont
---@overload fun(filename:System.String|string, size:System.UInt32|integer, gd?:Microsoft.Xna.Framework.Graphics.GraphicsDevice, dynamicLoading?:System.Boolean|boolean, isCJK?:System.Boolean|boolean):Barotrauma.ScalableFont
---@return Barotrauma.ScalableFont
_G['ScalableFont'].__new = function() end

