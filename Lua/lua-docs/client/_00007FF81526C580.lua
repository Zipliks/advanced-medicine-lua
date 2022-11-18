---@meta
---@class Barotrauma.SubEditorScreen : Barotrauma.EditorScreen
---`Field Private Instance`
---@field defaultPreviewImageSize Microsoft.Xna.Framework.Point
---`Field Private Instance`
---@field cam Barotrauma.Camera
---`Field Private Instance`
---@field camTargetFocus Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field backedUpSubInfo Barotrauma.SubmarineInfo
---`Field Private Instance`
---@field publishedWorkshopItemIds System.Collections.Generic.HashSet*1System*UInt64|System.UInt64|integer[]
---`Field Private Instance`
---@field screenResolution Microsoft.Xna.Framework.Point
---`Field Private Instance`
---@field lightingEnabled System.Boolean|boolean
---`Field Private Instance`
---@field wasSelectedBefore System.Boolean|boolean
---`Field Public Instance`
---@field TopPanel Barotrauma.GUIComponent
---`Field Public Instance`
---@field showEntitiesPanel Barotrauma.GUIComponent
---`Field Public Instance`
---@field entityCountPanel Barotrauma.GUIComponent
---`Field Private Instance`
---@field showEntitiesTickBoxes System.Collections.Generic.List*1Barotrauma*GUITickBox|Barotrauma.GUITickBox[]
---`Field Private Instance`
---@field hiddenSubCategories System.Collections.Generic.Dictionary*1System*String*1System*Boolean|{[System.String|string]:System.Boolean|boolean}
---`Field Private Instance`
---@field subNameLabel Barotrauma.GUITextBlock
---`Field Private Instance`
---@field entityMenuOpen System.Boolean|boolean
---`Field Private Instance`
---@field entityMenuOpenState System.Single|number
---`Field Private Instance`
---@field lastFilter System.String|string
---`Field Public Instance`
---@field EntityMenu Barotrauma.GUIComponent
---`Field Private Instance`
---@field entityFilterBox Barotrauma.GUITextBox
---`Field Private Instance`
---@field categorizedEntityList Barotrauma.GUIListBox
---`Field Private Instance`
---@field allEntityList Barotrauma.GUIListBox
---`Field Private Instance`
---@field toggleEntityMenuButton Barotrauma.GUIButton
---`Field Private Instance`
---@field defaultModeTickBox Barotrauma.GUITickBox
---`Field Private Instance`
---@field wiringModeTickBox Barotrauma.GUITickBox
---`Field Private Instance`
---@field loadFrame Barotrauma.GUIComponent
---`Field Private Instance`
---@field saveFrame Barotrauma.GUIComponent
---`Field Private Instance`
---@field nameBox Barotrauma.GUITextBox
---`Field Private Instance`
---@field descriptionBox Barotrauma.GUITextBox
---`Field Private Instance`
---@field selectedCategoryButton Barotrauma.GUIButton
---`Field Private Instance`
---@field selectedCategoryText Barotrauma.GUITextBlock
---`Field Private Instance`
---@field entityCategoryButtons System.Collections.Generic.List*1Barotrauma*GUIButton|Barotrauma.GUIButton[]
---`Field Private Instance`
---@field selectedCategory System.Nullable*1Barotrauma*MapEntityCategory
---`Field Private Instance`
---@field hullVolumeFrame Barotrauma.GUIFrame
---`Field Private Instance`
---@field saveAssemblyFrame Barotrauma.GUIFrame
---`Field Private Instance`
---@field snapToGridFrame Barotrauma.GUIFrame
---`Field Private Instance`
---@field previouslyUsedPanel Barotrauma.GUIFrame
---`Field Private Instance`
---@field previouslyUsedList Barotrauma.GUIListBox
---`Field Private Instance`
---@field visibilityButton Barotrauma.GUIButton
---`Field Private Instance`
---@field layerPanel Barotrauma.GUIFrame
---`Field Private Instance`
---@field layerList Barotrauma.GUIListBox
---`Field Private Instance`
---@field undoBufferPanel Barotrauma.GUIFrame
---`Field Private Instance`
---@field undoBufferDisclaimer Barotrauma.GUIFrame
---`Field Private Instance`
---@field undoBufferList Barotrauma.GUIListBox
---`Field Private Instance`
---@field linkedSubBox Barotrauma.GUIDropDown
---`Field Private Instance`
---@field dummyCharacter Barotrauma.Character
---`Field Private Instance`
---@field OpenedItem Barotrauma.Item
---`Field Private Instance`
---@field oldItemPosition Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field wiringToolPanel Barotrauma.GUIFrame
---`Field Private Instance`
---@field editorSelectedTime System.DateTime
---`Field Private Instance`
---@field previewImage Barotrauma.GUIImage
---`Field Private Instance`
---@field previewImageButtonHolder Barotrauma.GUILayoutGroup
---`Field Private Instance`
---@field submarineNameCharacterCount Barotrauma.GUITextBlock
---`Field Private Instance`
---@field submarineDescriptionCharacterCount Barotrauma.GUITextBlock
---`Field Private Instance`
---@field mode Barotrauma.SubEditorScreen.Mode
---`Field Private Instance`
---@field MeasurePositionStart Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field lockMode System.Boolean|boolean
---`Field Private Instance`
---@field toggleEntityListBind Barotrauma.KeyOrMouse
---`Field Public Static`
---@field MouseDragStart Microsoft.Xna.Framework.Vector2
---`Field Private Static`
---@field autoSaveLabel Barotrauma.GUIComponent
---`Field Public Static`
---@field ItemAddMutex System.Object
---`Field Public Static`
---@field ItemRemoveMutex System.Object
---`Field Public Static`
---@field TransparentWiringMode System.Boolean|boolean
---`Field Public Static`
---@field SkipInventorySlotUpdate System.Boolean|boolean
---`Field Private Static`
---@field bulkItemBufferinUse System.Object
---`Field Public Static`
---@field BulkItemBuffer System.Collections.Generic.List*1Barotrauma*AddOrDeleteCommand|Barotrauma.AddOrDeleteCommand[]
---`Field Public Static`
---@field SuppressedWarnings System.Collections.Generic.List*1Barotrauma*SubEditorScreen*WarningType|Barotrauma.SubEditorScreen.WarningType[]
---`Field Public Static`
---@field ImageManager Barotrauma.EditorImageManager
---`Field Public Static`
---@field ShouldDrawGrid System.Boolean|boolean
---`Field Public Static`
---@field DraggedItemPrefab Barotrauma.MapEntityPrefab
---`Field Public Static`
---@field Commands System.Collections.Generic.List*1Barotrauma*Command|Barotrauma.Command[]
---`Field Private Static`
---@field commandIndex System.Int32|integer
---`Field Private Static`
---@field isAutoSaving System.Boolean|boolean
---`Field Public Static`
---@field AutoSaveInfo System.Xml.Linq.XDocument
---`Field Private Static`
---@field autoSavePath System.String|string
---`Field Private Static`
---@field autoSaveInfoPath System.String|string
---`Field Private Static`
---@field Layers System.Collections.Generic.Dictionary*1System*String*1Barotrauma*SubEditorScreen*LayerData|{[System.String|string]:Barotrauma.SubEditorScreen.LayerData}
---`Field Private Static`
---@field gridBaseColor Microsoft.Xna.Framework.Color
---`Field Public Static`
---@field MaxStructures System.Int32|integer
---`Field Public Static`
---@field MaxWalls System.Int32|integer
---`Field Public Static`
---@field MaxItems System.Int32|integer
---`Field Public Static`
---@field MaxLights System.Int32|integer
---`Field Public Static`
---@field MaxShadowCastingLights System.Int32|integer
---`Field Private Static`
---@field PreviouslyUsedCount System.Int32|integer
---`Field Private Static`
---@field submarineNameLimit System.Int32|integer
---`Field Private Static`
---@field submarineDescriptionLimit System.Int32|integer
---`Getter Private Static`
---<br/>`Setter Private Static`
---@field MainSub Barotrauma.Submarine
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ShowThalamus System.Boolean|boolean
---`Getter Public Instance`
---@field ToggleEntityMenuButton Barotrauma.GUIButton
---`Getter Private Static`
---@field MaxAutoSaves System.Int32|integer
---`Getter Public Static`
---<br/>`Setter Public Static`
---@field BulkItemBufferInUse System.Object
---`Getter Public Instance Virtual`
---@field Cam Barotrauma.Camera
---`Getter Public Instance`
---@field WiringMode System.Boolean|boolean
_G['SubEditorScreen'] = {}

