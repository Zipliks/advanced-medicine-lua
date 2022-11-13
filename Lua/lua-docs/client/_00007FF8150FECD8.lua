---@meta
---@class Barotrauma.NetLobbyScreen : Barotrauma.Screen
---`Field Private Instance`
---@field infoFrame Barotrauma.GUIFrame
---`Field Private Instance`
---@field modeFrame Barotrauma.GUIFrame
---`Field Private Instance`
---@field infoFrameContent Barotrauma.GUILayoutGroup
---`Field Private Instance`
---@field myCharacterFrame Barotrauma.GUIFrame
---`Field Private Instance`
---@field chatBox Barotrauma.GUIListBox
---`Field Private Instance`
---@field serverLogReverseButton Barotrauma.GUIButton
---`Field Private Instance`
---@field serverLogBox Barotrauma.GUIListBox
---`Field Private Instance`
---@field serverLogFilterTicks Barotrauma.GUIListBox
---`Field Private Instance`
---@field jobVariantTooltip Barotrauma.GUIComponent
---`Field Private Instance`
---@field submarinePreview Barotrauma.SubmarinePreview
---`Field Private Instance`
---@field chatInput Barotrauma.GUITextBox
---`Field Private Instance`
---@field serverLogFilter Barotrauma.GUITextBox
---`Field Private Instance`
---@field micIcon Barotrauma.GUIImage
---`Field Private Instance`
---@field levelDifficultyScrollBar Barotrauma.GUIScrollBar
---`Field Private Instance`
---@field traitorProbabilityButtons Barotrauma.GUIButton-arr|Barotrauma.GUIButton[]
---`Field Private Instance`
---@field traitorProbabilityText Barotrauma.GUITextBlock
---`Field Private Instance`
---@field botCountButtons Barotrauma.GUIButton-arr|Barotrauma.GUIButton[]
---`Field Private Instance`
---@field botCountText Barotrauma.GUITextBlock
---`Field Private Instance`
---@field botSpawnModeButtons Barotrauma.GUIButton-arr|Barotrauma.GUIButton[]
---`Field Private Instance`
---@field botSpawnModeText Barotrauma.GUITextBlock
---`Field Public Instance`
---@field MissionTypeFrame Barotrauma.GUIFrame
---`Field Public Instance`
---@field CampaignSetupFrame Barotrauma.GUIFrame
---`Field Public Instance`
---@field CampaignFrame Barotrauma.GUIFrame
---`Field Public Instance`
---@field ContinueCampaignButton Barotrauma.GUIButton
---`Field Public Instance`
---@field QuitCampaignButton Barotrauma.GUIButton
---`Field Private Instance`
---@field missionTypeTickBoxes Barotrauma.GUITickBox-arr|Barotrauma.GUITickBox[]
---`Field Private Instance`
---@field missionTypeList Barotrauma.GUIListBox
---`Field Private Instance`
---@field gameModeContainer Barotrauma.GUIComponent
---`Field Private Instance`
---@field spectateButton Barotrauma.GUIButton
---`Field Private Instance`
---@field roundControlsHolder Barotrauma.GUILayoutGroup
---`Field Public Instance`
---@field SettingsButton Barotrauma.GUIButton
---`Field Private Instance`
---@field spectateBox Barotrauma.GUITickBox
---`Field Private Instance`
---@field playerInfoContainer Barotrauma.GUIFrame
---`Field Private Instance`
---@field infoContainer Barotrauma.GUILayoutGroup
---`Field Private Instance`
---@field changesPendingText Barotrauma.GUIComponent
---`Field Private Instance`
---@field createPendingChangesText System.Boolean|boolean
---`Field Public Instance`
---@field PlayerFrame Barotrauma.GUIButton
---`Field Public Instance`
---@field SubVisibilityButton Barotrauma.GUIButton
---`Field Private Instance`
---@field subSearchBox Barotrauma.GUITextBox
---`Field Private Instance`
---@field subPreviewContainer Barotrauma.GUIComponent
---`Field Private Instance`
---@field autoRestartBox Barotrauma.GUITickBox
---`Field Private Instance`
---@field autoRestartText Barotrauma.GUITextBlock
---`Field Private Instance`
---@field shuttleTickBox Barotrauma.GUITickBox
---`Field Private Instance`
---@field settingsBlocker Barotrauma.GUIComponent
---`Field Private Instance`
---@field backgroundSprite Barotrauma.Sprite
---`Field Private Instance`
---@field jobPreferencesButton Barotrauma.GUIButton
---`Field Private Instance`
---@field appearanceButton Barotrauma.GUIButton
---`Field Private Instance`
---@field characterInfoFrame Barotrauma.GUIFrame
---`Field Private Instance`
---@field appearanceFrame Barotrauma.GUIFrame
---`Field Public Instance`
---@field CharacterAppearanceCustomizationMenu Barotrauma.CharacterInfo.AppearanceCustomizationMenu
---`Field Public Instance`
---@field JobSelectionFrame Barotrauma.GUIFrame
---`Field Public Instance`
---@field JobPreferenceContainer Barotrauma.GUIFrame
---`Field Public Instance`
---@field JobList Barotrauma.GUIListBox
---`Field Private Instance`
---@field autoRestartTimer System.Single|number
---`Field Private Instance`
---@field campaignCharacterInfo Barotrauma.CharacterInfo
---`Field Private Instance`
---@field clientDisabledElements System.Collections.Generic.List*1Barotrauma*GUIComponent|Barotrauma.GUIComponent[]
---`Field Private Instance`
---@field clientReadonlyElements System.Collections.Generic.List*1Barotrauma*GUITextBox|Barotrauma.GUITextBox[]
---`Field Private Instance`
---@field clientHiddenElements System.Collections.Generic.List*1Barotrauma*GUIComponent|Barotrauma.GUIComponent[]
---`Field Private Instance`
---@field showChatButton Barotrauma.GUIButton
---`Field Private Instance`
---@field showLogButton Barotrauma.GUIButton
---`Field Private Instance`
---@field publicOrPrivate Barotrauma.GUITextBlock
---`Field Public Instance`
---@field SubList Barotrauma.GUIListBox
---`Field Public Instance`
---@field ShuttleList Barotrauma.GUIDropDown
---`Field Public Instance`
---@field ModeList Barotrauma.GUIListBox
---`Field Private Instance`
---@field selectedModeIndex System.Int32|integer
---`Field Public Instance`
---@field PlayerList Barotrauma.GUIListBox
---`Field Public Instance`
---@field CampaignSetupUI Barotrauma.MultiPlayerCampaignSetupUI
---`Field Private Instance`
---@field prevPlayStyle System.Nullable*1Barotrauma*Networking*PlayStyle
---`Field Public Instance`
---@field FailedSelectedSub System.Nullable*1Barotrauma*NetLobbyScreen*FailedSubInfo
---`Field Public Instance`
---@field FailedSelectedShuttle System.Nullable*1Barotrauma*NetLobbyScreen*FailedSubInfo
---`Field Public Instance`
---@field FailedCampaignSubs System.Collections.Generic.List*1Barotrauma*NetLobbyScreen*FailedSubInfo|Barotrauma.NetLobbyScreen.FailedSubInfo[]
---`Field Public Instance`
---@field FailedOwnedSubs System.Collections.Generic.List*1Barotrauma*NetLobbyScreen*FailedSubInfo|Barotrauma.NetLobbyScreen.FailedSubInfo[]
---`Field Private Instance`
---@field visibilityMenuOrder System.Collections.Generic.List*1Barotrauma*SubmarineInfo|Barotrauma.SubmarineInfo[]
---`Field Private Instance`
---@field lastUpdateID System.UInt16|integer
---`Field Private Instance`
---@field levelSeed System.String|string
---`Field Public Static`
---@field JobInfoFrame Barotrauma.GUIButton
---`Getter Public Instance`
---@field ChatInput Barotrauma.GUITextBox
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SeedBox Barotrauma.GUITextBox
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CampaignCharacterDiscarded System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field FileTransferFrame Barotrauma.GUIComponent
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field FileTransferTitle Barotrauma.GUITextBlock
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field FileTransferProgressBar Barotrauma.GUIProgressBar
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field FileTransferProgressText Barotrauma.GUITextBlock
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ServerName Barotrauma.GUITextBox
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Favorite Barotrauma.GUITickBox
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ServerMessage Barotrauma.GUITextBox
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field LogButtons Barotrauma.GUILayoutGroup
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SelectedModeIndex System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field HighlightedModeIndex System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field CharacterNameBox Barotrauma.GUITextBox
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field TeamPreferenceListBox Barotrauma.GUIListBox
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field StartButton Barotrauma.GUIButton
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ReadyToStartBox Barotrauma.GUITickBox
---`Getter Public Instance`
---@field SelectedSub Barotrauma.SubmarineInfo
---`Getter Public Instance`
---@field SelectedShuttle Barotrauma.SubmarineInfo
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field UsingShuttle System.Boolean|boolean
---`Getter Public Instance`
---@field SelectedMode Barotrauma.GameModePreset
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MissionType Barotrauma.MissionType
---`Getter Public Instance`
---@field JobPreferences System.Collections.Generic.List*1Barotrauma*JobVariant|Barotrauma.JobVariant[]
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field LevelSeed System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field LastUpdateID System.UInt16|integer
_G['NetLobbyScreen'] = {}

