---@meta
---@class Barotrauma.GameMain : Microsoft.Xna.Framework.Game
---`Field Private Instance`
---@field loadingScreenOpen System.Boolean|boolean
---`Field Private Instance`
---@field loadingCoroutine Barotrauma.CoroutineHandle
---`Field Private Instance`
---@field fixedTime Microsoft.Xna.Framework.GameTime
---`Field Public Instance`
---@field ConnectCommand Barotrauma.Option*1Barotrauma*ConnectCommand
---`Field Private Instance`
---@field defaultViewport Microsoft.Xna.Framework.Graphics.Viewport
---`Field Private Instance`
---@field ResolutionChanged System.Action|(fun())
---`Field Private Instance`
---@field exiting System.Boolean|boolean
---`Field NonPublic Static`
---@field LuaCs Barotrauma.LuaCsSetup
---`Field Public Static`
---@field ShowFPS System.Boolean|boolean
---`Field Public Static`
---@field ShowPerf System.Boolean|boolean
---`Field Public Static`
---@field DebugDraw System.Boolean|boolean
---`Field Public Static`
---@field PerformanceCounter Barotrauma.PerformanceCounter
---`Field Private Static`
---@field performanceCounterTimer System.Diagnostics.Stopwatch
---`Field Private Static`
---@field updateCount System.Int32|integer
---`Field Public Static`
---@field Version System.Version
---`Field Public Static`
---@field ConsoleArguments System.String-arr|System.String|string[]
---`Field Public Static`
---@field GameScreen Barotrauma.GameScreen
---`Field Public Static`
---@field MainMenuScreen Barotrauma.MainMenuScreen
---`Field Public Static`
---@field NetLobbyScreen Barotrauma.NetLobbyScreen
---`Field Public Static`
---@field ModDownloadScreen Barotrauma.ModDownloadScreen
---`Field Public Static`
---@field ServerListScreen Barotrauma.ServerListScreen
---`Field Public Static`
---@field SubEditorScreen Barotrauma.SubEditorScreen
---`Field Public Static`
---@field TestScreen Barotrauma.TestScreen
---`Field Public Static`
---@field ParticleEditorScreen Barotrauma.ParticleEditorScreen
---`Field Public Static`
---@field LevelEditorScreen Barotrauma.LevelEditorScreen
---`Field Public Static`
---@field SpriteEditorScreen Barotrauma.SpriteEditorScreen
---`Field Public Static`
---@field EventEditorScreen Barotrauma.EventEditorScreen
---`Field Public Static`
---@field CharacterEditorScreen Barotrauma.CharacterEditor.CharacterEditorScreen
---`Field Public Static`
---@field CampaignEndScreen Barotrauma.CampaignEndScreen
---`Field Public Static`
---@field LightManager Barotrauma.Lights.LightManager
---`Field Public Static`
---@field SoundManager Barotrauma.Sounds.SoundManager
---`Field Private Static`
---@field gameSession Barotrauma.GameSession
---`Field Public Static`
---@field ParticleManager Barotrauma.Particles.ParticleManager
---`Field Private Static`
---@field world FarseerPhysics.Dynamics.World
---`Field Public Static`
---@field TitleScreen Barotrauma.LoadingScreen
---`Field Private Static`
---@field spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---`Field Public Static`
---@field Client Barotrauma.Networking.GameClient
---`Field Private Static`
---@field waitForKeyHit System.Boolean|boolean
---`Field Private Static`
---@field GfxProfile Microsoft.Xna.Framework.Graphics.GraphicsProfile
---`Getter Public Static`
---@field IsSingleplayer System.Boolean|boolean
---`Getter Public Static`
---@field IsMultiplayer System.Boolean|boolean
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field CurrentUpdateRate System.Int32|integer
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field MainThread System.Threading.Thread
---`Getter Public Static`
---@field VanillaContent Barotrauma.ContentPackage
---`Getter Public Static`
---<br/>`Setter Public Static`
---@field GameSession Barotrauma.GameSession
---`Getter Public Static`
---<br/>`Setter Public Static`
---@field World FarseerPhysics.Dynamics.World
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field HasLoaded System.Boolean|boolean
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field IsFirstLaunch System.Boolean|boolean
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field Instance Barotrauma.GameMain
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field GraphicsDeviceManager Microsoft.Xna.Framework.GraphicsDeviceManager
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field WindowMode Barotrauma.WindowMode
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field GraphicsWidth System.Int32|integer
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field GraphicsHeight System.Int32|integer
---`Getter Public Static`
---@field WindowActive System.Boolean|boolean
---`Getter Public Static`
---@field NetworkMember Barotrauma.Networking.NetworkMember
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field ScissorTestEnable Microsoft.Xna.Framework.Graphics.RasterizerState
---`Getter Public Instance`
---@field LoadingScreenOpen System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Paused System.Boolean|boolean
---`Getter Public Static`
---<br/>`Setter Public Static`
---@field ActiveChatMode Barotrauma.ChatMode
_G['GameMain'] = {}

