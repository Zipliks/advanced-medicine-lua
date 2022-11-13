---@meta
---@class Barotrauma.SpriteEditorScreen : Barotrauma.EditorScreen
---`Field Private Instance`
---@field textureList Barotrauma.GUIListBox
---`Field Private Instance`
---@field spriteList Barotrauma.GUIListBox
---`Field Private Instance`
---@field topPanel Barotrauma.GUIFrame
---`Field Private Instance`
---@field leftPanel Barotrauma.GUIFrame
---`Field Private Instance`
---@field rightPanel Barotrauma.GUIFrame
---`Field Private Instance`
---@field bottomPanel Barotrauma.GUIFrame
---`Field Private Instance`
---@field backgroundColorPanel Barotrauma.GUIFrame
---`Field Private Instance`
---@field drawGrid System.Boolean|boolean
---`Field Private Instance`
---@field snapToGrid System.Boolean|boolean
---`Field Private Instance`
---@field topPanelContents Barotrauma.GUIFrame
---`Field Private Instance`
---@field texturePathText Barotrauma.GUITextBlock
---`Field Private Instance`
---@field xmlPathText Barotrauma.GUITextBlock
---`Field Private Instance`
---@field zoomBar Barotrauma.GUIScrollBar
---`Field Private Instance`
---@field selectedSprites System.Collections.Generic.List*1Barotrauma*Sprite|Barotrauma.Sprite[]
---`Field Private Instance`
---@field dirtySprites System.Collections.Generic.List*1Barotrauma*Sprite|Barotrauma.Sprite[]
---`Field Private Instance`
---@field lastSprite Barotrauma.Sprite
---`Field Private Instance`
---@field selectedTexturePath System.String|string
---`Field Private Instance`
---@field textureRect Microsoft.Xna.Framework.Rectangle
---`Field Private Instance`
---@field zoom System.Single|number
---`Field Private Instance`
---@field filterSpritesBox Barotrauma.GUITextBox
---`Field Private Instance`
---@field filterSpritesLabel Barotrauma.GUITextBlock
---`Field Private Instance`
---@field filterTexturesBox Barotrauma.GUITextBox
---`Field Private Instance`
---@field filterTexturesLabel Barotrauma.GUITextBlock
---`Field Private Instance`
---@field originLabel Barotrauma.LocalizedString
---`Field Private Instance`
---@field positionLabel Barotrauma.LocalizedString
---`Field Private Instance`
---@field sizeLabel Barotrauma.LocalizedString
---`Field Private Instance`
---@field editBackgroundColor System.Boolean|boolean
---`Field Private Instance`
---@field backgroundColor Microsoft.Xna.Framework.Color
---`Field Private Instance`
---@field cam Barotrauma.Camera
---`Field Private Instance`
---@field loadedSprites System.Collections.Generic.HashSet*1Barotrauma*Sprite|Barotrauma.Sprite[]
---`Field Private Instance`
---@field holdTimer System.Double|number
---`Field Private Instance`
---@field holdTime System.Single|number
---`Field Private Instance`
---@field viewAreaOffset Microsoft.Xna.Framework.Point
---`Field Private Instance`
---@field widgets System.Collections.Generic.Dictionary*1System*String*1Barotrauma*Widget|{[System.String|string]:Barotrauma.Widget}
---`Field Private Static`
---@field MinZoom System.Single|number
---`Field Private Static`
---@field MaxZoom System.Single|number
---`Getter Private Instance`
---@field SelectedTexture Microsoft.Xna.Framework.Graphics.Texture2D
---`Getter Public Instance Virtual`
---@field Cam Barotrauma.Camera
---`Getter Public Instance`
---@field TopPanel Barotrauma.GUIComponent
---`Getter Private Instance`
---@field GetViewArea Microsoft.Xna.Framework.Rectangle
_G['SpriteEditorScreen'] = {}

---`Method Private Instance`
_G['SpriteEditorScreen'].CreateUI = function() end

