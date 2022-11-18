---@meta
---@class Barotrauma.SubmarineSelection : System.Object
---`Field Private Instance`
---@field currentPage System.Int32|integer
---`Field Private Instance`
---@field pageCount System.Int32|integer
---`Field Private Instance`
---@field transferService System.Boolean|boolean
---`Field Private Instance`
---@field purchaseService System.Boolean|boolean
---`Field Private Instance`
---@field initialized System.Boolean|boolean
---`Field Private Instance`
---@field deliveryFee System.Int32|integer
---`Field Private Instance`
---@field deliveryLocationName System.String|string
---`Field Public Instance`
---@field GuiFrame Barotrauma.GUIFrame
---`Field Private Instance`
---@field pageIndicatorHolder Barotrauma.GUIFrame
---`Field Private Instance`
---@field selectedSubmarineIndicator Barotrauma.GUICustomComponent
---`Field Private Instance`
---@field submarineHorizontalGroup Barotrauma.GUILayoutGroup
---`Field Private Instance`
---@field submarineControlsGroup Barotrauma.GUILayoutGroup
---`Field Private Instance`
---@field browseLeftButton Barotrauma.GUIButton
---`Field Private Instance`
---@field browseRightButton Barotrauma.GUIButton
---`Field Private Instance`
---@field confirmButton Barotrauma.GUIButton
---`Field Private Instance`
---@field confirmButtonAlt Barotrauma.GUIButton
---`Field Private Instance`
---@field specsFrame Barotrauma.GUIListBox
---`Field Private Instance`
---@field pageIndicators Barotrauma.GUIImage-arr|Barotrauma.GUIImage[]
---`Field Private Instance`
---@field descriptionTextBlock Barotrauma.GUITextBlock
---`Field Private Instance`
---@field selectionIndicatorThickness System.Int32|integer
---`Field Private Instance`
---@field listBackground Barotrauma.GUIImage
---`Field Private Instance`
---@field transferItemsTickBox Barotrauma.GUITickBox
---`Field Private Instance`
---@field itemTransferInfoBlock Barotrauma.GUITextBlock
---`Field Private Instance`
---@field subsToShow System.Collections.Generic.List*1Barotrauma*SubmarineInfo|Barotrauma.SubmarineInfo[]
---`Field Private Instance`
---@field submarineDisplays Barotrauma.SubmarineDisplayContent-arr|Barotrauma.SubmarineSelection.SubmarineDisplayContent[]
---`Field Private Instance`
---@field selectedSubmarine Barotrauma.SubmarineInfo
---`Field Private Instance`
---@field purchaseAndSwitchText Barotrauma.LocalizedString
---`Field Private Instance`
---@field purchaseOnlyText Barotrauma.LocalizedString
---`Field Private Instance`
---@field deliveryText Barotrauma.LocalizedString
---`Field Private Instance`
---@field selectedSubText Barotrauma.LocalizedString
---`Field Private Instance`
---@field switchText Barotrauma.LocalizedString
---`Field Private Instance`
---@field missingPreviewText Barotrauma.LocalizedString
---`Field Private Instance`
---@field currencyName Barotrauma.LocalizedString
---`Field Private Instance`
---@field parent Barotrauma.RectTransform
---`Field Private Instance`
---@field closeAction System.Action|(fun())
---`Field Private Instance`
---@field pageIndicator Barotrauma.Sprite
---`Field Private Instance`
---@field messageBoxOptions Barotrauma.LocalizedString-arr|Barotrauma.LocalizedString[]
---`Field Private Instance`
---@field createdForResolution Microsoft.Xna.Framework.Point
---`Field Private Instance`
---@field playerBalanceElement System.Nullable*1Barotrauma*CampaignUI*PlayerBalanceElement
---`Field Private Instance`
---@field transferItemsOnSwitch System.Boolean|boolean
---`Field Public Static`
---@field ContentRefreshRequired System.Boolean|boolean
---`Field Private Static`
---@field indicatorColor Microsoft.Xna.Framework.Color
---`Field Private Static`
---@field submarinesPerPage System.Int32|integer
---`Field Public Static`
---@field DeliveryFeePerDistanceTravelled System.Int32|integer
---`Getter Private Instance`
---<br/>`Setter Private Instance`
---@field TransferItemsOnSwitch System.Boolean|boolean
---`Getter Private Instance`
---@field IsSelectedSubCurrentSub System.Boolean|boolean
_G['SubmarineSelection'] = {}

