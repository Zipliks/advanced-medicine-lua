---@meta
---@class Barotrauma.Store : System.Object
---`Field Private Instance`
---@field campaignUI Barotrauma.CampaignUI
---`Field Private Instance`
---@field parentComponent Barotrauma.GUIComponent
---`Field Private Instance`
---@field storeTabButtons System.Collections.Generic.List*1Barotrauma*GUIButton|Barotrauma.GUIButton[]
---`Field Private Instance`
---@field itemCategoryButtons System.Collections.Generic.List*1Barotrauma*GUIButton|Barotrauma.GUIButton[]
---`Field Private Instance`
---@field tabLists System.Collections.Generic.Dictionary*1Barotrauma*Store*StoreTab*1Barotrauma*GUIListBox|{[Barotrauma.Store.StoreTab]:Barotrauma.GUIListBox}
---`Field Private Instance`
---@field tabSortingMethods System.Collections.Generic.Dictionary*1Barotrauma*Store*StoreTab*1Barotrauma*Store*SortingMethod|{[Barotrauma.Store.StoreTab]:Barotrauma.Store.SortingMethod}
---`Field Private Instance`
---@field itemsToSell System.Collections.Generic.List*1Barotrauma*PurchasedItem|Barotrauma.PurchasedItem[]
---`Field Private Instance`
---@field itemsToSellFromSub System.Collections.Generic.List*1Barotrauma*PurchasedItem|Barotrauma.PurchasedItem[]
---`Field Private Instance`
---@field activeTab Barotrauma.Store.StoreTab
---`Field Private Instance`
---@field selectedItemCategory System.Nullable*1Barotrauma*MapEntityCategory
---`Field Private Instance`
---@field suppressBuySell System.Boolean|boolean
---`Field Private Instance`
---@field buyTotal System.Int32|integer
---`Field Private Instance`
---@field sellTotal System.Int32|integer
---`Field Private Instance`
---@field sellFromSubTotal System.Int32|integer
---`Field Private Instance`
---@field storeNameBlock Barotrauma.GUITextBlock
---`Field Private Instance`
---@field reputationEffectBlock Barotrauma.GUITextBlock
---`Field Private Instance`
---@field sortingDropDown Barotrauma.GUIDropDown
---`Field Private Instance`
---@field searchBox Barotrauma.GUITextBox
---`Field Private Instance`
---@field categoryButtonContainer Barotrauma.GUILayoutGroup
---`Field Private Instance`
---@field storeBuyList Barotrauma.GUIListBox
---`Field Private Instance`
---@field storeSellList Barotrauma.GUIListBox
---`Field Private Instance`
---@field storeSellFromSubList Barotrauma.GUIListBox
---`Field Private Instance`
---@field storeDailySpecialsGroup Barotrauma.GUILayoutGroup
---`Field Private Instance`
---@field storeRequestedGoodGroup Barotrauma.GUILayoutGroup
---`Field Private Instance`
---@field storeRequestedSubGoodGroup Barotrauma.GUILayoutGroup
---`Field Private Instance`
---@field storeSpecialColor Microsoft.Xna.Framework.Color
---`Field Private Instance`
---@field shoppingCrateBuyList Barotrauma.GUIListBox
---`Field Private Instance`
---@field shoppingCrateSellList Barotrauma.GUIListBox
---`Field Private Instance`
---@field shoppingCrateSellFromSubList Barotrauma.GUIListBox
---`Field Private Instance`
---@field relevantBalanceName Barotrauma.GUITextBlock
---`Field Private Instance`
---@field shoppingCrateTotal Barotrauma.GUITextBlock
---`Field Private Instance`
---@field clearAllButton Barotrauma.GUIButton
---`Field Private Instance`
---@field confirmButton Barotrauma.GUIButton
---`Field Private Instance`
---@field needsRefresh System.Boolean|boolean
---`Field Private Instance`
---@field needsBuyingRefresh System.Boolean|boolean
---`Field Private Instance`
---@field needsSellingRefresh System.Boolean|boolean
---`Field Private Instance`
---@field needsItemsToSellRefresh System.Boolean|boolean
---`Field Private Instance`
---@field needsSellingFromSubRefresh System.Boolean|boolean
---`Field Private Instance`
---@field needsItemsToSellFromSubRefresh System.Boolean|boolean
---`Field Private Instance`
---@field resolutionWhenCreated Microsoft.Xna.Framework.Point
---`Field Private Instance`
---@field playerBalanceElement System.Nullable*1Barotrauma*CampaignUI*PlayerBalanceElement
---`Field Private Instance`
---@field hadBuyPermissions System.Boolean|boolean
---`Field Private Instance`
---@field hadSellInventoryPermissions System.Boolean|boolean
---`Field Private Instance`
---@field hadSellSubPermissions System.Boolean|boolean
---`Field Private Instance`
---@field prevDailySpecialCount System.Int32|integer
---`Field Private Instance`
---@field prevRequestedGoodsCount System.Int32|integer
---`Field Private Instance`
---@field prevSubRequestedGoodsCount System.Int32|integer
---`Field Private Instance`
---@field prevBalance System.Int32|integer
---`Field Private Instance`
---@field ownedItemsUpdateTimer System.Single|number
---`Field Private Instance`
---@field sellableItemsFromSubUpdateTimer System.Single|number
---`Field Private Instance`
---@field updateStopwatch System.Diagnostics.Stopwatch
---`Field Private Static`
---@field timerUpdateInterval System.Single|number
---`Getter Private Instance`
---@field OwnedItems System.Collections.Generic.Dictionary*1Barotrauma*ItemPrefab*1Barotrauma*Store*ItemQuantity|{[Barotrauma.ItemPrefab]:Barotrauma.Store.ItemQuantity}
---`Getter Private Instance`
---<br/>`Setter Private Instance`
---@field ActiveStore Barotrauma.Location.StoreInfo
---`Getter Private Instance`
---@field CargoManager Barotrauma.CargoManager
---`Getter Private Instance`
---@field CurrentLocation Barotrauma.Location
---`Getter Private Instance`
---@field Balance System.Int32|integer
---`Getter Private Instance`
---@field IsBuying System.Boolean|boolean
---`Getter Private Instance`
---@field ActiveShoppingCrateList Barotrauma.GUIListBox
---`Getter Private Instance`
---<br/>`Setter Private Instance`
---@field HasBuyPermissions System.Boolean|boolean
---`Getter Private Instance`
---<br/>`Setter Private Instance`
---@field HasSellInventoryPermissions System.Boolean|boolean
---`Getter Private Instance`
---<br/>`Setter Private Instance`
---@field HasSellSubPermissions System.Boolean|boolean
_G['Store'] = {}

