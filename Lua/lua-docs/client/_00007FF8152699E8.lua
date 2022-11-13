---@meta
---@class Barotrauma.MainMenuScreen : Barotrauma.Screen
---`Field Private Instance`
---@field buttonsParent Barotrauma.GUIComponent
---`Field Private Instance`
---@field menuTabs System.Collections.Generic.Dictionary*1Barotrauma*MainMenuScreen*Tab*1Barotrauma*GUIFrame|{[Barotrauma.MainMenuScreen.Tab]:Barotrauma.GUIFrame}
---`Field Private Instance`
---@field campaignSetupUI Barotrauma.SinglePlayerCampaignSetupUI
---`Field Private Instance`
---@field serverNameBox Barotrauma.GUITextBox
---`Field Private Instance`
---@field passwordBox Barotrauma.GUITextBox
---`Field Private Instance`
---@field maxPlayersBox Barotrauma.GUITextBox
---`Field Private Instance`
---@field isPublicBox Barotrauma.GUITickBox
---`Field Private Instance`
---@field wrongPasswordBanBox Barotrauma.GUITickBox
---`Field Private Instance`
---@field karmaBox Barotrauma.GUITickBox
---`Field Private Instance`
---@field serverExecutableDropdown Barotrauma.GUIDropDown
---`Field Private Instance`
---@field joinServerButton Barotrauma.GUIButton
---`Field Private Instance`
---@field hostServerButton Barotrauma.GUIButton
---`Field Private Instance`
---@field steamWorkshopButton Barotrauma.GUIButton
---`Field Private Instance`
---@field game Barotrauma.GameMain
---`Field Private Instance`
---@field playstyleBanner Barotrauma.GUIImage
---`Field Private Instance`
---@field playstyleDescription Barotrauma.GUITextBlock
---`Field Private Instance`
---@field remoteContentContainer Barotrauma.GUIComponent
---`Field Private Instance`
---@field remoteContentDoc System.Xml.Linq.XDocument
---`Field Private Instance`
---@field selectedTab Barotrauma.MainMenuScreen.Tab
---`Field Private Instance`
---@field backgroundSprite Barotrauma.Sprite
---`Field Private Instance`
---@field titleText Barotrauma.GUIComponent
---`Field Private Instance`
---@field creditsPlayer Barotrauma.CreditsPlayer
---`Field Private Instance`
---@field tutorialBanner Barotrauma.GUIImage
---`Field Private Instance`
---@field tutorialHeader Barotrauma.GUITextBlock
---`Field Private Instance`
---@field tutorialDescription Barotrauma.GUITextBlock
---`Field Private Instance`
---@field tutorialList Barotrauma.GUIListBox
---`Field Private Instance`
---@field legalCrap Barotrauma.LocalizedString-arr|Barotrauma.LocalizedString[]
---`Field Public Static`
---@field WorkshopItemsToUpdate System.Collections.Generic.Queue*1System*UInt64|(fun():System.UInt64|integer)
---`Field Private Static`
---@field RemoteContentUrl System.String|string
_G['MainMenuScreen'] = {}

---`Method Private Instance`
_G['MainMenuScreen'].CreateTutorialTab = function() end

---`Method Private Instance`
---@param tutorial Barotrauma.Tutorials.Tutorial
_G['MainMenuScreen'].SelectTutorial = function(tutorial) end

---`Method Public Static`
_G['MainMenuScreen'].UpdateInstanceTutorialButtons = function() end

---`Method Public Instance Virtual`
_G['MainMenuScreen'].Select = function() end

---`Method Public Instance Virtual`
_G['MainMenuScreen'].Deselect = function() end

---`Method Private Instance`
---@overload fun(button:Barotrauma.GUIButton, obj:System.Object):System.Boolean|boolean
---@param tab Barotrauma.MainMenuScreen.Tab
---@return System.Boolean|boolean
_G['MainMenuScreen'].SelectTab = function(tab) end

---`Method Private Instance`
---@param screen Barotrauma.Screen
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
_G['MainMenuScreen'].SelectScreenWithWaitCursor = function(screen) end

