---@meta
---@class Barotrauma.GUIFont : Barotrauma.GUISelector*1Barotrauma*GUIFontPrefab
---`Getter Public Instance`
---@field HasValue System.Boolean|boolean
---`Getter Public Instance`
---@field Value Barotrauma.ScalableFont
---`Getter Public Instance`
---@field ForceUpperCase System.Boolean|boolean
---`Getter Public Instance`
---@field Size System.UInt32|integer
---`Getter Public Instance`
---@field LineHeight System.Single|number
_G['GUIFont'] = {}

---`Method Private Instance`
---@param str Barotrauma.LocalizedString
---@return Barotrauma.ScalableFont
_G['GUIFont'].GetFontForStr = function(str) end

---`Method Public Instance`
---@param str System.String|string
---@return Barotrauma.ScalableFont
_G['GUIFont'].GetFontForStr = function(str) end

---`Method Public Instance`
---@overload fun(sb:Microsoft.Xna.Framework.Graphics.SpriteBatch, text:Barotrauma.LocalizedString, position:Microsoft.Xna.Framework.Vector2, color:Microsoft.Xna.Framework.Color, rotation:System.Single|number, origin:Microsoft.Xna.Framework.Vector2, scale:Microsoft.Xna.Framework.Vector2, se:Microsoft.Xna.Framework.Graphics.SpriteEffects, layerDepth:System.Single|number)
---@overload fun(sb:Microsoft.Xna.Framework.Graphics.SpriteBatch, text:System.String|string, position:Microsoft.Xna.Framework.Vector2, color:Microsoft.Xna.Framework.Color, rotation:System.Single|number, origin:Microsoft.Xna.Framework.Vector2, scale:Microsoft.Xna.Framework.Vector2, se:Microsoft.Xna.Framework.Graphics.SpriteEffects, layerDepth:System.Single|number)
---@overload fun(sb:Microsoft.Xna.Framework.Graphics.SpriteBatch, text:Barotrauma.LocalizedString, position:Microsoft.Xna.Framework.Vector2, color:Microsoft.Xna.Framework.Color, rotation:System.Single|number, origin:Microsoft.Xna.Framework.Vector2, scale:System.Single|number, se:Microsoft.Xna.Framework.Graphics.SpriteEffects, layerDepth:System.Single|number, alignment?:Barotrauma.Alignment)
---@overload fun(sb:Microsoft.Xna.Framework.Graphics.SpriteBatch, text:System.String|string, position:Microsoft.Xna.Framework.Vector2, color:Microsoft.Xna.Framework.Color, rotation:System.Single|number, origin:Microsoft.Xna.Framework.Vector2, scale:System.Single|number, se:Microsoft.Xna.Framework.Graphics.SpriteEffects, layerDepth:System.Single|number, alignment?:Barotrauma.Alignment, forceUpperCase?:Barotrauma.ForceUpperCase)
---@overload fun(sb:Microsoft.Xna.Framework.Graphics.SpriteBatch, text:Barotrauma.LocalizedString, position:Microsoft.Xna.Framework.Vector2, color:Microsoft.Xna.Framework.Color, forceUpperCase?:Barotrauma.ForceUpperCase, italics?:System.Boolean|boolean)
---@param sb Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param text System.String|string
---@param position Microsoft.Xna.Framework.Vector2
---@param color Microsoft.Xna.Framework.Color
---@param forceUpperCase? Barotrauma.ForceUpperCase
---@param italics? System.Boolean|boolean
_G['GUIFont'].DrawString = function(sb, text, position, color, forceUpperCase, italics) end

---`Method Public Instance`
---@param sb Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param text System.String|string
---@param position Microsoft.Xna.Framework.Vector2
---@param color Microsoft.Xna.Framework.Color
---@param rotation System.Single|number
---@param origin Microsoft.Xna.Framework.Vector2
---@param scale System.Single|number
---@param se Microsoft.Xna.Framework.Graphics.SpriteEffects
---@param layerDepth System.Single|number
---@param richTextData System.Nullable
---@param rtdOffset? System.Int32|integer
---@param alignment? Barotrauma.Alignment
---@param forceUpperCase? Barotrauma.ForceUpperCase
_G['GUIFont'].DrawStringWithColors = function(sb, text, position, color, rotation, origin, scale, se, layerDepth, richTextData, rtdOffset, alignment, forceUpperCase) end

---`Method Public Instance`
---@param str Barotrauma.LocalizedString
---@param removeExtraSpacing? System.Boolean|boolean
---@return Microsoft.Xna.Framework.Vector2
_G['GUIFont'].MeasureString = function(str, removeExtraSpacing) end

---`Method Public Instance`
---@param c System.Char
---@return Microsoft.Xna.Framework.Vector2
_G['GUIFont'].MeasureChar = function(c) end

---`Method Public Instance`
---@overload fun(text:System.String|string, width:System.Single|number):System.String|string
---@overload fun(text:System.String|string, width:System.Single|number, requestCharPos:System.Int32|integer, requestedCharPos:Microsoft.Xna.Framework.Vector2-ref):System.String|string
---@param text System.String|string
---@param width System.Single|number
---@param allCharPositions Microsoft.Xna.Framework.Vector2-arr-ref
---@return System.String|string
_G['GUIFont'].WrapText = function(text, width, allCharPositions) end

---`Constructor Public Instance`
---@param identifier System.String|string
---@return Barotrauma.GUIFont
_G['GUIFont'] = function(identifier) end

---`Constructor Public Instance`
---@param identifier System.String|string
---@return Barotrauma.GUIFont
_G['GUIFont'].__new = function(identifier) end