---`Method Private Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param component Barotrauma.GUICustomComponent
_G['NetLobbyScreen'].DrawServerBanner = function(spriteBatch, component) end

---`Method Private Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param component Barotrauma.GUICustomComponent
---@param jobPrefab Barotrauma.JobVariant
---@param itemsPerRow System.Int32|integer
_G['NetLobbyScreen'].DrawJobVariantItems = function(spriteBatch, component, jobPrefab, itemsPerRow) end

---`Method Public Instance`
---@param message Barotrauma.Networking.ChatMessage
_G['NetLobbyScreen'].NewChatMessage = function(message) end

---`Method Private Instance`
---@param button Barotrauma.GUIButton
---@param userData System.Object
---@return System.Boolean|boolean
_G['NetLobbyScreen'].SelectJobPreferencesTab = function(button, userData) end

---`Method Private Instance`
---@param button Barotrauma.GUIButton
---@param _ System.Object
---@return System.Boolean|boolean
_G['NetLobbyScreen'].SelectAppearanceTab = function(button, _) end

---`Method Private Instance`
---@param scrollBar Barotrauma.GUIScrollBar
---@param barScroll System.Single|number
---@return System.Boolean|boolean
_G['NetLobbyScreen'].SaveHead = function(scrollBar, barScroll) end

