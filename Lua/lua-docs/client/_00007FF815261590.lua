---@meta
---@class Barotrauma.UpgradeStore : System.Object
---`Field Private Instance`
---@field campaignUI Barotrauma.CampaignUI
---`Field Private Instance`
---@field selectedUpgradeTab Barotrauma.UpgradeStore.UpgradeTab
---`Field Private Instance`
---@field currectConfirmation Barotrauma.GUIMessageBox
---`Field Public Instance`
---@field ItemInfoFrame Barotrauma.GUIFrame
---`Field Private Instance`
---@field selectedUpgradeCategoryLayout Barotrauma.GUIComponent
---`Field Private Instance`
---@field topHeaderLayout Barotrauma.GUILayoutGroup
---`Field Private Instance`
---@field mainStoreLayout Barotrauma.GUILayoutGroup
---`Field Private Instance`
---@field storeLayout Barotrauma.GUILayoutGroup
---`Field Private Instance`
---@field categoryButtonLayout Barotrauma.GUILayoutGroup
---`Field Private Instance`
---@field submarineInfoFrame Barotrauma.GUILayoutGroup
---`Field Private Instance`
---@field currentStoreLayout Barotrauma.GUIListBox
---`Field Private Instance`
---@field submarinePreviewComponent Barotrauma.GUICustomComponent
---`Field Private Instance`
---@field subPreviewFrame Barotrauma.GUIFrame
---`Field Private Instance`
---@field drawnSubmarine Barotrauma.Submarine
---`Field Private Instance`
---@field applicableCategories System.Collections.Generic.List*1Barotrauma*UpgradeCategory|Barotrauma.UpgradeCategory[]
---`Field Private Instance`
---@field subHullVertices Microsoft.Xna.Framework.Vector2-arr-arr|Microsoft.Xna.Framework.Vector2-arr|Microsoft.Xna.Framework.Vector2[][]
---`Field Private Instance`
---@field submarineWalls System.Collections.Generic.List*1Barotrauma*Structure|Barotrauma.Structure[]
---`Field Public Instance`
---@field HoveredEntity Barotrauma.MapEntity
---`Field Private Instance`
---@field highlightWalls System.Boolean|boolean
---`Field Private Instance`
---@field currentUpgradeCategory Barotrauma.UpgradeCategory
---`Field Private Instance`
---@field activeItemSwapSlideDown Barotrauma.GUIButton
---`Field Private Instance`
---@field itemPreviews System.Collections.Generic.Dictionary*1Barotrauma*Item*1Barotrauma*GUIComponent|{[Barotrauma.Item]:Barotrauma.GUIComponent}
---`Field Private Instance`
---@field screenResolution Microsoft.Xna.Framework.Point
---`Field Private Instance`
---@field needsRefresh System.Boolean|boolean
---`Field Private Instance`
---@field playerBalanceElement System.Nullable*1Barotrauma*CampaignUI*PlayerBalanceElement
---`Field Private Instance`
---@field customizeTabOpen System.Boolean|boolean
---`Field Private Static`
---@field previewWhite Microsoft.Xna.Framework.Color
---`Field Public Static`
---@field WaitForServerUpdate System.Boolean|boolean
---`Getter Private Instance`
---@field Campaign Barotrauma.CampaignMode
---`Getter Private Instance`
---@field PlayerBalance System.Int32|integer
---`Getter Private Instance`
---@field HasPermission System.Boolean|boolean
_G['UpgradeStore'] = {}

---`Method Public Instance`
_G['UpgradeStore'].RequestRefresh = function() end

---`Method Private Instance`
_G['UpgradeStore'].RefreshAll = function() end

---`Method Private Instance`
_G['UpgradeStore'].RefreshUpgradeList = function() end

---`Method Public Static`
---@param categoryList Barotrauma.GUIListBox
---@param campaign Barotrauma.CampaignMode
---@param drawnSubmarine Barotrauma.Submarine
---@param applicableCategories System.Collections.Generic.IEnumerable*1Barotrauma*UpgradeCategory|(fun():Barotrauma.UpgradeCategory)
_G['UpgradeStore'].UpdateCategoryList = function(categoryList, campaign, drawnSubmarine, applicableCategories) end

---`Method Private Instance`
---@param parent Barotrauma.GUIComponent
_G['UpgradeStore'].CreateUI = function(parent) end