---`Method Private Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['SubEditorScreen'].DrawGrid = function(spriteBatch) end

---`Method Public Instance`
---@param width System.Int32|integer
---@param height System.Int32|integer
---@param filePath System.String|string
_G['SubEditorScreen'].SaveScreenShot = function(width, height, filePath) end

---`Method Public Instance`
---@param subcategory System.String|string
---@return System.Boolean|boolean
_G['SubEditorScreen'].IsSubcategoryHidden = function(subcategory) end

---`Method Public Static`
---@return System.Boolean|boolean
_G['SubEditorScreen'].IsSubEditor = function() end

---`Method Public Static`
---@return System.Boolean|boolean
_G['SubEditorScreen'].IsWiringMode = function() end

---`Method Public Static`
---@param entity Barotrauma.MapEntity
---@return System.Boolean|boolean
_G['SubEditorScreen'].IsLayerVisible = function(entity) end

---`Method Public Static`
---@param entity Barotrauma.MapEntity
---@return System.Boolean|boolean
_G['SubEditorScreen'].IsLayerLinked = function(entity) end

---`Method Public Static`
---@param entity Barotrauma.MapEntity
---@return System.Collections.Immutable.ImmutableHashSet*1Barotrauma*MapEntity|Barotrauma.MapEntity[]
_G['SubEditorScreen'].GetEntitiesInSameLayer = function(entity) end

---`Method Private Static`
---@return System.String|string
_G['SubEditorScreen'].GetSubDescription = function() end

---`Method Private Static`
---@return Barotrauma.LocalizedString
_G['SubEditorScreen'].GetTotalHullVolume = function() end

---`Method Private Static`
---@return Barotrauma.LocalizedString
_G['SubEditorScreen'].GetSelectedHullVolume = function() end

---`Method Private Instance`
_G['SubEditorScreen'].CreateUI = function() end

---`Method Private Instance`
---@param button Barotrauma.GUIButton
---@param obj System.Object
---@return System.Boolean|boolean
_G['SubEditorScreen'].TestSubmarine = function(button, obj) end

---`Method Public Instance`
_G['SubEditorScreen'].ClearBackedUpSubInfo = function() end

---`Method Private Instance`
_G['SubEditorScreen'].UpdateEntityList = function() end

---`Method Private Instance`
---@param ep Barotrauma.MapEntityPrefab
---@param entitiesPerRow System.Int32|integer
---@param parent Barotrauma.GUIComponent
_G['SubEditorScreen'].CreateEntityElement = function(ep, entitiesPerRow, parent) end

---`Method Public Instance Virtual`
_G['SubEditorScreen'].Select = function() end

---`Method Public Instance`
---@param enableAutoSave? System.Boolean|boolean
_G['SubEditorScreen'].Select = function(enableAutoSave) end

---`Method Public Instance Virtual`
---@param filePath System.String|string
---@param extension System.String|string
_G['SubEditorScreen'].OnFileDropped = function(filePath, extension) end

---`Method Private Static`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
_G['SubEditorScreen'].AutoSaveCoroutine = function() end

---`Method NonPublic Instance Virtual`
_G['SubEditorScreen'].DeselectEditorSpecific = function() end

---`Method Private Instance`
_G['SubEditorScreen'].CreateDummyCharacter = function() end

---`Method Private Static`
_G['SubEditorScreen'].AutoSave = function() end

---`Method Private Static`
_G['SubEditorScreen'].DisplayAutoSavePrompt = function() end

---`Method Private Instance`
---@param packageToSaveTo Barotrauma.ContentPackage
---@return System.Boolean|boolean
_G['SubEditorScreen'].SaveSub = function(packageToSaveTo) end

---`Method Private Instance`
---@param p Barotrauma.ContentPackage
_G['SubEditorScreen'].ReloadModifiedPackage = function(p) end

---`Method Public Static`
---@param type Barotrauma.SubmarineType
---@return System.Type
_G['SubEditorScreen'].DetermineSubFileType = function(type) end

---`Method Private Instance`
---@param name System.String|string
---@param packageToSaveTo Barotrauma.ContentPackage
---@return System.Boolean|boolean
_G['SubEditorScreen'].SaveSubToFile = function(name, packageToSaveTo) end

---`Method Private Instance`
---@param quickSave? System.Boolean|boolean
_G['SubEditorScreen'].CreateSaveScreen = function(quickSave) end

---`Method Private Instance`
_G['SubEditorScreen'].CreateSaveAssemblyScreen = function() end

---`Method Private Instance`
---@param assemblyPrefab Barotrauma.ItemAssemblyPrefab
---@return System.Collections.Generic.List*1Barotrauma*Item|Barotrauma.Item[]
_G['SubEditorScreen'].LoadItemAssemblyInventorySafe = function(assemblyPrefab) end

---`Method Private Instance`
---@param button Barotrauma.GUIButton
---@param obj System.Object
---@return System.Boolean|boolean
_G['SubEditorScreen'].SaveAssembly = function(button, obj) end

---`Method Private Instance`
_G['SubEditorScreen'].SnapToGrid = function() end

---`Method Private Instance`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*SubmarineInfo|(fun():Barotrauma.SubmarineInfo)
_G['SubEditorScreen'].GetLoadableSubs = function() end

---`Method Private Instance`
_G['SubEditorScreen'].CreateLoadScreen = function() end

---`Method Private Instance`
---@param subList Barotrauma.GUIListBox
---@param filter System.String|string
_G['SubEditorScreen'].FilterSubs = function(subList, filter) end

---`Method Private Instance`
---@param userData System.Object
_G['SubEditorScreen'].LoadAutoSave = function(userData) end

---`Method Private Instance`
---@param button Barotrauma.GUIButton
---@param obj System.Object
---@return System.Boolean|boolean
_G['SubEditorScreen'].HitLoadSubButton = function(button, obj) end

---`Method Private Instance`
---@param info Barotrauma.SubmarineInfo
---@param header Barotrauma.LocalizedString
---@param desc Barotrauma.LocalizedString
_G['SubEditorScreen'].AskLoadSub = function(info, header, desc) end

---`Method Private Instance`
---@param info Barotrauma.SubmarineInfo
---@param pkg Barotrauma.ContentPackage
_G['SubEditorScreen'].AskLoadPublishedSub = function(info, pkg) end

---`Method Private Instance`
---@param info Barotrauma.SubmarineInfo
_G['SubEditorScreen'].AskLoadSubscribedSub = function(info) end

---`Method Private Instance`
---@param info Barotrauma.SubmarineInfo
_G['SubEditorScreen'].AskLoadVanillaSub = function(info) end

---`Method Public Instance`
---@param info Barotrauma.SubmarineInfo
_G['SubEditorScreen'].LoadSub = function(info) end

---`Method Private Static`
---@param sub Barotrauma.SubmarineInfo
---@param packages System.Collections.Generic.IEnumerable*1Barotrauma*ContentPackage|(fun():Barotrauma.ContentPackage)
---@return Barotrauma.ContentPackage
_G['SubEditorScreen'].GetPackageThatOwnsSub = function(sub, packages) end

---`Method Private Static`
---@param sub Barotrauma.SubmarineInfo
---@return Barotrauma.ContentPackage
_G['SubEditorScreen'].GetLocalPackageThatOwnsSub = function(sub) end

---`Method Private Static`
---@param sub Barotrauma.SubmarineInfo
---@return Barotrauma.ContentPackage
_G['SubEditorScreen'].GetWorkshopPackageThatOwnsSub = function(sub) end

---`Method Private Static`
---@param sub Barotrauma.SubmarineInfo
---@return System.Boolean|boolean
_G['SubEditorScreen'].IsVanillaSub = function(sub) end

---`Method Private Instance`
---@param sub Barotrauma.SubmarineInfo
_G['SubEditorScreen'].TryDeleteSub = function(sub) end

---`Method Private Instance`
---@param entityCategory System.Nullable*1Barotrauma*MapEntityCategory
_G['SubEditorScreen'].OpenEntityMenu = function(entityCategory) end

---`Method Private Instance`
---@param filter System.String|string
_G['SubEditorScreen'].FilterEntities = function(filter) end

---`Method Private Instance`
_G['SubEditorScreen'].ClearFilter = function() end

---`Method Public Instance`
---@param newMode Barotrauma.SubEditorScreen.Mode
_G['SubEditorScreen'].SetMode = function(newMode) end

---`Method Private Instance`
_G['SubEditorScreen'].RemoveDummyCharacter = function() end

---`Method Private Instance`
_G['SubEditorScreen'].CreateContextMenu = function() end

---`Method Private Instance`
---@param layer System.String|string
---@param content System.Collections.Generic.List*1Barotrauma*MapEntity|Barotrauma.MapEntity[]
_G['SubEditorScreen'].MoveToLayer = function(layer, content) end

---`Method Private Instance`
---@param name System.String|string
---@param content System.Collections.Generic.List*1Barotrauma*MapEntity|Barotrauma.MapEntity[]
_G['SubEditorScreen'].CreateNewLayer = function(name, content) end

---`Method Private Instance`
---@param original System.String|string
---@param newName System.String|string
_G['SubEditorScreen'].RenameLayer = function(original, newName) end

---`Method Private Instance`
_G['SubEditorScreen'].ReconstructLayers = function() end

---`Method Private Instance`
_G['SubEditorScreen'].ClearLayers = function() end

---`Method Private Instance`
---@param text? System.String|string
---@param pos? System.Nullable*1Microsoft*Xna*Framework*Vector2
_G['SubEditorScreen'].PasteAssembly = function(text, pos) end

---`Method Public Static`
---@param originalColor Microsoft.Xna.Framework.Color
---@param property Barotrauma.SerializableProperty
---@param entity Barotrauma.ISerializableEntity
---@return Barotrauma.GUIMessageBox
_G['SubEditorScreen'].CreatePropertyColorPicker = function(originalColor, property, entity) end

---`Method Private Instance`
---@return Barotrauma.GUIFrame
_G['SubEditorScreen'].CreateWiringPanel = function() end

---`Method Private Instance`
---@param selected Barotrauma.GUIComponent
---@param userData System.Object
---@return System.Boolean|boolean
_G['SubEditorScreen'].SelectLinkedSub = function(selected, userData) end

---`Method Private Instance`
---@param component Barotrauma.GUIComponent
---@param userData System.Object
---@return System.Boolean|boolean
_G['SubEditorScreen'].SelectWire = function(component, userData) end

---`Method Private Instance`
---@param itemContainer Barotrauma.Item
_G['SubEditorScreen'].OpenItem = function(itemContainer) end

---`Method Private Instance`
_G['SubEditorScreen'].CloseItem = function() end

---`Method Private Instance`
---@param pos Microsoft.Xna.Framework.Vector2
_G['SubEditorScreen'].TeleportDummyCharacter = function(pos) end

---`Method Private Instance`
---@param textBox Barotrauma.GUITextBox
---@param text System.String|string
---@return System.Boolean|boolean
_G['SubEditorScreen'].ChangeSubName = function(textBox, text) end

---`Method Private Instance`
---@param textBox Barotrauma.GUITextBox
---@param text System.String|string
_G['SubEditorScreen'].ChangeSubDescription = function(textBox, text) end

---`Method Private Instance`
---@param component Barotrauma.GUIComponent
---@param obj System.Object
---@return System.Boolean|boolean
_G['SubEditorScreen'].SelectPrefab = function(component, obj) end

---`Method Private Instance`
---@return System.Boolean|boolean
_G['SubEditorScreen'].GenerateWaypoints = function() end

---`Method Private Instance`
---@param mapEntityPrefab Barotrauma.MapEntityPrefab
_G['SubEditorScreen'].AddPreviouslyUsed = function(mapEntityPrefab) end

---`Method Public Instance`
_G['SubEditorScreen'].AutoHull = function() end

---`Method Public Instance Virtual`
_G['SubEditorScreen'].AddToGUIUpdateList = function() end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['SubEditorScreen'].IsMouseOnEditorGUI = function() end

---`Method Private Static`
---@param amount System.Int32|integer
_G['SubEditorScreen'].Redo = function(amount) end

---`Method Private Static`
---@param amount System.Int32|integer
_G['SubEditorScreen'].Undo = function(amount) end

---`Method Private Static`
_G['SubEditorScreen'].ClearUndoBuffer = function() end

---`Method Public Static`
---@param command Barotrauma.Command
_G['SubEditorScreen'].StoreCommand = function(command) end

---`Method Private Instance`
_G['SubEditorScreen'].UpdateLayerPanel = function() end

---`Method Public Instance`
_G['SubEditorScreen'].UpdateUndoHistoryPanel = function() end

---`Method Private Static`
_G['SubEditorScreen'].CommitBulkItemBuffer = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Double|number
_G['SubEditorScreen'].Update = function(deltaTime) end

---`Method Public Instance Virtual`
---@param deltaTime System.Double|number
---@param graphics Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['SubEditorScreen'].Draw = function(deltaTime, graphics, spriteBatch) end

---`Method Private Instance`
---@param width System.Int32|integer
---@param height System.Int32|integer
---@param stream System.IO.Stream
_G['SubEditorScreen'].CreateImage = function(width, height, stream) end

---`Constructor Private Static`
---@overload fun():Barotrauma.SubEditorScreen
---@return Barotrauma.SubEditorScreen
_G['SubEditorScreen'] = function() end

---`Constructor Private Static`
---@overload fun():Barotrauma.SubEditorScreen
---@return Barotrauma.SubEditorScreen
_G['SubEditorScreen'].__new = function() end

---`Constructor Public Instance`
---@overload fun():Barotrauma.SubEditorScreen
---@return Barotrauma.SubEditorScreen
_G['SubEditorScreen'] = function() end

---`Constructor Public Instance`
---@overload fun():Barotrauma.SubEditorScreen
---@return Barotrauma.SubEditorScreen
_G['SubEditorScreen'].__new = function() end

