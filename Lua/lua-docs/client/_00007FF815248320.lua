---@meta
---@class Barotrauma.Networking.GameClient : Barotrauma.Networking.NetworkMember
---`Field Private Instance`
---@field nameId System.UInt16|integer
---`Field Public Instance`
---@field PendingName System.String|string
---`Field Private Instance`
---@field reconnectBox Barotrauma.GUIMessageBox
---`Field Private Instance`
---@field waitInServerQueueBox Barotrauma.GUIMessageBox
---`Field Public Instance`
---@field endRoundVoteText Barotrauma.LocalizedString
---`Field Public Instance`
---@field EndVoteTickBox Barotrauma.GUITickBox
---`Field Private Instance`
---@field buttonContainer Barotrauma.GUIComponent
---`Field Public Instance`
---@field NetStats Barotrauma.Networking.NetStats
---`Field NonPublic Instance`
---@field cameraFollowsSub Barotrauma.GUITickBox
---`Field Public Instance`
---@field EndCinematic Barotrauma.CameraTransition
---`Field Public Instance`
---@field LateCampaignJoin System.Boolean|boolean
---`Field Private Instance`
---@field permissions Barotrauma.Networking.ClientPermissions
---`Field Private Instance`
---@field permittedConsoleCommands System.Collections.Generic.List*1System*String|System.String|string[]
---`Field Private Instance`
---@field connected System.Boolean|boolean
---`Field Private Instance`
---@field roundInitStatus Barotrauma.Networking.GameClient.RoundInitStatus
---`Field Private Instance`
---@field otherClients System.Collections.Generic.List*1Barotrauma*Networking*Client|Barotrauma.Networking.Client[]
---`Field Public Instance`
---@field ServerSubmarines System.Collections.Generic.List*1Barotrauma*SubmarineInfo|Barotrauma.SubmarineInfo[]
---`Field Private Instance`
---@field canStart System.Boolean|boolean
---`Field Private Instance`
---@field lastSentChatMsgID System.UInt16|integer
---`Field Private Instance`
---@field lastQueueChatMsgID System.UInt16|integer
---`Field Private Instance`
---@field chatMsgQueue System.Collections.Generic.List*1Barotrauma*Networking*ChatMessage|Barotrauma.Networking.ChatMessage[]
---`Field Public Instance`
---@field LastSentEntityEventID System.UInt16|integer
---`Field Public Instance`
---@field HasSpawned System.Boolean|boolean
---`Field Public Instance`
---@field SpawnAsTraitor System.Boolean|boolean
---`Field Public Instance`
---@field TraitorFirstObjective Barotrauma.LocalizedString
---`Field Public Instance`
---@field TraitorMission Barotrauma.TraitorMissionPrefab
---`Field Private Instance`
---@field previouslyConnectedClients System.Collections.Generic.List*1Barotrauma*Networking*Client|Barotrauma.Networking.Client[]
---`Field Public Instance`
---@field FileReceiver Barotrauma.Networking.FileReceiver
---`Field Public Instance`
---@field EntityEventManager Barotrauma.Networking.ClientEntityEventManager
---`Field Private Instance`
---@field serverEndpoint Barotrauma.Networking.Endpoint
---`Field Private Instance`
---@field ownerKey Barotrauma.Option*1System*Int32
---`Field Public Instance`
---@field OnPermissionChanged Barotrauma.NamedEvent*1Barotrauma*Networking*GameClient*PermissionChangedEvent
---`Field Private Instance`
---@field connectCancelled System.Boolean|boolean
---`Field Private Instance`
---@field pendingIncomingMessages System.Collections.Generic.List*1Barotrauma*Networking*IReadMessage|Barotrauma.Networking.IReadMessage[]
---`Field Private Instance`
---@field incomingMessagesToProcess System.Collections.Generic.List*1Barotrauma*Networking*IReadMessage|Barotrauma.Networking.IReadMessage[]
---`Field Private Instance`
---@field initialUpdateReceived System.Boolean|boolean
---`Field Private Instance`
---@field debugEntityList System.Collections.Generic.List*1Barotrauma*Networking*IServerSerializable|Barotrauma.Networking.IServerSerializable[]
---`Field NonPublic Instance`
---@field characterInfo Barotrauma.CharacterInfo
---`Field NonPublic Instance`
---@field myCharacter Barotrauma.Character
---`Field NonPublic Instance`
---@field inGameHUD Barotrauma.GUIFrame
---`Field NonPublic Instance`
---@field chatBox Barotrauma.ChatBox
---`Field Public Instance`
---@field ShowLogButton Barotrauma.GUIButton
---`Field Private Instance`
---@field hasPermissionToUseLogButton System.Boolean|boolean
---`Field Private Instance`
---@field votingInterface Barotrauma.VotingInterface
---`Field Private Instance`
---@field eventErrorWritten System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field IsClient System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field IsServer System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field Voting Barotrauma.Voting
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Name System.String|string
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ClientPeer Barotrauma.Networking.ClientPeer
---`Getter Public Instance`
---@field FollowSubTickBox Barotrauma.GUITickBox
---`Getter Public Instance`
---@field IsFollowSubTickBoxVisible System.Boolean|boolean
---`Getter Public Instance`
---@field RoundStarting System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ServerName System.String|string
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SessionId System.Byte|integer
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field VoipClient Barotrauma.Networking.VoipClient
---`Getter Public Instance Virtual`
---@field ConnectedClients System.Collections.Generic.IReadOnlyList*1Barotrauma*Networking*Client|Barotrauma.Networking.Client[]
---`Getter Public Instance`
---@field Ping Barotrauma.Option*1System*Int32
---`Getter Public Instance`
---@field PreviouslyConnectedClients System.Collections.Generic.IEnumerable*1Barotrauma*Networking*Client|(fun():Barotrauma.Networking.Client)
---`Getter Public Instance`
---@field MidRoundSyncing System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field WaitForNextRoundRespawn System.Nullable*1System*Boolean|boolean
---`Getter Public Instance`
---@field IsServerOwner System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CharacterInfo Barotrauma.CharacterInfo
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Character Barotrauma.Character
---`Getter Public Instance`
---@field InGameHUD Barotrauma.GUIFrame
---`Getter Public Instance`
---@field ChatBox Barotrauma.ChatBox
---`Getter Public Instance`
---@field VotingInterface Barotrauma.VotingInterface
_G['GameClient'] = {}

