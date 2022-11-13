---@meta
---@class Microsoft.Xna.Framework.Graphics.SpriteBatch : Microsoft.Xna.Framework.Graphics.GraphicsResource
---`Field Private Instance`
---@field _batcher Microsoft.Xna.Framework.Graphics.SpriteBatcher
---`Field Private Instance`
---@field _sortMode Microsoft.Xna.Framework.Graphics.SpriteSortMode
---`Field Private Instance`
---@field _blendState Microsoft.Xna.Framework.Graphics.BlendState
---`Field Private Instance`
---@field _samplerState Microsoft.Xna.Framework.Graphics.SamplerState
---`Field Private Instance`
---@field _depthStencilState Microsoft.Xna.Framework.Graphics.DepthStencilState
---`Field Private Instance`
---@field _rasterizerState Microsoft.Xna.Framework.Graphics.RasterizerState
---`Field Private Instance`
---@field _effect Microsoft.Xna.Framework.Graphics.SpriteBatch.EffectWithParams
---`Field Private Instance`
---@field _beginCalled System.Boolean|boolean
---`Field Private Instance`
---@field _spriteEffect Microsoft.Xna.Framework.Graphics.Effect
---`Field Private Instance`
---@field _matrixTransform Microsoft.Xna.Framework.Graphics.EffectParameter
---`Field Private Instance`
---@field _spritePass Microsoft.Xna.Framework.Graphics.EffectPass
---`Field Private Instance`
---@field _matrix System.Nullable*1Microsoft*Xna*Framework*Matrix
---`Field Private Instance`
---@field _lastViewport Microsoft.Xna.Framework.Graphics.Viewport
---`Field Private Instance`
---@field _projection Microsoft.Xna.Framework.Matrix
---`Field Private Instance`
---@field _tempRect Microsoft.Xna.Framework.Rectangle
---`Field Private Instance`
---@field _texCoordTL Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field _texCoordBR Microsoft.Xna.Framework.Vector2
---`Field NonPublic Static`
---@field NeedsHalfPixelOffset System.Boolean|boolean
_G['Microsoft']['Xna']['Framework']['Graphics']['SpriteBatch'] = {}

---`Method Public Instance`
---@param sortMode? Microsoft.Xna.Framework.Graphics.SpriteSortMode
---@param blendState? Microsoft.Xna.Framework.Graphics.BlendState
---@param samplerState? Microsoft.Xna.Framework.Graphics.SamplerState
---@param depthStencilState? Microsoft.Xna.Framework.Graphics.DepthStencilState
---@param rasterizerState? Microsoft.Xna.Framework.Graphics.RasterizerState
---@param effect? Microsoft.Xna.Framework.Graphics.Effect
---@param transformMatrix? System.Nullable*1Microsoft*Xna*Framework*Matrix
_G['Microsoft']['Xna']['Framework']['Graphics']['SpriteBatch'].Begin = function(sortMode, blendState, samplerState, depthStencilState, rasterizerState, effect, transformMatrix) end

---`Method Public Instance`
---@return Microsoft.Xna.Framework.Graphics.Effect
_G['Microsoft']['Xna']['Framework']['Graphics']['SpriteBatch'].GetCurrentEffect = function() end

---`Method Public Instance`
_G['Microsoft']['Xna']['Framework']['Graphics']['SpriteBatch'].End = function() end

---`Method Public Instance`
---@overload fun(effect?:Microsoft.Xna.Framework.Graphics.Effect, parameters?:System.Collections.Generic.Dictionary*1System*String*1System*Object|{[System.String|string]:System.Object})
---@param effectWithParams Microsoft.Xna.Framework.Graphics.SpriteBatch.EffectWithParams
_G['Microsoft']['Xna']['Framework']['Graphics']['SpriteBatch'].SwapEffect = function(effectWithParams) end

---`Method Private Instance`
_G['Microsoft']['Xna']['Framework']['Graphics']['SpriteBatch'].Setup = function() end