---`Method Private Instance`
_G['SubmarineSelection'].Initialize = function() end

---`Method Private Instance`
---@return System.Int32|integer
_G['SubmarineSelection'].CalculateDeliveryFee = function() end

---`Method Private Instance`
_G['SubmarineSelection'].CreateGUI = function() end

---`Method Private Instance`
_G['SubmarineSelection'].UpdatePaging = function() end

---`Method Private Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param area Microsoft.Xna.Framework.Rectangle
_G['SubmarineSelection'].DrawSubmarineIndicator = function(spriteBatch, area) end

---`Method Public Instance`
_G['SubmarineSelection'].Update = function() end

---`Method Public Instance`
---@param updateSubs System.Boolean|boolean
---@param setTransferOptionToTrue? System.Boolean|boolean
_G['SubmarineSelection'].RefreshSubmarineDisplay = function(updateSubs, setTransferOptionToTrue) end

---`Method Private Instance`
_G['SubmarineSelection'].UpdateSubmarines = function() end

---`Method Private Instance`
---@param index System.Int32|integer
---@return Barotrauma.SubmarineInfo
_G['SubmarineSelection'].GetSubToDisplay = function(index) end

---`Method Private Instance`
---@param info Barotrauma.SubmarineInfo
---@return Barotrauma.Sprite
_G['SubmarineSelection'].GetPreviewImage = function(info) end

---`Method Private Instance`
---@param info Barotrauma.SubmarineInfo
---@param display Barotrauma.SubmarineSelection.SubmarineDisplayContent
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
_G['SubmarineSelection'].SelectOwnSubmarineWithDelay = function(info, display) end

---`Method Private Instance`
---@overload fun(index:System.Int32|integer, direction:System.Int32|integer)
---@param info Barotrauma.SubmarineInfo
---@param backgroundRect Microsoft.Xna.Framework.Rectangle
_G['SubmarineSelection'].SelectSubmarine = function(info, backgroundRect) end

---`Method Private Instance`
_G['SubmarineSelection'].UpdateItemTransferInfoFrame = function() end

---`Method Private Instance`
---@param state System.Boolean|boolean
_G['SubmarineSelection'].SetConfirmButtonState = function(state) end

---`Method Public Static`
---@return Barotrauma.SubmarineInfo
_G['SubmarineSelection'].CurrentOrPendingSubmarine = function() end

---`Method Private Instance`
---@param pageChangeDirection System.Int32|integer
_G['SubmarineSelection'].ChangePage = function(pageChangeDirection) end

---`Method Private Instance`
_G['SubmarineSelection'].ShowTransferPrompt = function() end

---`Method Private Instance`
---@return System.ValueTuple*1Barotrauma*LocalizedString*1Barotrauma*LocalizedString
_G['SubmarineSelection'].GetItemTransferWarningText = function() end

---`Method Private Instance`
---@param purchaseOnly System.Boolean|boolean
_G['SubmarineSelection'].ShowBuyPrompt = function(purchaseOnly) end

---`Method Private Instance`
---@return Barotrauma.LocalizedString
_G['SubmarineSelection'].GetItemTransferText = function() end

---`Constructor Public Instance`
---@overload fun(transfer:System.Boolean|boolean, closeAction:System.Action|(fun()), parent:Barotrauma.RectTransform):Barotrauma.SubmarineSelection
---@return Barotrauma.SubmarineSelection
_G['SubmarineSelection'] = function() end

---`Constructor Public Instance`
---@overload fun(transfer:System.Boolean|boolean, closeAction:System.Action|(fun()), parent:Barotrauma.RectTransform):Barotrauma.SubmarineSelection
---@return Barotrauma.SubmarineSelection
_G['SubmarineSelection'].__new = function() end

---`Constructor Private Static`
---@overload fun(transfer:System.Boolean|boolean, closeAction:System.Action|(fun()), parent:Barotrauma.RectTransform):Barotrauma.SubmarineSelection
---@return Barotrauma.SubmarineSelection
_G['SubmarineSelection'] = function() end

---`Constructor Private Static`
---@overload fun(transfer:System.Boolean|boolean, closeAction:System.Action|(fun()), parent:Barotrauma.RectTransform):Barotrauma.SubmarineSelection
---@return Barotrauma.SubmarineSelection
_G['SubmarineSelection'].__new = function() end

