---@meta
---@class Barotrauma.EventEditorScreen : Barotrauma.EditorScreen
---`Field Private Instance`
---@field GuiFrame Barotrauma.GUIFrame
---`Field Private Instance`
---@field selectedNodes System.Collections.Generic.List*1Barotrauma*EditorNode|Barotrauma.EditorNode[]
---`Field Private Instance`
---@field draggedNode Barotrauma.EditorNode
---`Field Private Instance`
---@field dragOffset Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field markedNodes System.Collections.Generic.Dictionary*1Barotrauma*EditorNode*1Microsoft*Xna*Framework*Vector2|{[Barotrauma.EditorNode]:Microsoft.Xna.Framework.Vector2}
---`Field Private Instance`
---@field lastTestParam Barotrauma.OutpostGenerationParams
---`Field Private Instance`
---@field lastTestType Barotrauma.LocationType
---`Field Private Instance`
---@field screenResolution Microsoft.Xna.Framework.Point
---`Field Public Static`
---@field nodeList System.Collections.Generic.List*1Barotrauma*EditorNode|Barotrauma.EditorNode[]
---`Field Public Static`
---@field DraggingPosition Microsoft.Xna.Framework.Vector2
---`Field Public Static`
---@field DraggedConnection Barotrauma.NodeConnection
---`Field Private Static`
---@field projectName System.String|string
---`Getter Public Instance Virtual`
---@field Cam Barotrauma.Camera
---`Getter Public Static`
---<br/>`Setter Public Static`
---@field DrawnTooltip System.String|string
_G['EventEditorScreen'] = {}

---`Method Private Instance`
---@return System.Int32|integer
_G['EventEditorScreen'].CreateID = function() end

---`Method Private Instance`
_G['EventEditorScreen'].CreateGUI = function() end

---`Method Private Instance`
---@param button Barotrauma.GUIButton
---@param o System.Object
---@return System.Boolean|boolean
_G['EventEditorScreen'].ExportEventToFile = function(button, o) end

---`Method Private Instance`
---@param button Barotrauma.GUIButton
---@param o System.Object
---@return System.Boolean|boolean
_G['EventEditorScreen'].TryCreateNewProject = function(button, o) end

---`Method Public Static`
---@param header Barotrauma.LocalizedString
---@param body Barotrauma.LocalizedString
---@param onConfirm System.Func*1System*Boolean|(fun():System.Boolean|boolean)
---@param overrideConfirmButtonSound? System.Nullable*1Barotrauma*GUISoundType
---@return Barotrauma.GUIMessageBox
_G['EventEditorScreen'].AskForConfirmation = function(header, body, onConfirm, overrideConfirmButtonSound) end

---`Method Private Instance`
---@param button Barotrauma.GUIButton
---@param o System.Object
---@return System.Boolean|boolean
_G['EventEditorScreen'].SaveProjectToFile = function(button, o) end

---`Method Private Instance`
---@overload fun(prefab:Barotrauma.EventPrefab):System.Boolean|boolean
---@param saveElement System.Xml.Linq.XElement
_G['EventEditorScreen'].Load = function(saveElement) end

---`Method Private Instance`
---@param type System.Type
---@return System.Boolean|boolean
_G['EventEditorScreen'].AddAction = function(type) end

---`Method Private Instance`
---@param type System.Type
---@return System.Boolean|boolean
_G['EventEditorScreen'].AddValue = function(type) end

---`Method Private Instance`
---@param type System.Type
---@return System.Boolean|boolean
_G['EventEditorScreen'].AddSpecial = function(type) end

---`Method Private Instance`
---@param element Barotrauma.ContentXElement
---@param hadNodes System.Boolean-ref
---@param parent? Barotrauma.EditorNode
---@param ident? System.Int32|integer
_G['EventEditorScreen'].CreateNodes = function(element, hadNodes, parent, ident) end

---`Method Private Static`
---@param x System.Single|number
---@param y System.Single|number
---@param parent Barotrauma.GUIComponent
---@param anchor? Barotrauma.Anchor
---@return Barotrauma.RectTransform
_G['EventEditorScreen'].RectTransform = function(x, y, parent, anchor) end

---`Method Public Instance Virtual`
_G['EventEditorScreen'].Select = function() end

---`Method Public Instance Virtual`
_G['EventEditorScreen'].AddToGUIUpdateList = function() end

---`Method Public Static`
---@param value System.String|string
---@param type System.Type
---@return System.Object
_G['EventEditorScreen'].ChangeType = function(value, type) end

---`Method Private Instance`
---@return System.Xml.Linq.XElement
_G['EventEditorScreen'].ExportXML = function() end

---`Method Private Instance`
---@param startNode Barotrauma.EditorNode
---@param parent System.Xml.Linq.XElement
_G['EventEditorScreen'].ExportChildNodes = function(startNode, parent) end

---`Method Private Instance`
---@param name System.String|string
---@return System.Xml.Linq.XElement
_G['EventEditorScreen'].SaveEvent = function(name) end

---`Method Private Instance`
---@param node Barotrauma.EditorNode
---@param connection? Barotrauma.NodeConnection
_G['EventEditorScreen'].CreateContextMenu = function(node, connection) end

---`Method Private Instance`
---@return System.Boolean|boolean
_G['EventEditorScreen'].CreateTestSetupMenu = function() end

---`Method Private Static`
---@param node Barotrauma.ValueNode
---@param connection? Barotrauma.NodeConnection
_G['EventEditorScreen'].CreateEditMenu = function(node, connection) end

---`Method Private Instance`
---@param param Barotrauma.OutpostGenerationParams
---@param type Barotrauma.LocationType
---@return System.Boolean|boolean
_G['EventEditorScreen'].TestEvent = function(param, type) end

---`Method Public Instance Virtual`
---@param deltaTime System.Double|number
---@param graphics Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['EventEditorScreen'].Draw = function(deltaTime, graphics, spriteBatch) end

---`Method Public Instance Virtual`
---@param deltaTime System.Double|number
_G['EventEditorScreen'].Update = function(deltaTime) end

---`Constructor Public Instance`
---@overload fun():Barotrauma.EventEditorScreen
---@return Barotrauma.EventEditorScreen
_G['EventEditorScreen'] = function() end

---`Constructor Public Instance`
---@overload fun():Barotrauma.EventEditorScreen
---@return Barotrauma.EventEditorScreen
_G['EventEditorScreen'].__new = function() end

---`Constructor Private Static`
---@overload fun():Barotrauma.EventEditorScreen
---@return Barotrauma.EventEditorScreen
_G['EventEditorScreen'] = function() end

---`Constructor Private Static`
---@overload fun():Barotrauma.EventEditorScreen
---@return Barotrauma.EventEditorScreen
_G['EventEditorScreen'].__new = function() end

