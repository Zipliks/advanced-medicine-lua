---@meta
---@class Barotrauma.LevelEditorScreen : Barotrauma.EditorScreen
---`Field Private Instance`
---@field leftPanel Barotrauma.GUIFrame
---`Field Private Instance`
---@field rightPanel Barotrauma.GUIFrame
---`Field Private Instance`
---@field bottomPanel Barotrauma.GUIFrame
---`Field Private Instance`
---@field topPanel Barotrauma.GUIFrame
---`Field Private Instance`
---@field selectedParams Barotrauma.LevelGenerationParams
---`Field Private Instance`
---@field selectedLevelObject Barotrauma.LevelObjectPrefab
---`Field Private Instance`
---@field paramsList Barotrauma.GUIListBox
---`Field Private Instance`
---@field ruinParamsList Barotrauma.GUIListBox
---`Field Private Instance`
---@field caveParamsList Barotrauma.GUIListBox
---`Field Private Instance`
---@field outpostParamsList Barotrauma.GUIListBox
---`Field Private Instance`
---@field levelObjectList Barotrauma.GUIListBox
---`Field Private Instance`
---@field editorContainer Barotrauma.GUIListBox
---`Field Private Instance`
---@field spriteEditDoneButton Barotrauma.GUIButton
---`Field Private Instance`
---@field seedBox Barotrauma.GUITextBox
---`Field Private Instance`
---@field lightingEnabled Barotrauma.GUITickBox
---`Field Private Instance`
---@field cursorLightEnabled Barotrauma.GUITickBox
---`Field Private Instance`
---@field allowInvalidOutpost Barotrauma.GUITickBox
---`Field Private Instance`
---@field mirrorLevel Barotrauma.GUITickBox
---`Field Private Instance`
---@field selectedSubDropDown Barotrauma.GUIDropDown
---`Field Private Instance`
---@field editingSprite Barotrauma.Sprite
---`Field Private Instance`
---@field pointerLightSource Barotrauma.Lights.LightSource
---`Field Private Instance`
---@field tunnelDebugColors Microsoft.Xna.Framework.Color-arr|Microsoft.Xna.Framework.Color[]
---`Field Private Instance`
---@field currentLevelData Barotrauma.LevelData
---`Getter Public Instance Virtual`
---@field Cam Barotrauma.Camera
_G['LevelEditorScreen'] = {}

---`Method Public Instance Virtual`
_G['LevelEditorScreen'].Select = function() end

---`Method NonPublic Instance Virtual`
_G['LevelEditorScreen'].DeselectEditorSpecific = function() end

---`Method Private Instance`
_G['LevelEditorScreen'].UpdateParamsList = function() end

---`Method Private Instance`
_G['LevelEditorScreen'].UpdateCaveParamsList = function() end

---`Method Private Instance`
_G['LevelEditorScreen'].UpdateRuinParamsList = function() end

---`Method Private Instance`
_G['LevelEditorScreen'].UpdateOutpostParamsList = function() end

---`Method Private Instance`
_G['LevelEditorScreen'].UpdateLevelObjectsList = function() end

---`Method Private Instance`
---@param caveGenerationParams Barotrauma.CaveGenerationParams
_G['LevelEditorScreen'].CreateCaveParamsEditor = function(caveGenerationParams) end

---`Method Private Instance`
---@param outpostGenerationParams Barotrauma.OutpostGenerationParams
_G['LevelEditorScreen'].CreateOutpostGenerationParamsEditor = function(outpostGenerationParams) end

---`Method Private Instance`
---@param levelObjectPrefab Barotrauma.LevelObjectPrefab
_G['LevelEditorScreen'].CreateLevelObjectEditor = function(levelObjectPrefab) end

---`Method Private Instance`
---@param levelData Barotrauma.LevelData
_G['LevelEditorScreen'].SortLevelObjectsList = function(levelData) end

---`Method Public Instance Virtual`
_G['LevelEditorScreen'].AddToGUIUpdateList = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Double|number
---@param graphics Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['LevelEditorScreen'].Draw = function(deltaTime, graphics, spriteBatch) end

---`Method Public Instance Virtual`
---@param deltaTime System.Double|number
_G['LevelEditorScreen'].Update = function(deltaTime) end

---`Method Private Instance`
_G['LevelEditorScreen'].SerializeAll = function() end

---`Method Private Instance`
---@param genParams Barotrauma.LevelGenerationParams
_G['LevelEditorScreen'].Serialize = function(genParams) end

---`Constructor Public Instance`
---@return Barotrauma.LevelEditorScreen
_G['LevelEditorScreen'] = function() end

---`Constructor Public Instance`
---@return Barotrauma.LevelEditorScreen
_G['LevelEditorScreen'].__new = function() end