---`Method Private Instance`
---@param save System.Boolean|boolean
---@return System.Boolean|boolean
_G['NetLobbyScreen'].StoreHead = function(save) end

---`Method Private Instance`
---@param _ Barotrauma.GUIButton
---@param obj System.Object
---@return System.Boolean|boolean
_G['NetLobbyScreen'].SwitchJob = function(_, obj) end

---`Method Private Instance`
---@param _ Barotrauma.GUIComponent
---@param __ System.Object
---@return System.Boolean|boolean
_G['NetLobbyScreen'].OpenJobSelection = function(_, __) end

---`Method Private Instance`
---@param parent Barotrauma.GUIComponent
---@param jobPrefab Barotrauma.JobPrefab
---@param selectedByPlayer System.Boolean|boolean
---@return Barotrauma.GUIImage-arr-arr|Barotrauma.GUIImage-arr|Barotrauma.GUIImage[][]
_G['NetLobbyScreen'].AddJobSpritesToGUIComponent = function(parent, jobPrefab, selectedByPlayer) end

---`Method Public Instance`
---@param modeIndex System.Int32|integer
_G['NetLobbyScreen'].SelectMode = function(modeIndex) end

---`Method Public Instance`
---@param modeIndex System.Int32|integer
_G['NetLobbyScreen'].HighlightMode = function(modeIndex) end

