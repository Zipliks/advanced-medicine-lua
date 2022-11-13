---@meta
---@class Barotrauma.CampaignMode : Barotrauma.GameMode
---`Field NonPublic Instance`
---@field crewDead System.Boolean|boolean
---`Field NonPublic Instance`
---@field overlayColor Microsoft.Xna.Framework.Color
---`Field NonPublic Instance`
---@field overlayText Barotrauma.LocalizedString
---`Field NonPublic Instance`
---@field overlayTextBottom Barotrauma.LocalizedString
---`Field NonPublic Instance`
---@field overlayTextColor Microsoft.Xna.Framework.Color
---`Field NonPublic Instance`
---@field overlaySprite Barotrauma.Sprite
---`Field Private Instance`
---@field prevCampaignUIAutoOpenType Barotrauma.CampaignMode.TransitionType
---`Field NonPublic Instance`
---@field endRoundButton Barotrauma.GUIButton
---`Field Public Instance`
---@field ReadyCheckButton Barotrauma.GUIButton
---`Field NonPublic Instance`
---@field campaignUIContainer Barotrauma.GUIFrame
---`Field Public Instance`
---@field CampaignUI Barotrauma.CampaignUI
---`Field Private Instance`
---@field showCampaignUI System.Boolean|boolean
---`Field Private Instance`
---@field wasChatBoxOpen System.Boolean|boolean
---`Field Public Instance`
---@field TotalPlayTime System.Double|number
---`Field Public Instance`
---@field TotalPassedLevels System.Int32|integer
---`Field Public Instance`
---@field CargoManager Barotrauma.CargoManager
---`Field Public Instance`
---@field UpgradeManager Barotrauma.UpgradeManager
---`Field Public Instance`
---@field MedicalClinic Barotrauma.MedicalClinic
---`Field Public Instance`
---@field Factions System.Collections.Generic.List*1Barotrauma*Faction|Barotrauma.Faction[]
---`Field Public Instance`
---@field CampaignMetadata Barotrauma.CampaignMetadata
---`Field NonPublic Instance`
---@field petsElement System.Xml.Linq.XElement
---`Field Public Instance`
---@field Settings Barotrauma.CampaignSettings
---`Field Private Instance`
---@field extraMissions System.Collections.Generic.List*1Barotrauma*Mission|Barotrauma.Mission[]
---`Field Public Instance`
---@field OnMoneyChanged Barotrauma.NamedEvent*1Barotrauma*WalletChangedEvent
---`Field Public Instance`
---@field CheatsEnabled System.Boolean|boolean
---`Field NonPublic Instance`
---@field wasDocked System.Boolean|boolean
---`Field Private Instance`
---@field dialogLastSpoken System.Collections.Generic.Dictionary*1System*String*1System*Double|{[System.String|string]:System.Double|number}
---`Field Public Instance`
---@field PendingSubmarineSwitch Barotrauma.SubmarineInfo
---`Field NonPublic Instance`
---@field map Barotrauma.Map
---`Field Public Instance`
---@field Bank Barotrauma.Wallet
---`Field Public Instance`
---@field PurchasedLostShuttlesInLatestSave System.Boolean|boolean
---`Field Public Instance`
---@field PurchasedHullRepairsInLatestSave System.Boolean|boolean
---`Field Public Instance`
---@field PurchasedItemRepairsInLatestSave System.Boolean|boolean
---`Field Private Instance`
---@field BeforeLevelLoading System.Action|(fun())
---`Field Private Instance`
---@field characterOutOfBoundsTimer System.Collections.Generic.Dictionary*1Barotrauma*Character*1System*Single|{[Barotrauma.Character]:System.Single|number}
---`Field Public Static`
---@field MaxMoney System.Int32|integer
---`Field Public Static`
---@field InitialMoney System.Int32|integer
---`Field NonPublic Static`
---@field EndCinematicDuration System.Single|number
---`Field NonPublic Static`
---@field EndTransitionDuration System.Single|number
---`Field Private Static`
---@field FirstRoundEventDelay System.Single|number
---`Field Public Static`
---@field HullRepairCostPerDamage System.Single|number
---`Field Public Static`
---@field ItemRepairCostPerRepairDuration System.Single|number
---`Field Public Static`
---@field ShuttleReplaceCost System.Int32|integer
---`Field Public Static`
---@field MaxHullRepairCost System.Int32|integer
---`Field Public Static`
---@field MaxItemRepairCost System.Int32|integer
---`Getter Public Instance`
---@field EndRoundButton Barotrauma.GUIButton
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field StartRoundCancellationToken System.Threading.CancellationTokenSource
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field ForceMapUI System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ShowCampaignUI System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field Wallet Barotrauma.Wallet
---`Getter NonPublic Instance`
---<br/>`Setter NonPublic Instance`
---@field ActiveOrdersElement System.Xml.Linq.XElement
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field IsFirstRound System.Boolean|boolean
---`Getter Public Instance`
---@field DisableEvents System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TransferItemsOnSubSwitch System.Boolean|boolean
---`Getter Public Instance`
---@field Map Barotrauma.Map
---`Getter Public Instance Virtual`
---@field Missions System.Collections.Generic.IEnumerable*1Barotrauma*Mission|(fun():Barotrauma.Mission)
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field NextLevel Barotrauma.LevelData
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field PurchasedHullRepairs System.Boolean|boolean
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field PurchasedLostShuttles System.Boolean|boolean
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field PurchasedItemRepairs System.Boolean|boolean
_G['CampaignMode'] = {}

