---@meta
---@class Barotrauma.Networking.Client : System.Object
---`Field Private Instance`
---@field mutedLocally System.Boolean|boolean
---`Field Public Instance`
---@field IsOwner System.Boolean|boolean
---`Field Public Instance`
---@field IsDownloading System.Boolean|boolean
---`Field Public Instance`
---@field Karma System.Single|number
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
---@field VoipSound Barotrauma.Sounds.VoipSound
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MutedLocally System.Boolean|boolean
---`Getter Public Instance`
---@field AllowKicking System.Boolean|boolean
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
_G['Client'].UpdateSoundPosition = function() end

---`Method Public Instance`
---@overload fun(permissions:Barotrauma.Networking.ClientPermissions, permittedConsoleCommands:System.Collections.Generic.IEnumerable*1System*String|(fun():System.String|string))
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

---`Method Public Instance`
_G['Client'].ResetVotes = function() end

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

