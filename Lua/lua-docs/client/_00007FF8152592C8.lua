---@meta
---@class Barotrauma.GUIMessageBox : Barotrauma.GUIFrame
---`Field Private Instance`
---@field inGameCloseTimer System.Single|number
---`Field Public Instance`
---@field DisplayInLoadingScreens System.Boolean|boolean
---`Field Public Instance`
---@field DraggingPosition Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field newBackgroundIcon Barotrauma.GUIImage
---`Field Public Instance`
---@field AutoClose System.Boolean|boolean
---`Field Private Instance`
---@field openState System.Single|number
---`Field Private Instance`
---@field iconState System.Single|number
---`Field Private Instance`
---@field iconSwitching System.Boolean|boolean
---`Field Private Instance`
---@field closing System.Boolean|boolean
---`Field Private Instance`
---@field type Barotrauma.GUIMessageBox.Type
---`Field Private Instance`
---@field autoCloseCondition System.Func*1System*Boolean|(fun():System.Boolean|boolean)
---`Field Public Static`
---@field MessageBoxes System.Collections.Generic.List*1Barotrauma*GUIComponent|Barotrauma.GUIComponent[]
---`Field Private Static`
---@field messageBoxTypes Barotrauma.Type-arr|Barotrauma.GUIMessageBox.Type[]
---`Field Private Static`
---@field inGameCloseTime System.Single|number
---`Getter Private Static`
---@field DefaultWidth System.Int32|integer
---`Getter Private Instance`
---@field IsAnimated System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Buttons System.Collections.Generic.List*1Barotrauma*GUIButton|Barotrauma.GUIButton[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Content Barotrauma.GUILayoutGroup
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field InnerFrame Barotrauma.GUIFrame
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Header Barotrauma.GUITextBlock
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Text Barotrauma.GUITextBlock
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Tag Barotrauma.Identifier
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Closed System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Icon Barotrauma.GUIImage
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field IconColor Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Draggable System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field BackgroundIcon Barotrauma.GUIImage
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field FlashOnAutoCloseCondition System.Boolean|boolean
---`Getter Public Instance`
---@field MessageBoxType Barotrauma.GUIMessageBox.Type
---`Getter Public Static`
---@field VisibleBox Barotrauma.GUIComponent
_G['GUI']['MessageBox'] = {}

---`Method Public Static`
_G['GUI']['MessageBox'].AddActiveToGUIUpdateList = function() end

---`Method Public Instance`
---@param icon Barotrauma.Sprite
_G['GUI']['MessageBox'].SetBackgroundIcon = function(icon) end

---`Method NonPublic Instance Virtual`
---@param deltaTime System.Single|number
_G['GUI']['MessageBox'].Update = function(deltaTime) end

---`Method Public Instance`
---@overload fun()
---@param button Barotrauma.GUIButton
---@param obj System.Object
---@return System.Boolean|boolean
_G['GUI']['MessageBox'].Close = function(button, obj) end

---`Method Public Static`
---@overload fun(tag:Barotrauma.Identifier)
---@param tag System.String|string
_G['GUI']['MessageBox'].Close = function(tag) end

---`Method Public Static`
_G['GUI']['MessageBox'].CloseAll = function() end

---`Method Public Instance`
---@param rectT Barotrauma.RectTransform
---@param text System.String|string
---@param onClick Barotrauma.GUIButton.OnClickedHandler|(fun(button:Barotrauma.GUIButton, obj:System.Object):System.Boolean|boolean)
_G['GUI']['MessageBox'].AddButton = function(rectT, text, onClick) end

---`Constructor Public Instance`
---@overload fun(headerText:Barotrauma.LocalizedString, text:Barotrauma.LocalizedString, relativeSize?:System.Nullable*1Microsoft*Xna*Framework*Vector2, minSize?:System.Nullable*1Microsoft*Xna*Framework*Point):Barotrauma.GUIMessageBox
---@overload fun(headerText:Barotrauma.RichString, text:Barotrauma.RichString, buttons:Barotrauma.LocalizedString-arr|Barotrauma.LocalizedString[], relativeSize?:System.Nullable*1Microsoft*Xna*Framework*Vector2, minSize?:System.Nullable*1Microsoft*Xna*Framework*Point, textAlignment?:Barotrauma.Alignment, type?:Barotrauma.GUIMessageBox.Type, tag?:System.String|string, icon?:Barotrauma.Sprite, iconStyle?:System.String|string, backgroundIcon?:Barotrauma.Sprite, autoCloseCondition?:System.Func*1System*Boolean|(fun():System.Boolean|boolean), hideCloseButton?:System.Boolean|boolean):Barotrauma.GUIMessageBox
---@overload fun(hintIdentifier:Barotrauma.Identifier, text:Barotrauma.LocalizedString, icon:Barotrauma.Sprite):Barotrauma.GUIMessageBox
---@return Barotrauma.GUIMessageBox
_G['GUI']['MessageBox'] = function() end

---`Constructor Public Instance`
---@overload fun(headerText:Barotrauma.LocalizedString, text:Barotrauma.LocalizedString, relativeSize?:System.Nullable*1Microsoft*Xna*Framework*Vector2, minSize?:System.Nullable*1Microsoft*Xna*Framework*Point):Barotrauma.GUIMessageBox
---@overload fun(headerText:Barotrauma.RichString, text:Barotrauma.RichString, buttons:Barotrauma.LocalizedString-arr|Barotrauma.LocalizedString[], relativeSize?:System.Nullable*1Microsoft*Xna*Framework*Vector2, minSize?:System.Nullable*1Microsoft*Xna*Framework*Point, textAlignment?:Barotrauma.Alignment, type?:Barotrauma.GUIMessageBox.Type, tag?:System.String|string, icon?:Barotrauma.Sprite, iconStyle?:System.String|string, backgroundIcon?:Barotrauma.Sprite, autoCloseCondition?:System.Func*1System*Boolean|(fun():System.Boolean|boolean), hideCloseButton?:System.Boolean|boolean):Barotrauma.GUIMessageBox
---@overload fun(hintIdentifier:Barotrauma.Identifier, text:Barotrauma.LocalizedString, icon:Barotrauma.Sprite):Barotrauma.GUIMessageBox
---@return Barotrauma.GUIMessageBox
_G['GUI']['MessageBox'].__new = function() end

---`Constructor Private Static`
---@overload fun(headerText:Barotrauma.LocalizedString, text:Barotrauma.LocalizedString, relativeSize?:System.Nullable*1Microsoft*Xna*Framework*Vector2, minSize?:System.Nullable*1Microsoft*Xna*Framework*Point):Barotrauma.GUIMessageBox
---@overload fun(headerText:Barotrauma.RichString, text:Barotrauma.RichString, buttons:Barotrauma.LocalizedString-arr|Barotrauma.LocalizedString[], relativeSize?:System.Nullable*1Microsoft*Xna*Framework*Vector2, minSize?:System.Nullable*1Microsoft*Xna*Framework*Point, textAlignment?:Barotrauma.Alignment, type?:Barotrauma.GUIMessageBox.Type, tag?:System.String|string, icon?:Barotrauma.Sprite, iconStyle?:System.String|string, backgroundIcon?:Barotrauma.Sprite, autoCloseCondition?:System.Func*1System*Boolean|(fun():System.Boolean|boolean), hideCloseButton?:System.Boolean|boolean):Barotrauma.GUIMessageBox
---@overload fun(hintIdentifier:Barotrauma.Identifier, text:Barotrauma.LocalizedString, icon:Barotrauma.Sprite):Barotrauma.GUIMessageBox
---@return Barotrauma.GUIMessageBox
_G['GUI']['MessageBox'] = function() end

---`Constructor Private Static`
---@overload fun(headerText:Barotrauma.LocalizedString, text:Barotrauma.LocalizedString, relativeSize?:System.Nullable*1Microsoft*Xna*Framework*Vector2, minSize?:System.Nullable*1Microsoft*Xna*Framework*Point):Barotrauma.GUIMessageBox
---@overload fun(headerText:Barotrauma.RichString, text:Barotrauma.RichString, buttons:Barotrauma.LocalizedString-arr|Barotrauma.LocalizedString[], relativeSize?:System.Nullable*1Microsoft*Xna*Framework*Vector2, minSize?:System.Nullable*1Microsoft*Xna*Framework*Point, textAlignment?:Barotrauma.Alignment, type?:Barotrauma.GUIMessageBox.Type, tag?:System.String|string, icon?:Barotrauma.Sprite, iconStyle?:System.String|string, backgroundIcon?:Barotrauma.Sprite, autoCloseCondition?:System.Func*1System*Boolean|(fun():System.Boolean|boolean), hideCloseButton?:System.Boolean|boolean):Barotrauma.GUIMessageBox
---@overload fun(hintIdentifier:Barotrauma.Identifier, text:Barotrauma.LocalizedString, icon:Barotrauma.Sprite):Barotrauma.GUIMessageBox
---@return Barotrauma.GUIMessageBox
_G['GUI']['MessageBox'].__new = function() end