---`Method Public Static`
_G['GameMain'].ResetNetLobbyScreen = function() end

---`Method Public Static`
---@param sender System.Object
---@param args Microsoft.Xna.Framework.FileDropEventArgs
_G['GameMain'].OnFileDropped = function(sender, args) end

---`Method Public Instance`
---@param recalculateFontsAndStyles? System.Boolean|boolean
_G['GameMain'].ApplyGraphicsSettings = function(recalculateFontsAndStyles) end

---`Method Public Instance`
---@param windowMode Barotrauma.WindowMode
_G['GameMain'].SetWindowMode = function(windowMode) end

---`Method Public Instance`
_G['GameMain'].ResetViewPort = function() end

---`Method NonPublic Instance Virtual`
_G['GameMain'].Initialize = function() end

---`Method NonPublic Instance Virtual`
_G['GameMain'].LoadContent = function() end

---`Method Private Instance`
---@param isSeparateThread System.Boolean|boolean
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
_G['GameMain'].Load = function(isSeparateThread) end

---`Method NonPublic Instance Virtual`
_G['GameMain'].UnloadContent = function() end

---`Method Public Instance`
---@overload fun(friend:Steamworks.Friend, connectCommand:System.String|string)
---@param connectCommand System.String|string
_G['GameMain'].OnInvitedToGame = function(connectCommand) end

---`Method Public Instance`
---@param lobby Steamworks.Data.Lobby
---@param friendId Steamworks.SteamId
_G['GameMain'].OnLobbyJoinRequested = function(lobby, friendId) end

---`Method NonPublic Instance Virtual`
---@param gameTime Microsoft.Xna.Framework.GameTime
_G['GameMain'].Update = function(gameTime) end

---`Method Public Static`
_G['GameMain'].ResetFrameTime = function() end

---`Method Private Instance`
_G['GameMain'].FixRazerCortex = function() end

---`Method NonPublic Instance Virtual`
---@param gameTime Microsoft.Xna.Framework.GameTime
_G['GameMain'].Draw = function(gameTime) end

---`Method Public Static`
---@overload fun(save:System.Boolean|boolean, showVerificationPrompt:System.Boolean|boolean)
---@param save System.Boolean|boolean
_G['GameMain'].QuitToMainMenu = function(save) end

---`Method Public Instance`
_G['GameMain'].ShowEditorDisclaimer = function() end

---`Method Public Instance`
_G['GameMain'].ShowBugReporter = function() end

---`Method Public Instance`
---@param loader System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
---@param waitKeyHit? System.Boolean|boolean
---@return Barotrauma.CoroutineHandle
_G['GameMain'].ShowLoading = function(loader, waitKeyHit) end

---`Method NonPublic Instance Virtual`
---@param sender System.Object
---@param args System.EventArgs
_G['GameMain'].OnExiting = function(sender, args) end

---`Method Public Instance`
---@param url System.String|string
---@param promptExtensionTag? System.String|string
_G['GameMain'].ShowOpenUrlInWebBrowserPrompt = function(url, promptExtensionTag) end

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