---`Method Private Instance`
_G['NetLobbyScreen'].RefreshMissionTypes = function() end

---`Method Private Instance`
_G['NetLobbyScreen'].RefreshGameModeContent = function() end

---`Method Public Instance`
---@param enabled System.Boolean|boolean
_G['NetLobbyScreen'].ToggleCampaignMode = function(enabled) end

---`Method Public Instance`
---@param submarine Barotrauma.SubmarineInfo
_G['NetLobbyScreen'].TryDisplayCampaignSubmarine = function(submarine) end

---`Method Private Instance`
---@param button Barotrauma.GUIButton
---@param obj System.Object
---@return System.Boolean|boolean
_G['NetLobbyScreen'].ViewJobInfo = function(button, obj) end

---`Method Private Instance`
---@param button Barotrauma.GUIButton
---@param obj System.Object
---@return System.Boolean|boolean
_G['NetLobbyScreen'].CloseJobInfo = function(button, obj) end

---`Method Private Instance`
---@param characterInfo Barotrauma.CharacterInfo
_G['NetLobbyScreen'].UpdateJobPreferences = function(characterInfo) end

---`Method Private Instance`
---@param jobPrefab Barotrauma.JobVariant
---@param variantIndex System.Int32|integer
---@param variantCount System.Int32|integer
---@param slot Barotrauma.GUIComponent
---@return Barotrauma.GUIButton
_G['NetLobbyScreen'].CreateJobVariantButton = function(jobPrefab, variantIndex, variantCount, slot) end

---`Method Public Instance`
---@param subName System.String|string
---@param md5Hash System.String|string
---@param subList Barotrauma.GUIListBox
---@return System.Boolean|boolean
_G['NetLobbyScreen'].TrySelectSub = function(subName, md5Hash, subList) end

---`Method Public Instance`
---@param serverSubmarine Barotrauma.SubmarineInfo
---@param deliveryData Barotrauma.NetLobbyScreen.SubmarineDeliveryData
---@return System.Boolean|boolean
_G['NetLobbyScreen'].CheckIfCampaignSubMatches = function(serverSubmarine, deliveryData) end

---`Method Private Instance`
---@param sub Barotrauma.SubmarineInfo
_G['NetLobbyScreen'].CreateSubPreview = function(sub) end

---`Method Private Instance`
_G['NetLobbyScreen'].RecalculateSubDescription = function() end

---`Method Private Instance`
_G['NetLobbyScreen'].CreateSubmarineVisibilityMenu = function() end

---`Method Public Instance`
_G['NetLobbyScreen'].UpdateSubVisibility = function() end

---`Method Public Instance`
_G['NetLobbyScreen'].OnRoundEnded = function() end

---`Method Public Instance`
---@param difficulty System.Single|number
_G['NetLobbyScreen'].SetLevelDifficulty = function(difficulty) end

---`Method Public Instance`
---@param dir System.Int32|integer
_G['NetLobbyScreen'].ToggleTraitorsEnabled = function(dir) end

---`Method Public Instance`
---@param botCount System.Int32|integer
_G['NetLobbyScreen'].SetBotCount = function(botCount) end

---`Method Public Instance`
---@param botSpawnMode Barotrauma.Networking.BotSpawnMode
_G['NetLobbyScreen'].SetBotSpawnMode = function(botSpawnMode) end

---`Method Public Instance`
---@param enabled Barotrauma.Networking.YesNoMaybe
_G['NetLobbyScreen'].SetTraitorsEnabled = function(enabled) end

---`Method Public Instance`
---@return System.Collections.Generic.IReadOnlyList*1Barotrauma*SubmarineInfo|Barotrauma.SubmarineInfo[]
_G['NetLobbyScreen'].GetSubList = function() end

---`Method Public Instance`
_G['NetLobbyScreen'].StopWaitingForStartRound = function() end

