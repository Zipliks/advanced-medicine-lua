---@meta
---@class Barotrauma.GameMain : System.Object
---`Field Public Instance`
---@field CommandLineArgs System.String-arr|System.String|string[]
---`Field Public Static`
---@field Version System.Version
---`Field Private Static`
---@field world FarseerPhysics.Dynamics.World
---`Field Public Static`
---@field LuaCs Barotrauma.LuaCsSetup
---`Field Public Static`
---@field Server Barotrauma.Networking.GameServer
---`Field Public Static`
---@field GameSession Barotrauma.GameSession
---`Field Public Static`
---@field GameScreen Barotrauma.GameScreen
---`Field Public Static`
---@field NetLobbyScreen Barotrauma.NetLobbyScreen
---`Field Public Static`
---@field SubEditorScreen Barotrauma.Screen
---`Field Public Static`
---@field ShouldRun System.Boolean|boolean
---`Field Private Static`
---@field stopwatch System.Diagnostics.Stopwatch
---`Field Private Static`
---@field prevUpdateRates System.Collections.Generic.Queue*1System*Int32|(fun():System.Int32|integer)
---`Field Private Static`
---@field updateCount System.Int32|integer
---`Getter Public Static`
---@field IsSingleplayer System.Boolean|boolean
---`Getter Public Static`
---@field IsMultiplayer System.Boolean|boolean
---`Getter Public Static`
---<br/>`Setter Public Static`
---@field World FarseerPhysics.Dynamics.World
---`Getter Public Static`
---@field NetworkMember Barotrauma.Networking.NetworkMember
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field Instance Barotrauma.GameMain
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field MainThread System.Threading.Thread
---`Getter Public Static`
---@field VanillaContent Barotrauma.ContentPackage
_G['GameMain'] = {}

---`Method Public Instance`
_G['GameMain'].Init = function() end

---`Method Private Instance`
_G['GameMain'].CheckContentPackage = function() end

---`Method Public Instance`
_G['GameMain'].StartServer = function() end

---`Method Public Instance`
_G['GameMain'].CloseServer = function() end

---`Method Public Instance`
_G['GameMain'].Run = function() end

---`Method Public Static`
_G['GameMain'].ResetFrameTime = function() end

---`Method Public Instance`
---@param loader System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
---@param waitKeyHit? System.Boolean|boolean
---@return Barotrauma.CoroutineHandle
_G['GameMain'].ShowLoading = function(loader, waitKeyHit) end

---`Method Public Instance`
_G['GameMain'].Exit = function() end

---`Constructor Public Instance`
---@overload fun(args:System.String-arr|System.String|string[]):Barotrauma.GameMain
---@return Barotrauma.GameMain
_G['GameMain'] = function() end

---`Constructor Public Instance`
---@overload fun(args:System.String-arr|System.String|string[]):Barotrauma.GameMain
---@return Barotrauma.GameMain
_G['GameMain'].__new = function() end

---`Constructor Private Static`
---@overload fun(args:System.String-arr|System.String|string[]):Barotrauma.GameMain
---@return Barotrauma.GameMain
_G['GameMain'] = function() end

---`Constructor Private Static`
---@overload fun(args:System.String-arr|System.String|string[]):Barotrauma.GameMain
---@return Barotrauma.GameMain
_G['GameMain'].__new = function() end