---`Method Public Instance`
---@param button Barotrauma.GUIButton
---@param userData System.Object
---@return System.Boolean|boolean
_G['GameClient'].SpectateClicked = function(button, userData) end

---`Method Public Instance`
---@param tickBox Barotrauma.GUITickBox
---@return System.Boolean|boolean
_G['GameClient'].SetReadyToStart = function(tickBox) end

---`Method Public Instance`
---@param tickBox Barotrauma.GUITickBox
---@return System.Boolean|boolean
_G['GameClient'].ToggleEndRoundVote = function(tickBox) end

---`Method Public Instance`
_G['GameClient'].UpdateLogButtonPermissions = function() end

---`Method Private Instance`
_G['GameClient'].UpdateLogButtonVisibility = function() end

---`Method Public Instance`
---@param textBox Barotrauma.GUITextBox
---@param text System.String|string
---@return System.Boolean|boolean
_G['GameClient'].TypingChatMessage = function(textBox, text) end

---`Method Public Instance`
---@param textBox Barotrauma.GUITextBox
---@param message System.String|string
---@return System.Boolean|boolean
_G['GameClient'].EnterChatMessage = function(textBox, message) end

---`Method Public Instance`
_G['GameClient'].AddToGUIUpdateList = function() end

---`Method Public Instance`
---@param deltaTime System.Single|number
_G['GameClient'].UpdateHUD = function(deltaTime) end