---`Method Public Instance Virtual`
_G['CampaignMode'].ShowStartMessage = function() end

---`Method Public Static`
---@param permissions Barotrauma.Networking.ClientPermissions
---@return System.Boolean|boolean
_G['CampaignMode'].AllowedToManageCampaign = function(permissions) end

---`Method Public Static`
---@return System.Boolean|boolean
_G['CampaignMode'].AllowedToManageWallets = function() end

---`Method Public Instance Virtual`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['CampaignMode'].Draw = function(spriteBatch) end

---`Method Public Instance`
---@param roundSummary Barotrauma.RoundSummary
---@param newLevel Barotrauma.LevelData
---@param mirror System.Boolean|boolean
---@param action System.Action|(fun())
---@return System.Threading.Tasks.Task
_G['CampaignMode'].SelectSummaryScreen = function(roundSummary, newLevel, mirror, action) end

---`Method Public Instance Virtual`
_G['CampaignMode'].AddToGUIUpdateList = function() end

---`Method NonPublic Instance`
---@param onConfirm System.Action|(fun())
---@param onReturnToMapScreen System.Action|(fun())
_G['CampaignMode'].TryEndRoundWithFuelCheck = function(onConfirm, onReturnToMapScreen) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
_G['CampaignMode'].Update = function(deltaTime) end

---`Method Public Static`
---@param interactionType Barotrauma.CampaignMode.InteractionType
---@return System.Boolean|boolean
_G['CampaignMode'].BlocksInteraction = function(interactionType) end

---`Method Public Instance Virtual`
---@param client? Barotrauma.Networking.Client
---@return Barotrauma.Wallet
_G['CampaignMode'].GetWallet = function(client) end

---`Method Public Instance Virtual`
---@param client Barotrauma.Networking.Client
---@param price System.Int32|integer
---@return System.Boolean|boolean
_G['CampaignMode'].TryPurchase = function(client, price) end

---`Method Public Instance Virtual`
---@param client? Barotrauma.Networking.Client
---@return System.Int32|integer
_G['CampaignMode'].GetBalance = function(client) end

---`Method Public Instance`
---@param cost System.Int32|integer
---@param client? Barotrauma.Networking.Client
---@return System.Boolean|boolean
_G['CampaignMode'].CanAfford = function(cost, client) end

---`Method Public Instance`
---@return Barotrauma.Location
_G['CampaignMode'].GetCurrentDisplayLocation = function() end

---`Method Public Instance`
---@param leavingSub Barotrauma.Submarine
---@return System.Collections.Generic.List*1Barotrauma*Submarine|Barotrauma.Submarine[]
_G['CampaignMode'].GetSubsToLeaveBehind = function(leavingSub) end

---`Method Public Instance Virtual`
_G['CampaignMode'].Start = function() end

---`Method Public Instance`
---@return System.Int32|integer
_G['CampaignMode'].GetHullRepairCost = function() end

---`Method Public Instance`
---@return System.Int32|integer
_G['CampaignMode'].GetItemRepairCost = function() end

---`Method Public Instance`
_G['CampaignMode'].InitCampaignData = function() end

---`Method Public Instance Virtual`
---@param levelData Barotrauma.LevelData
_G['CampaignMode'].AddExtraMissions = function(levelData) end

---`Method Public Instance`
_G['CampaignMode'].LoadNewLevel = function() end

---`Method NonPublic Instance Abstract Virtual`
_G['CampaignMode'].LoadInitialLevel = function() end

---`Method NonPublic Instance Abstract Virtual`
---@param transitionType Barotrauma.CampaignMode.TransitionType
---@param newLevel Barotrauma.LevelData
---@param leavingSub Barotrauma.Submarine
---@param mirror System.Boolean|boolean
---@param traitorResults? System.Collections.Generic.List*1Barotrauma*TraitorMissionResult|Barotrauma.TraitorMissionResult[]
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
_G['CampaignMode'].DoLevelTransition = function(transitionType, newLevel, leavingSub, mirror, traitorResults) end

