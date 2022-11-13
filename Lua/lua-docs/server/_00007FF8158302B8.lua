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
---`Field Private Static`
---@field LastIdentifier System.UInt32|integer
---`Getter Public Instance`
---@field Expired System.Boolean|boolean
_G['BannedPlayer'] = {}

---`Constructor Public Instance`
---@param name System.String|string
---@param addressOrAccountId Barotrauma.Either*1Barotrauma*Networking*Address*1Barotrauma*Networking*AccountId
---@param reason System.String|string
---@param expirationTime System.Nullable*1System*DateTime
---@return Barotrauma.Networking.BannedPlayer
_G['BannedPlayer'] = function(name, addressOrAccountId, reason, expirationTime) end

---`Constructor Public Instance`
---@param name System.String|string
---@param addressOrAccountId Barotrauma.Either*1Barotrauma*Networking*Address*1Barotrauma*Networking*AccountId
---@param reason System.String|string
---@param expirationTime System.Nullable*1System*DateTime
---@return Barotrauma.Networking.BannedPlayer
_G['BannedPlayer'].__new = function(name, addressOrAccountId, reason, expirationTime) end

