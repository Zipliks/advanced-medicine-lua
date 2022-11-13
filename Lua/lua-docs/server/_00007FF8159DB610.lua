---@meta
---@class Barotrauma.Networking.BanList : System.Object
---`Field Private Instance`
---@field bannedPlayers System.Collections.Generic.List*1Barotrauma*Networking*BannedPlayer|Barotrauma.Networking.BannedPlayer[]
---`Field Private Static`
---@field SavePath System.String|string
---`Field Private Static`
---@field LegacySavePath System.String|string
---`Getter Public Instance`
---@field BannedPlayers System.Collections.Generic.IReadOnlyList*1Barotrauma*Networking*BannedPlayer|Barotrauma.Networking.BannedPlayer[]
---`Getter Public Instance`
---@field BannedNames System.Collections.Generic.IEnumerable*1System*String|(fun():System.String|string)
---`Getter Public Instance`
---@field BannedAddresses System.Collections.Generic.IEnumerable*1Barotrauma*Either*2Barotrauma*Networking*Address*2Barotrauma*Networking*AccountId|(fun():Barotrauma.Either*1Barotrauma*Networking*Address*1Barotrauma*Networking*AccountId)
_G['BanList'] = {}

---`Method Private Instance`
_G['BanList'].LoadLegacyBanList = function() end

---`Method Private Instance`
_G['BanList'].LoadBanList = function() end

---`Method Private Instance`
_G['BanList'].RemoveExpired = function() end

---`Method Public Instance`
---@overload fun(endpoint:Barotrauma.Networking.Endpoint, reason:System.String-ref):System.Boolean|boolean
---@overload fun(address:Barotrauma.Networking.Address, reason:System.String-ref):System.Boolean|boolean
---@param accountId Barotrauma.Networking.AccountId
---@param reason System.String-ref
---@return System.Boolean|boolean
_G['BanList'].IsBanned = function(accountId, reason) end

---`Method Public Instance`
---@overload fun(name:System.String|string, endpoint:Barotrauma.Networking.Endpoint, reason:System.String|string, duration:System.Nullable*1System*TimeSpan)
---@param name System.String|string
---@param addressOrAccountId Barotrauma.Either*1Barotrauma*Networking*Address*1Barotrauma*Networking*AccountId
---@param reason System.String|string
---@param duration System.Nullable*1System*TimeSpan
_G['BanList'].BanPlayer = function(name, addressOrAccountId, reason, duration) end

---`Method Public Instance`
---@overload fun(endpoint:Barotrauma.Networking.Endpoint)
---@param addressOrAccountId Barotrauma.Either*1Barotrauma*Networking*Address*1Barotrauma*Networking*AccountId
_G['BanList'].UnbanPlayer = function(addressOrAccountId) end

---`Method Private Instance`
---@param banned Barotrauma.Networking.BannedPlayer
_G['BanList'].RemoveBan = function(banned) end

---`Method Public Instance`
_G['BanList'].Save = function() end

---`Method Public Instance`
---@param outMsg Barotrauma.Networking.IWriteMessage
---@param c Barotrauma.Networking.Client
_G['BanList'].ServerAdminWrite = function(outMsg, c) end

---`Method Public Instance`
---@param incMsg Barotrauma.Networking.IReadMessage
---@param c Barotrauma.Networking.Client
---@return System.Boolean|boolean
_G['BanList'].ServerAdminRead = function(incMsg, c) end

---`Method Private Instance`
_G['BanList'].InitProjectSpecific = function() end

---`Constructor Public Instance`
---@return Barotrauma.Networking.BanList
_G['BanList'] = function() end

---`Constructor Public Instance`
---@return Barotrauma.Networking.BanList
_G['BanList'].__new = function() end