---`Method Public Instance`
---@overload fun(nextLevel:Barotrauma.LevelData-ref, leavingSub:Barotrauma.Submarine-ref):Barotrauma.CampaignMode.TransitionType
---@return Barotrauma.CampaignMode.TransitionType
_G['CampaignMode'].GetAvailableTransition = function() end

---`Method Private Instance`
---@return Barotrauma.Submarine
_G['CampaignMode'].GetLeavingSub = function() end

---`Method Public Instance Virtual`
---@param transitionType? Barotrauma.CampaignMode.TransitionType
_G['CampaignMode'].End = function(transitionType) end

---`Method Public Instance`
_G['CampaignMode'].EndCampaign = function() end

---`Method NonPublic Instance Virtual`
_G['CampaignMode'].EndCampaignProjSpecific = function() end

---`Method Public Instance`
---@param location Barotrauma.Location
---@param characterInfo Barotrauma.CharacterInfo
---@param client? Barotrauma.Networking.Client
---@return System.Boolean|boolean
_G['CampaignMode'].TryHireCharacter = function(location, characterInfo, client) end

---`Method Private Instance`
---@param npc Barotrauma.Character
---@param interactor Barotrauma.Character
_G['CampaignMode'].NPCInteract = function(npc, interactor) end

---`Method Private Instance`
---@param npc Barotrauma.Character
---@param interactor Barotrauma.Character
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
_G['CampaignMode'].DoCharacterWait = function(npc, interactor) end

---`Method Private Instance`
---@param npc Barotrauma.Character
---@param interactor Barotrauma.Character
_G['CampaignMode'].NPCInteractProjSpecific = function(npc, interactor) end

---`Method Public Instance`
---@param character Barotrauma.Character
---@param interactionType Barotrauma.CampaignMode.InteractionType
_G['CampaignMode'].AssignNPCMenuInteraction = function(character, interactionType) end

---`Method NonPublic Instance`
---@param deltaTime System.Single|number
_G['CampaignMode'].KeepCharactersCloseToOutpost = function(deltaTime) end

---`Method Public Instance`
---@param npc Barotrauma.Character
---@param attacker Barotrauma.Character
---@param attackResult Barotrauma.AttackResult
_G['CampaignMode'].OutpostNPCAttacked = function(npc, attacker, attackResult) end

---`Method Public Instance Abstract Virtual`
---@param element System.Xml.Linq.XElement
_G['CampaignMode'].Save = function(element) end

---`Method NonPublic Instance`
---@param element System.Xml.Linq.XElement
_G['CampaignMode'].LoadStats = function(element) end

---`Method NonPublic Instance`
---@return System.Xml.Linq.XElement
_G['CampaignMode'].SaveStats = function() end

---`Method Public Instance`
_G['CampaignMode'].LogState = function() end

---`Method Public Instance Virtual`
_G['CampaignMode'].Remove = function() end

---`Method Public Instance`
---@param location Barotrauma.Location
---@return System.Int32|integer
_G['CampaignMode'].NumberOfMissionsAtLocation = function(location) end

---`Method Public Instance`
---@param currentLocation Barotrauma.Location
---@param sender Barotrauma.Networking.Client
_G['CampaignMode'].CheckTooManyMissions = function(currentLocation, sender) end

---`Method NonPublic Instance`
---@param leavingSub Barotrauma.Submarine
_G['CampaignMode'].LeaveUnconnectedSubs = function(leavingSub) end

---`Method Public Instance`
_G['CampaignMode'].SwitchSubs = function() end

---`Method NonPublic Instance`
_G['CampaignMode'].TransferItemsBetweenSubs = function() end

---`Method NonPublic Instance`
_G['CampaignMode'].RefreshOwnedSubmarines = function() end

---`Method Public Instance`
---@param parentElement? System.Xml.Linq.XElement
_G['CampaignMode'].SavePets = function(parentElement) end

---`Method Public Instance`
_G['CampaignMode'].LoadPets = function() end

---`Method Public Instance`
---@param parentElement? System.Xml.Linq.XElement
_G['CampaignMode'].SaveActiveOrders = function(parentElement) end

---`Method Public Instance`
_G['CampaignMode'].LoadActiveOrders = function() end

---`Constructor NonPublic Instance`
---@param preset Barotrauma.GameModePreset
---@param settings Barotrauma.CampaignSettings
---@return Barotrauma.CampaignMode
_G['CampaignMode'] = function(preset, settings) end

---`Constructor NonPublic Instance`
---@param preset Barotrauma.GameModePreset
---@param settings Barotrauma.CampaignSettings
---@return Barotrauma.CampaignMode
_G['CampaignMode'].__new = function(preset, settings) end

