---@meta
---@class Barotrauma.Items.Components.Fabricator : Barotrauma.Items.Components.Powered
---`Field Private Instance`
---@field itemList Barotrauma.GUIListBox
---`Field Private Instance`
---@field selectedItemFrame Barotrauma.GUIFrame
---`Field Private Instance`
---@field selectedItemReqsFrame Barotrauma.GUIFrame
---`Field Private Instance`
---@field activateButton Barotrauma.GUIButton
---`Field Private Instance`
---@field itemFilterBox Barotrauma.GUITextBox
---`Field Private Instance`
---@field outputSlot Barotrauma.GUIComponent
---`Field Private Instance`
---@field inputInventoryHolder Barotrauma.GUIComponent
---`Field Private Instance`
---@field outputInventoryHolder Barotrauma.GUIComponent
---`Field Private Instance`
---@field selectedItem Barotrauma.FabricationRecipe
---`Field Private Instance`
---@field inSufficientPowerWarning Barotrauma.GUIComponent
---`Field Private Instance`
---@field pendingFabricatedItem Barotrauma.FabricationRecipe
---`Field Private Instance`
---@field tooltip Barotrauma.Items.Components.Fabricator.ToolTip
---`Field Private Instance`
---@field requiredTimeBlock Barotrauma.GUITextBlock
---`Field Private Instance`
---@field missingIngredientCounts System.Collections.Generic.Dictionary*1Barotrauma*FabricationRecipe*RequiredItem*1System*Int32|{[Barotrauma.FabricationRecipe.RequiredItem]:System.Int32|integer}
---`Field Private Instance`
---@field ingredientHighlightTimer System.Single|number
---`Field Private Instance`
---@field fabricationRecipes System.Collections.Immutable.ImmutableDictionary*1System*UInt32*1Barotrauma*FabricationRecipe|{[System.UInt32|integer]:Barotrauma.FabricationRecipe}
---`Field Private Instance`
---@field fabricatedItem Barotrauma.FabricationRecipe
---`Field Private Instance`
---@field timeUntilReady System.Single|number
---`Field Private Instance`
---@field requiredTime System.Single|number
---`Field Private Instance`
---@field savedFabricatedItem System.String|string
---`Field Private Instance`
---@field savedTimeUntilReady System.Single|number
---`Field Private Instance`
---@field savedRequiredTime System.Single|number
---`Field Private Instance`
---@field availableIngredients System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1System*Collections*Generic*List*2Barotrauma*Item|{[Barotrauma.Identifier]:System.Collections.Generic.List*1Barotrauma*Item|Barotrauma.Item[]}
---`Field Private Instance`
---@field refreshIngredientsTimer System.Single|number
---`Field Private Instance`
---@field hasPower System.Boolean|boolean
---`Field Private Instance`
---@field user Barotrauma.Character
---`Field Private Instance`
---@field inputContainer Barotrauma.Items.Components.ItemContainer
---`Field Private Instance`
---@field outputContainer Barotrauma.Items.Components.ItemContainer
---`Field Private Instance`
---@field state Barotrauma.Items.Components.Fabricator.FabricatorState
---`Field Private Instance`
---@field progressState System.Single|number
---`Field Private Instance`
---@field fabricationLimits System.Collections.Generic.Dictionary*1System*UInt32*1System*Int32|{[System.UInt32|integer]:System.Int32|integer}
---`Field Private Instance`
---@field linkedInventories System.Collections.Generic.HashSet*1Barotrauma*Inventory|Barotrauma.Inventory[]
---`Field Private Static`
---@field RefreshIngredientsInterval System.Single|number
---`Field Private Static`
---@field TinkeringSpeedIncrease System.Single|number
---`Getter Public Instance`
---@field ActivateButton Barotrauma.GUIButton
---`Getter Public Instance`
---@field SelectedItem Barotrauma.FabricationRecipe
---`Getter Public Instance`
---@field SelectedItemIdentifier Barotrauma.Identifier
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CreateButtonText System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field FabricationLimitReachedText System.String|string
---`Getter Public Instance Virtual`
---@field RecreateGUIOnResolutionChange System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field FabricationSpeed System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SkillRequirementMultiplier System.Single|number
---`Getter Private Instance`
---<br/>`Setter Private Instance`
---@field State Barotrauma.Items.Components.Fabricator.FabricatorState
---`Getter Public Instance`
---@field InputContainer Barotrauma.Items.Components.ItemContainer
---`Getter Public Instance`
---@field OutputContainer Barotrauma.Items.Components.ItemContainer
_G['Components']['Fabricator'] = {}

---`Method NonPublic Instance Virtual`
_G['Components']['Fabricator'].OnResolutionChanged = function() end

---`Method NonPublic Instance Virtual`
_G['Components']['Fabricator'].CreateGUI = function() end

---`Method Private Instance`
_G['Components']['Fabricator'].InitInventoryUIs = function() end

---`Method Private Instance`
---@param fabricationRecipe Barotrauma.FabricationRecipe
---@return Barotrauma.LocalizedString
_G['Components']['Fabricator'].GetRecipeNameAndAmount = function(fabricationRecipe) end

---`Method Private Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param overlayComponent Barotrauma.GUICustomComponent
_G['Components']['Fabricator'].DrawInputOverLay = function(spriteBatch, overlayComponent) end

---`Method Private Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param overlayComponent Barotrauma.GUICustomComponent
_G['Components']['Fabricator'].DrawOutputOverLay = function(spriteBatch, overlayComponent) end

