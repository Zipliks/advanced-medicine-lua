---@meta
---@class Barotrauma.LuaGame : System.Object
---`Field Public Instance`
---@field ForceVoice System.Nullable*1System*Boolean|boolean
---`Field Public Instance`
---@field ForceLocalVoice System.Nullable*1System*Boolean|boolean
---`Field Public Instance`
---@field Settings MoonSharp.Interpreter.DynValue
---`Field Public Instance`
---@field allowWifiChat System.Boolean|boolean
---`Field Public Instance`
---@field overrideTraitors System.Boolean|boolean
---`Field Public Instance`
---@field overrideRespawnSub System.Boolean|boolean
---`Field Public Instance`
---@field overrideSignalRadio System.Boolean|boolean
---`Field Public Instance`
---@field disableSpamFilter System.Boolean|boolean
---`Field Public Instance`
---@field disableDisconnectCharacter System.Boolean|boolean
---`Field Public Instance`
---@field enableControlHusk System.Boolean|boolean
---`Field Public Instance`
---@field updatePriorityItems System.Collections.Generic.HashSet*1Barotrauma*Item|Barotrauma.Item[]
---`Field Public Instance`
---@field updatePriorityCharacters System.Collections.Generic.HashSet*1Barotrauma*Character|Barotrauma.Character[]
---`Field Private Instance`
---@field luaAddedCommand System.Collections.Generic.List*1Barotrauma*DebugConsole*Command|Barotrauma.DebugConsole.Command[]
---`Getter Public Instance`
---@field IsSingleplayer System.Boolean|boolean
---`Getter Public Instance`
---@field IsMultiplayer System.Boolean|boolean
---`Getter Public Instance`
---@field SaveFolder System.String|string
---`Getter Public Instance`
---@field Server Barotrauma.Networking.GameServer
---`Getter Public Instance`
---@field IsDedicated System.Boolean|boolean
---`Getter Public Instance`
---@field ServerSettings Barotrauma.Networking.ServerSettings
---`Getter Public Instance`
---@field RespawnManager Barotrauma.Networking.RespawnManager
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field mapEntityUpdateInterval System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field gapUpdateInterval System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field poweredUpdateInterval System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field characterUpdateInterval System.Int32|integer
---`Getter Public Instance`
---@field RoundStarted System.Boolean|boolean
---`Getter Public Instance`
---@field GameSession Barotrauma.GameSession
---`Getter Public Instance`
---@field NetLobbyScreen Barotrauma.NetLobbyScreen
---`Getter Public Instance`
---@field GameScreen Barotrauma.GameScreen
---`Getter Public Instance`
---@field World FarseerPhysics.Dynamics.World
---`Getter Public Instance`
---@field Peer Barotrauma.Networking.ServerPeer
---`Getter Public Instance`
---@field Commands System.Collections.Generic.List*1Barotrauma*DebugConsole*Command|Barotrauma.DebugConsole.Command[]
_G['Game'] = {}

---`Method Public Instance`
---@param item Barotrauma.Item
_G['Game'].AddPriorityItem = function(item) end

---`Method Public Instance`
---@param item Barotrauma.Item
_G['Game'].RemovePriorityItem = function(item) end

---`Method Public Instance`
_G['Game'].ClearPriorityItem = function() end

---`Method Public Instance`
---@param character Barotrauma.Character
_G['Game'].AddPriorityCharacter = function(character) end

---`Method Public Instance`
---@param character Barotrauma.Character
_G['Game'].RemovePriorityCharacter = function(character) end

---`Method Public Instance`
_G['Game'].ClearPriorityCharacter = function() end

---`Method Public Instance`
---@param o System.Boolean|boolean
_G['Game'].OverrideTraitors = function(o) end

---`Method Public Instance`
---@param o System.Boolean|boolean
_G['Game'].OverrideRespawnSub = function(o) end

---`Method Public Instance`
---@param o System.Boolean|boolean
_G['Game'].AllowWifiChat = function(o) end

---`Method Public Instance`
---@param o System.Boolean|boolean
_G['Game'].OverrideSignalRadio = function(o) end

---`Method Public Instance`
---@param o System.Boolean|boolean
_G['Game'].DisableSpamFilter = function(o) end

---`Method Public Instance`
---@param o System.Boolean|boolean
_G['Game'].DisableDisconnectCharacter = function(o) end

---`Method Public Instance`
---@param o System.Boolean|boolean
_G['Game'].EnableControlHusk = function(o) end

---`Method Public Static`
---@param pos Microsoft.Xna.Framework.Vector2
---@param range? System.Single|number
---@param force? System.Single|number
---@param damage? System.Single|number
---@param structureDamage? System.Single|number
---@param itemDamage? System.Single|number
---@param empStrength? System.Single|number
---@param ballastFloraStrength? System.Single|number
_G['Game'].Explode = function(pos, range, force, damage, structureDamage, itemDamage, empStrength, ballastFloraStrength) end

---`Method Public Static`
---@param name System.String|string
---@param pos Microsoft.Xna.Framework.Vector2
---@param inventory? System.Boolean|boolean
---@param character? Barotrauma.Character
---@return System.String|string
_G['Game'].SpawnItem = function(name, pos, inventory, character) end

