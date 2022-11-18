---@meta
---@class Barotrauma.MultiPlayerCampaign : Barotrauma.CampaignMode
---`Field Private Instance`
---@field characterData System.Collections.Generic.List*1Barotrauma*CharacterCampaignData|Barotrauma.CharacterCampaignData[]
---`Field Private Instance`
---@field walletsToCheck System.Collections.Generic.Dictionary*1System*UInt16*1Barotrauma*Wallet|{[System.UInt16|integer]:Barotrauma.Wallet}
---`Field Private Instance`
---@field transactions System.Collections.Generic.HashSet*1Barotrauma*NetWalletTransaction|Barotrauma.NetWalletTransaction[]
---`Field Private Instance`
---@field clientCheckTimer System.Single|number
---`Field Private Instance`
---@field forceMapUI System.Boolean|boolean
---`Field Private Instance`
---@field savedExperiencePoints System.Collections.Generic.List*1Barotrauma*MultiPlayerCampaign*SavedExperiencePoints|Barotrauma.MultiPlayerCampaign.SavedExperiencePoints[]
---`Field Private Instance`
---@field purchasedHullRepairs System.Boolean|boolean
---`Field Private Instance`
---@field purchasedLostShuttles System.Boolean|boolean
---`Field Private Instance`
---@field purchasedItemRepairs System.Boolean|boolean
---`Field Private Instance`
---@field discardedCharacters System.Collections.Generic.List*1Barotrauma*CharacterCampaignData|Barotrauma.CharacterCampaignData[]
---`Field Private Instance`
---@field lastUpdateID System.Collections.Generic.Dictionary*1Barotrauma*MultiPlayerCampaign*NetFlags*1System*UInt16|{[Barotrauma.MultiPlayerCampaign.NetFlags]:System.UInt16|integer}
---`Field Private Instance`
---@field lastSaveID System.UInt16|integer
---`Field Private Static`
---@field currentCampaignID System.Byte|integer
---`Field Private Static`
---@field clientCheckInterval System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ForceMapUI System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field GameOver System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field Paused System.Boolean|boolean
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field PurchasedHullRepairs System.Boolean|boolean
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field PurchasedLostShuttles System.Boolean|boolean
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field PurchasedItemRepairs System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field LastSaveID System.UInt16|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CampaignID System.Byte|integer
_G['MultiPlayerCampaign'] = {}

---`Method Public Instance Virtual`
---@param client? Barotrauma.Networking.Client
---@return Barotrauma.Wallet
_G['MultiPlayerCampaign'].GetWallet = function(client) end

---`Method Public Static`
---@param savePath System.String|string
---@param subPath System.String|string
---@param seed System.String|string
---@param startingSettings Barotrauma.CampaignSettings
_G['MultiPlayerCampaign'].StartNewCampaign = function(savePath, subPath, seed, startingSettings) end

---`Method Public Static`
---@param selectedSave System.String|string
_G['MultiPlayerCampaign'].LoadCampaign = function(selectedSave) end

---`Method NonPublic Instance Virtual`
_G['MultiPlayerCampaign'].LoadInitialLevel = function() end

---`Method Public Static`
_G['MultiPlayerCampaign'].StartCampaignSetup = function() end

---`Method Public Instance Virtual`
_G['MultiPlayerCampaign'].Start = function() end

---`Method Private Static`
---@param client Barotrauma.Networking.Client
---@return System.Boolean|boolean
_G['MultiPlayerCampaign'].IsOwner = function(client) end

---`Method Public Instance`
---@param client Barotrauma.Networking.Client
_G['MultiPlayerCampaign'].SaveExperiencePoints = function(client) end

---`Method Public Instance`
---@param client Barotrauma.Networking.Client
---@return System.Int32|integer
_G['MultiPlayerCampaign'].GetSavedExperiencePoints = function(client) end

---`Method Public Instance`
---@param client Barotrauma.Networking.Client
_G['MultiPlayerCampaign'].ClearSavedExperiencePoints = function(client) end

---`Method Public Instance`
_G['MultiPlayerCampaign'].SavePlayers = function() end

---`Method Public Instance`
_G['MultiPlayerCampaign'].MoveDiscardedCharacterBalancesToBank = function() end

---`Method NonPublic Instance Virtual`
---@param transitionType Barotrauma.CampaignMode.TransitionType
---@param newLevel Barotrauma.LevelData
---@param leavingSub Barotrauma.Submarine
---@param mirror System.Boolean|boolean
---@param traitorResults System.Collections.Generic.List*1Barotrauma*TraitorMissionResult|Barotrauma.TraitorMissionResult[]
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
_G['MultiPlayerCampaign'].DoLevelTransition = function(transitionType, newLevel, leavingSub, mirror, traitorResults) end