---`Method Private Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param component Barotrauma.GUICustomComponent
_G['UpgradeStore'].DrawItemSwapPreview = function(spriteBatch, component) end

---`Method Private Instance`
---@param tab Barotrauma.UpgradeStore.UpgradeTab
_G['UpgradeStore'].SelectTab = function(tab) end

---`Method Private Instance`
_G['UpgradeStore'].CreateRepairsTab = function() end

---`Method Private Instance`
---@param parent Barotrauma.GUIComponent
---@param title Barotrauma.LocalizedString
---@param imageStyle System.String|string
---@param price System.Int32|integer
---@param onPressed Barotrauma.GUIButton.OnClickedHandler|(fun(button:Barotrauma.GUIButton, obj:System.Object):System.Boolean|boolean)
---@param isDisabled System.Boolean|boolean
---@param onHover? System.Func*1System*Boolean*1System*Boolean|(fun(arg:System.Boolean|boolean):System.Boolean|boolean)
---@param disableElement? System.Boolean|boolean
_G['UpgradeStore'].CreateRepairEntry = function(parent, title, imageStyle, price, onPressed, isDisabled, onHover, disableElement) end

---`Method Public Static`
---@param rectTransform Barotrauma.RectTransform
---@return Barotrauma.GUIListBox
_G['UpgradeStore'].CreateUpgradeCategoryList = function(rectTransform) end

---`Method Private Instance`
_G['UpgradeStore'].CreateUpgradeTab = function() end

---`Method Private Instance`
---@param prefabs System.Collections.Generic.List*1Barotrauma*UpgradePrefab|Barotrauma.UpgradePrefab[]
---@param category Barotrauma.UpgradeCategory
---@param submarine Barotrauma.Submarine
_G['UpgradeStore'].TrySelectCategory = function(prefabs, category, submarine) end

---`Method Private Static`
---@param category Barotrauma.UpgradeCategory
---@param subItems? System.Collections.Generic.List*1Barotrauma*Item|Barotrauma.Item[]
---@return System.Boolean|boolean
_G['UpgradeStore'].HasSwappableItems = function(category, subItems) end

---`Method Private Static`
---@return System.Collections.Generic.List*1Barotrauma*Item|Barotrauma.Item[]
_G['UpgradeStore'].GetSubItems = function() end

---`Method Private Instance`
---@param prefabs System.Collections.Generic.List*1Barotrauma*UpgradePrefab|Barotrauma.UpgradePrefab[]
---@param category Barotrauma.UpgradeCategory
---@param submarine Barotrauma.Submarine
_G['UpgradeStore'].SelectUpgradeCategory = function(prefabs, category, submarine) end

---`Method Private Instance`
---@param parent Barotrauma.GUIListBox
---@param category Barotrauma.UpgradeCategory
---@param prefabs System.Collections.Generic.List*1Barotrauma*UpgradePrefab|Barotrauma.UpgradePrefab[]
---@param submarine Barotrauma.Submarine
_G['UpgradeStore'].CreateUpgradePrefabList = function(parent, category, prefabs, submarine) end

---`Method Private Instance`
---@param parent Barotrauma.GUIListBox
---@param category Barotrauma.UpgradeCategory
---@param submarine Barotrauma.Submarine
_G['UpgradeStore'].CreateSwappableItemList = function(parent, category, submarine) end

---`Method Private Instance`
---@param parent Barotrauma.GUIListBox
---@param item Barotrauma.Item
---@param swappableEntities System.Collections.Generic.List*1Barotrauma*Item|Barotrauma.Item[]
---@param submarine Barotrauma.Submarine
_G['UpgradeStore'].CreateSwappableItemSlideDown = function(parent, item, swappableEntities, submarine) end

---`Method Public Static`
---@param prefab Barotrauma.UpgradePrefab
---@param category Barotrauma.UpgradeCategory
---@param campaign Barotrauma.CampaignMode
---@param rectTransform Barotrauma.RectTransform
---@param addBuyButton? System.Boolean|boolean
---@return Barotrauma.GUIFrame
_G['UpgradeStore'].CreateUpgradeFrame = function(prefab, category, campaign, rectTransform, addBuyButton) end

---`Method Public Static`
---@param parent Barotrauma.RectTransform
---@param sprite Barotrauma.Sprite
---@param title Barotrauma.LocalizedString
---@param body Barotrauma.LocalizedString
---@param price System.Int32|integer
---@param userData System.Object
---@param addBuyButton? System.Boolean|boolean
---@param addProgressBar? System.Boolean|boolean
---@param buttonStyle? System.String|string
---@param upgradePrefab? Barotrauma.UpgradePrefab
---@param currentLevel? System.Int32|integer
---@return Barotrauma.GUIFrame
_G['UpgradeStore'].CreateUpgradeEntry = function(parent, sprite, title, body, price, userData, addBuyButton, addProgressBar, buttonStyle, upgradePrefab, currentLevel) end

---`Method Private Instance`
---@param prefab Barotrauma.UpgradePrefab
---@param category Barotrauma.UpgradeCategory
---@param parent Barotrauma.GUIComponent
---@param submarine Barotrauma.Submarine
---@param itemsOnSubmarine System.Collections.Generic.List*1Barotrauma*Item|Barotrauma.Item[]
_G['UpgradeStore'].CreateUpgradeEntry = function(prefab, category, parent, submarine, itemsOnSubmarine) end

---`Method Private Static`
---@param text Barotrauma.GUITextBlock
---@param upgradePrefab Barotrauma.UpgradePrefab
---@param currentLevel System.Int32|integer
_G['UpgradeStore'].UpdateUpgradePercentageText = function(text, upgradePrefab, currentLevel) end

---`Method Private Instance`
---@param entity Barotrauma.MapEntity
_G['UpgradeStore'].CreateItemTooltip = function(entity) end

---`Method Public Static`
---@param drawnSubmarine Barotrauma.Submarine
---@return System.Collections.Generic.IEnumerable*1Barotrauma*UpgradeCategory|(fun():Barotrauma.UpgradeCategory)
_G['UpgradeStore'].GetApplicableCategories = function(drawnSubmarine) end

---`Method Private Instance`
---@param deltaTime System.Single|number
---@param parent Barotrauma.GUICustomComponent
_G['UpgradeStore'].UpdateSubmarinePreview = function(deltaTime, parent) end

---`Method Private Instance`
---@param submarine Barotrauma.Submarine
---@param parent Barotrauma.GUIComponent
_G['UpgradeStore'].CreateSubmarinePreview = function(submarine, parent) end

---`Method Private Instance`
---@param sub Barotrauma.Submarine
---@param parent Barotrauma.GUIComponent
_G['UpgradeStore'].CreateHullBorderVerticies = function(sub, parent) end

---`Method Private Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param component Barotrauma.GUICustomComponent
_G['UpgradeStore'].DrawSubmarine = function(spriteBatch, component) end