---`Method Private Instance`
---@overload fun(texture:Microsoft.Xna.Framework.Graphics.Texture2D)
---@overload fun(spriteFont:Microsoft.Xna.Framework.Graphics.SpriteFont, text:System.String|string)
---@param spriteFont Microsoft.Xna.Framework.Graphics.SpriteFont
---@param text System.Text.StringBuilder
_G['Microsoft']['Xna']['Framework']['Graphics']['SpriteBatch'].CheckValid = function(spriteFont, text) end

---`Method Public Instance`
---@overload fun(texture:Microsoft.Xna.Framework.Graphics.Texture2D, position?:System.Nullable*1Microsoft*Xna*Framework*Vector2, destinationRectangle?:System.Nullable*1Microsoft*Xna*Framework*Rectangle, sourceRectangle?:System.Nullable*1Microsoft*Xna*Framework*Rectangle, origin?:System.Nullable*1Microsoft*Xna*Framework*Vector2, rotation?:System.Single|number, scale?:System.Nullable*1Microsoft*Xna*Framework*Vector2, color?:System.Nullable*1Microsoft*Xna*Framework*Color, effects?:Microsoft.Xna.Framework.Graphics.SpriteEffects, layerDepth?:System.Single|number)
---@overload fun(texture:Microsoft.Xna.Framework.Graphics.Texture2D, vertices:Microsoft.Xna.Framework.Graphics.VertexPositionColorTexture-arr|Microsoft.Xna.Framework.Graphics.VertexPositionColorTexture[], layerDepth:System.Single|number, count?:System.Nullable*1System*Int32|integer)
---@overload fun(texture:Microsoft.Xna.Framework.Graphics.Texture2D, position:Microsoft.Xna.Framework.Vector2, sourceRectangle:System.Nullable*1Microsoft*Xna*Framework*Rectangle, color:Microsoft.Xna.Framework.Color, rotation:System.Single|number, origin:Microsoft.Xna.Framework.Vector2, scale:System.Single|number, effects:Microsoft.Xna.Framework.Graphics.SpriteEffects, layerDepth:System.Single|number)
---@overload fun(texture:Microsoft.Xna.Framework.Graphics.Texture2D, destinationRectangle:Microsoft.Xna.Framework.Rectangle, sourceRectangle:System.Nullable*1Microsoft*Xna*Framework*Rectangle, color:Microsoft.Xna.Framework.Color, rotation:System.Single|number, origin:Microsoft.Xna.Framework.Vector2, effects:Microsoft.Xna.Framework.Graphics.SpriteEffects, layerDepth:System.Single|number)
---@overload fun(texture:Microsoft.Xna.Framework.Graphics.Texture2D, position:Microsoft.Xna.Framework.Vector2, sourceRectangle:System.Nullable*1Microsoft*Xna*Framework*Rectangle, color:Microsoft.Xna.Framework.Color)
---@overload fun(texture:Microsoft.Xna.Framework.Graphics.Texture2D, destinationRectangle:Microsoft.Xna.Framework.Rectangle, sourceRectangle:System.Nullable*1Microsoft*Xna*Framework*Rectangle, color:Microsoft.Xna.Framework.Color)
---@overload fun(texture:Microsoft.Xna.Framework.Graphics.Texture2D, position:Microsoft.Xna.Framework.Vector2, color:Microsoft.Xna.Framework.Color)
---@param texture Microsoft.Xna.Framework.Graphics.Texture2D
---@param destinationRectangle Microsoft.Xna.Framework.Rectangle
---@param color Microsoft.Xna.Framework.Color
_G['Microsoft']['Xna']['Framework']['Graphics']['SpriteBatch'].Draw = function(texture, destinationRectangle, color) end

