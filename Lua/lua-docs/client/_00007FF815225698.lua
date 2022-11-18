---@meta
---@class Barotrauma.Items.Components.ItemLabel : Barotrauma.Items.Components.ItemComponent
---`Field Private Instance`
---@field textBlock Barotrauma.GUITextBlock
---`Field Private Instance`
---@field textColor Microsoft.Xna.Framework.Color
---`Field Private Instance`
---@field scrollAmount System.Single|number
---`Field Private Instance`
---@field scrollingText System.String|string
---`Field Private Instance`
---@field scrollPadding System.Single|number
---`Field Private Instance`
---@field scrollIndex System.Int32|integer
---`Field Private Instance`
---@field needsScrolling System.Boolean|boolean
---`Field Private Instance`
---@field charWidths System.Single-arr|System.Single|number[]
---`Field Private Instance`
---@field prevScale System.Single|number
---`Field Private Instance`
---@field prevRect Microsoft.Xna.Framework.Rectangle
---`Field Private Instance`
---@field sb System.Text.StringBuilder
---`Field Private Instance`
---@field padding Microsoft.Xna.Framework.Vector4
---`Field Private Instance`
---@field text System.String|string
---`Field Private Instance`
---@field ignoreLocalization System.Boolean|boolean
---`Field Private Instance`
---@field scrollable System.Boolean|boolean
---`Field Private Instance`
---@field parseSpecialTextTagOnStart System.Boolean|boolean
---`Field Private Instance`
---@field prevColorSignal System.String|string
---`Field Private Static`
---@field SpecialTextTags System.String-arr|System.String|string[]
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Padding Microsoft.Xna.Framework.Vector4
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Text System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field IgnoreLocalization System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field DisplayText Barotrauma.LocalizedString
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TextColor Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TextScale System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Scrollable System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ScrollSpeed System.Single|number
---`Getter Private Instance`
---@field TextBlock Barotrauma.GUITextBlock
---`Getter Public Instance Virtual`
---@field DrawSize Microsoft.Xna.Framework.Vector2
_G['Components']['ItemLabel'] = {}

---`Method Public Instance Virtual`
---@return System.Collections.Generic.IEnumerable*1System*String|(fun():System.String|string)
_G['Components']['ItemLabel'].GetExtraTextPickerEntries = function() end

---`Method Private Instance`
_G['Components']['ItemLabel'].SetScrollingText = function() end

---`Method Private Instance`
---@param value System.String|string
_G['Components']['ItemLabel'].SetDisplayText = function(value) end

---`Method Private Instance`
_G['Components']['ItemLabel'].RecreateTextBlock = function() end

---`Method Private Instance`
_G['Components']['ItemLabel'].ParseSpecialTextTag = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['ItemLabel'].Update = function(deltaTime, cam) end

---`Method Private Instance`
_G['Components']['ItemLabel'].UpdateScrollingText = function() end

---`Method Public Instance Virtual`
_G['Components']['ItemLabel'].OnScaleChanged = function() end

---`Method Public Instance Virtual`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param editing? System.Boolean|boolean
---@param itemDepth? System.Single|number
_G['Components']['ItemLabel'].Draw = function(spriteBatch, editing, itemDepth) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IReadMessage
---@param sendingTime System.Single|number
_G['Components']['ItemLabel'].ClientEventRead = function(msg, sendingTime) end

---`Method Public Instance Virtual`
---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
_G['Components']['ItemLabel'].ReceiveSignal = function(signal, connection) end

---`Constructor Public Instance`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.ItemLabel
---@return Barotrauma.Items.Components.ItemLabel
_G['Components']['ItemLabel'] = function() end

---`Constructor Public Instance`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.ItemLabel
---@return Barotrauma.Items.Components.ItemLabel
_G['Components']['ItemLabel'].__new = function() end

---`Constructor Private Static`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.ItemLabel
---@return Barotrauma.Items.Components.ItemLabel
_G['Components']['ItemLabel'] = function() end

---`Constructor Private Static`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.ItemLabel
---@return Barotrauma.Items.Components.ItemLabel
_G['Components']['ItemLabel'].__new = function() end

