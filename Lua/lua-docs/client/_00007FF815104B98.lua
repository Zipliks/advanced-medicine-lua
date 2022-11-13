---@meta
---@class Barotrauma.MultiPlayerCampaign : Barotrauma.CampaignMode
---`Field Public Instance`
---@field SuppressStateSending System.Boolean|boolean
---`Field Private Instance`
---@field pendingSaveID System.UInt16|integer
---`Field Private Instance`
---@field lastUpdateID System.Collections.Generic.Dictionary*1Barotrauma*MultiPlayerCampaign*NetFlags*1System*UInt16|{[Barotrauma.MultiPlayerCampaign.NetFlags]:System.UInt16|integer}
---`Field Private Instance`
---@field lastSaveID System.UInt16|integer
---`Field Private Static`
---@field currentCampaignID System.Byte|integer
---`Getter Public Instance Virtual`
---@field Paused System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field PendingSaveID System.UInt16|integer
---`Getter Public Instance`
---@field PersonalWallet Barotrauma.Wallet
---`Getter Public Instance Virtual`
---@field Wallet Barotrauma.Wallet
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field LastSaveID System.UInt16|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CampaignID System.Byte|integer
_G['MultiPlayerCampaign'] = {}

---`Method Public Instance Virtual`
---@param client? Barotrauma.Networking.Client
---@return System.Int32|integer
_G['MultiPlayerCampaign'].GetBalance = function(client) end

---`Method Public Instance Virtual`
---@param client? Barotrauma.Networking.Client
---@return Barotrauma.Wallet
_G['MultiPlayerCampaign'].GetWallet = function(client) end

---`Method Public Static`
---@param saveFiles System.Collections.Generic.List*1Barotrauma*CampaignMode*SaveInfo|Barotrauma.CampaignMode.SaveInfo[]
_G['MultiPlayerCampaign'].StartCampaignSetup = function(saveFiles) end

---`Method Public Instance Virtual`
_G['MultiPlayerCampaign'].HUDScaleChanged = function() end

---`Method Private Instance`
_G['MultiPlayerCampaign'].CreateButtons = function() end

---`Method Private Instance`
_G['MultiPlayerCampaign'].InitCampaignUI = function() end

---`Method Public Instance Virtual`
_G['MultiPlayerCampaign'].Start = function() end

---`Method NonPublic Instance Virtual`
_G['MultiPlayerCampaign'].LoadInitialLevel = function() end

---`Method Private Instance`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
_G['MultiPlayerCampaign'].DoInitialCameraTransition = function() end

---`Method NonPublic Instance Virtual`
---@param transitionType Barotrauma.CampaignMode.TransitionType
---@param newLevel Barotrauma.LevelData
---@param leavingSub Barotrauma.Submarine
---@param mirror System.Boolean|boolean
---@param traitorResults? System.Collections.Generic.List*1Barotrauma*TraitorMissionResult|Barotrauma.TraitorMissionResult[]
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
_G['MultiPlayerCampaign'].DoLevelTransition = function(transitionType, newLevel, leavingSub, mirror, traitorResults) end

---`Method Private Instance`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
_G['MultiPlayerCampaign'].DoLevelTransition = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
_G['MultiPlayerCampaign'].Update = function(deltaTime) end

---`Method Public Instance Virtual`
---@param transitionType? Barotrauma.CampaignMode.TransitionType
_G['MultiPlayerCampaign'].End = function(transitionType) end

---`Method NonPublic Instance Virtual`
_G['MultiPlayerCampaign'].EndCampaignProjSpecific = function() end

---`Method Private Instance`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
_G['MultiPlayerCampaign'].DoEndCampaignCameraTransition = function() end

---`Method Public Instance`
---@param msg Barotrauma.Networking.IWriteMessage
_G['MultiPlayerCampaign'].ClientWrite = function(msg) end

---`Method Public Static`
---@param msg Barotrauma.Networking.IReadMessage
_G['MultiPlayerCampaign'].ClientRead = function(msg) end

---`Method Public Instance`
---@param msg Barotrauma.Networking.IReadMessage
_G['MultiPlayerCampaign'].ClientReadCrew = function(msg) end

---`Method Public Instance`
---@param inc Barotrauma.Networking.IReadMessage
_G['MultiPlayerCampaign'].ClientReadMoney = function(inc) end

---`Method Public Instance Virtual`
---@param client Barotrauma.Networking.Client
---@param price System.Int32|integer
---@return System.Boolean|boolean
_G['MultiPlayerCampaign'].TryPurchase = function(client, price) end

