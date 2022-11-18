---@meta
---@class Barotrauma.Networking.BanList : System.Object
---`Field Public Instance`
---@field localRemovedBans System.Collections.Generic.List*1System*UInt32|System.UInt32|integer[]
---`Field Private Instance`
---@field bannedPlayers System.Collections.Generic.List*1Barotrauma*Networking*BannedPlayer|Barotrauma.Networking.BannedPlayer[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field BanFrame Barotrauma.GUIComponent
---`Getter Public Instance`
---@field BannedPlayers System.Collections.Generic.IReadOnlyList*1Barotrauma*Networking*BannedPlayer|Barotrauma.Networking.BannedPlayer[]
---`Getter Public Instance`
---@field BannedNames System.Collections.Generic.IEnumerable*1System*String|(fun():System.String|string)
---`Getter Public Instance`
---@field BannedAddresses System.Collections.Generic.IEnumerable*1Barotrauma*Either*2Barotrauma*Networking*Address*2Barotrauma*Networking*AccountId|(fun():Barotrauma.Either*1Barotrauma*Networking*Address*1Barotrauma*Networking*AccountId)
_G['BanList'] = {}

---`Method Private Instance`
_G['BanList'].RecreateBanFrame = function() end

---`Method Public Instance`
---@param parent Barotrauma.GUIComponent
---@return Barotrauma.GUIComponent
_G['BanList'].CreateBanFrame = function(parent) end

---`Method Private Instance`
---@param button Barotrauma.GUIButton
---@param obj System.Object
---@return System.Boolean|boolean
_G['BanList'].RemoveBan = function(button, obj) end

---`Method Public Instance`
---@param incMsg Barotrauma.Networking.IReadMessage
_G['BanList'].ClientAdminRead = function(incMsg) end

---`Method Public Instance`
---@param outMsg Barotrauma.Networking.IWriteMessage
_G['BanList'].ClientAdminWrite = function(outMsg) end

---`Constructor Public Instance`
---@return Barotrauma.Networking.BanList
_G['BanList'] = function() end

---`Constructor Public Instance`
---@return Barotrauma.Networking.BanList
_G['BanList'].__new = function() end