---`Method Public Static`
---@return Barotrauma.ContentPackage-arr|Barotrauma.ContentPackage[]
_G['Game'].GetEnabledContentPackages = function() end

---`Method Public Static`
---@param itemNameOrId System.String|string
---@return Barotrauma.ItemPrefab
_G['Game'].GetItemPrefab = function(itemNameOrId) end

---`Method Public Static`
---@return Barotrauma.Submarine
_G['Game'].GetRespawnSub = function() end

---`Method Public Static`
---@param sub Barotrauma.Submarine
---@return Barotrauma.Items.Components.Steering
_G['Game'].GetSubmarineSteering = function(sub) end

---`Method Public Static`
---@param item Barotrauma.Item
---@return Barotrauma.Items.Components.WifiComponent
_G['Game'].GetWifiComponent = function(item) end

---`Method Public Static`
---@param item Barotrauma.Item
---@return Barotrauma.Items.Components.LightComponent
_G['Game'].GetLightComponent = function(item) end

---`Method Public Static`
---@param item Barotrauma.Item
---@return Barotrauma.Items.Components.CustomInterface
_G['Game'].GetCustomInterface = function(item) end

---`Method Public Static`
---@param item Barotrauma.Item
---@return Barotrauma.Items.Components.Fabricator
_G['Game'].GetFabricatorComponent = function(item) end

---`Method Public Static`
---@param item Barotrauma.Item
---@return Barotrauma.Items.Components.Holdable
_G['Game'].GetHoldableComponent = function(item) end

---`Method Public Static`
---@param command System.String|string
_G['Game'].ExecuteCommand = function(command) end

---`Method Public Static`
---@param value System.String|string
---@param stepsTaken? System.Int32|integer
---@param sender? Barotrauma.Character
---@param source? Barotrauma.Item
---@param power? System.Single|number
---@param strength? System.Single|number
---@return Barotrauma.Items.Components.Signal
_G['Game'].CreateSignal = function(value, stepsTaken, sender, source, power, strength) end

---`Method Public Instance`
---@param name System.String|string
_G['Game'].RemoveCommand = function(name) end

---`Method Public Instance`
---@param name System.String|string
---@param help System.String|string
---@param onExecute Barotrauma.LuaCsAction|(fun(...:System.Object))
---@param getValidArgs? Barotrauma.LuaCsFunc|(fun(...:System.Object):System.Object)
---@param isCheat? System.Boolean|boolean
_G['Game'].AddCommand = function(name, help, onExecute, getValidArgs, isCheat) end

---`Method Public Instance`
---@param names System.String|string
---@param onExecute System.Object
_G['Game'].AssignOnExecute = function(names, onExecute) end

---`Method Public Instance`
---@param path System.String|string
_G['Game'].SaveGame = function(path) end

---`Method Public Instance`
---@param path System.String|string
_G['Game'].LoadGame = function(path) end

---`Method Public Instance`
---@param path System.String|string
_G['Game'].LoadCampaign = function(path) end

---`Method Public Static`
---@overload fun(msg:System.String|string, messageType?:System.Nullable*1Barotrauma*Networking*ChatMessageType, sender?:Barotrauma.Networking.Client, character?:Barotrauma.Character)
---@param msg System.String|string
---@param messageType System.Int32|integer
---@param sender? Barotrauma.Networking.Client
---@param character? Barotrauma.Character
_G['Game'].SendMessage = function(msg, messageType, sender, character) end

---`Method Public Static`
---@param client Barotrauma.Networking.Client
---@param msg System.String|string
---@param missionid Barotrauma.Identifier
---@param type Barotrauma.Networking.TraitorMessageType
_G['Game'].SendTraitorMessage = function(client, msg, missionid, type) end

---`Method Public Static`
---@overload fun(sendername:System.String|string, text:System.String|string, sender:Barotrauma.Character, messageType?:Barotrauma.Networking.ChatMessageType, client?:Barotrauma.Networking.Client, iconStyle?:System.String|string)
---@param chatMessage Barotrauma.Networking.ChatMessage
---@param client Barotrauma.Networking.Client
_G['Game'].SendDirectChatMessage = function(chatMessage, client) end

---`Method Public Static`
---@param message System.String|string
---@param type Barotrauma.Networking.ServerLog.MessageType
_G['Game'].Log = function(message, type) end

---`Method Public Static`
_G['Game'].DispatchRespawnSub = function() end

---`Method Public Static`
_G['Game'].StartGame = function() end

---`Method Public Static`
_G['Game'].EndGame = function() end

---`Method Public Instance`
---@param names System.String|string
---@param onExecute System.Object
_G['Game'].AssignOnClientRequestExecute = function(names, onExecute) end

---`Method Public Instance`
_G['Game'].Stop = function() end

---`Constructor Public Instance`
---@return Barotrauma.LuaGame
_G['Game'] = function() end

---`Constructor Public Instance`
---@return Barotrauma.LuaGame
_G['Game'].__new = function() end

