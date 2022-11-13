---@meta
---@class Barotrauma.Networking.Client : System.Object
---`Field Public Instance`
---@field VoiceEnabled System.Boolean|boolean
---`Field Public Instance`
---@field LastRecvClientListUpdate System.UInt16|integer
---`Field Public Instance`
---@field LastSentServerSettingsUpdate System.UInt16|integer
---`Field Public Instance`
---@field LastRecvServerSettingsUpdate System.UInt16|integer
---`Field Public Instance`
---@field LastRecvLobbyUpdate System.UInt16|integer
---`Field Public Instance`
---@field LastSentChatMsgID System.UInt16|integer
---`Field Public Instance`
---@field LastRecvChatMsgID System.UInt16|integer
---`Field Public Instance`
---@field LastSentEntityEventID System.UInt16|integer
---`Field Public Instance`
---@field LastRecvEntityEventID System.UInt16|integer
---`Field Public Instance`
---@field LastRecvCampaignUpdate System.Collections.Generic.Dictionary*1Barotrauma*MultiPlayerCampaign*NetFlags*1System*UInt16|{[Barotrauma.MultiPlayerCampaign.NetFlags]:System.UInt16|integer}
---`Field Public Instance`
---@field LastRecvCampaignSave System.UInt16|integer
---`Field Public Instance`
---@field LastCampaignSaveSendTime System.ValueTuple*1System*UInt16*1System*Single
---`Field Public Instance`
---@field ChatMsgQueue System.Collections.Generic.List*1Barotrauma*Networking*ChatMessage|Barotrauma.Networking.ChatMessage[]
---`Field Public Instance`
---@field LastChatMsgQueueID System.UInt16|integer
---`Field Public Instance`
---@field LastSentChatMessages System.Collections.Generic.List*1System*String|System.String|string[]
---`Field Public Instance`
---@field ChatSpamSpeed System.Single|number
---`Field Public Instance`
---@field ChatSpamTimer System.Single|number
---`Field Public Instance`
---@field ChatSpamCount System.Int32|integer
---`Field Public Instance`
---@field RoundsSincePlayedAsTraitor System.Int32|integer
---`Field Public Instance`
---@field KickAFKTimer System.Single|number
---`Field Public Instance`
---@field MidRoundSyncTimeOut System.Double|number
---`Field Public Instance`
---@field NeedsMidRoundSync System.Boolean|boolean
---`Field Public Instance`
---@field UnreceivedEntityEventCount System.UInt16|integer
---`Field Public Instance`
---@field FirstNewEventID System.UInt16|integer
---`Field Public Instance`
---@field EntityEventLastSent System.Collections.Generic.Dictionary*1System*UInt16*1System*Double|{[System.UInt16|integer]:System.Double|number}
---`Field Public Instance`
---@field PositionUpdateLastSent System.Collections.Generic.Dictionary*1Barotrauma*Entity*1System*Single|{[Barotrauma.Entity]:System.Single|number}
---`Field Public Instance`
---@field PendingPositionUpdates System.Collections.Generic.Queue*1Barotrauma*Entity|(fun():Barotrauma.Entity)
---`Field Public Instance`
---@field ReadyToStart System.Boolean|boolean
---`Field Public Instance`
---@field AssignedJob Barotrauma.JobVariant
---`Field Public Instance`
---@field DeleteDisconnectedTimer System.Single|number
---`Field Public Instance`
---@field JoinTime System.DateTime
---`Field Private Instance`
---@field characterInfo Barotrauma.CharacterInfo
---`Field Public Instance`
---@field PendingName System.String|string
---`Field Public Instance`
---@field SpectateOnly System.Boolean|boolean
---`Field Public Instance`
---@field WaitForNextRoundRespawn System.Nullable*1System*Boolean|boolean
---`Field Public Instance`
---@field KarmaKickCount System.Int32|integer
---`Field Private Instance`
---@field syncedKarma System.Single|number
---`Field Private Instance`
---@field karma System.Single|number
---`Field Private Instance`
---@field kickVoters System.Collections.Generic.List*1Barotrauma*Networking*Client|Barotrauma.Networking.Client[]
---`Field Public Instance`
---@field Name System.String|string
---`Field Public Instance`
---@field NameId System.UInt16|integer
---`Field Public Instance`
---@field SessionId System.Byte|integer
---`Field Public Instance`
---@field AccountInfo Barotrauma.Networking.AccountInfo
---`Field Public Instance`
---@field Language Barotrauma.LanguageIdentifier
---`Field Public Instance`
---@field Ping System.UInt16|integer
---`Field Public Instance`
---@field PreferredJob Barotrauma.Identifier
---`Field Public Instance`
---@field TeamID Barotrauma.CharacterTeamType
---`Field Public Instance`
---@field PreferredTeam Barotrauma.CharacterTeamType
---`Field Private Instance`
---@field character Barotrauma.Character
---`Field Public Instance`
---@field CharacterID System.UInt16|integer
---`Field Private Instance`
---@field spectatePos Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field muted System.Boolean|boolean
---`Field Private Instance`
---@field inGame System.Boolean|boolean
---`Field Public Instance`
---@field HasSpawned System.Boolean|boolean
---`Field Public Instance`
---@field GivenAchievements System.Collections.Generic.HashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Field Public Instance`
---@field Permissions Barotrauma.Networking.ClientPermissions
---`Field Public Instance`
---@field PermittedConsoleCommands System.Collections.Generic.HashSet*1Barotrauma*DebugConsole*Command|Barotrauma.DebugConsole.Command[]
---`Field Private Instance`
---@field votes System.Object-arr|System.Object[]
---`Field Public Static`
---@field MaxNameLength System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field JobPreferences System.Collections.Generic.List*1Barotrauma*JobVariant|Barotrauma.JobVariant[]
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CharacterInfo Barotrauma.CharacterInfo
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Connection Barotrauma.Networking.NetworkConnection
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Karma System.Single|number
---`Getter Public Instance`
---@field KickVoteCount System.Int32|integer
---`Getter Public Static`
---@field ClientList System.Collections.Generic.IReadOnlyList*1Barotrauma*Networking*Client|Barotrauma.Networking.Client[]
---`Getter Public Instance`
---@field SteamID System.UInt64|integer
---`Getter Public Instance`
---@field AccountId Barotrauma.Option*1Barotrauma*Networking*AccountId
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Character Barotrauma.Character
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SpectatePos System.Nullable*1Microsoft*Xna*Framework*Vector2
---`Getter Public Instance`
---@field Spectating System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Muted System.Boolean|boolean
---`Getter Public Instance`
---@field HasPermissions System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field VoipQueue Barotrauma.Networking.VoipQueue
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field InGame System.Boolean|boolean
_G['Client'] = {}

---`Method Public Instance`
---@param character Barotrauma.Character
_G['Client'].SetClientCharacter = function(character) end

---`Method Public Instance`
---@param reason? System.String|string
_G['Client'].Kick = function(reason) end

---`Method Public Instance`
---@param reason? System.String|string
---@param seconds? System.Single|number
_G['Client'].Ban = function(reason, seconds) end

---`Method Public Static`
---@param playerName System.String|string
_G['Client'].UnbanPlayer = function(playerName) end

---`Method Public Static`
---@param player System.String|string
---@param reason System.String|string
---@param range? System.Boolean|boolean
---@param seconds? System.Single|number
_G['Client'].BanPlayer = function(player, reason, range, seconds) end

---`Method Public Instance`
---@param permissions Barotrauma.Networking.ClientPermissions
---@return System.Boolean|boolean
_G['Client'].CheckPermission = function(permissions) end

---`Method Public Instance`
_G['Client'].InitClientSync = function() end

---`Method Public Static`
---@param name System.String|string
---@param serverSettings Barotrauma.Networking.ServerSettings
---@return System.Boolean|boolean
_G['Client'].IsValidName = function(name, serverSettings) end

---`Method Public Instance`
---@param address Barotrauma.Networking.Address
---@return System.Boolean|boolean
_G['Client'].AddressMatches = function(address) end

---`Method Public Instance`
---@param voter Barotrauma.Networking.Client
_G['Client'].AddKickVote = function(voter) end

---`Method Public Instance`
---@param voter Barotrauma.Networking.Client
_G['Client'].RemoveKickVote = function(voter) end

---`Method Public Instance`
---@param voter Barotrauma.Networking.Client
---@return System.Boolean|boolean
_G['Client'].HasKickVoteFrom = function(voter) end

---`Method Public Instance`
---@param id System.Int32|integer
---@return System.Boolean|boolean
_G['Client'].HasKickVoteFromSessionId = function(id) end

---`Method Public Static`
---@param connectedClients System.Collections.Generic.IReadOnlyList*1Barotrauma*Networking*Client|Barotrauma.Networking.Client[]
_G['Client'].UpdateKickVotes = function(connectedClients) end

---`Method Public Instance`
---@param resetKickVotes System.Boolean|boolean
_G['Client'].ResetVotes = function(resetKickVotes) end

---`Method Public Instance`
---@param permissions Barotrauma.Networking.ClientPermissions
---@param permittedConsoleCommands System.Collections.Generic.IEnumerable*1Barotrauma*DebugConsole*Command|(fun():Barotrauma.DebugConsole.Command)
_G['Client'].SetPermissions = function(permissions, permittedConsoleCommands) end

---`Method Public Instance`
---@param permission Barotrauma.Networking.ClientPermissions
_G['Client'].GivePermission = function(permission) end

---`Method Public Instance`
---@param permission Barotrauma.Networking.ClientPermissions
_G['Client'].RemovePermission = function(permission) end

---`Method Public Instance`
---@param permission Barotrauma.Networking.ClientPermissions
---@return System.Boolean|boolean
_G['Client'].HasPermission = function(permission) end

---`Method Private Instance`
_G['Client'].InitProjSpecific = function() end

---`Method Private Instance`
_G['Client'].DisposeProjSpecific = function() end

---`Method Public Instance`
---@param voteType Barotrauma.Networking.VoteType
---@return Barotrauma.Networking.Client.T
_G['Client'].GetVote = function(voteType) end

---`Method Public Instance`
---@param voteType Barotrauma.Networking.VoteType
---@param value System.Object
_G['Client'].SetVote = function(voteType, value) end

---`Method Public Instance`
---@param userId System.String|string
---@return System.Boolean|boolean
_G['Client'].SessionOrAccountIdMatches = function(userId) end

---`Method Public Instance`
---@param msg Barotrauma.Networking.IWriteMessage
_G['Client'].WritePermissions = function(msg) end

---`Method Public Static`
---@param inc Barotrauma.Networking.IReadMessage
---@param permissions Barotrauma.Networking.ClientPermissions-ref
---@param permittedCommands System.Collections.Generic.List
_G['Client'].ReadPermissions = function(inc, permissions, permittedCommands) end

---`Method Public Instance`
---@param inc Barotrauma.Networking.IReadMessage
_G['Client'].ReadPermissions = function(inc) end

---`Method Public Static`
---@param name System.String|string
---@return System.String|string
_G['Client'].SanitizeName = function(name) end

---`Method Public Instance Virtual`
_G['Client'].Dispose = function() end

---`Constructor Public Instance`
---@param name System.String|string
---@param sessionId System.Byte|integer
---@return Barotrauma.Networking.Client
_G['Client'] = function(name, sessionId) end

---`Constructor Public Instance`
---@param name System.String|string
---@param sessionId System.Byte|integer
---@return Barotrauma.Networking.Client
_G['Client'].__new = function(name, sessionId) end

