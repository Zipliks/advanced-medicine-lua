---@meta
---@class Barotrauma.Widget : System.Object
---`Field Public Instance`
---@field shape Barotrauma.Widget.Shape
---`Field Public Instance`
---@field tooltip Barotrauma.LocalizedString
---`Field Public Instance`
---@field showTooltip System.Boolean|boolean
---`Field Public Instance`
---@field size System.Int32|integer
---`Field Public Instance`
---@field thickness System.Single|number
---`Field Public Instance`
---@field sides System.Int32|integer
---`Field Public Instance`
---@field isFilled System.Boolean|boolean
---`Field Public Instance`
---@field inputAreaMargin System.Int32|integer
---`Field Public Instance`
---@field color Microsoft.Xna.Framework.Color
---`Field Public Instance`
---@field secondaryColor System.Nullable*1Microsoft*Xna*Framework*Color
---`Field Public Instance`
---@field textColor Microsoft.Xna.Framework.Color
---`Field Public Instance`
---@field textBackgroundColor Microsoft.Xna.Framework.Color
---`Field Public Instance`
---@field id System.String|string
---`Field Private Instance`
---@field Selected System.Action|(fun())
---`Field Private Instance`
---@field Deselected System.Action|(fun())
---`Field Private Instance`
---@field Hovered System.Action|(fun())
---`Field Private Instance`
---@field MouseUp System.Action|(fun())
---`Field Private Instance`
---@field MouseDown System.Action|(fun())
---`Field Private Instance`
---@field MouseHeld System.Action*1System*Single|(fun(obj:System.Single|number))
---`Field Private Instance`
---@field PreUpdate System.Action*1System*Single|(fun(obj:System.Single|number))
---`Field Private Instance`
---@field PostUpdate System.Action*1System*Single|(fun(obj:System.Single|number))
---`Field Private Instance`
---@field PreDraw System.Action*1Microsoft*Xna*Framework*Graphics*SpriteBatch*1System*Single|(fun(arg1:Microsoft.Xna.Framework.Graphics.SpriteBatch, arg2:System.Single|number))
---`Field Private Instance`
---@field PostDraw System.Action*1Microsoft*Xna*Framework*Graphics*SpriteBatch*1System*Single|(fun(arg1:Microsoft.Xna.Framework.Graphics.SpriteBatch, arg2:System.Single|number))
---`Field Public Instance`
---@field RequireMouseOn System.Boolean|boolean
---`Field Public Instance`
---@field refresh System.Action|(fun())
---`Field Public Instance`
---@field data System.Object
---`Field Private Instance`
---@field enabled System.Boolean|boolean
---`Field Public Instance`
---@field tooltipOffset System.Nullable*1Microsoft*Xna*Framework*Vector2
---`Field Public Instance`
---@field linkedWidget Barotrauma.Widget
---`Field Private Static`
---@field multiselect System.Boolean|boolean
---`Field Public Static`
---@field selectedWidgets System.Collections.Generic.List*1Barotrauma*Widget|Barotrauma.Widget[]
---`Getter Public Instance`
---@field DrawRect Microsoft.Xna.Framework.Rectangle
---`Getter Public Instance`
---@field InputRect Microsoft.Xna.Framework.Rectangle
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DrawPos Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---@field IsSelected System.Boolean|boolean
---`Getter Public Instance`
---@field IsControlled System.Boolean|boolean
---`Getter Public Instance`
---@field IsMouseOver System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Enabled System.Boolean|boolean
---`Getter Public Static`
---<br/>`Setter Public Static`
---@field EnableMultiSelect System.Boolean|boolean
_G['Widget'] = {}

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
_G['Widget'].Update = function(deltaTime) end

---`Method Public Instance Virtual`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param deltaTime System.Single|number
_G['Widget'].Draw = function(spriteBatch, deltaTime) end

---`Constructor Public Instance`
---@overload fun(id:System.String|string, size:System.Int32|integer, shape:Barotrauma.Widget.Shape):Barotrauma.Widget
---@return Barotrauma.Widget
_G['Widget'] = function() end

---`Constructor Public Instance`
---@overload fun(id:System.String|string, size:System.Int32|integer, shape:Barotrauma.Widget.Shape):Barotrauma.Widget
---@return Barotrauma.Widget
_G['Widget'].__new = function() end

---`Constructor Private Static`
---@overload fun(id:System.String|string, size:System.Int32|integer, shape:Barotrauma.Widget.Shape):Barotrauma.Widget
---@return Barotrauma.Widget
_G['Widget'] = function() end

---`Constructor Private Static`
---@overload fun(id:System.String|string, size:System.Int32|integer, shape:Barotrauma.Widget.Shape):Barotrauma.Widget
---@return Barotrauma.Widget
_G['Widget'].__new = function() end

