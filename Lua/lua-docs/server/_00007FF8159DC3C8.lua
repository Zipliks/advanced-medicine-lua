---@meta
---@class Barotrauma.Networking.GameServer : Barotrauma.Networking.NetworkMember
---`Field Private Instance`
---@field serverName System.String|string
---`Field Public Instance`
---@field SubmarineSwitchLoad System.Boolean|boolean
---`Field Private Instance`
---@field connectedClients System.Collections.Generic.List*1Barotrauma*Networking*Client|Barotrauma.Networking.Client[]
---`Field Private Instance`
---@field disconnectedClients System.Collections.Generic.List*1Barotrauma*Networking*Client|Barotrauma.Networking.Client[]
---`Field Private Instance`
---@field previousPlayers System.Collections.Generic.List*1Barotrauma*Networking*PreviousPlayer|Barotrauma.Networking.PreviousPlayer[]
---`Field Private Instance`
---@field roundStartSeed System.Int32|integer
---`Field Private Instance`
---@field started System.Boolean|boolean
---`Field Private Instance`
---@field serverPeer Barotrauma.Networking.ServerPeer
---`Field Private Instance`
---@field refreshMasterTimer System.DateTime
---`Field Private Instance`
---@field refreshMasterInterval System.TimeSpan
---`Field Private Instance`
---@field registeredToMaster System.Boolean|boolean
---`Field Private Instance`
---@field roundStartTime System.DateTime
---`Field Private Instance`
---@field autoRestartTimerRunning System.Boolean|boolean
---`Field Private Instance`
---@field endRoundTimer System.Single|number
---`Field Private Instance`
---@field initiatedStartGame System.Boolean|boolean
---`Field Private Instance`
---@field startGameCoroutine Barotrauma.CoroutineHandle
---`Field Public Instance`
---@field TraitorManager Barotrauma.TraitorManager
---`Field Private Instance`
---@field entityEventManager Barotrauma.Networking.ServerEntityEventManager
---`Field Private Instance`
---@field ownerKey Barotrauma.Option*1System*Int32
---`Field Private Instance`
---@field ownerSteamId Barotrauma.Option*1Barotrauma*Networking*SteamId
---`Field Private Instance`
---@field lastPingTime System.Double|number
---`Field Private Instance`
---@field lastPingData System.Byte-arr|System.Byte|integer[]
---`Field Private Static`
---@field pendingMessagesToOwner System.Collections.Generic.Queue*1Barotrauma*Networking*ChatMessage|(fun():Barotrauma.Networking.ChatMessage)
---`Getter Public Instance Virtual`
---@field IsServer System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field IsClient System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field Voting Barotrauma.Voting
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ServerName System.String|string
---`Getter Public Instance`
---@field ServerPeer Barotrauma.Networking.ServerPeer
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field VoipServer Barotrauma.Networking.VoipServer
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field FileSender Barotrauma.Networking.FileSender
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ModSender Barotrauma.Networking.ModSender
---`Getter Public Instance Virtual`
---@field ConnectedClients System.Collections.Generic.IReadOnlyList*1Barotrauma*Networking*Client|Barotrauma.Networking.Client[]
---`Getter Public Instance`
---@field EntityEventManager Barotrauma.Networking.ServerEntityEventManager
---`Getter Public Instance`
---@field Port System.Int32|integer
---`Getter Public Instance`
---@field QueryPort System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field OwnerConnection Barotrauma.Networking.NetworkConnection
_G['GameServer'] = {}

---`Method Public Instance`
_G['GameServer'].UpdateCheatsEnabled = function() end

---`Method Public Instance`
---@param client Barotrauma.Networking.Client
---@param newCharacter Barotrauma.Character
_G['GameServer'].SetClientCharacter = function(client, newCharacter) end

---`Method Private Instance`
---@param message Barotrauma.Networking.IReadMessage
---@param sender Barotrauma.Networking.Client
_G['GameServer'].UpdateCharacterInfo = function(message, sender) end

---`Method Public Instance`
---@param unassigned System.Collections.Generic.List*1Barotrauma*Networking*Client|Barotrauma.Networking.Client[]
_G['GameServer'].AssignJobs = function(unassigned) end