---`Method Private Instance`
---@param tab Barotrauma.Store.StoreTab
---@return System.Boolean|boolean
_G['Store'].HasPermissionToUseTab = function(tab) end

---`Method Private Instance`
_G['Store'].UpdatePermissions = function() end

---`Method Private Instance`
---@param tab Barotrauma.Store.StoreTab
---@return System.Boolean|boolean
_G['Store'].HasTabPermissions = function(tab) end

---`Method Private Instance`
---@return System.Boolean|boolean
_G['Store'].HasActiveTabPermissions = function() end

---`Method Private Instance`
---@param tab Barotrauma.Store.StoreTab
---@return System.Boolean|boolean
_G['Store'].HavePermissionsChanged = function(tab) end

---`Method Public Instance`
---@param identifier Barotrauma.Identifier
_G['Store'].SelectStore = function(identifier) end

---`Method Public Instance`
---@param updateOwned? System.Boolean|boolean
_G['Store'].Refresh = function(updateOwned) end

---`Method Private Instance`
---@param updateOwned? System.Boolean|boolean
_G['Store'].RefreshBuying = function(updateOwned) end

---`Method Private Instance`
---@param updateOwned? System.Boolean|boolean
_G['Store'].RefreshSelling = function(updateOwned) end

---`Method Private Instance`
---@param updateOwned? System.Boolean|boolean
---@param updateItemsToSellFromSub? System.Boolean|boolean
_G['Store'].RefreshSellingFromSub = function(updateOwned, updateItemsToSellFromSub) end

---`Method Private Instance`
_G['Store'].CreateUI = function() end

---`Method Private Instance`
---@return Barotrauma.LocalizedString
_G['Store'].GetMerchantBalanceText = function() end

---`Method Private Instance`
---@param parentList Barotrauma.GUIListBox
---@param elementCount System.Int32|integer
---@return Barotrauma.GUILayoutGroup
_G['Store'].CreateDealsGroup = function(parentList, elementCount) end

---`Method Private Instance`
---@param prevLocation Barotrauma.Location
---@param newLocation Barotrauma.Location
_G['Store'].UpdateLocation = function(prevLocation, newLocation) end

---`Method Private Instance`
_G['Store'].UpdateCategoryButtons = function() end

---`Method Private Instance`
---@param tab Barotrauma.Store.StoreTab
_G['Store'].ChangeStoreTab = function(tab) end

---`Method Private Instance`
---@overload fun(category:System.Nullable*1Barotrauma*MapEntityCategory, filter:System.String|string)
_G['Store'].FilterStoreItems = function() end

---`Method Private Instance`
_G['Store'].RefreshStoreBuyList = function() end

---`Method Private Instance`
_G['Store'].RefreshStoreSellList = function() end

---`Method Private Instance`
_G['Store'].RefreshStoreSellFromSubList = function() end

---`Method Private Instance`
---@param itemFrame Barotrauma.GUIComponent
---@param buying System.Boolean|boolean
_G['Store'].SetPriceGetters = function(itemFrame, buying) end

---`Method Public Instance`
_G['Store'].RefreshItemsToSell = function() end

---`Method Public Instance`
_G['Store'].RefreshItemsToSellFromSub = function() end

