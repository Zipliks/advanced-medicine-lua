---@meta
---@class Barotrauma.LoadingScreen : System.Object
---`Field Private Instance`
---@field defaultBackgroundTexture Microsoft.Xna.Framework.Graphics.Texture2D
---`Field Private Instance`
---@field overlay Microsoft.Xna.Framework.Graphics.Texture2D
---`Field Private Instance`
---@field decorativeGraph Barotrauma.SpriteSheet
---`Field Private Instance`
---@field decorativeMap Barotrauma.SpriteSheet
---`Field Private Instance`
---@field currentBackgroundTexture Microsoft.Xna.Framework.Graphics.Texture2D
---`Field Private Instance`
---@field noiseSprite Barotrauma.Sprite
---`Field Private Instance`
---@field randText System.String|string
---`Field Private Instance`
---@field languageSelectionCursor Barotrauma.Sprite
---`Field Private Instance`
---@field languageSelectionFont Barotrauma.ScalableFont
---`Field Private Instance`
---@field languageSelectionFontCJK Barotrauma.ScalableFont
---`Field Private Instance`
---@field currSplashScreen Barotrauma.Media.Video
---`Field Private Instance`
---@field videoStartTime System.DateTime
---`Field Private Instance`
---@field pendingSplashScreens System.Collections.Generic.Queue*1Barotrauma*LoadingScreen*PendingSplashScreen|(fun():Barotrauma.LoadingScreen.PendingSplashScreen)
---`Field Private Instance`
---@field selectedTip Barotrauma.RichString
---`Field Private Instance`
---@field loadMutex System.Object
---`Field Private Instance`
---@field loadState System.Nullable*1System*Single|number
---`Field Public Instance`
---@field AvailableLanguages Barotrauma.LanguageIdentifier-arr|Barotrauma.LanguageIdentifier[]
---`Field Private Instance`
---@field drawn System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field PendingSplashScreens System.Collections.Generic.Queue*1Barotrauma*LoadingScreen*PendingSplashScreen|(fun():Barotrauma.LoadingScreen.PendingSplashScreen)
---`Getter Public Instance`
---@field PlayingSplashScreen System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field LoadState System.Nullable*1System*Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DrawLoadingText System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field WaitForLanguageSelection System.Boolean|boolean
_G['LoadingScreen'] = {}

---`Method Private Instance`
---@param tip Barotrauma.LocalizedString
_G['LoadingScreen'].SetSelectedTip = function(tip) end

---`Method Public Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param graphics Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@param deltaTime System.Single|number
_G['LoadingScreen'].Draw = function(spriteBatch, graphics, deltaTime) end

---`Method Private Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param graphicsDevice Microsoft.Xna.Framework.Graphics.GraphicsDevice
_G['LoadingScreen'].DrawLanguageSelectionPrompt = function(spriteBatch, graphicsDevice) end

---`Method Private Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param graphics Microsoft.Xna.Framework.Graphics.GraphicsDevice
_G['LoadingScreen'].DrawSplashScreen = function(spriteBatch, graphics) end

---`Method Private Instance`
_G['LoadingScreen'].DisableSplashScreen = function() end

---`Method Public Instance`
---@param loader System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
_G['LoadingScreen'].DoLoading = function(loader) end

---`Constructor Public Instance`
---@param graphics Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@return Barotrauma.LoadingScreen
_G['LoadingScreen'] = function(graphics) end

---`Constructor Public Instance`
---@param graphics Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@return Barotrauma.LoadingScreen
_G['LoadingScreen'].__new = function(graphics) end