---`Method Public Instance Virtual`
---@param element System.Xml.Linq.XElement
_G['MultiPlayerCampaign'].Save = function(element) end

---`Method Public Instance`
---@param filePath System.String|string
_G['MultiPlayerCampaign'].LoadState = function(filePath) end

---`Method Public Instance`
---@param flag Barotrauma.MultiPlayerCampaign.NetFlags
---@return System.UInt16|integer
_G['MultiPlayerCampaign'].GetLastUpdateIdForFlag = function(flag) end

---`Method Public Instance`
---@param flag Barotrauma.MultiPlayerCampaign.NetFlags
---@param id System.UInt16|integer
_G['MultiPlayerCampaign'].SetLastUpdateIdForFlag = function(flag, id) end

---`Method Public Instance`
---@param flag Barotrauma.MultiPlayerCampaign.NetFlags
_G['MultiPlayerCampaign'].IncrementLastUpdateIdForFlag = function(flag) end

---`Method Public Instance`
_G['MultiPlayerCampaign'].IncrementAllLastUpdateIds = function() end

---`Method Private Instance`
---@param flag Barotrauma.MultiPlayerCampaign.NetFlags
---@return System.Boolean|boolean
_G['MultiPlayerCampaign'].ValidateFlag = function(flag) end

---`Method Public Static`
---@param mapSeed System.String|string
---@param settings Barotrauma.CampaignSettings
---@return Barotrauma.MultiPlayerCampaign
_G['MultiPlayerCampaign'].StartNew = function(mapSeed, settings) end

---`Method Public Static`
---@param element System.Xml.Linq.XElement
---@return Barotrauma.MultiPlayerCampaign
_G['MultiPlayerCampaign'].LoadNew = function(element) end

---`Method Private Instance`
_G['MultiPlayerCampaign'].InitProjSpecific = function() end

---`Method Public Static`
---@param savePath System.String|string
---@return System.String|string
_G['MultiPlayerCampaign'].GetCharacterDataSavePath = function(savePath) end

---`Method Public Instance`
---@return System.String|string
_G['MultiPlayerCampaign'].GetCharacterDataSavePath = function() end

---`Method Private Instance`
---@param element System.Xml.Linq.XElement
_G['MultiPlayerCampaign'].Load = function(element) end

---`Method Public Static`
---@return System.Collections.Generic.List*1Barotrauma*SubmarineInfo|Barotrauma.SubmarineInfo[]
_G['MultiPlayerCampaign'].GetCampaignSubs = function() end

---`Method Private Static`
---@overload fun(msg:Barotrauma.Networking.IWriteMessage, purchasedItems:System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1System*Collections*Generic*List*2Barotrauma*PurchasedItem|{[Barotrauma.Identifier]:System.Collections.Generic.List*1Barotrauma*PurchasedItem|Barotrauma.PurchasedItem[]})
---@param msg Barotrauma.Networking.IWriteMessage
---@param soldItems System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1System*Collections*Generic*List*2Barotrauma*SoldItem|{[Barotrauma.Identifier]:System.Collections.Generic.List*1Barotrauma*SoldItem|Barotrauma.SoldItem[]}
_G['MultiPlayerCampaign'].WriteItems = function(msg, soldItems) end

---`Method Private Static`
---@param msg Barotrauma.Networking.IReadMessage
---@param sender Barotrauma.Networking.Client
---@return System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1System*Collections*Generic*List*2Barotrauma*PurchasedItem|{[Barotrauma.Identifier]:System.Collections.Generic.List*1Barotrauma*PurchasedItem|Barotrauma.PurchasedItem[]}
_G['MultiPlayerCampaign'].ReadPurchasedItems = function(msg, sender) end

---`Method Private Static`
---@param msg Barotrauma.Networking.IReadMessage
---@return System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1System*Collections*Generic*List*2Barotrauma*SoldItem|{[Barotrauma.Identifier]:System.Collections.Generic.List*1Barotrauma*SoldItem|Barotrauma.SoldItem[]}
_G['MultiPlayerCampaign'].ReadSoldItems = function(msg) end

---`Constructor Private Instance`
---@param settings Barotrauma.CampaignSettings
---@return Barotrauma.MultiPlayerCampaign
_G['MultiPlayerCampaign'] = function(settings) end

---`Constructor Private Instance`
---@param settings Barotrauma.CampaignSettings
---@return Barotrauma.MultiPlayerCampaign
_G['MultiPlayerCampaign'].__new = function(settings) end

