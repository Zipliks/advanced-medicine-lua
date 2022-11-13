---@meta
---@class Barotrauma.TabMenu : System.Object
---`Field Private Instance`
---@field infoFrame Barotrauma.GUIFrame
---`Field Private Instance`
---@field contentFrame Barotrauma.GUIFrame
---`Field Private Instance`
---@field tabButtons System.Collections.Generic.List*1Barotrauma*GUIButton|Barotrauma.GUIButton[]
---`Field Private Instance`
---@field infoFrameHolder Barotrauma.GUIFrame
---`Field Private Instance`
---@field linkedGUIList System.Collections.Generic.List*1Barotrauma*TabMenu*LinkedGUI|Barotrauma.TabMenu.LinkedGUI[]
---`Field Private Instance`
---@field logList Barotrauma.GUIListBox
---`Field Private Instance`
---@field crewListArray Barotrauma.GUIListBox-arr|Barotrauma.GUIListBox[]
---`Field Private Instance`
---@field sizeMultiplier System.Single|number
---`Field Private Instance`
---@field crew System.Collections.Generic.IEnumerable*1Barotrauma*Character|(fun():Barotrauma.Character)
---`Field Private Instance`
---@field teamIDs System.Collections.Generic.List*1Barotrauma*CharacterTeamType|Barotrauma.CharacterTeamType[]
---`Field Private Instance`
---@field pendingChangesFrame Barotrauma.GUIFrame
---`Field Private Instance`
---@field isTransferMenuOpen System.Boolean|boolean
---`Field Private Instance`
---@field isSending System.Boolean|boolean
---`Field Private Instance`
---@field transferMenu Barotrauma.GUIComponent
---`Field Private Instance`
---@field transferMenuButton Barotrauma.GUIButton
---`Field Private Instance`
---@field transferMenuOpenState System.Single|number
---`Field Private Instance`
---@field transferMenuStateCompleted System.Boolean|boolean
---`Field Private Instance`
---@field registeredEvents System.Collections.Generic.HashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field Private Instance`
---@field jobColumnWidth System.Int32|integer
---`Field Private Instance`
---@field characterColumnWidth System.Int32|integer
---`Field Private Instance`
---@field pingColumnWidth System.Int32|integer
---`Field Private Instance`
---@field walletColumnWidth System.Int32|integer
---`Field Private Instance`
---@field unselectedColor Microsoft.Xna.Framework.Color
---`Field Private Instance`
---@field unselectableColor Microsoft.Xna.Framework.Color
---`Field Private Instance`
---@field pressedColor Microsoft.Xna.Framework.Color
---`Field Private Instance`
---@field talentButtons System.Collections.Generic.List*1System*ValueTuple*2Barotrauma*GUIButton*2Barotrauma*GUIComponent|System.ValueTuple*1Barotrauma*GUIButton*1Barotrauma*GUIComponent[]
---`Field Private Instance`
---@field talentCornerIcons System.Collections.Generic.List*1System*ValueTuple*2Barotrauma*Identifier*2System*Int32*2Barotrauma*GUIImage*2Barotrauma*GUIFrame*2Barotrauma*GUIFrame|System.ValueTuple*1Barotrauma*Identifier*1System*Int32*1Barotrauma*GUIImage*1Barotrauma*GUIFrame*1Barotrauma*GUIFrame[]
---`Field Private Instance`
---@field selectedTalents System.Collections.Generic.List*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field Private Instance`
---@field experienceText Barotrauma.GUITextBlock
---`Field Private Instance`
---@field experienceBar Barotrauma.GUIProgressBar
---`Field Private Instance`
---@field talentPointText Barotrauma.GUITextBlock
---`Field Private Instance`
---@field skillListBox Barotrauma.GUIListBox
---`Field Private Instance`
---@field talentApplyButton Barotrauma.GUIButton
---`Field Private Instance`
---@field talentResetButton Barotrauma.GUIButton
---`Field Private Instance`
---@field talentPointNotification Barotrauma.GUIImage
---`Field Private Instance`
---@field talentStageStyles System.Collections.Immutable.ImmutableDictionary*1Barotrauma*TalentTree*TalentTreeStageState*1Barotrauma*GUIComponentStyle|{[Barotrauma.TalentTree.TalentTreeStageState]:Barotrauma.GUIComponentStyle}
---`Field Private Instance`
---@field talentStageBackgroundColors System.Collections.Immutable.ImmutableDictionary*1Barotrauma*TalentTree*TalentTreeStageState*1Microsoft*Xna*Framework*Color|{[Barotrauma.TalentTree.TalentTreeStageState]:Microsoft.Xna.Framework.Color}
---`Field Public Static`
---@field PendingChanges System.Boolean|boolean
---`Field Private Static`
---@field initialized System.Boolean|boolean
---`Field Private Static`
---@field spectateIcon Barotrauma.UISprite
---`Field Private Static`
---@field disconnectedIcon Barotrauma.UISprite
---`Field Private Static`
---@field ownerIcon Barotrauma.Sprite
---`Field Private Static`
---@field moderatorIcon Barotrauma.Sprite
---`Field Public Static`
---@field OwnCharacterBGColor Microsoft.Xna.Framework.Color
---`Field Private Static`
---@field storedMessages System.Collections.Generic.List*1System*ValueTuple*2System*String*2Barotrauma*Networking*PlayerConnectionChangeType|System.ValueTuple*1System*String*1Barotrauma*Networking*PlayerConnectionChangeType[]
---`Field Private Static`
---@field inLobbyString System.String|string
---`Field Private Static`
---@field jobColumnWidthPercentage System.Single|number
---`Field Private Static`
---@field characterColumnWidthPercentage System.Single|number
---`Field Private Static`
---@field pingColumnWidthPercentage System.Single|number
---`Field Private Static`
---@field walletColumnWidthPercentage System.Single|number
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field SelectedTab Barotrauma.TabMenu.InfoFrameTab
_G['TabMenu'] = {}

