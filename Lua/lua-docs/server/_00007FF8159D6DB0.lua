---@meta
---@class Barotrauma.Networking.ServerSettings : System.Object
---`Field Public Instance`
---@field LastUpdateIdForFlag System.Collections.Generic.Dictionary*1Barotrauma*Networking*ServerSettings*NetFlags*1System*UInt16|{[Barotrauma.Networking.ServerSettings.NetFlags]:System.UInt16|integer}
---`Field Public Instance`
---@field ServerDetailsChanged System.Boolean|boolean
---`Field Private Instance`
---@field netProperties System.Collections.Generic.Dictionary*1System*UInt32*1Barotrauma*Networking*ServerSettings*NetPropertyData|{[System.UInt32|integer]:Barotrauma.Networking.ServerSettings.NetPropertyData}
---`Field Private Instance`
---@field serverName System.String|string
---`Field Private Instance`
---@field serverMessageText System.String|string
---`Field Public Instance`
---@field Port System.Int32|integer
---`Field Public Instance`
---@field QueryPort System.Int32|integer
---`Field Public Instance`
---@field ListenIPAddress System.Net.IPAddress
---`Field Public Instance`
---@field EnableUPnP System.Boolean|boolean
---`Field Public Instance`
---@field ServerLog Barotrauma.Networking.ServerLog
---`Field Private Instance`
---@field selectedLevelDifficulty System.Single|number
---`Field Private Instance`
---@field password System.String|string
---`Field Public Instance`
---@field AutoRestartTimer System.Single|number
---`Field Private Instance`
---@field autoRestart System.Boolean|boolean
---`Field Public Instance`
---@field IsPublic System.Boolean|boolean
---`Field Private Instance`
---@field maxPlayers System.Int32|integer
---`Field Private Instance`
---@field tickRate System.Int32|integer
---`Field Private Instance`
---@field allowSpectating System.Boolean|boolean
---`Field Private Instance`
---@field voiceChatEnabled System.Boolean|boolean
---`Field Private Instance`
---@field playstyleSelection Barotrauma.Networking.PlayStyle
---`Field Private Instance`
---@field allowRespawn System.Boolean|boolean
---`Field Private Instance`
---@field traitorsEnabled Barotrauma.Networking.YesNoMaybe
---`Field Private Instance`
---@field subSelectionMode Barotrauma.Networking.SelectionMode
---`Field Private Instance`
---@field modeSelectionMode Barotrauma.Networking.SelectionMode
---`Field Private Instance`
---@field karmaEnabled System.Boolean|boolean
---`Field Private Instance`
---@field karmaPreset System.String|string
---`Field Private Instance`
---@field allowSubVoting System.Boolean|boolean
---`Field Private Instance`
---@field allowModeVoting System.Boolean|boolean
---`Field Public Static`
---@field ClientPermissionsFile System.String|string
---`Field Public Static`
---@field SubmarineSeparatorChar System.Char
---`Field Public Static`
---@field PermissionPresetFile System.String|string
---`Field Public Static`
---@field SettingsFile System.String|string
---`Field Public Static`
---@field MaxExtraCargoItemsOfType System.Int32|integer
---`Field Public Static`
---@field MaxExtraCargoItemTypes System.Int32|integer
---`Getter Public Instance Virtual`
---@field Name System.String|string
---`Getter Public Instance Virtual`
---<br/>`Setter Private Instance`
---@field SerializableProperties System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1Barotrauma*SerializableProperty|{[Barotrauma.Identifier]:Barotrauma.SerializableProperty}
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ServerName System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ServerMessageText System.String|string
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field MonsterEnabled System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1System*Boolean|{[Barotrauma.Identifier]:System.Boolean|boolean}
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ExtraCargo System.Collections.Generic.Dictionary*1Barotrauma*ItemPrefab*1System*Int32|{[Barotrauma.ItemPrefab]:System.Int32|integer}
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field HiddenSubs System.Collections.Generic.HashSet*1System*String|System.String|string[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field ClientPermissions System.Collections.Generic.List*1Barotrauma*Networking*ServerSettings*SavedClientPermission|Barotrauma.Networking.ServerSettings.SavedClientPermission[]
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TickRate System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field RandomizeSeed System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field UseRespawnShuttle System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field RespawnInterval System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field MaxTransportTime System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field MinRespawnRatio System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AutoRestartInterval System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field StartWhenClientsReady System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field StartWhenClientsReadyRatio System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AllowSpectating System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SaveServerLogs System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AllowModDownloads System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AllowRagdollButton System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AllowFileTransfers System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field VoiceChatEnabled System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field PlayStyle Barotrauma.Networking.PlayStyle
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field LosMode Barotrauma.LosMode
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field LinesPerLogFile System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AutoRestart System.Boolean|boolean
---`Getter Public Instance`
---@field HasPassword System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AllowVoteKick System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AllowEndVoting System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AllowRespawn System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field BotCount System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MaxBotCount System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field BotSpawnMode Barotrauma.Networking.BotSpawnMode
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DisableBotConversations System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SelectedLevelDifficulty System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AllowDisguises System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AllowRewiring System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field LockAllDefaultWires System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AllowLinkingWifiToChat System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AllowFriendlyFire System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DestructibleOutposts System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field KillableNPCs System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field BanAfterWrongPassword System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field MaxPasswordRetriesBeforeBan System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SelectedSubmarine System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SelectedShuttle System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TraitorsEnabled Barotrauma.Networking.YesNoMaybe
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TraitorsMinPlayerCount System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TraitorsMinStartDelay System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TraitorsMaxStartDelay System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TraitorsMinRestartDelay System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TraitorsMaxRestartDelay System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SubSelectionMode Barotrauma.Networking.SelectionMode
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ModeSelectionMode Barotrauma.Networking.SelectionMode
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field BanList Barotrauma.Networking.BanList
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field EndVoteRequiredRatio System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field VoteRequiredRatio System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field VoteTimeout System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field KickVoteRequiredRatio System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field DisallowKickVoteTime System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field KillDisconnectedTime System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field KickAFKTime System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field KarmaEnabled System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field KarmaPreset System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field GameModeIdentifier Barotrauma.Identifier
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MissionType System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MaxPlayers System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AllowedRandomMissionTypes System.Collections.Generic.List*1Barotrauma*MissionType|Barotrauma.MissionType[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AutoBanTime System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field MaxAutoBanTime System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field LootedMoneyDestination Barotrauma.Networking.LootedMoneyDestination
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MaximumMoneyTransferRequest System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field CampaignSettings Barotrauma.CampaignSettings
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AllowSubVoting System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field AllowModeVoting System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field AllowedClientNameChars System.Collections.Generic.List*1Barotrauma*Range*2System*Int32|Barotrauma.Range*1System*Int32[]
_G['ServerSettings'] = {}

---`Method Private Instance`
_G['ServerSettings'].InitMonstersEnabled = function() end

---`Method Private Static`
---@param monsterEnabled System.Collections.Generic.IReadOnlyDictionary*1Barotrauma*Identifier*1System*Boolean|{[Barotrauma.Identifier]:System.Boolean|boolean}
---@return System.Collections.Generic.IReadOnlyList*1Barotrauma*Identifier|Barotrauma.Identifier[]
_G['ServerSettings'].ExtractAndSortKeys = function(monsterEnabled) end

---`Method Public Instance`
---@param inc Barotrauma.Networking.IReadMessage
_G['ServerSettings'].ReadMonsterEnabled = function(inc) end

---`Method Public Instance`
---@param msg Barotrauma.Networking.IWriteMessage
---@param monsterEnabled? System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1System*Boolean|{[Barotrauma.Identifier]:System.Boolean|boolean}
_G['ServerSettings'].WriteMonsterEnabled = function(msg, monsterEnabled) end

---`Method Public Instance`
---@param msg Barotrauma.Networking.IReadMessage
---@return System.Boolean|boolean
_G['ServerSettings'].ReadExtraCargo = function(msg) end

---`Method Public Instance`
---@param msg Barotrauma.Networking.IWriteMessage
_G['ServerSettings'].WriteExtraCargo = function(msg) end

---`Method Public Instance`
---@param msg Barotrauma.Networking.IReadMessage
_G['ServerSettings'].ReadHiddenSubs = function(msg) end

---`Method Public Instance`
---@param msg Barotrauma.Networking.IWriteMessage
_G['ServerSettings'].WriteHiddenSubs = function(msg) end

---`Method Public Instance`
---@param password System.String|string
_G['ServerSettings'].SetPassword = function(password) end

---`Method Public Static`
---@param password System.Byte-arr|System.Byte|integer[]
---@param salt System.Int32|integer
---@return System.Byte-arr|System.Byte|integer[]
_G['ServerSettings'].SaltPassword = function(password, salt) end

---`Method Public Instance`
---@param input System.Byte-arr|System.Byte|integer[]
---@param salt System.Int32|integer
---@return System.Boolean|boolean
_G['ServerSettings'].IsPasswordCorrect = function(input, salt) end

---`Method Public Instance`
---@param flag Barotrauma.Networking.ServerSettings.NetFlags
_G['ServerSettings'].UpdateFlag = function(flag) end

---`Method Public Instance`
---@return Barotrauma.Networking.ServerSettings.NetFlags
_G['ServerSettings'].UnsentFlags = function() end

---`Method Private Instance`
---@param c Barotrauma.Networking.Client
---@param flag Barotrauma.Networking.ServerSettings.NetFlags
---@return System.Boolean|boolean
_G['ServerSettings'].IsFlagRequired = function(c, flag) end

---`Method Public Instance`
---@param c Barotrauma.Networking.Client
---@return Barotrauma.Networking.ServerSettings.NetFlags
_G['ServerSettings'].GetRequiredFlags = function(c) end

---`Method Public Instance`
_G['ServerSettings'].ForcePropertyUpdate = function() end

---`Method Private Instance`
---@param outMsg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
_G['ServerSettings'].WriteNetProperties = function(outMsg, c) end

---`Method Public Instance`
---@param outMsg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
_G['ServerSettings'].ServerAdminWrite = function(outMsg, c) end

---`Method Public Instance`
---@param outMsg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
_G['ServerSettings'].ServerWrite = function(outMsg, c) end

---`Method Public Instance`
---@param incMsg Barotrauma.Networking.IReadMessage
---@param c Barotrauma.Networking.Client
_G['ServerSettings'].ServerRead = function(incMsg, c) end

---`Method Public Instance`
_G['ServerSettings'].SaveSettings = function() end

---`Method Private Instance`
_G['ServerSettings'].LoadSettings = function() end

---`Method Public Instance`
---@param current? System.String|string
---@return System.String|string
_G['ServerSettings'].SelectNonHiddenSubmarine = function(current) end

---`Method Public Instance`
_G['ServerSettings'].LoadClientPermissions = function() end

---`Method Public Instance`
_G['ServerSettings'].SaveClientPermissions = function() end

---`Method Private Instance`
_G['ServerSettings'].InitProjSpecific = function() end

---`Constructor Private Static`
---@overload fun():Barotrauma.Networking.ServerSettings
---@param networkMember Barotrauma.Networking.NetworkMember
---@param serverName System.String|string
---@param port System.Int32|integer
---@param queryPort System.Int32|integer
---@param maxPlayers System.Int32|integer
---@param isPublic System.Boolean|boolean
---@param enableUPnP System.Boolean|boolean
---@param listenIp System.Net.IPAddress
---@return Barotrauma.Networking.ServerSettings
_G['ServerSettings'] = function(networkMember, serverName, port, queryPort, maxPlayers, isPublic, enableUPnP, listenIp) end

---`Constructor Private Static`
---@overload fun():Barotrauma.Networking.ServerSettings
---@param networkMember Barotrauma.Networking.NetworkMember
---@param serverName System.String|string
---@param port System.Int32|integer
---@param queryPort System.Int32|integer
---@param maxPlayers System.Int32|integer
---@param isPublic System.Boolean|boolean
---@param enableUPnP System.Boolean|boolean
---@param listenIp System.Net.IPAddress
---@return Barotrauma.Networking.ServerSettings
_G['ServerSettings'].__new = function(networkMember, serverName, port, queryPort, maxPlayers, isPublic, enableUPnP, listenIp) end

---`Constructor Public Instance`
---@overload fun():Barotrauma.Networking.ServerSettings
---@param networkMember Barotrauma.Networking.NetworkMember
---@param serverName System.String|string
---@param port System.Int32|integer
---@param queryPort System.Int32|integer
---@param maxPlayers System.Int32|integer
---@param isPublic System.Boolean|boolean
---@param enableUPnP System.Boolean|boolean
---@param listenIp System.Net.IPAddress
---@return Barotrauma.Networking.ServerSettings
_G['ServerSettings'] = function(networkMember, serverName, port, queryPort, maxPlayers, isPublic, enableUPnP, listenIp) end

---`Constructor Public Instance`
---@overload fun():Barotrauma.Networking.ServerSettings
---@param networkMember Barotrauma.Networking.NetworkMember
---@param serverName System.String|string
---@param port System.Int32|integer
---@param queryPort System.Int32|integer
---@param maxPlayers System.Int32|integer
---@param isPublic System.Boolean|boolean
---@param enableUPnP System.Boolean|boolean
---@param listenIp System.Net.IPAddress
---@return Barotrauma.Networking.ServerSettings
_G['ServerSettings'].__new = function(networkMember, serverName, port, queryPort, maxPlayers, isPublic, enableUPnP, listenIp) end