---`Method Public Instance`
---@param bots System.Collections.Generic.List*1Barotrauma*CharacterInfo|Barotrauma.CharacterInfo[]
---@param teamID Barotrauma.CharacterTeamType
_G['GameServer'].AssignBotJobs = function(bots, teamID) end

---`Method Private Instance`
---@param clients System.Collections.Generic.List*1Barotrauma*Networking*Client|Barotrauma.Networking.Client[]
---@param job Barotrauma.JobPrefab
---@param forceAssign? System.Boolean|boolean
---@return Barotrauma.Networking.Client
_G['GameServer'].FindClientWithJobPreference = function(clients, job, forceAssign) end

---`Method Public Instance`
---@param mission Barotrauma.Mission
_G['GameServer'].UpdateMissionState = function(mission) end

---`Method Public Static`
---@param character Barotrauma.Character
---@return System.String|string
_G['GameServer'].CharacterLogName = function(character) end

---`Method Public Static`
---@param line System.String|string
---@param messageType Barotrauma.Networking.ServerLog.MessageType
_G['GameServer'].Log = function(line, messageType) end

---`Method Public Instance`
_G['GameServer'].Quit = function() end

---`Method Public Instance`
_G['GameServer'].StartServer = function() end

---`Method Public Static`
---@param message System.String|string
---@param messageType Barotrauma.Networking.ChatMessageType
_G['GameServer'].AddPendingMessageToOwner = function(message, messageType) end

---`Method Private Instance`
---@param connection Barotrauma.Networking.NetworkConnection
_G['GameServer'].OnOwnerDetermined = function(connection) end

---`Method Public Instance`
_G['GameServer'].NotifyCrash = function() end

---`Method Private Instance`
---@param connection Barotrauma.Networking.NetworkConnection
---@param clientName System.String|string
_G['GameServer'].OnInitializationComplete = function(connection, clientName) end

---`Method Private Instance`
---@param connection Barotrauma.Networking.NetworkConnection
---@param peerDisconnectPacket Barotrauma.Networking.PeerDisconnectPacket
_G['GameServer'].OnClientDisconnect = function(connection, peerDisconnectPacket) end

---`Method Public Instance`
---@param deltaTime System.Single|number
_G['GameServer'].Update = function(deltaTime) end

---`Method Private Instance`
_G['GameServer'].UpdatePing = function() end

---`Method Private Instance`
---@param sender Barotrauma.Networking.NetworkConnection
---@param inc Barotrauma.Networking.IReadMessage
_G['GameServer'].ReadDataMessage = function(sender, inc) end

---`Method Private Instance`
---@param inc Barotrauma.Networking.IReadMessage
---@param c Barotrauma.Networking.Client
_G['GameServer'].HandleClientError = function(inc, c) end

---`Method Private Instance`
---@param client Barotrauma.Networking.Client
---@param errorStr System.String|string
_G['GameServer'].WriteEventErrorData = function(client, errorStr) end

---`Method Public Instance Virtual`
---@param entity Barotrauma.Networking.INetSerializable
---@param extraData? Barotrauma.Networking.NetEntityEvent.IData
_G['GameServer'].CreateEntityEvent = function(entity, extraData) end

---`Method Private Instance`
---@return System.Byte|integer
_G['GameServer'].GetNewClientSessionId = function() end

---`Method Private Instance`
---@param inc Barotrauma.Networking.IReadMessage
_G['GameServer'].ClientReadLobby = function(inc) end

---`Method Private Instance`
---@param inc Barotrauma.Networking.IReadMessage
_G['GameServer'].ClientReadIngame = function(inc) end

---`Method Private Instance`
---@param inc Barotrauma.Networking.IReadMessage
---@param sender Barotrauma.Networking.Client
_G['GameServer'].ReadCrewMessage = function(inc, sender) end

---`Method Private Instance`
---@param inc Barotrauma.Networking.IReadMessage
---@param sender Barotrauma.Networking.Client
_G['GameServer'].ReadMoneyMessage = function(inc, sender) end

---`Method Private Instance`
---@param inc Barotrauma.Networking.IReadMessage
---@param sender Barotrauma.Networking.Client
_G['GameServer'].ReadRewardDistributionMessage = function(inc, sender) end

---`Method Private Instance`
---@param inc Barotrauma.Networking.IReadMessage
---@param sender Barotrauma.Networking.Client
_G['GameServer'].ReadMedicalMessage = function(inc, sender) end