---`Method Private Instance`
---@param filter System.String|string
---@return System.Boolean|boolean
_G['Components']['Fabricator'].FilterEntities = function(filter) end

---`Method Private Instance`
_G['Components']['Fabricator'].HideEmptyItemListCategories = function() end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['Components']['Fabricator'].ClearFilter = function() end

---`Method Private Instance`
---@param user Barotrauma.Character
---@param selectedItem Barotrauma.FabricationRecipe
---@param overrideRequiredTime? System.Nullable*1System*Single|number
---@return System.Boolean|boolean
_G['Components']['Fabricator'].SelectItem = function(user, selectedItem, overrideRequiredTime) end

---`Method Public Instance`
---@param identifier System.String|string
---@param color Microsoft.Xna.Framework.Color
_G['Components']['Fabricator'].HighlightRecipe = function(identifier, color) end

---`Method Private Instance`
---@param button Barotrauma.GUIButton
---@param obj System.Object
---@return System.Boolean|boolean
_G['Components']['Fabricator'].StartButtonClicked = function(button, obj) end

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['Fabricator'].UpdateHUD = function(character, deltaTime, cam) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IWriteMessage
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
_G['Components']['Fabricator'].ClientEventWrite = function(msg, extraData) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IReadMessage
---@param sendingTime System.Single|number
_G['Components']['Fabricator'].ClientEventRead = function(msg, sendingTime) end

---`Method Public Instance Virtual`
_G['Components']['Fabricator'].OnItemLoaded = function() end

---`Method Private Instance`
_G['Components']['Fabricator'].OnItemLoadedProjSpecific = function() end

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['Fabricator'].Select = function(character) end

---`Method Private Instance`
---@param character Barotrauma.Character
_G['Components']['Fabricator'].SelectProjSpecific = function(character) end

---`Method Public Instance Virtual`
---@param picker Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['Fabricator'].Pick = function(picker) end

---`Method Public Instance`
---@param allowedIdentifiers System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
_G['Components']['Fabricator'].RemoveFabricationRecipes = function(allowedIdentifiers) end

---`Method Private Instance`
_G['Components']['Fabricator'].CreateRecipes = function() end

---`Method Private Instance`
---@param selectedItem Barotrauma.FabricationRecipe
---@param user Barotrauma.Character
---@param addToServerLog? System.Boolean|boolean
_G['Components']['Fabricator'].StartFabricating = function(selectedItem, user, addToServerLog) end

---`Method Private Instance`
---@param user? Barotrauma.Character
_G['Components']['Fabricator'].CancelFabricating = function(user) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['Fabricator'].Update = function(deltaTime, cam) end

---`Method Private Instance`
---@return Barotrauma.Networking.Client
_G['Components']['Fabricator'].GetUsingClient = function() end

---`Method Private Instance`
_G['Components']['Fabricator'].Fabricate = function() end

---`Method Public Instance Virtual`
---@param connection? Barotrauma.Items.Components.Connection
---@return System.Single|number
_G['Components']['Fabricator'].GetCurrentPowerConsumption = function(connection) end

---`Method Private Instance`
---@param fabricatedItem Barotrauma.FabricationRecipe
---@param user Barotrauma.Character
---@return System.Int32|integer
_G['Components']['Fabricator'].GetFabricatedItemQuality = function(fabricatedItem, user) end

---`Method Private Instance`
_G['Components']['Fabricator'].UpdateRequiredTimeProjSpecific = function() end

---`Method Private Instance`
---@param fabricableItem Barotrauma.FabricationRecipe
---@param availableIngredients System.Collections.Generic.IReadOnlyDictionary*1Barotrauma*Identifier*1System*Collections*Generic*List*2Barotrauma*Item|{[Barotrauma.Identifier]:System.Collections.Generic.List*1Barotrauma*Item|Barotrauma.Item[]}
---@param character Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['Fabricator'].CanBeFabricated = function(fabricableItem, availableIngredients, character) end

---`Method Private Instance`
---@param fabricableItem Barotrauma.FabricationRecipe
---@param user Barotrauma.Character
---@return System.Single|number
_G['Components']['Fabricator'].GetRequiredTime = function(fabricableItem, user) end

---`Method Public Instance`
---@param character Barotrauma.Character
---@param skills System.Collections.Immutable.ImmutableArray*1Barotrauma*Skill|Barotrauma.Skill[]
---@return System.Single|number
_G['Components']['Fabricator'].FabricationDegreeOfSuccess = function(character, skills) end

---`Method Public Instance Virtual`
---@return System.Single|number
_G['Components']['Fabricator'].GetSkillMultiplier = function() end

---`Method Private Instance`
_G['Components']['Fabricator'].RefreshAvailableIngredients = function() end

---`Method Private Instance`
---@param targetItem Barotrauma.FabricationRecipe
_G['Components']['Fabricator'].MoveIngredientsToInputContainer = function(targetItem) end

---`Method Public Instance Virtual`
---@param parentElement System.Xml.Linq.XElement
---@return System.Xml.Linq.XElement
_G['Components']['Fabricator'].Save = function(parentElement) end

---`Method Public Instance Virtual`
---@param componentElement Barotrauma.ContentXElement
---@param usePrefabValues System.Boolean|boolean
---@param idRemap Barotrauma.IdRemap
_G['Components']['Fabricator'].Load = function(componentElement, usePrefabValues, idRemap) end

---`Method Public Instance Virtual`
_G['Components']['Fabricator'].OnMapLoaded = function() end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Fabricator
_G['Components']['Fabricator'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.Fabricator
_G['Components']['Fabricator'].__new = function(item, element) end