---`Method Private Instance`
---@param items System.Collections.Generic.IEnumerable*1Barotrauma*PurchasedItem|(fun():Barotrauma.PurchasedItem)
---@param listBox Barotrauma.GUIListBox
---@param tab Barotrauma.Store.StoreTab
_G['Store'].RefreshShoppingCrateList = function(items, listBox, tab) end

---`Method Private Instance`
_G['Store'].RefreshShoppingCrateBuyList = function() end

---`Method Private Instance`
_G['Store'].RefreshShoppingCrateSellList = function() end

---`Method Private Instance`
_G['Store'].RefreshShoppingCrateSellFromSubList = function() end

---`Method Private Instance`
---@overload fun(list:Barotrauma.GUIListBox, sortingMethod:Barotrauma.Store.SortingMethod)
---@overload fun(tab:Barotrauma.Store.StoreTab, sortingMethod:Barotrauma.Store.SortingMethod)
---@param tab Barotrauma.Store.StoreTab
_G['Store'].SortItems = function(tab) end

---`Method Private Instance`
---@param sortingMethod Barotrauma.Store.SortingMethod
_G['Store'].SortActiveTabItems = function(sortingMethod) end

---`Method Private Instance`
---@param pi Barotrauma.PurchasedItem
---@param parentComponent Barotrauma.GUIComponent
---@param containingTab Barotrauma.Store.StoreTab
---@param forceDisable? System.Boolean|boolean
---@return Barotrauma.GUIComponent
_G['Store'].CreateItemFrame = function(pi, parentComponent, containingTab, forceDisable) end

---`Method Private Instance`
_G['Store'].UpdateOwnedItems = function() end

---`Method Private Instance`
---@param itemFrame Barotrauma.GUIComponent
---@param enabled System.Boolean|boolean
_G['Store'].SetItemFrameStatus = function(itemFrame, enabled) end

---`Method Private Static`
---@param mode Barotrauma.Store.StoreTab
---@param itemFrame Barotrauma.GUIComponent
_G['Store'].SetQuantityLabelText = function(mode, itemFrame) end

---`Method Private Static`
---@param mode Barotrauma.Store.StoreTab
---@param quantity System.Int32|integer
---@return Barotrauma.LocalizedString
_G['Store'].CreateQuantityLabelText = function(mode, quantity) end

---`Method Private Instance`
---@param itemComponent Barotrauma.GUIComponent
---@param ownedLabel? Barotrauma.GUITextBlock
_G['Store'].SetOwnedText = function(itemComponent, ownedLabel) end

---`Method Private Instance`
---@param itemPrefab Barotrauma.ItemPrefab
---@param mode Barotrauma.Store.StoreTab
---@return System.Int32|integer
_G['Store'].GetMaxAvailable = function(itemPrefab, mode) end

---`Method Private Instance`
---@param item Barotrauma.PurchasedItem
---@param quantity System.Int32|integer
---@return System.Boolean|boolean
_G['Store'].ModifyBuyQuantity = function(item, quantity) end

---`Method Private Instance`
---@param item Barotrauma.PurchasedItem
---@param quantity System.Int32|integer
---@return System.Boolean|boolean
_G['Store'].ModifySellQuantity = function(item, quantity) end

---`Method Private Instance`
---@param item Barotrauma.PurchasedItem
---@param quantity System.Int32|integer
---@return System.Boolean|boolean
_G['Store'].ModifySellFromSubQuantity = function(item, quantity) end

---`Method Private Instance`
---@param item Barotrauma.PurchasedItem
---@param quantity? System.Int32|integer
---@return System.Boolean|boolean
_G['Store'].AddToShoppingCrate = function(item, quantity) end

---`Method Private Instance`
---@param item Barotrauma.PurchasedItem
---@return System.Boolean|boolean
_G['Store'].ClearFromShoppingCrate = function(item) end

---`Method Private Instance`
---@return System.Boolean|boolean
_G['Store'].BuyItems = function() end

---`Method Private Instance`
---@return System.Boolean|boolean
_G['Store'].SellItems = function() end

---`Method Private Instance`
_G['Store'].SetShoppingCrateTotalText = function() end

---`Method Private Instance`
_G['Store'].SetConfirmButtonBehavior = function() end

---`Method Private Instance`
_G['Store'].SetConfirmButtonStatus = function() end

---`Method Private Instance`
_G['Store'].SetClearAllButtonStatus = function() end

---`Method Public Instance`
---@param deltaTime System.Single|number
_G['Store'].Update = function(deltaTime) end

---`Constructor Public Instance`
---@param campaignUI Barotrauma.CampaignUI
---@param parentComponent Barotrauma.GUIComponent
---@return Barotrauma.Store
_G['Store'] = function(campaignUI, parentComponent) end

---`Constructor Public Instance`
---@param campaignUI Barotrauma.CampaignUI
---@param parentComponent Barotrauma.GUIComponent
---@return Barotrauma.Store
_G['Store'].__new = function(campaignUI, parentComponent) end