---`Method Public Instance`
_G['TabMenu'].Initialize = function() end

---`Method Public Instance`
---@param deltaTime System.Single|number
_G['TabMenu'].Update = function(deltaTime) end

---`Method Public Instance`
_G['TabMenu'].AddToGUIUpdateList = function() end

---`Method Public Static`
_G['TabMenu'].OnRoundEnded = function() end

---`Method Private Instance`
---@param selectedTab Barotrauma.TabMenu.InfoFrameTab
_G['TabMenu'].CreateInfoFrame = function(selectedTab) end

---`Method Public Instance`
---@param selectedTab Barotrauma.TabMenu.InfoFrameTab
_G['TabMenu'].SelectInfoFrameTab = function(selectedTab) end

---`Method Private Instance`
---@param crewFrame Barotrauma.GUIFrame
_G['TabMenu'].CreateCrewListFrame = function(crewFrame) end

---`Method Private Instance`
---@param headerFrame Barotrauma.GUILayoutGroup
_G['TabMenu'].CreateSinglePlayerListContentHolder = function(headerFrame) end

---`Method Private Instance`
---@param refresh System.Boolean|boolean
_G['TabMenu'].CreateSinglePlayerList = function(refresh) end

---`Method Private Instance`
---@param character Barotrauma.Character
---@param i System.Int32|integer
_G['TabMenu'].CreateSinglePlayerCharacterElement = function(character, i) end

---`Method Private Instance`
---@param headerFrame Barotrauma.GUILayoutGroup
_G['TabMenu'].CreateMultiPlayerListContentHolder = function(headerFrame) end

---`Method Private Instance`
---@param refresh System.Boolean|boolean
_G['TabMenu'].CreateMultiPlayerList = function(refresh) end

---`Method Private Instance`
---@param character Barotrauma.Character
---@param client Barotrauma.Networking.Client
---@param i System.Int32|integer
_G['TabMenu'].CreateMultiPlayerCharacterElement = function(character, client, i) end

---`Method Private Instance`
---@param client Barotrauma.Networking.Client
_G['TabMenu'].CreateMultiPlayerClientElement = function(client) end

---`Method Private Instance`
---@param client Barotrauma.Networking.Client
---@return System.Int32|integer
_G['TabMenu'].GetTeamIndex = function(client) end

---`Method Private Instance`
---@param character Barotrauma.Character
---@param paddedFrame Barotrauma.GUILayoutGroup
_G['TabMenu'].CreateWalletCrewFrame = function(character, paddedFrame) end

---`Method Private Instance`
---@param client Barotrauma.Networking.Client
---@param paddedFrame Barotrauma.GUILayoutGroup
---@param permissionIcon Barotrauma.GUIImage-ref
_G['TabMenu'].CreateNameWithPermissionIcon = function(client, paddedFrame, permissionIcon) end

---`Method Private Instance`
---@param client Barotrauma.Networking.Client
---@return Barotrauma.Sprite
_G['TabMenu'].GetPermissionIcon = function(client) end

