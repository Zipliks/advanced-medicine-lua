---@meta
---@class Barotrauma.GUIColorPicker : Barotrauma.GUIComponent
---`Field Public Instance`
---@field OnColorSelected Barotrauma.GUIColorPicker.OnColorSelectedHandler|(fun(component:Barotrauma.GUIColorPicker, color:Microsoft.Xna.Framework.Color):System.Boolean|boolean)
---`Field Public Instance`
---@field SelectedHue System.Single|number
---`Field Public Instance`
---@field SelectedSaturation System.Single|number
---`Field Public Instance`
---@field SelectedValue System.Single|number
---`Field Public Instance`
---@field CurrentColor Microsoft.Xna.Framework.Color
---`Field Private Instance`
---@field MainArea Microsoft.Xna.Framework.Rectangle
---`Field Private Instance`
---@field HueArea Microsoft.Xna.Framework.Rectangle
---`Field Private Instance`
---@field mainTexture Microsoft.Xna.Framework.Graphics.Texture2D
---`Field Private Instance`
---@field hueTexture Microsoft.Xna.Framework.Graphics.Texture2D
---`Field Private Instance`
---@field colorData Microsoft.Xna.Framework.Color-arr|Microsoft.Xna.Framework.Color[]
---`Field Private Instance`
---@field selectedRect Microsoft.Xna.Framework.Rectangle
---`Field Private Instance`
---@field mouseHeld System.Boolean|boolean
---`Field Private Instance`
---@field isInitialized System.Boolean|boolean
---`Field Private Instance`
---@field transparentWhite Microsoft.Xna.Framework.Color
---`Field Private Instance`
---@field transparentBlack Microsoft.Xna.Framework.Color
_G['GUI']['ColorPicker'] = {}

---`Method Private Instance`
_G['GUI']['ColorPicker'].Init = function() end

---`Method NonPublic Instance Virtual`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['GUI']['ColorPicker'].Draw = function(spriteBatch) end

---`Method NonPublic Instance Virtual`
---@param deltaTime System.Single|number
_G['GUI']['ColorPicker'].Update = function(deltaTime) end

---`Method Public Instance Virtual`
_G['GUI']['ColorPicker'].Dispose = function() end

---`Method Public Instance`
_G['GUI']['ColorPicker'].RefreshHue = function() end

---`Method Private Instance`
---@param data Microsoft.Xna.Framework.Color-arr|Microsoft.Xna.Framework.Color[]
---@param width System.Int32|integer
---@param height System.Int32|integer
---@return Microsoft.Xna.Framework.Graphics.Texture2D
_G['GUI']['ColorPicker'].CreateGradientTexture = function(data, width, height) end

---`Method Private Instance`
---@param data Microsoft.Xna.Framework.Color-arr-ref
---@param width System.Int32|integer
---@param height System.Int32|integer
---@param algorithm System.Func*1System*Single*1System*Single*1Microsoft*Xna*Framework*Color|(fun(arg1:System.Single|number, arg2:System.Single|number):Microsoft.Xna.Framework.Color)
_G['GUI']['ColorPicker'].GenerateGradient = function(data, width, height, algorithm) end

---`Method Private Instance`
---@param x System.Single|number
---@param y System.Single|number
---@return Microsoft.Xna.Framework.Color
_G['GUI']['ColorPicker'].DrawHVArea = function(x, y) end

---`Method Private Instance`
---@param x System.Single|number
---@param y System.Single|number
---@return Microsoft.Xna.Framework.Color
_G['GUI']['ColorPicker'].DrawHueArea = function(x, y) end

---`Constructor Public Instance`
---@param rectT Barotrauma.RectTransform
---@param style? System.String|string
---@return Barotrauma.GUIColorPicker
_G['GUI']['ColorPicker'] = function(rectT, style) end

---`Constructor Public Instance`
---@param rectT Barotrauma.RectTransform
---@param style? System.String|string
---@return Barotrauma.GUIColorPicker
_G['GUI']['ColorPicker'].__new = function(rectT, style) end

