---@meta
---@class Barotrauma.PriceInfo : System.Object
---`Field Public Static`
---@field DefaultAmount System.Int32|integer
---`Getter Public Instance`
---@field Price System.Int32|integer
---`Getter Public Instance`
---@field CanBeBought System.Boolean|boolean
---`Getter Public Instance`
---@field MinAvailableAmount System.Int32|integer
---`Getter Public Instance`
---@field MaxAvailableAmount System.Int32|integer
---`Getter Public Instance`
---@field CanBeSpecial System.Boolean|boolean
---`Getter Public Instance`
---@field MinLevelDifficulty System.Int32|integer
---`Getter Public Instance`
---@field BuyingPriceMultiplier System.Single|number
---`Getter Public Instance`
---@field DisplayNonEmpty System.Boolean|boolean
---`Getter Public Instance`
---@field StoreIdentifier Barotrauma.Identifier
_G['PriceInfo'] = {}

---`Method Public Static`
---@param element System.Xml.Linq.XElement
---@param defaultPrice Barotrauma.PriceInfo-ref
---@return System.Collections.Generic.List*1Barotrauma*PriceInfo|Barotrauma.PriceInfo[]
_G['PriceInfo'].CreatePriceInfos = function(element, defaultPrice) end

---`Method Private Static`
---@param element System.Xml.Linq.XElement
---@param defaultValue? System.Int32|integer
---@return System.Int32|integer
_G['PriceInfo'].GetMinAmount = function(element, defaultValue) end

---`Method Private Static`
---@param element System.Xml.Linq.XElement
---@param defaultValue? System.Int32|integer
---@return System.Int32|integer
_G['PriceInfo'].GetMaxAmount = function(element, defaultValue) end

---`Constructor Public Instance`
---@overload fun(element:System.Xml.Linq.XElement):Barotrauma.PriceInfo
---@param price System.Int32|integer
---@param canBeBought System.Boolean|boolean
---@param minAmount? System.Int32|integer
---@param maxAmount? System.Int32|integer
---@param canBeSpecial? System.Boolean|boolean
---@param minLevelDifficulty? System.Int32|integer
---@param buyingPriceMultiplier? System.Single|number
---@param displayNonEmpty? System.Boolean|boolean
---@param storeIdentifier? System.String|string
---@return Barotrauma.PriceInfo
_G['PriceInfo'] = function(price, canBeBought, minAmount, maxAmount, canBeSpecial, minLevelDifficulty, buyingPriceMultiplier, displayNonEmpty, storeIdentifier) end

---`Constructor Public Instance`
---@overload fun(element:System.Xml.Linq.XElement):Barotrauma.PriceInfo
---@param price System.Int32|integer
---@param canBeBought System.Boolean|boolean
---@param minAmount? System.Int32|integer
---@param maxAmount? System.Int32|integer
---@param canBeSpecial? System.Boolean|boolean
---@param minLevelDifficulty? System.Int32|integer
---@param buyingPriceMultiplier? System.Single|number
---@param displayNonEmpty? System.Boolean|boolean
---@param storeIdentifier? System.String|string
---@return Barotrauma.PriceInfo
_G['PriceInfo'].__new = function(price, canBeBought, minAmount, maxAmount, canBeSpecial, minLevelDifficulty, buyingPriceMultiplier, displayNonEmpty, storeIdentifier) end