---`Method Private Instance`
_G['SpriteEditorScreen'].LoadSprites = function() end

---`Method Private Instance`
---@param sprites System.Collections.Generic.IEnumerable*1Barotrauma*Sprite|(fun():Barotrauma.Sprite)
---@return System.Boolean|boolean
_G['SpriteEditorScreen'].SaveSprites = function(sprites) end

---`Method Public Instance Virtual`
_G['SpriteEditorScreen'].AddToGUIUpdateList = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Double|number
_G['SpriteEditorScreen'].Update = function(deltaTime) end

---`Method Private Instance`
---@param key Microsoft.Xna.Framework.Input.Keys
_G['SpriteEditorScreen'].Nudge = function(key) end

---`Method Public Instance Virtual`
---@param deltaTime System.Double|number
---@param graphics Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['SpriteEditorScreen'].Draw = function(deltaTime, graphics, spriteBatch) end

---`Method Private Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param gridArea Microsoft.Xna.Framework.Rectangle
---@param zoom System.Single|number
---@param gridSize Microsoft.Xna.Framework.Vector2
_G['SpriteEditorScreen'].DrawGrid = function(spriteBatch, gridArea, zoom, gridSize) end

---`Method Private Instance`
---@param position Microsoft.Xna.Framework.Vector2
---@param gridArea Microsoft.Xna.Framework.Rectangle
---@param zoom System.Single|number
---@param gridSize Microsoft.Xna.Framework.Vector2
---@param tolerance System.Single|number
---@return Microsoft.Xna.Framework.Vector2
_G['SpriteEditorScreen'].SnapToGrid = function(position, gridArea, zoom, gridSize, tolerance) end

---`Method Private Instance`
---@param text System.String|string
_G['SpriteEditorScreen'].FilterTextures = function(text) end

---`Method Private Instance`
---@param text System.String|string
_G['SpriteEditorScreen'].FilterSprites = function(text) end

---`Method Public Instance Virtual`
_G['SpriteEditorScreen'].Select = function() end

---`Method NonPublic Instance Virtual`
_G['SpriteEditorScreen'].DeselectEditorSpecific = function() end

---`Method Public Instance`
---@param sprite Barotrauma.Sprite
_G['SpriteEditorScreen'].SelectSprite = function(sprite) end

---`Method Public Instance`
_G['SpriteEditorScreen'].RefreshLists = function() end

---`Method Public Instance`
_G['SpriteEditorScreen'].ResetZoom = function() end

---`Method Private Instance`
---@return System.Single|number
_G['SpriteEditorScreen'].GetBarScrollValue = function() end

---`Method Private Instance`
---@param sprite Barotrauma.Sprite
---@return System.String|string
_G['SpriteEditorScreen'].GetSpriteName = function(sprite) end

---`Method Private Instance`
---@param listBox Barotrauma.GUIListBox
_G['SpriteEditorScreen'].UpdateScrollBar = function(listBox) end

---`Method Private Instance`
---@param sprite Barotrauma.Sprite
---@param newRect Microsoft.Xna.Framework.Rectangle
_G['SpriteEditorScreen'].UpdateSourceRect = function(sprite, newRect) end

---`Method Private Instance`
---@param id System.String|string
---@param sprite Barotrauma.Sprite
---@param size? System.Int32|integer
---@param shape? Barotrauma.Widget.Shape
---@param initMethod? System.Action*1Barotrauma*Widget|(fun(obj:Barotrauma.Widget))
---@return Barotrauma.Widget
_G['SpriteEditorScreen'].GetWidget = function(id, sprite, size, shape, initMethod) end

---`Method Private Instance`
_G['SpriteEditorScreen'].ResetWidgets = function() end

---`Constructor Public Instance`
---@return Barotrauma.SpriteEditorScreen
_G['SpriteEditorScreen'] = function() end

---`Constructor Public Instance`
---@return Barotrauma.SpriteEditorScreen
_G['SpriteEditorScreen'].__new = function() end