---`Method Private Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param area Microsoft.Xna.Framework.Rectangle
---@param client Barotrauma.Networking.Client
_G['TabMenu'].DrawNotInGameIcon = function(spriteBatch, area, client) end

---`Method Private Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param area Microsoft.Xna.Framework.Rectangle
_G['TabMenu'].DrawDisconnectedIcon = function(spriteBatch, area) end

---`Method Private Instance`
---@param userData System.Object
---@param crewList Barotrauma.GUIComponent
---@return System.Boolean|boolean
_G['TabMenu'].SelectElement = function(userData, crewList) end

---`Method Private Instance`
---@param parent Barotrauma.GUIComponent
---@param character Barotrauma.Character
---@param campaign Barotrauma.MultiPlayerCampaign
_G['TabMenu'].CreateWalletFrame = function(parent, character, campaign) end

---`Method Private Instance`
---@param frame Barotrauma.GUIFrame
---@param client Barotrauma.Networking.Client
---@param permissionIcon? Barotrauma.Sprite
---@return Barotrauma.GUIComponent
_G['TabMenu'].CreateClientInfoFrame = function(frame, client, permissionIcon) end

---`Method Private Instance`
---@param crewFrame Barotrauma.GUIFrame
_G['TabMenu'].CreateMultiPlayerLogContent = function(crewFrame) end

---`Method Public Static`
---@param message Barotrauma.Networking.ChatMessage
_G['TabMenu'].StorePlayerConnectionChangeMessage = function(message) end

---`Method Private Instance`
_G['TabMenu'].RemoveCurrentElements = function() end

---`Method Private Instance`
---@param line System.String|string
---@param type Barotrauma.Networking.PlayerConnectionChangeType
_G['TabMenu'].AddLineToLog = function(line, type) end

---`Method Private Instance`
---@param infoFrame Barotrauma.GUIFrame
_G['TabMenu'].CreateMissionInfo = function(infoFrame) end

---`Method Private Instance`
---@param mission Barotrauma.Mission
---@param missionIcon Barotrauma.GUIImage
_G['TabMenu'].UpdateMissionStateIcon = function(mission, missionIcon) end

---`Method Private Instance`
---@param infoFrame Barotrauma.GUIFrame
---@param traitorMission Barotrauma.TraitorMissionPrefab
---@param traitor Barotrauma.Character
_G['TabMenu'].CreateTraitorInfo = function(infoFrame, traitorMission, traitor) end

---`Method Private Instance`
---@param infoFrame Barotrauma.GUIFrame
---@param sub Barotrauma.Submarine
_G['TabMenu'].CreateSubmarineInfo = function(infoFrame, sub) end

---`Method Private Instance`
---@param infoFrame Barotrauma.GUIFrame
_G['TabMenu'].CreateCharacterInfo = function(infoFrame) end

---`Method Private Instance`
---@param character Barotrauma.Character
---@param info Barotrauma.CharacterInfo
---@param parent Barotrauma.GUIListBox
_G['TabMenu'].CreateSkillList = function(character, info, parent) end

---`Method Private Instance`
_G['TabMenu'].UpdateTalentInfo = function() end

---`Method Private Instance`
---@param controlledCharacter Barotrauma.Character
_G['TabMenu'].ApplyTalents = function(controlledCharacter) end

---`Method Private Instance`
---@param guiButton Barotrauma.GUIButton
---@param userData System.Object
---@return System.Boolean|boolean
_G['TabMenu'].ApplyTalentSelection = function(guiButton, userData) end

---`Method Private Instance`
---@param guiButton Barotrauma.GUIButton
---@param userData System.Object
---@return System.Boolean|boolean
_G['TabMenu'].ResetTalentSelection = function(guiButton, userData) end

---`Method Public Instance`
---@param character Barotrauma.Character
_G['TabMenu'].OnExperienceChanged = function(character) end

---`Method Public Instance`
_G['TabMenu'].OnClose = function() end

---`Constructor Public Instance`
---@overload fun():Barotrauma.TabMenu
---@return Barotrauma.TabMenu
_G['TabMenu'] = function() end

---`Constructor Public Instance`
---@overload fun():Barotrauma.TabMenu
---@return Barotrauma.TabMenu
_G['TabMenu'].__new = function() end

---`Constructor Private Static`
---@overload fun():Barotrauma.TabMenu
---@return Barotrauma.TabMenu
_G['TabMenu'] = function() end

---`Constructor Private Static`
---@overload fun():Barotrauma.TabMenu
---@return Barotrauma.TabMenu
_G['TabMenu'].__new = function() end