---`Method Public Instance`
---@param startButton Barotrauma.GUIButton
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
_G['NetLobbyScreen'].WaitForStartRound = function(startButton) end

---`Method Public Instance Virtual`
_G['NetLobbyScreen'].Deselect = function() end

---`Method Public Instance Virtual`
_G['NetLobbyScreen'].Select = function() end

---`Method Public Instance`
---@param isPublic System.Boolean|boolean
_G['NetLobbyScreen'].SetPublic = function(isPublic) end

---`Method Public Instance`
_G['NetLobbyScreen'].RefreshEnabledElements = function() end

---`Method Public Instance`
_G['NetLobbyScreen'].ShowSpectateButton = function() end

---`Method Public Instance`
---@param newCampaignCharacterInfo Barotrauma.CharacterInfo
_G['NetLobbyScreen'].SetCampaignCharacterInfo = function(newCampaignCharacterInfo) end

---`Method Private Instance`
---@overload fun(characterInfo:Barotrauma.CharacterInfo, allowEditing?:System.Boolean|boolean)
---@param characterInfo Barotrauma.CharacterInfo
---@param allowEditing System.Boolean|boolean
---@param parent Barotrauma.GUIComponent
---@param createPendingText? System.Boolean|boolean
_G['NetLobbyScreen'].UpdatePlayerFrame = function(characterInfo, allowEditing, parent, createPendingText) end

---`Method Public Instance`
---@param parent Barotrauma.GUIComponent
---@param createPendingText? System.Boolean|boolean
---@param alwaysAllowEditing? System.Boolean|boolean
_G['NetLobbyScreen'].CreatePlayerFrame = function(parent, createPendingText, alwaysAllowEditing) end

---`Method Public Instance`
---@param onYes System.Action|(fun())
_G['NetLobbyScreen'].TryDiscardCampaignCharacter = function(onYes) end

---`Method Private Instance`
_G['NetLobbyScreen'].CreateChangesPendingText = function() end

---`Method Public Static`
---@param parent Barotrauma.GUIComponent
_G['NetLobbyScreen'].CreateChangesPendingFrame = function(parent) end

---`Method Private Instance`
---@param jobPrefab Barotrauma.JobPrefab
---@param variant System.Int32|integer
---@param parentSlot Barotrauma.GUIComponent
_G['NetLobbyScreen'].CreateJobVariantTooltip = function(jobPrefab, variant, parentSlot) end

---`Method Public Instance`
---@param tickBox Barotrauma.GUITickBox
---@return System.Boolean|boolean
_G['NetLobbyScreen'].ToggleSpectate = function(tickBox) end

---`Method Public Instance`
---@param spectate System.Boolean|boolean
_G['NetLobbyScreen'].SetSpectate = function(spectate) end

---`Method Public Instance`
---@param allowSpectating System.Boolean|boolean
_G['NetLobbyScreen'].SetAllowSpectating = function(allowSpectating) end

---`Method Public Instance`
---@param enabled System.Boolean|boolean
---@param timer? System.Single|number
_G['NetLobbyScreen'].SetAutoRestart = function(enabled, timer) end

---`Method Public Instance`
---@param missionType Barotrauma.MissionType
_G['NetLobbyScreen'].SetMissionType = function(missionType) end

---`Method Public Instance`
---@param subList Barotrauma.GUIComponent
---@param submarines System.Collections.Generic.IEnumerable*1Barotrauma*SubmarineInfo|(fun():Barotrauma.SubmarineInfo)
_G['NetLobbyScreen'].UpdateSubList = function(subList, submarines) end

---`Method Private Instance`
---@param subList Barotrauma.GUIComponent
---@param sub Barotrauma.SubmarineInfo
_G['NetLobbyScreen'].AddSubmarine = function(subList, sub) end

---`Method Private Instance`
---@param parent Barotrauma.GUIComponent
---@param sub Barotrauma.SubmarineInfo
---@param subTextBlock Barotrauma.GUITextBlock
---@param subList Barotrauma.GUIComponent
_G['NetLobbyScreen'].CreateSubmarineClassText = function(parent, sub, subTextBlock, subList) end

