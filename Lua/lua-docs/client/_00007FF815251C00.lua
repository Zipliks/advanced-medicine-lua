---@meta
---@class Barotrauma.GUIComponentStyle : Barotrauma.GUIPrefab
---`Field Public Instance`
---@field Padding Microsoft.Xna.Framework.Vector4
---`Field Public Instance`
---@field Color Microsoft.Xna.Framework.Color
---`Field Public Instance`
---@field HoverColor Microsoft.Xna.Framework.Color
---`Field Public Instance`
---@field SelectedColor Microsoft.Xna.Framework.Color
---`Field Public Instance`
---@field PressedColor Microsoft.Xna.Framework.Color
---`Field Public Instance`
---@field DisabledColor Microsoft.Xna.Framework.Color
---`Field Public Instance`
---@field TextColor Microsoft.Xna.Framework.Color
---`Field Public Instance`
---@field HoverTextColor Microsoft.Xna.Framework.Color
---`Field Public Instance`
---@field SelectedTextColor Microsoft.Xna.Framework.Color
---`Field Public Instance`
---@field DisabledTextColor Microsoft.Xna.Framework.Color
---`Field Public Instance`
---@field SpriteCrossFadeTime System.Single|number
---`Field Public Instance`
---@field ColorCrossFadeTime System.Single|number
---`Field Public Instance`
---@field TransitionMode Barotrauma.TransitionMode
---`Field Public Instance`
---@field Font Barotrauma.Identifier
---`Field Public Instance`
---@field ForceUpperCase System.Boolean|boolean
---`Field Public Instance`
---@field OutlineColor Microsoft.Xna.Framework.Color
---`Field Public Instance`
---@field Element Barotrauma.ContentXElement
---`Field Public Instance`
---@field Sprites System.Collections.Generic.Dictionary*1Barotrauma*GUIComponent*ComponentState*1System*Collections*Generic*List*2Barotrauma*UISprite|{[Barotrauma.GUIComponent.ComponentState]:System.Collections.Generic.List*1Barotrauma*UISprite|Barotrauma.UISprite[]}
---`Field Public Instance`
---@field FallBackState Barotrauma.SpriteFallBackState
---`Field Public Instance`
---@field ParentStyle Barotrauma.GUIComponentStyle
---`Field Public Instance`
---@field ChildStyles System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1Barotrauma*GUIComponentStyle|{[Barotrauma.Identifier]:Barotrauma.GUIComponentStyle}
---`Field Public Instance`
---@field Name System.String|string
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Width System.Nullable*1System*Int32|integer
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Height System.Nullable*1System*Int32|integer
_G['GUIComponentStyle'] = {}

---`Method Public Static`
---@param hierarchy System.Collections.Generic.IReadOnlyList*1Barotrauma*Identifier|Barotrauma.Identifier[]
---@return Barotrauma.GUIComponentStyle
_G['GUIComponentStyle'].FromHierarchy = function(hierarchy) end

---`Method Public Static`
---@param style Barotrauma.GUIComponentStyle
---@return Barotrauma.Identifier-arr|Barotrauma.Identifier[]
_G['GUIComponentStyle'].ToHierarchy = function(style) end

---`Method Public Instance`
---@return Barotrauma.Sprite
_G['GUIComponentStyle'].GetDefaultSprite = function() end

---`Method Public Instance`
---@param state Barotrauma.GUIComponent.ComponentState
---@return Barotrauma.Sprite
_G['GUIComponentStyle'].GetSprite = function(state) end

---`Method Public Instance`
_G['GUIComponentStyle'].RefreshSize = function() end

---`Method Private Instance`
---@param element System.Xml.Linq.XElement
_G['GUIComponentStyle'].GetSize = function(element) end

---`Method Public Instance Virtual`
_G['GUIComponentStyle'].Dispose = function() end

---`Constructor Public Instance`
---@param element Barotrauma.ContentXElement
---@param file Barotrauma.UIStyleFile
---@param parent? Barotrauma.GUIComponentStyle
---@return Barotrauma.GUIComponentStyle
_G['GUIComponentStyle'] = function(element, file, parent) end

---`Constructor Public Instance`
---@param element Barotrauma.ContentXElement
---@param file Barotrauma.UIStyleFile
---@param parent? Barotrauma.GUIComponentStyle
---@return Barotrauma.GUIComponentStyle
_G['GUIComponentStyle'].__new = function(element, file, parent) end