---`Method Public Instance`
---@param button Barotrauma.GUIButton
---@param obj System.Object
---@return System.Boolean|boolean
_G['MainMenuScreen'].ReturnToMainMenu = function(button, obj) end

---`Method Private Instance`
---@param button Barotrauma.GUIButton
_G['MainMenuScreen'].ResetButtonStates = function(button) end

---`Method Public Instance`
---@param fixedSeed? System.Boolean|boolean
---@param sub? Barotrauma.Identifier
---@param difficulty? System.Single|number
---@param levelGenerationParams? Barotrauma.LevelGenerationParams
_G['MainMenuScreen'].QuickStart = function(fixedSeed, sub, difficulty, levelGenerationParams) end

---`Method Private Instance`
---@param tabToContinueTo Barotrauma.MainMenuScreen.Tab
_G['MainMenuScreen'].ShowTutorialSkipWarning = function(tabToContinueTo) end

---`Method Private Instance`
_G['MainMenuScreen'].UpdateTutorialList = function() end

---`Method Private Instance`
---@param button Barotrauma.GUIButton
---@param obj System.Object
---@return System.Boolean|boolean
_G['MainMenuScreen'].ChangeMaxPlayers = function(button, obj) end

---`Method Private Instance`
_G['MainMenuScreen'].TryStartServer = function() end

---`Method Private Instance`
---@param messageBox Barotrauma.GUIMessageBox
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
_G['MainMenuScreen'].WaitForSubmarineHashCalculations = function(messageBox) end

---`Method Private Instance`
_G['MainMenuScreen'].StartServer = function() end

---`Method Private Instance`
---@param button Barotrauma.GUIButton
---@param obj System.Object
---@return System.Boolean|boolean
_G['MainMenuScreen'].QuitClicked = function(button, obj) end

---`Method Public Instance Virtual`
_G['MainMenuScreen'].AddToGUIUpdateList = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Double|number
_G['MainMenuScreen'].Update = function(deltaTime) end

---`Method Public Instance`
---@param graphics Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['MainMenuScreen'].DrawBackground = function(graphics, spriteBatch) end

---`Method Public Instance Virtual`
---@param deltaTime System.Double|number
---@param graphics Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['MainMenuScreen'].Draw = function(deltaTime, graphics, spriteBatch) end

---`Method Private Instance`
---@param selectedSub Barotrauma.SubmarineInfo
---@param savePath System.String|string
---@param mapSeed System.String|string
---@param settings Barotrauma.CampaignSettings
_G['MainMenuScreen'].StartGame = function(selectedSub, savePath, mapSeed, settings) end

---`Method Private Instance`
---@param saveFile System.String|string
_G['MainMenuScreen'].LoadGame = function(saveFile) end

---`Method Private Instance`
_G['MainMenuScreen'].CreateCampaignSetupUI = function() end

---`Method Private Instance`
_G['MainMenuScreen'].CreateHostServerFields = function() end

---`Method Private Instance`
---@param playStyle Barotrauma.Networking.PlayStyle
_G['MainMenuScreen'].SetServerPlayStyle = function(playStyle) end

---`Method Private Instance`
_G['MainMenuScreen'].FetchRemoteContent = function() end

---`Method Private Instance`
---@param t System.Threading.Tasks.Task
_G['MainMenuScreen'].RemoteContentReceived = function(t) end

---`Constructor Public Instance`
---@overload fun(game:Barotrauma.GameMain):Barotrauma.MainMenuScreen
---@return Barotrauma.MainMenuScreen
_G['MainMenuScreen'] = function() end

---`Constructor Public Instance`
---@overload fun(game:Barotrauma.GameMain):Barotrauma.MainMenuScreen
---@return Barotrauma.MainMenuScreen
_G['MainMenuScreen'].__new = function() end

---`Constructor Private Static`
---@overload fun(game:Barotrauma.GameMain):Barotrauma.MainMenuScreen
---@return Barotrauma.MainMenuScreen
_G['MainMenuScreen'] = function() end

---`Constructor Private Static`
---@overload fun(game:Barotrauma.GameMain):Barotrauma.MainMenuScreen
---@return Barotrauma.MainMenuScreen
_G['MainMenuScreen'].__new = function() end