---`Method Public Instance`
---@param component Barotrauma.GUIComponent
---@param userData System.Object
---@return System.Boolean|boolean
_G['NetLobbyScreen'].VotableClicked = function(component, userData) end

---`Method Public Instance`
---@param client Barotrauma.Networking.Client
_G['NetLobbyScreen'].AddPlayer = function(client) end

---`Method Private Instance`
---@overload fun(client:Barotrauma.Networking.Client, ...:Barotrauma.GUIComponent):System.Action*1Microsoft*Xna*Framework*Graphics*SpriteBatch*1Barotrauma*GUICustomComponent|(fun(arg1:Microsoft.Xna.Framework.Graphics.SpriteBatch, arg2:Barotrauma.GUICustomComponent))
---@param client Barotrauma.Networking.Client
---@param otherComponents Barotrauma.GUIComponent-arr|Barotrauma.GUIComponent[]
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param component Barotrauma.GUICustomComponent
_G['NetLobbyScreen'].DrawDownloadThrobber = function(client, otherComponents, spriteBatch, component) end

---`Method Public Instance`
---@param client Barotrauma.Networking.Client
_G['NetLobbyScreen'].SetPlayerNameAndJobPreference = function(client) end

---`Method Public Instance`
---@param client Barotrauma.Networking.Client
---@param muted System.Boolean|boolean
---@param mutedLocally System.Boolean|boolean
_G['NetLobbyScreen'].SetPlayerVoiceIconState = function(client, muted, mutedLocally) end

---`Method Public Instance`
---@param client Barotrauma.Networking.Client
_G['NetLobbyScreen'].SetPlayerSpeaking = function(client) end

---`Method Public Instance`
---@param client Barotrauma.Networking.Client
_G['NetLobbyScreen'].RemovePlayer = function(client) end

---`Method Public Static`
---@param area Barotrauma.GUITextBlock.ClickableArea
---@return Barotrauma.Networking.Client
_G['NetLobbyScreen'].ExtractClientFromClickableArea = function(area) end

---`Method Public Instance`
---@overload fun(component:Barotrauma.GUITextBlock, area:Barotrauma.GUITextBlock.ClickableArea)
---@param selectedClient Barotrauma.Networking.Client
---@return System.Boolean|boolean
_G['NetLobbyScreen'].SelectPlayer = function(selectedClient) end

---`Method Public Instance`
---@param component Barotrauma.GUITextBlock
---@param area Barotrauma.GUITextBlock.ClickableArea
_G['NetLobbyScreen'].ShowPlayerContextMenu = function(component, area) end

---`Method Public Static`
---@param client Barotrauma.Networking.Client
_G['NetLobbyScreen'].CreateModerationContextMenu = function(client) end

---`Method Private Instance`
---@param button Barotrauma.GUIButton
---@param userData System.Object
---@return System.Boolean|boolean
_G['NetLobbyScreen'].ClosePlayerFrame = function(button, userData) end

---`Method Public Instance`
---@param client Barotrauma.Networking.Client
_G['NetLobbyScreen'].KickPlayer = function(client) end

---`Method Public Instance`
---@param client Barotrauma.Networking.Client
_G['NetLobbyScreen'].BanPlayer = function(client) end

---`Method Public Instance Virtual`
_G['NetLobbyScreen'].AddToGUIUpdateList = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Double|number
_G['NetLobbyScreen'].Update = function(deltaTime) end

---`Method Public Instance Virtual`
---@param deltaTime System.Double|number
---@param graphics Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['NetLobbyScreen'].Draw = function(deltaTime, graphics, spriteBatch) end

---`Constructor Public Instance`
---@return Barotrauma.NetLobbyScreen
_G['NetLobbyScreen'] = function() end

---`Constructor Public Instance`
---@return Barotrauma.NetLobbyScreen
_G['NetLobbyScreen'].__new = function() end

