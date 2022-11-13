---@meta
---@class Barotrauma.GameSession : System.Object
---`Field Private Instance`
---@field prevHudScale System.Single|number
---`Field Private Instance`
---@field tabMenu Barotrauma.TabMenu
---`Field Private Instance`
---@field topLeftButtonGroup Barotrauma.GUILayoutGroup
---`Field Private Instance`
---@field crewListButton Barotrauma.GUIButton
---`Field Private Instance`
---@field commandButton Barotrauma.GUIButton
---`Field Private Instance`
---@field tabMenuButton Barotrauma.GUIButton
---`Field Private Instance`
---@field talentPointNotification Barotrauma.GUIImage
---`Field Private Instance`
---@field respawnInfoFrame Barotrauma.GUIComponent
---`Field Private Instance`
---@field respawnButtonContainer Barotrauma.GUIComponent
---`Field Private Instance`
---@field respawnInfoText Barotrauma.GUITextBlock
---`Field Private Instance`
---@field respawnTickBox Barotrauma.GUITickBox
---`Field Public Instance`
---@field EventManager Barotrauma.EventManager
---`Field Public Instance`
---@field GameMode Barotrauma.GameMode
---`Field Private Instance`
---@field dummyLocations Barotrauma.Location-arr|Barotrauma.Location[]
---`Field Public Instance`
---@field CrewManager Barotrauma.CrewManager
---`Field Public Instance`
---@field RoundStartTime System.Double|number
---`Field Public Instance`
---@field TimeSpentCleaning System.Double|number
---`Field Public Instance`
---@field TimeSpentPainting System.Double|number
---`Field Private Instance`
---@field missions System.Collections.Generic.List*1Barotrauma*Mission|Barotrauma.Mission[]
---`Field Private Instance`
---@field casualties System.Collections.Generic.HashSet*1Barotrauma*Character|Barotrauma.Character[]
---`Field Public Instance`
---@field WinningTeam System.Nullable*1Barotrauma*CharacterTeamType
---`Field Public Instance`
---@field OwnedSubmarines System.Collections.Generic.List*1Barotrauma*SubmarineInfo|Barotrauma.SubmarineInfo[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field RoundSummary Barotrauma.RoundSummary
---`Getter Public Static`
---@field IsTabMenuOpen System.Boolean|boolean
---`Getter Public Static`
---@field TabMenuInstance Barotrauma.TabMenu
---`Getter Public Instance`
---@field Missions System.Collections.Generic.IEnumerable*1Barotrauma*Mission|(fun():Barotrauma.Mission)
---`Getter Public Instance`
---@field Casualties System.Collections.Generic.IEnumerable*1Barotrauma*Character|(fun():Barotrauma.Character)
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field IsRunning System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field RoundEnding System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Level Barotrauma.Level
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field LevelData Barotrauma.LevelData
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field MirrorLevel System.Boolean|boolean
---`Getter Public Instance`
---@field Map Barotrauma.Map
---`Getter Public Instance`
---@field Campaign Barotrauma.CampaignMode
---`Getter Public Instance`
---@field StartLocation Barotrauma.Location
---`Getter Public Instance`
---@field EndLocation Barotrauma.Location
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SubmarineInfo Barotrauma.SubmarineInfo
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Submarine Barotrauma.Submarine
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SavePath System.String|string
_G['GameSession'] = {}

---`Method Public Instance`
---@return System.Boolean|boolean
_G['GameSession'].ToggleTabMenu = function() end

---`Method Private Instance`
_G['GameSession'].CreateTopLeftButtons = function() end

---`Method Public Instance`
_G['GameSession'].AddToGUIUpdateList = function() end

---`Method Public Static`
---@param parent Barotrauma.GUIComponent
---@param offset? System.Boolean|boolean
---@return Barotrauma.GUIImage
_G['GameSession'].CreateTalentIconNotification = function(parent, offset) end

---`Method Public Static`
---@param indicator Barotrauma.GUIImage
_G['GameSession'].UpdateTalentNotificationIndicator = function(indicator) end

---`Method Public Instance`
_G['GameSession'].HUDScaleChanged = function() end

---`Method Public Instance`
---@param visible System.Boolean|boolean
---@param text System.String|string
---@param textColor Microsoft.Xna.Framework.Color
---@param buttonsVisible System.Boolean|boolean
---@param waitForNextRoundRespawn System.Boolean|boolean
_G['GameSession'].SetRespawnInfo = function(visible, text, textColor, buttonsVisible, waitForNextRoundRespawn) end

---`Method Public Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['GameSession'].Draw = function(spriteBatch) end

---`Method Private Instance`
---@param submarineInfo Barotrauma.SubmarineInfo
---@param ownedSubmarines? System.Collections.Generic.List*1Barotrauma*SubmarineInfo|Barotrauma.SubmarineInfo[]
_G['GameSession'].InitOwnedSubs = function(submarineInfo, ownedSubmarines) end

---`Method Private Instance`
---@param gameModePreset Barotrauma.GameModePreset
---@param seed System.String|string
---@param selectedSub Barotrauma.SubmarineInfo
---@param settings Barotrauma.CampaignSettings
---@param missionPrefabs? System.Collections.Generic.IEnumerable*1Barotrauma*MissionPrefab|(fun():Barotrauma.MissionPrefab)
---@param missionType? Barotrauma.MissionType
---@return Barotrauma.GameMode
_G['GameSession'].InstantiateGameMode = function(gameModePreset, seed, selectedSub, settings, missionPrefabs, missionType) end

---`Method Public Static`
---@param seed System.String|string
---@param forceLocationType? Barotrauma.LocationType
---@return Barotrauma.Location-arr|Barotrauma.Location[]
_G['GameSession'].CreateDummyLocations = function(seed, forceLocationType) end

---`Method Public Instance`
_G['GameSession'].LoadPreviousSave = function() end

---`Method Public Instance`
---@param newSubmarine Barotrauma.SubmarineInfo
---@param transferItems System.Boolean|boolean
---@param cost System.Int32|integer
---@param client? Barotrauma.Networking.Client
_G['GameSession'].SwitchSubmarine = function(newSubmarine, transferItems, cost, client) end

---`Method Public Instance`
---@param newSubmarine Barotrauma.SubmarineInfo
---@param client? Barotrauma.Networking.Client
_G['GameSession'].PurchaseSubmarine = function(newSubmarine, client) end

---`Method Public Instance`
---@param query Barotrauma.SubmarineInfo
---@return System.Boolean|boolean
_G['GameSession'].IsSubmarineOwned = function(query) end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['GameSession'].IsCurrentLocationRadiated = function() end

---`Method Public Instance`
---@overload fun(levelSeed:System.String|string, difficulty?:System.Nullable*1System*Single|number, levelGenerationParams?:Barotrauma.LevelGenerationParams)
---@param levelData Barotrauma.LevelData
---@param mirrorLevel? System.Boolean|boolean
---@param startOutpost? Barotrauma.SubmarineInfo
---@param endOutpost? Barotrauma.SubmarineInfo
_G['GameSession'].StartRound = function(levelData, mirrorLevel, startOutpost, endOutpost) end

---`Method Private Instance`
---@param level Barotrauma.Level
_G['GameSession'].InitializeLevel = function(level) end

---`Method Public Instance`
---@param level Barotrauma.Level
_G['GameSession'].PlaceSubAtStart = function(level) end

---`Method Public Instance`
---@param deltaTime System.Single|number
_G['GameSession'].Update = function(deltaTime) end

---`Method Public Instance`
---@param index System.Int32|integer
---@return Barotrauma.Mission
_G['GameSession'].GetMission = function(index) end

---`Method Public Instance`
---@param mission Barotrauma.Mission
---@return System.Int32|integer
_G['GameSession'].GetMissionIndex = function(mission) end

---`Method Public Instance`
---@param missionIdentifiers System.Collections.Generic.List*1Barotrauma*Identifier|Barotrauma.Identifier[]
_G['GameSession'].EnforceMissionOrder = function(missionIdentifiers) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['GameSession'].UpdateProjSpecific = function(deltaTime) end

---`Method Public Static`
---@param type Barotrauma.CharacterType
---@return System.Collections.Immutable.ImmutableHashSet*1Barotrauma*Character|Barotrauma.Character[]
_G['GameSession'].GetSessionCrewCharacters = function(type) end

---`Method Public Instance`
---@param endMessage System.String|string
---@param traitorResults? System.Collections.Generic.List*1Barotrauma*TraitorMissionResult|Barotrauma.TraitorMissionResult[]
---@param transitionType? Barotrauma.CampaignMode.TransitionType
_G['GameSession'].EndRound = function(endMessage, traitorResults, transitionType) end

---`Method Public Instance`
---@param eventId System.String|string
_G['GameSession'].LogEndRoundStats = function(eventId) end

---`Method Public Instance`
---@param character Barotrauma.Character
_G['GameSession'].KillCharacter = function(character) end

---`Method Public Instance`
---@param character Barotrauma.Character
_G['GameSession'].ReviveCharacter = function(character) end

---`Method Public Static`
---@param contentPackageNames System.Collections.Generic.IList*1System*String|System.String|string[]
---@param errorMsg Barotrauma.LocalizedString-ref
---@return System.Boolean|boolean
_G['GameSession'].IsCompatibleWithEnabledContentPackages = function(contentPackageNames, errorMsg) end

---`Method Public Instance`
---@param filePath System.String|string
_G['GameSession'].Save = function(filePath) end

---`Constructor Private Instance`
---@overload fun(submarineInfo:Barotrauma.SubmarineInfo):Barotrauma.GameSession
---@overload fun(submarineInfo:Barotrauma.SubmarineInfo, savePath:System.String|string, gameModePreset:Barotrauma.GameModePreset, settings:Barotrauma.CampaignSettings, seed?:System.String|string, missionType?:Barotrauma.MissionType):Barotrauma.GameSession
---@overload fun(submarineInfo:Barotrauma.SubmarineInfo, gameModePreset:Barotrauma.GameModePreset, seed?:System.String|string, missionPrefabs?:System.Collections.Generic.IEnumerable*1Barotrauma*MissionPrefab|(fun():Barotrauma.MissionPrefab)):Barotrauma.GameSession
---@param submarineInfo Barotrauma.SubmarineInfo
---@param ownedSubmarines System.Collections.Generic.List*1Barotrauma*SubmarineInfo|Barotrauma.SubmarineInfo[]
---@param doc System.Xml.Linq.XDocument
---@param saveFile System.String|string
---@return Barotrauma.GameSession
_G['GameSession'] = function(submarineInfo, ownedSubmarines, doc, saveFile) end

---`Constructor Private Instance`
---@overload fun(submarineInfo:Barotrauma.SubmarineInfo):Barotrauma.GameSession
---@overload fun(submarineInfo:Barotrauma.SubmarineInfo, savePath:System.String|string, gameModePreset:Barotrauma.GameModePreset, settings:Barotrauma.CampaignSettings, seed?:System.String|string, missionType?:Barotrauma.MissionType):Barotrauma.GameSession
---@overload fun(submarineInfo:Barotrauma.SubmarineInfo, gameModePreset:Barotrauma.GameModePreset, seed?:System.String|string, missionPrefabs?:System.Collections.Generic.IEnumerable*1Barotrauma*MissionPrefab|(fun():Barotrauma.MissionPrefab)):Barotrauma.GameSession
---@param submarineInfo Barotrauma.SubmarineInfo
---@param ownedSubmarines System.Collections.Generic.List*1Barotrauma*SubmarineInfo|Barotrauma.SubmarineInfo[]
---@param doc System.Xml.Linq.XDocument
---@param saveFile System.String|string
---@return Barotrauma.GameSession
_G['GameSession'].__new = function(submarineInfo, ownedSubmarines, doc, saveFile) end

---`Constructor Public Instance`
---@overload fun(submarineInfo:Barotrauma.SubmarineInfo):Barotrauma.GameSession
---@overload fun(submarineInfo:Barotrauma.SubmarineInfo, savePath:System.String|string, gameModePreset:Barotrauma.GameModePreset, settings:Barotrauma.CampaignSettings, seed?:System.String|string, missionType?:Barotrauma.MissionType):Barotrauma.GameSession
---@overload fun(submarineInfo:Barotrauma.SubmarineInfo, gameModePreset:Barotrauma.GameModePreset, seed?:System.String|string, missionPrefabs?:System.Collections.Generic.IEnumerable*1Barotrauma*MissionPrefab|(fun():Barotrauma.MissionPrefab)):Barotrauma.GameSession
---@param submarineInfo Barotrauma.SubmarineInfo
---@param ownedSubmarines System.Collections.Generic.List*1Barotrauma*SubmarineInfo|Barotrauma.SubmarineInfo[]
---@param doc System.Xml.Linq.XDocument
---@param saveFile System.String|string
---@return Barotrauma.GameSession
_G['GameSession'] = function(submarineInfo, ownedSubmarines, doc, saveFile) end

---`Constructor Public Instance`
---@overload fun(submarineInfo:Barotrauma.SubmarineInfo):Barotrauma.GameSession
---@overload fun(submarineInfo:Barotrauma.SubmarineInfo, savePath:System.String|string, gameModePreset:Barotrauma.GameModePreset, settings:Barotrauma.CampaignSettings, seed?:System.String|string, missionType?:Barotrauma.MissionType):Barotrauma.GameSession
---@overload fun(submarineInfo:Barotrauma.SubmarineInfo, gameModePreset:Barotrauma.GameModePreset, seed?:System.String|string, missionPrefabs?:System.Collections.Generic.IEnumerable*1Barotrauma*MissionPrefab|(fun():Barotrauma.MissionPrefab)):Barotrauma.GameSession
---@param submarineInfo Barotrauma.SubmarineInfo
---@param ownedSubmarines System.Collections.Generic.List*1Barotrauma*SubmarineInfo|Barotrauma.SubmarineInfo[]
---@param doc System.Xml.Linq.XDocument
---@param saveFile System.String|string
---@return Barotrauma.GameSession
_G['GameSession'].__new = function(submarineInfo, ownedSubmarines, doc, saveFile) end