---`Method Public Static`
---@param prefabFrame Barotrauma.GUIComponent
---@param prefab Barotrauma.UpgradePrefab
---@param category Barotrauma.UpgradeCategory
---@param campaign Barotrauma.CampaignMode
_G['UpgradeStore'].UpdateUpgradeEntry = function(prefabFrame, prefab, category, campaign) end

---`Method Private Static`
---@param indicators Barotrauma.GUIComponent
---@param parent Barotrauma.GUIComponent
---@param prefabs System.Collections.Generic.List*1Barotrauma*UpgradePrefab|Barotrauma.UpgradePrefab[]
---@param category Barotrauma.UpgradeCategory
---@param campaign Barotrauma.CampaignMode
---@param drawnSubmarine Barotrauma.Submarine
---@param applicableCategories System.Collections.Generic.IEnumerable*1Barotrauma*UpgradeCategory|(fun():Barotrauma.UpgradeCategory)
_G['UpgradeStore'].UpdateCategoryIndicators = function(indicators, parent, prefabs, category, campaign, drawnSubmarine, applicableCategories) end

---`Method Private Instance`
---@param predicate System.Predicate*1Barotrauma*UpgradeStore*CategoryData|(fun(obj:Barotrauma.UpgradeStore.CategoryData):System.Boolean|boolean)
---@param playSelectSound? Barotrauma.GUIListBox.PlaySelectSound
_G['UpgradeStore'].ScrollToCategory = function(predicate, playSelectSound) end

---`Method Private Instance`
---@param category Barotrauma.UpgradeCategory
---@return Barotrauma.GUIComponent-arr|Barotrauma.GUIComponent[]
_G['UpgradeStore'].GetFrames = function(category) end

---`Method Private Static`
---@overload fun(x:System.Single|number, y:System.Single|number, parentComponent:Barotrauma.GUIComponent, anchor?:Barotrauma.Anchor, scaleBasis?:Barotrauma.ScaleBasis):Barotrauma.RectTransform
---@param point Microsoft.Xna.Framework.Point
---@param parentComponent Barotrauma.GUIComponent
---@param anchor? Barotrauma.Anchor
---@return Barotrauma.RectTransform
_G['UpgradeStore'].rectT = function(point, parentComponent, anchor) end

---`Constructor Public Instance`
---@overload fun(campaignUI:Barotrauma.CampaignUI, parent:Barotrauma.GUIComponent):Barotrauma.UpgradeStore
---@return Barotrauma.UpgradeStore
_G['UpgradeStore'] = function() end

---`Constructor Public Instance`
---@overload fun(campaignUI:Barotrauma.CampaignUI, parent:Barotrauma.GUIComponent):Barotrauma.UpgradeStore
---@return Barotrauma.UpgradeStore
_G['UpgradeStore'].__new = function() end

---`Constructor Private Static`
---@overload fun(campaignUI:Barotrauma.CampaignUI, parent:Barotrauma.GUIComponent):Barotrauma.UpgradeStore
---@return Barotrauma.UpgradeStore
_G['UpgradeStore'] = function() end

---`Constructor Private Static`
---@overload fun(campaignUI:Barotrauma.CampaignUI, parent:Barotrauma.GUIComponent):Barotrauma.UpgradeStore
---@return Barotrauma.UpgradeStore
_G['UpgradeStore'].__new = function() end

