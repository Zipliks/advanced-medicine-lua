---@meta
---@class Barotrauma.ItemPrefab : Barotrauma.MapEntityPrefab
---`Field Private Instance`
---@field defaultPrice Barotrauma.PriceInfo
---`Field Private Instance`
---@field treatmentSuitability System.Collections.Immutable.ImmutableDictionary*1Barotrauma*Identifier*1System*Single|{[Barotrauma.Identifier]:System.Single|number}
---`Field Private Instance`
---@field fabricationRecipeElements System.Collections.Generic.List*1System*Xml*Linq*XElement|System.Xml.Linq.XElement[]
---`Field Private Instance`
---@field originalElement System.Xml.Linq.XElement
---`Field Private Instance`
---@field sprite Barotrauma.Sprite
---`Field Private Instance`
---@field name Barotrauma.LocalizedString
---`Field Private Instance`
---@field tags System.Collections.Immutable.ImmutableHashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field Private Instance`
---@field allowedLinks System.Collections.Immutable.ImmutableHashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field Private Instance`
---@field category Barotrauma.MapEntityCategory
---`Field Private Instance`
---@field aliases System.Collections.Immutable.ImmutableHashSet*1System*String|System.String|string[]
---`Field Private Instance`
---@field impactTolerance System.Single|number
---`Field Private Instance`
---@field maxStackSize System.Int32|integer
---`Field Public Static`
---@field Prefabs Barotrauma.PrefabCollection*1Barotrauma*ItemPrefab|(fun():Barotrauma.ItemPrefab)
---`Field Public Static`
---@field DefaultInteractDistance System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Size Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---@field DefaultPrice Barotrauma.PriceInfo
---`Getter Private Instance`
---<br/>`Setter Private Instance`
---@field StorePrices System.Collections.Immutable.ImmutableDictionary*1Barotrauma*Identifier*1Barotrauma*PriceInfo|{[Barotrauma.Identifier]:Barotrauma.PriceInfo}
---`Getter Public Instance`
---@field CanBeBought System.Boolean|boolean
---`Getter Public Instance`
---@field CanBeSold System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Triggers System.Collections.Immutable.ImmutableArray*1Microsoft*Xna*Framework*Rectangle|Microsoft.Xna.Framework.Rectangle[]
---`Getter Public Instance`
---@field IsOverride System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ConfigElement Barotrauma.ContentXElement
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field DeconstructItems System.Collections.Immutable.ImmutableArray*1Barotrauma*DeconstructItem|Barotrauma.DeconstructItem[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field FabricationRecipes System.Collections.Immutable.ImmutableDictionary*1System*UInt32*1Barotrauma*FabricationRecipe|{[System.UInt32|integer]:Barotrauma.FabricationRecipe}
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field DeconstructTime System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AllowDeconstruct System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field PreferredContainers System.Collections.Immutable.ImmutableArray*1Barotrauma*PreferredContainer|Barotrauma.PreferredContainer[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SwappableItem Barotrauma.SwappableItem
---`Getter Private Instance`
---<br/>`Setter Private Instance`
---@field LevelCommonness System.Collections.Immutable.ImmutableDictionary*1Barotrauma*Identifier*1Barotrauma*ItemPrefab*CommonnessInfo|{[Barotrauma.Identifier]:Barotrauma.ItemPrefab.CommonnessInfo}
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field LevelQuantity System.Collections.Immutable.ImmutableDictionary*1Barotrauma*Identifier*1Barotrauma*ItemPrefab*FixedQuantityResourceInfo|{[Barotrauma.Identifier]:Barotrauma.ItemPrefab.FixedQuantityResourceInfo}
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field CanSpriteFlipX System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field CanSpriteFlipY System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AllowAsExtraCargo System.Nullable*1System*Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field RandomDeconstructionOutput System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field RandomDeconstructionOutputAmount System.Int32|integer
---`Getter Public Instance Virtual`
---@field Sprite Barotrauma.Sprite
---`Getter Public Instance Virtual`
---@field OriginalName System.String|string
---`Getter Public Instance Virtual`
---@field Name Barotrauma.LocalizedString
---`Getter Public Instance Virtual`
---@field Tags System.Collections.Immutable.ImmutableHashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Getter Public Instance Virtual`
---@field AllowedLinks System.Collections.Immutable.ImmutableHashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Getter Public Instance Virtual`
---@field Category Barotrauma.MapEntityCategory
---`Getter Public Instance Virtual`
---@field Aliases System.Collections.Immutable.ImmutableHashSet*1System*String|System.String|string[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field InteractDistance System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field InteractPriority System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field InteractThroughWalls System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field HideConditionBar System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field HideConditionInTooltip System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field RequireBodyInsideTrigger System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field RequireCursorInsideTrigger System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field RequireCampaignInteract System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field FocusOnSelected System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field OffsetOnSelected System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Health System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AllowSellingWhenBroken System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Indestructible System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field DamagedByExplosions System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ExplosionDamageMultiplier System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field DamagedByProjectiles System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field DamagedByMeleeWeapons System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field DamagedByRepairTools System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field DamagedByMonsters System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field FireProof System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field WaterProof System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ImpactTolerance System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field OnDamagedThreshold System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SonarSize System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field UseInHealthInterface System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field DisableItemUsageWhenSelected System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field CargoContainerIdentifier System.String|string
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field UseContainedSpriteColor System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field UseContainedInventoryIconColor System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AddedRepairSpeedMultiplier System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AddedPickingSpeedMultiplier System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field CannotRepairFail System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field EquipConfirmationText System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AllowRotatingInEditor System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ShowContentsInTooltip System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field CanFlipX System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field CanFlipY System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field IsDangerous System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field MaxStackSize System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AllowDroppingOnSwap System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AllowDroppingOnSwapWith System.Collections.Immutable.ImmutableHashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field DontTransferBetweenSubs System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field VariantOf Barotrauma.Identifier
_G['ItemPrefab'] = {}

---`Method NonPublic Instance Virtual`
---@param element System.Xml.Linq.XElement
---@return Barotrauma.Identifier
_G['ItemPrefab'].DetermineIdentifier = function(element) end

---`Method Public Static`
---@param name System.String|string
---@return Barotrauma.Identifier
_G['ItemPrefab'].GenerateLegacyIdentifier = function(name) end

---`Method Private Instance`
---@param subElement Barotrauma.ContentXElement
---@param variantOf Barotrauma.ItemPrefab
---@return System.String|string
_G['ItemPrefab'].GetTexturePath = function(subElement, variantOf) end

---`Method Private Instance`
---@param variantOf Barotrauma.ItemPrefab
_G['ItemPrefab'].ParseConfigElement = function(variantOf) end

---`Method Public Instance`
---@param level Barotrauma.Level
---@return System.Nullable*1Barotrauma*ItemPrefab*CommonnessInfo
_G['ItemPrefab'].GetCommonnessInfo = function(level) end

---`Method Public Instance`
---@param treatmentIdentifier Barotrauma.Identifier
---@return System.Single|number
_G['ItemPrefab'].GetTreatmentSuitability = function(treatmentIdentifier) end

---`Method Public Instance`
---@param store Barotrauma.Location.StoreInfo
---@return Barotrauma.PriceInfo
_G['ItemPrefab'].GetPriceInfo = function(store) end

---`Method Public Instance`
---@overload fun(store:Barotrauma.Location.StoreInfo, priceInfo:Barotrauma.PriceInfo-ref):System.Boolean|boolean
---@param location Barotrauma.Location
---@return System.Boolean|boolean
_G['ItemPrefab'].CanBeBoughtFrom = function(location) end

---`Method Public Instance`
---@return System.Nullable*1System*Int32|integer
_G['ItemPrefab'].GetMinPrice = function() end

---`Method Public Instance`
---@param maxCost? System.Int32|integer
---@return System.Collections.Immutable.ImmutableDictionary*1Barotrauma*Identifier*1Barotrauma*PriceInfo|{[Barotrauma.Identifier]:Barotrauma.PriceInfo}
_G['ItemPrefab'].GetBuyPricesUnder = function(maxCost) end

---`Method Public Instance`
---@param minCost? System.Int32|integer
---@param sellingImportant? System.Boolean|boolean
---@return System.Collections.Immutable.ImmutableDictionary*1Barotrauma*Identifier*1Barotrauma*PriceInfo|{[Barotrauma.Identifier]:Barotrauma.PriceInfo}
_G['ItemPrefab'].GetSellPricesOver = function(minCost, sellingImportant) end

---`Method Public Static`
---@param name System.String|string
---@param identifier Barotrauma.Identifier
---@return Barotrauma.ItemPrefab
_G['ItemPrefab'].Find = function(name, identifier) end

---`Method Public Instance`
---@overload fun(item:Barotrauma.Item, targetContainer:Barotrauma.Items.Components.ItemContainer, isPreferencesDefined:System.Boolean-ref, isSecondary:System.Boolean-ref, requireConditionRequirement?:System.Boolean|boolean, checkTransferConditions?:System.Boolean|boolean):System.Boolean|boolean
---@param item Barotrauma.Item
---@param identifiersOrTags Barotrauma.Identifier-arr|Barotrauma.Identifier[]
---@param isPreferencesDefined System.Boolean-ref
---@param isSecondary System.Boolean-ref
---@return System.Boolean|boolean
_G['ItemPrefab'].IsContainerPreferred = function(item, identifiersOrTags, isPreferencesDefined, isSecondary) end

---`Method Public Static`
---@overload fun(preferences:System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier), c:Barotrauma.Items.Components.ItemContainer):System.Boolean|boolean
---@param preferences System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
---@param ids System.Collections.Generic.IEnumerable*1Barotrauma*Identifier|(fun():Barotrauma.Identifier)
---@return System.Boolean|boolean
_G['ItemPrefab'].IsContainerPreferred = function(preferences, ids) end

---`Method Private Instance`
---@param item Barotrauma.Item
---@param pc Barotrauma.PreferredContainer
---@return System.Boolean|boolean
_G['ItemPrefab'].IsItemConditionAcceptable = function(item, pc) end

---`Method Private Instance`
---@param item Barotrauma.Identifier
---@param pc Barotrauma.PreferredContainer
---@param targetContainer Barotrauma.Items.Components.ItemContainer
---@return System.Boolean|boolean
_G['ItemPrefab'].CanBeTransferred = function(item, pc, targetContainer) end

---`Method NonPublic Instance Virtual`
---@param rect Microsoft.Xna.Framework.Rectangle
_G['ItemPrefab'].CreateInstance = function(rect) end

---`Method Public Instance Virtual`
_G['ItemPrefab'].Dispose = function() end

---`Method Public Instance Virtual`
---@param parent Barotrauma.ItemPrefab
_G['ItemPrefab'].InheritFrom = function(parent) end

---`Method Public Instance Virtual`
---@return System.String|string
_G['ItemPrefab'].ToString = function() end

---`Method Public Static`
---@param itemNameOrId System.String|string
---@return Barotrauma.ItemPrefab
_G['ItemPrefab'].GetItemPrefab = function(itemNameOrId) end

---`Constructor Public Instance`
---@overload fun(element:Barotrauma.ContentXElement, file:Barotrauma.ItemFile):Barotrauma.ItemPrefab
---@return Barotrauma.ItemPrefab
_G['ItemPrefab'] = function() end

---`Constructor Public Instance`
---@overload fun(element:Barotrauma.ContentXElement, file:Barotrauma.ItemFile):Barotrauma.ItemPrefab
---@return Barotrauma.ItemPrefab
_G['ItemPrefab'].__new = function() end

---`Constructor Private Static`
---@overload fun(element:Barotrauma.ContentXElement, file:Barotrauma.ItemFile):Barotrauma.ItemPrefab
---@return Barotrauma.ItemPrefab
_G['ItemPrefab'] = function() end

---`Constructor Private Static`
---@overload fun(element:Barotrauma.ContentXElement, file:Barotrauma.ItemFile):Barotrauma.ItemPrefab
---@return Barotrauma.ItemPrefab
_G['ItemPrefab'].__new = function() end

