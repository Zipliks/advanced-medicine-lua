---@meta
---@class Barotrauma.Items.Components.ItemSound : System.Object
---`Field Public Instance`
---@field RoundSound Barotrauma.RoundSound
---`Field Public Instance`
---@field Type Barotrauma.ActionType
---`Field Public Instance`
---@field VolumeProperty Barotrauma.Identifier
---`Field Public Instance`
---@field Loop System.Boolean|boolean
---`Field Public Instance`
---@field OnlyPlayInSameSub System.Boolean|boolean
---`Getter Public Instance`
---@field VolumeMultiplier System.Single|number
---`Getter Public Instance`
---@field Range System.Single|number
_G['Components']['ItemSound'] = {}

---`Constructor Public Instance`
---@param sound Barotrauma.RoundSound
---@param type Barotrauma.ActionType
---@param loop? System.Boolean|boolean
---@param onlyPlayInSameSub? System.Boolean|boolean
---@return Barotrauma.Items.Components.ItemSound
_G['Components']['ItemSound'] = function(sound, type, loop, onlyPlayInSameSub) end

---`Constructor Public Instance`
---@param sound Barotrauma.RoundSound
---@param type Barotrauma.ActionType
---@param loop? System.Boolean|boolean
---@param onlyPlayInSameSub? System.Boolean|boolean
---@return Barotrauma.Items.Components.ItemSound
_G['Components']['ItemSound'].__new = function(sound, type, loop, onlyPlayInSameSub) end

