---@meta
---@class Barotrauma.Networking.BannedPlayer : System.Object
---`Field Public Instance`
---@field Name System.String|string
---`Field Public Instance`
---@field AddressOrAccountId Barotrauma.Either*1Barotrauma*Networking*Address*1Barotrauma*Networking*AccountId
---`Field Public Instance`
---@field Reason System.String|string
---`Field Public Instance`
---@field ExpirationTime System.Nullable*1System*DateTime
---`Field Public Instance`
---@field UniqueIdentifier System.UInt32|integer
_G['BannedPlayer'] = {}

---`Constructor Public Instance`
---@param uniqueIdentifier System.UInt32|integer
---@param name System.String|string
---@param addressOrAccountId Barotrauma.Either*1Barotrauma*Networking*Address*1Barotrauma*Networking*AccountId
---@param reason System.String|string
---@param expiration System.Nullable*1System*DateTime
---@return Barotrauma.Networking.BannedPlayer
_G['BannedPlayer'] = function(uniqueIdentifier, name, addressOrAccountId, reason, expiration) end

---`Constructor Public Instance`
---@param uniqueIdentifier System.UInt32|integer
---@param name System.String|string
---@param addressOrAccountId Barotrauma.Either*1Barotrauma*Networking*Address*1Barotrauma*Networking*AccountId
---@param reason System.String|string
---@param expiration System.Nullable*1System*DateTime
---@return Barotrauma.Networking.BannedPlayer
_G['BannedPlayer'].__new = function(uniqueIdentifier, name, addressOrAccountId, reason, expiration) end