---`Method Public Instance`
---@param info Barotrauma.SubmarineInfo
---@param client Barotrauma.Networking.Client
---@return System.Boolean|boolean
_G['MultiPlayerCampaign'].CanPurchaseSub = function(info, client) end

---`Method Public Instance`
---@param client Barotrauma.Networking.Client
_G['MultiPlayerCampaign'].DiscardClientCharacterData = function(client) end

---`Method Public Instance`
---@param client Barotrauma.Networking.Client
---@return Barotrauma.CharacterCampaignData
_G['MultiPlayerCampaign'].GetClientCharacterData = function(client) end

---`Method Public Instance`
---@param client Barotrauma.Networking.Client
---@return Barotrauma.CharacterCampaignData
_G['MultiPlayerCampaign'].SetClientCharacterData = function(client) end

---`Method Public Instance`
---@param connectedClients System.Collections.Generic.IEnumerable*1Barotrauma*Networking*Client|(fun():Barotrauma.Networking.Client)
_G['MultiPlayerCampaign'].AssignClientCharacterInfos = function(connectedClients) end

---`Method Public Instance`
---@param connectedClients System.Collections.Generic.IEnumerable*1Barotrauma*Networking*Client|(fun():Barotrauma.Networking.Client)
---@return System.Collections.Generic.Dictionary*1Barotrauma*Networking*Client*1Barotrauma*Job|{[Barotrauma.Networking.Client]:Barotrauma.Job}
_G['MultiPlayerCampaign'].GetAssignedJobs = function(connectedClients) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
_G['MultiPlayerCampaign'].Update = function(deltaTime) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['MultiPlayerCampaign'].UpdateClientsToCheck = function(deltaTime) end

---`Method Private Instance`
_G['MultiPlayerCampaign'].UpdateWallets = function() end

---`Method Public Instance Virtual`
---@param transitionType? Barotrauma.CampaignMode.TransitionType
_G['MultiPlayerCampaign'].End = function(transitionType) end

---`Method Private Instance`
---@param c Barotrauma.Networking.Client
---@param flag Barotrauma.MultiPlayerCampaign.NetFlags
---@return System.Boolean|boolean
_G['MultiPlayerCampaign'].IsFlagRequired = function(c, flag) end

---`Method Public Instance`
---@param msg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
_G['MultiPlayerCampaign'].ServerWrite = function(msg, c) end

---`Method Public Instance`
---@param msg Barotrauma.Networking.IReadMessage
---@param sender Barotrauma.Networking.Client
_G['MultiPlayerCampaign'].ServerRead = function(msg, sender) end

---`Method Public Instance`
---@param msg Barotrauma.Networking.IReadMessage
---@param sender Barotrauma.Networking.Client
_G['MultiPlayerCampaign'].ServerReadMoney = function(msg, sender) end

---`Method Public Instance`
---@param msg Barotrauma.Networking.IReadMessage
---@param sender Barotrauma.Networking.Client
_G['MultiPlayerCampaign'].ServerReadRewardDistribution = function(msg, sender) end

---`Method Public Instance`
---@param msg Barotrauma.Networking.IReadMessage
---@param sender Barotrauma.Networking.Client
_G['MultiPlayerCampaign'].ServerReadCrew = function(msg, sender) end

---`Method Public Instance`
---@param hiredCharacters System.Collections.Generic.List*1Barotrauma*CharacterInfo|Barotrauma.CharacterInfo[]
---@param renamedCrewMember System.ValueTuple*1System*Int32*1System*String
---@param firedCharacter Barotrauma.CharacterInfo
_G['MultiPlayerCampaign'].SendCrewState = function(hiredCharacters, renamedCrewMember, firedCharacter) end

---`Method Public Instance Virtual`
---@param client Barotrauma.Networking.Client
---@param price System.Int32|integer
---@return System.Boolean|boolean
_G['MultiPlayerCampaign'].TryPurchase = function(client, price) end

---`Method Public Instance Virtual`
---@param client? Barotrauma.Networking.Client
---@return System.Int32|integer
_G['MultiPlayerCampaign'].GetBalance = function(client) end

---`Method Public Instance Virtual`
---@param element System.Xml.Linq.XElement
_G['MultiPlayerCampaign'].Save = function(element) end

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