---`Method Private Instance`
---@param inc Barotrauma.Networking.IReadMessage
---@param sender Barotrauma.Networking.Client
_G['GameServer'].ReadReadyToSpawnMessage = function(inc, sender) end

---`Method Private Instance`
---@param inc Barotrauma.Networking.IReadMessage
_G['GameServer'].ClientReadServerCommand = function(inc) end

---`Method Private Instance`
---@param c Barotrauma.Networking.Client
_G['GameServer'].ClientWrite = function(c) end

---`Method Private Instance`
---@param c Barotrauma.Networking.Client
---@param outmsg Barotrauma.Networking.IWriteMessage
_G['GameServer'].ClientWriteInitial = function(c, outmsg) end

---`Method Private Instance`
---@param c Barotrauma.Networking.Client
_G['GameServer'].ClientWriteIngame = function(c) end

---`Method Private Instance`
---@param c Barotrauma.Networking.Client
---@param outmsg Barotrauma.Networking.IWriteMessage
_G['GameServer'].WriteClientList = function(c, outmsg) end

---`Method Public Instance`
---@param c Barotrauma.Networking.Client
_G['GameServer'].ClientWriteLobby = function(c) end

---`Method Private Instance`
---@param outmsg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
_G['GameServer'].WriteChatMessages = function(outmsg, c) end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['GameServer'].StartGame = function() end

---`Method Private Instance`
---@param selectedSub Barotrauma.SubmarineInfo
---@param selectedShuttle Barotrauma.SubmarineInfo
---@param selectedMode Barotrauma.GameModePreset
---@param settings Barotrauma.CampaignSettings
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
_G['GameServer'].StartGame = function(selectedSub, selectedShuttle, selectedMode, settings) end

---`Method Private Instance`
---@param selectedSub Barotrauma.SubmarineInfo
---@param selectedShuttle Barotrauma.SubmarineInfo
---@param selectedMode Barotrauma.GameModePreset
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
_G['GameServer'].InitiateStartGame = function(selectedSub, selectedShuttle, selectedMode) end

---`Method Private Instance`
---@overload fun(seed:System.Int32|integer, levelSeed:System.String|string, gameSession:Barotrauma.GameSession, clients:System.Collections.Generic.List*1Barotrauma*Networking*Client|Barotrauma.Networking.Client[], includesFinalize:System.Boolean|boolean)
---@param seed System.Int32|integer
---@param levelSeed System.String|string
---@param gameSession Barotrauma.GameSession
---@param client Barotrauma.Networking.Client
---@param includesFinalize System.Boolean|boolean
_G['GameServer'].SendStartMessage = function(seed, levelSeed, gameSession, client, includesFinalize) end

---`Method Private Instance`
---@return System.Boolean|boolean
_G['GameServer'].IsUsingRespawnShuttle = function() end

---`Method Private Instance`
---@param client Barotrauma.Networking.Client
_G['GameServer'].SendRoundStartFinalize = function(client) end

---`Method Private Instance`
---@param msg Barotrauma.Networking.IWriteMessage
---@param client Barotrauma.Networking.Client
_G['GameServer'].WriteRoundStartFinalize = function(msg, client) end

---`Method Public Instance`
---@param transitionType? Barotrauma.CampaignMode.TransitionType
---@param wasSaved? System.Boolean|boolean
_G['GameServer'].EndGame = function(transitionType, wasSaved) end

---`Method Public Instance Virtual`
---@param message Barotrauma.Networking.ChatMessage
_G['GameServer'].AddChatMessage = function(message) end

---`Method Private Instance`
---@param c Barotrauma.Networking.Client
---@param inc Barotrauma.Networking.IReadMessage
---@return System.Boolean|boolean
_G['GameServer'].ReadClientNameChange = function(c, inc) end

---`Method Public Instance`
---@param c Barotrauma.Networking.Client
---@param newName System.String|string
---@return System.Boolean|boolean
_G['GameServer'].TryChangeClientName = function(c, newName) end

---`Method Private Instance`
---@param c Barotrauma.Networking.Client
---@param newName System.String|string
---@return System.Boolean|boolean
_G['GameServer'].IsNameValid = function(c, newName) end