---`Method Public Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['GameClient'].Draw = function(spriteBatch) end

---`Method Public Instance`
---@param character Barotrauma.Character
---@param frame Barotrauma.GUIComponent
---@return System.Boolean|boolean
_G['GameClient'].SelectCrewCharacter = function(character, frame) end

---`Method Public Instance`
---@param client Barotrauma.Networking.Client
---@param frame Barotrauma.GUIComponent
---@return System.Boolean|boolean
_G['GameClient'].SelectCrewClient = function(client, frame) end

---`Method Private Instance`
---@param client Barotrauma.Networking.Client
---@param frame Barotrauma.GUIComponent
_G['GameClient'].CreateSelectionRelatedButtons = function(client, frame) end

---`Method Public Instance`
---@param clientName System.String|string
---@param ban System.Boolean|boolean
_G['GameClient'].CreateKickReasonPrompt = function(clientName, ban) end

---`Method Public Instance`
---@param error Barotrauma.Networking.ClientNetError
---@param expectedId? System.UInt16|integer
---@param eventId? System.UInt16|integer
---@param entityId? System.UInt16|integer
_G['GameClient'].ReportError = function(error, expectedId, eventId, entityId) end

---`Method Private Instance`
---@param error Barotrauma.Networking.ClientNetError
---@param expectedID System.UInt16|integer
---@param eventID System.UInt16|integer
---@param entityID System.UInt16|integer
_G['GameClient'].WriteEventErrorData = function(error, expectedID, eventID, entityID) end

---`Method Public Instance`
---@param value System.String|string
_G['GameClient'].SetName = function(value) end

---`Method Public Instance`
_G['GameClient'].ForceNameAndJobUpdate = function() end

---`Method Public Instance`
---@return Barotrauma.Networking.ServerInfo
_G['GameClient'].CreateServerInfoFromSettings = function() end

---`Method Private Instance`
---@param hostName System.String|string
_G['GameClient'].InitiateServerJoin = function(hostName) end

---`Method Private Instance`
---@return Barotrauma.Networking.ClientPeer
_G['GameClient'].CreateNetPeer = function() end

---`Method Private Instance`
---@param button Barotrauma.GUIButton
---@param obj System.Object
---@return System.Boolean|boolean
_G['GameClient'].ReturnToPreviousMenu = function(button, obj) end

---`Method Private Instance`
_G['GameClient'].CancelConnect = function() end

---`Method Private Instance`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
_G['GameClient'].WaitForStartingInfo = function() end

---`Method Public Instance`
---@param deltaTime System.Single|number
_G['GameClient'].Update = function(deltaTime) end

---`Method Private Instance`
---@param inc Barotrauma.Networking.IReadMessage
_G['GameClient'].ReadDataMessage = function(inc) end

---`Method Private Instance`
---@param inc Barotrauma.Networking.IReadMessage
_G['GameClient'].ReadStartGameFinalize = function(inc) end

---`Method Private Instance`
---@param disconnectPacket Barotrauma.Networking.PeerDisconnectPacket
_G['GameClient'].OnClientPeerDisconnect = function(disconnectPacket) end

---`Method Private Instance`
---@param headerText Barotrauma.LocalizedString
---@param bodyText Barotrauma.LocalizedString
_G['GameClient'].CreateReconnectBox = function(headerText, bodyText) end

---`Method Private Instance`
_G['GameClient'].CloseReconnectBox = function() end

---`Method Private Instance`
_G['GameClient'].AskToWaitInQueue = function() end

---`Method Private Instance`
---@param peerDisconnectPacket Barotrauma.Networking.PeerDisconnectPacket
_G['GameClient'].AttemptReconnect = function(peerDisconnectPacket) end

---`Method Private Instance`
_G['GameClient'].OnConnectionInitializationComplete = function() end

---`Method Private Instance`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
_G['GameClient'].WaitInServerQueue = function() end

---`Method Private Instance`
---@param inc Barotrauma.Networking.IReadMessage
_G['GameClient'].ReadAchievement = function(inc) end

---`Method Private Instance`
---@param inc Barotrauma.Networking.IReadMessage
_G['GameClient'].ReadTraitorMessage = function(inc) end

---`Method Private Instance`
---@param inc Barotrauma.Networking.IReadMessage
_G['GameClient'].ReadPermissions = function(inc) end

---`Method Private Instance`
---@param newPermissions Barotrauma.Networking.ClientPermissions
---@param permittedConsoleCommands System.Collections.Generic.IEnumerable*1System*String|(fun():System.String|string)
_G['GameClient'].SetMyPermissions = function(newPermissions, permittedConsoleCommands) end

---`Method Private Instance`
---@param inc Barotrauma.Networking.IReadMessage
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
_G['GameClient'].StartGame = function(inc) end

---`Method Public Instance`
---@param endMessage System.String|string
---@param traitorResults? System.Collections.Generic.List*1Barotrauma*TraitorMissionResult|Barotrauma.TraitorMissionResult[]
---@param transitionType? Barotrauma.CampaignMode.TransitionType
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
_G['GameClient'].EndGame = function(endMessage, traitorResults, transitionType) end

---`Method Private Instance`
---@param inc Barotrauma.Networking.IReadMessage
_G['GameClient'].ReadInitialUpdate = function(inc) end

---`Method Private Instance`
---@param inc Barotrauma.Networking.IReadMessage
_G['GameClient'].ReadClientList = function(inc) end

---`Method Private Instance`
---@param inc Barotrauma.Networking.IReadMessage
_G['GameClient'].ReadLobbyUpdate = function(inc) end

---`Method Private Instance`
---@param inc Barotrauma.Networking.IReadMessage
_G['GameClient'].ReadIngameUpdate = function(inc) end

---`Method Private Instance`
_G['GameClient'].SendLobbyUpdate = function() end

---`Method Private Instance`
_G['GameClient'].SendIngameUpdate = function() end

---`Method Public Instance`
---@overload fun(msg:Barotrauma.Networking.ChatMessage)
---@param message System.String|string
---@param type? Barotrauma.Networking.ChatMessageType
_G['GameClient'].SendChatMessage = function(message, type) end

---`Method Public Instance`
---@param waitForNextRoundRespawn System.Boolean|boolean
_G['GameClient'].SendRespawnPromptResponse = function(waitForNextRoundRespawn) end

---`Method Public Instance`
---@param fileType Barotrauma.Networking.FileTransferType
---@param file System.String|string
---@param fileHash System.String|string
_G['GameClient'].RequestFile = function(fileType, file, fileHash) end

---`Method Public Instance`
---@overload fun(transfer:Barotrauma.Networking.FileReceiver.FileTransferIn)
---@param id System.Int32|integer
_G['GameClient'].CancelFileTransfer = function(id) end

---`Method Public Instance`
---@param transfer Barotrauma.Networking.FileReceiver.FileTransferIn
---@param expecting System.Int32|integer
---@param lastSeen System.Int32|integer
---@param reliable? System.Boolean|boolean
_G['GameClient'].UpdateFileTransfer = function(transfer, expecting, lastSeen, reliable) end

---`Method Private Instance`
---@param transfer Barotrauma.Networking.FileReceiver.FileTransferIn
_G['GameClient'].OnFileReceived = function(transfer) end

---`Method Private Instance`
---@param transfer Barotrauma.Networking.FileReceiver.FileTransferIn
_G['GameClient'].OnTransferFailed = function(transfer) end

---`Method Public Instance Virtual`
---@param entity Barotrauma.Networking.INetSerializable
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
_G['GameClient'].CreateEntityEvent = function(entity, extraData) end

---`Method Public Instance`
---@param permission Barotrauma.Networking.ClientPermissions
---@return System.Boolean|boolean
_G['GameClient'].HasPermission = function(permission) end

---`Method Public Instance`
---@param commandName System.String|string
---@return System.Boolean|boolean
_G['GameClient'].HasConsoleCommandPermission = function(commandName) end

---`Method Public Instance`
_G['GameClient'].Quit = function() end

---`Method Public Instance`
---@param newName? System.String|string
_G['GameClient'].SendCharacterInfo = function(newName) end

---`Method Public Instance`
---@param msg Barotrauma.Networking.IWriteMessage
---@param newName? System.String|string
_G['GameClient'].WriteCharacterInfo = function(msg, newName) end

---`Method Public Instance`
---@param voteType Barotrauma.Networking.VoteType
---@param data System.Object
_G['GameClient'].Vote = function(voteType, data) end

---`Method Public Instance`
---@param votedClient Barotrauma.Networking.Client
_G['GameClient'].VoteForKick = function(votedClient) end

---`Method Public Instance`
---@param sub Barotrauma.SubmarineInfo
---@param transferItems System.Boolean|boolean
---@param voteType Barotrauma.Networking.VoteType
_G['GameClient'].InitiateSubmarineChange = function(sub, transferItems, voteType) end

---`Method Public Instance`
---@param starter Barotrauma.Networking.Client
---@param info Barotrauma.SubmarineInfo
---@param type Barotrauma.Networking.VoteType
---@param transferItems System.Boolean|boolean
---@param timeOut System.Single|number
_G['GameClient'].ShowSubmarineChangeVoteInterface = function(starter, info, type, transferItems, timeOut) end

---`Method Public Instance`
---@param starter Barotrauma.Networking.Client
---@param from Barotrauma.Networking.Client
---@param amount System.Int32|integer
---@param to Barotrauma.Networking.Client
---@param timeOut System.Single|number
_G['GameClient'].ShowMoneyTransferVoteInterface = function(starter, from, amount, to, timeOut) end

---`Method Public Instance Virtual`
---@param message Barotrauma.Networking.ChatMessage
_G['GameClient'].AddChatMessage = function(message) end

---`Method Public Instance Virtual`
---@param kickedName System.String|string
---@param reason System.String|string
_G['GameClient'].KickPlayer = function(kickedName, reason) end

---`Method Public Instance Virtual`
---@param kickedName System.String|string
---@param reason System.String|string
---@param duration? System.Nullable*1System*TimeSpan
_G['GameClient'].BanPlayer = function(kickedName, reason, duration) end

---`Method Public Instance Virtual`
---@overload fun(playerName:System.String|string)
---@param endpoint Barotrauma.Networking.Endpoint
_G['GameClient'].UnbanPlayer = function(endpoint) end

---`Method Public Instance`
---@param targetClient Barotrauma.Networking.Client
_G['GameClient'].UpdateClientPermissions = function(targetClient) end

---`Method Public Instance`
_G['GameClient'].SendCampaignState = function() end

---`Method Public Instance`
---@param command System.String|string
_G['GameClient'].SendConsoleCommand = function(command) end

---`Method Public Instance`
---@param continueCampaign? System.Boolean|boolean
_G['GameClient'].RequestStartRound = function(continueCampaign) end

---`Method Public Instance`
---@param sub Barotrauma.SubmarineInfo
---@param isShuttle System.Boolean|boolean
_G['GameClient'].RequestSelectSub = function(sub, isShuttle) end

---`Method Public Instance`
---@param modeIndex System.Int32|integer
_G['GameClient'].RequestSelectMode = function(modeIndex) end

---`Method Public Instance`
---@param sub Barotrauma.SubmarineInfo
---@param saveName System.String|string
---@param mapSeed System.String|string
---@param settings Barotrauma.CampaignSettings
_G['GameClient'].SetupNewCampaign = function(sub, saveName, mapSeed, settings) end

---`Method Public Instance`
---@param saveName System.String|string
_G['GameClient'].SetupLoadCampaign = function(saveName) end

---`Method Public Instance`
---@param save System.Boolean|boolean
_G['GameClient'].RequestRoundEnd = function(save) end

---`Constructor Public Instance`
---@param newName System.String|string
---@param endpoint Barotrauma.Networking.Endpoint
---@param serverName System.String|string
---@param ownerKey Barotrauma.Option*1System*Int32
---@return Barotrauma.Networking.GameClient
_G['GameClient'] = function(newName, endpoint, serverName, ownerKey) end

---`Constructor Public Instance`
---@param newName System.String|string
---@param endpoint Barotrauma.Networking.Endpoint
---@param serverName System.String|string
---@param ownerKey Barotrauma.Option*1System*Int32
---@return Barotrauma.Networking.GameClient
_G['GameClient'].__new = function(newName, endpoint, serverName, ownerKey) end

