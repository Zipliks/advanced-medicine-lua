---@meta
Player = {}

---@return Barotrauma.Character[]
function Player.GetAllCharacters() end

---@return Barotrauma.Networking.Client[]
function Player.GetAllClients() end

---@param client Barotrauma.Networking.Client
---@param character Barotrauma.Character
function Player.SetClientCharacter(client, character) end

---@param character Barotrauma.Character
---@param team Barotrauma.CharacterTeamType
function Player.SetCharacterTeam(character, team) end

---@param client Barotrauma.Networking.Client
---@param team Barotrauma.CharacterTeamType
function Player.SetClientTeam(client, team) end

---@param client Barotrauma.Networking.Client
---@param reason string
function Player.Kick(client, reason) end

---@param client Barotrauma.Networking.Client
---@param reason string
---@param range boolean
---@param seconds number
function Player.Ban(client, reason, range, seconds) end

---@param player string
---@param endpoint string
function Player.UnbanPlayer(player, endpoint) end

---@param character Barotrauma.Character
---@param range number
function Player.SetRadioRange(character, range) end

---@param client Barotrauma.Networking.Client
---@param permissions Barotrauma.Networking.ClientPermissions
function Player.CheckPermission(client, permissions) end

return Player