---`Method Public Instance Virtual`
---@param texture Microsoft.Xna.Framework.Graphics.Texture2D
---@param position Microsoft.Xna.Framework.Vector2
---@param sourceRectangle System.Nullable*1Microsoft*Xna*Framework*Rectangle
---@param color Microsoft.Xna.Framework.Color
---@param rotation System.Single|number
---@param origin Microsoft.Xna.Framework.Vector2
---@param scale Microsoft.Xna.Framework.Vector2
---@param effects Microsoft.Xna.Framework.Graphics.SpriteEffects
---@param layerDepth System.Single|number
_G['Microsoft']['Xna']['Framework']['Graphics']['SpriteBatch'].Draw = function(texture, position, sourceRectangle, color, rotation, origin, scale, effects, layerDepth) end

---`Method NonPublic Instance`
_G['Microsoft']['Xna']['Framework']['Graphics']['SpriteBatch'].FlushIfNeeded = function() end

---`Method Public Instance`
---@overload fun(spriteFont:Microsoft.Xna.Framework.Graphics.SpriteFont, text:System.String|string, position:Microsoft.Xna.Framework.Vector2, color:Microsoft.Xna.Framework.Color)
---@overload fun(spriteFont:Microsoft.Xna.Framework.Graphics.SpriteFont, text:System.String|string, position:Microsoft.Xna.Framework.Vector2, color:Microsoft.Xna.Framework.Color, rotation:System.Single|number, origin:Microsoft.Xna.Framework.Vector2, scale:System.Single|number, effects:Microsoft.Xna.Framework.Graphics.SpriteEffects, layerDepth:System.Single|number)
---@overload fun(spriteFont:Microsoft.Xna.Framework.Graphics.SpriteFont, text:System.String|string, position:Microsoft.Xna.Framework.Vector2, color:Microsoft.Xna.Framework.Color, rotation:System.Single|number, origin:Microsoft.Xna.Framework.Vector2, scale:Microsoft.Xna.Framework.Vector2, effects:Microsoft.Xna.Framework.Graphics.SpriteEffects, layerDepth:System.Single|number)
---@overload fun(spriteFont:Microsoft.Xna.Framework.Graphics.SpriteFont, text:System.Text.StringBuilder, position:Microsoft.Xna.Framework.Vector2, color:Microsoft.Xna.Framework.Color)
---@overload fun(spriteFont:Microsoft.Xna.Framework.Graphics.SpriteFont, text:System.Text.StringBuilder, position:Microsoft.Xna.Framework.Vector2, color:Microsoft.Xna.Framework.Color, rotation:System.Single|number, origin:Microsoft.Xna.Framework.Vector2, scale:System.Single|number, effects:Microsoft.Xna.Framework.Graphics.SpriteEffects, layerDepth:System.Single|number)
---@param spriteFont Microsoft.Xna.Framework.Graphics.SpriteFont
---@param text System.Text.StringBuilder
---@param position Microsoft.Xna.Framework.Vector2
---@param color Microsoft.Xna.Framework.Color
---@param rotation System.Single|number
---@param origin Microsoft.Xna.Framework.Vector2
---@param scale Microsoft.Xna.Framework.Vector2
---@param effects Microsoft.Xna.Framework.Graphics.SpriteEffects
---@param layerDepth System.Single|number
_G['Microsoft']['Xna']['Framework']['Graphics']['SpriteBatch'].DrawString = function(spriteFont, text, position, color, rotation, origin, scale, effects, layerDepth) end

---`Method NonPublic Instance Virtual`
---@param disposing System.Boolean|boolean
_G['Microsoft']['Xna']['Framework']['Graphics']['SpriteBatch'].Dispose = function(disposing) end

---`Constructor Public Instance`
---@param graphicsDevice Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@return Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['Microsoft']['Xna']['Framework']['Graphics']['SpriteBatch'] = function(graphicsDevice) end

---`Constructor Public Instance`
---@param graphicsDevice Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@return Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['Microsoft']['Xna']['Framework']['Graphics']['SpriteBatch'].__new = function(graphicsDevice) end