---`Method Public Instance Virtual`
---@param playerName System.String|string
---@param reason System.String|string
_G['GameServer'].KickPlayer = function(playerName, reason) end

---`Method Public Instance`
---@overload fun(conn:Barotrauma.Networking.NetworkConnection, reason:System.String|string)
---@param client Barotrauma.Networking.Client
---@param reason System.String|string
---@param resetKarma? System.Boolean|boolean
_G['GameServer'].KickClient = function(client, reason, resetKarma) end

---`Method Public Instance Virtual`
---@param playerName System.String|string
---@param reason System.String|string
---@param duration? System.Nullable*1System*TimeSpan
_G['GameServer'].BanPlayer = function(playerName, reason, duration) end

---`Method Public Instance`
---@param client Barotrauma.Networking.Client
---@param reason System.String|string
---@param duration? System.Nullable*1System*TimeSpan
_G['GameServer'].BanClient = function(client, reason, duration) end

---`Method Public Instance`
---@param previousPlayer Barotrauma.Networking.PreviousPlayer
---@param reason System.String|string
---@param duration? System.Nullable*1System*TimeSpan
_G['GameServer'].BanPreviousPlayer = function(previousPlayer, reason, duration) end

---`Method Public Instance Virtual`
---@overload fun(playerName:System.String|string)
---@param endpoint Barotrauma.Networking.Endpoint
_G['GameServer'].UnbanPlayer = function(endpoint) end

---`Method Public Instance`
---@overload fun(senderConnection:Barotrauma.Networking.NetworkConnection, peerDisconnectPacket:Barotrauma.Networking.PeerDisconnectPacket)
---@param client Barotrauma.Networking.Client
---@param peerDisconnectPacket Barotrauma.Networking.PeerDisconnectPacket
_G['GameServer'].DisconnectClient = function(client, peerDisconnectPacket) end

---`Method Private Instance`
_G['GameServer'].UpdateCrewFrame = function() end

---`Method Public Instance`
---@overload fun(txt:System.String|string, recipient:Barotrauma.Networking.Client, messageType?:Barotrauma.Networking.ChatMessageType)
---@param msg Barotrauma.Networking.ChatMessage
---@param recipient Barotrauma.Networking.Client
_G['GameServer'].SendDirectChatMessage = function(msg, recipient) end

---`Method Public Instance`
---@param txt System.String|string
---@param recipient Barotrauma.Networking.Client
---@param color? System.Nullable*1Microsoft*Xna*Framework*Color
_G['GameServer'].SendConsoleMessage = function(txt, recipient, color) end

---`Method Public Instance`
---@param message System.String|string
---@param type? System.Nullable*1Barotrauma*Networking*ChatMessageType
---@param senderClient? Barotrauma.Networking.Client
---@param senderCharacter? Barotrauma.Character
---@param changeType? Barotrauma.Networking.PlayerConnectionChangeType
---@param chatMode? Barotrauma.ChatMode
_G['GameServer'].SendChatMessage = function(message, type, senderClient, senderCharacter, changeType, chatMode) end

---`Method Public Instance`
---@param message Barotrauma.Networking.OrderChatMessage
_G['GameServer'].SendOrderChatMessage = function(message) end

---`Method Private Instance`
---@param transfer Barotrauma.Networking.FileSender.FileTransferOut
_G['GameServer'].FileTransferChanged = function(transfer) end

---`Method Public Instance`
---@param transfer Barotrauma.Networking.FileSender.FileTransferOut
_G['GameServer'].SendCancelTransferMsg = function(transfer) end

---`Method Public Instance`
---@param checkActiveVote? System.Boolean|boolean
_G['GameServer'].UpdateVoteStatus = function(checkActiveVote) end

---`Method Public Instance`
---@param recipients System.Collections.Generic.List*1Barotrauma*Networking*Client|Barotrauma.Networking.Client[]
_G['GameServer'].SendVoteStatus = function(recipients) end

---`Method Public Instance`
_G['GameServer'].SwitchSubmarine = function() end

---`Method Public Instance`
---@param client Barotrauma.Networking.Client
_G['GameServer'].UpdateClientPermissions = function(client) end

---`Method Private Instance`
---@param recipient Barotrauma.Networking.Client
---@param client Barotrauma.Networking.Client
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
_G['GameServer'].SendClientPermissionsAfterClientListSynced = function(recipient, client) end

