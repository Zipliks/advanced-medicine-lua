---@meta
---@class Barotrauma.GUIProgressBar : Barotrauma.GUIComponent
---`Field Private Instance`
---@field isHorizontal System.Boolean|boolean
---`Field Private Instance`
---@field frame Barotrauma.GUIFrame
---`Field Private Instance`
---@field slider Barotrauma.GUIFrame
---`Field Private Instance`
---@field barSize System.Single|number
---`Field Private Instance`
---@field showFrame System.Boolean|boolean
---`Field Public Instance`
---@field ProgressGetter Barotrauma.GUIProgressBar.ProgressGetterHandler|(fun():System.Single|number)
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field IsHorizontal System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field BarSize System.Single|number
_G['GUI']['ProgressBar'] = {}

---`Method Public Instance`
---@param fillAmount System.Single|number
---@return Microsoft.Xna.Framework.Rectangle
_G['GUI']['ProgressBar'].GetSliderRect = function(fillAmount) end

---`Method NonPublic Instance Virtual`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['GUI']['ProgressBar'].Draw = function(spriteBatch) end

---`Constructor Public Instance`
---@param rectT Barotrauma.RectTransform
---@param barSize System.Single|number
---@param color? System.Nullable*1Microsoft*Xna*Framework*Color
---@param style? System.String|string
---@param showFrame? System.Boolean|boolean
---@return Barotrauma.GUIProgressBar
_G['GUI']['ProgressBar'] = function(rectT, barSize, color, style, showFrame) end

---`Constructor Public Instance`
---@param rectT Barotrauma.RectTransform
---@param barSize System.Single|number
---@param color? System.Nullable*1Microsoft*Xna*Framework*Color
---@param style? System.String|string
---@param showFrame? System.Boolean|boolean
---@return Barotrauma.GUIProgressBar
_G['GUI']['ProgressBar'].__new = function(rectT, barSize, color, style, showFrame) end