---`Method Private Instance`
---@param recipient Barotrauma.Networking.Client
---@param client Barotrauma.Networking.Client
_G['GameServer'].SendClientPermissions = function(recipient, client) end

---`Method Public Instance`
---@overload fun(character:Barotrauma.Character, achievementIdentifier:Barotrauma.Identifier)
---@param client Barotrauma.Networking.Client
---@param achievementIdentifier Barotrauma.Identifier
_G['GameServer'].GiveAchievement = function(client, achievementIdentifier) end

---`Method Public Instance`
---@overload fun(character:Barotrauma.Character, achievementIdentifier:Barotrauma.Identifier, amount:System.Int32|integer)
---@param client Barotrauma.Networking.Client
---@param achievementIdentifier Barotrauma.Identifier
---@param amount System.Int32|integer
_G['GameServer'].IncrementStat = function(client, achievementIdentifier, amount) end

---`Method Public Instance`
---@param client Barotrauma.Networking.Client
---@param message System.String|string
---@param missionIdentifier Barotrauma.Identifier
---@param messageType Barotrauma.Networking.TraitorMessageType
_G['GameServer'].SendTraitorMessage = function(client, message, missionIdentifier, messageType) end

---`Constructor Private Static`
---@overload fun():Barotrauma.Networking.GameServer
---@param name System.String|string
---@param listenIp System.Net.IPAddress
---@param port System.Int32|integer
---@param queryPort System.Int32|integer
---@param isPublic System.Boolean|boolean
---@param password System.String|string
---@param attemptUPnP System.Boolean|boolean
---@param maxPlayers System.Int32|integer
---@param ownerKey Barotrauma.Option*1System*Int32
---@param ownerSteamId Barotrauma.Option*1Barotrauma*Networking*SteamId
---@return Barotrauma.Networking.GameServer
_G['GameServer'] = function(name, listenIp, port, queryPort, isPublic, password, attemptUPnP, maxPlayers, ownerKey, ownerSteamId) end

---`Constructor Private Static`
---@overload fun():Barotrauma.Networking.GameServer
---@param name System.String|string
---@param listenIp System.Net.IPAddress
---@param port System.Int32|integer
---@param queryPort System.Int32|integer
---@param isPublic System.Boolean|boolean
---@param password System.String|string
---@param attemptUPnP System.Boolean|boolean
---@param maxPlayers System.Int32|integer
---@param ownerKey Barotrauma.Option*1System*Int32
---@param ownerSteamId Barotrauma.Option*1Barotrauma*Networking*SteamId
---@return Barotrauma.Networking.GameServer
_G['GameServer'].__new = function(name, listenIp, port, queryPort, isPublic, password, attemptUPnP, maxPlayers, ownerKey, ownerSteamId) end

---`Constructor Public Instance`
---@overload fun():Barotrauma.Networking.GameServer
---@param name System.String|string
---@param listenIp System.Net.IPAddress
---@param port System.Int32|integer
---@param queryPort System.Int32|integer
---@param isPublic System.Boolean|boolean
---@param password System.String|string
---@param attemptUPnP System.Boolean|boolean
---@param maxPlayers System.Int32|integer
---@param ownerKey Barotrauma.Option*1System*Int32
---@param ownerSteamId Barotrauma.Option*1Barotrauma*Networking*SteamId
---@return Barotrauma.Networking.GameServer
_G['GameServer'] = function(name, listenIp, port, queryPort, isPublic, password, attemptUPnP, maxPlayers, ownerKey, ownerSteamId) end

---`Constructor Public Instance`
---@overload fun():Barotrauma.Networking.GameServer
---@param name System.String|string
---@param listenIp System.Net.IPAddress
---@param port System.Int32|integer
---@param queryPort System.Int32|integer
---@param isPublic System.Boolean|boolean
---@param password System.String|string
---@param attemptUPnP System.Boolean|boolean
---@param maxPlayers System.Int32|integer
---@param ownerKey Barotrauma.Option*1System*Int32
---@param ownerSteamId Barotrauma.Option*1Barotrauma*Networking*SteamId
---@return Barotrauma.Networking.GameServer
_G['GameServer'].__new = function(name, listenIp, port, queryPort, isPublic, password, attemptUPnP, maxPlayers, ownerKey, ownerSteamId) end

