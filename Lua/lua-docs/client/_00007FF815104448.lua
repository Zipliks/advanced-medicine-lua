---@meta
---@class Barotrauma.SinglePlayerCampaign : Barotrauma.CampaignMode
---`Field Private Instance`
---@field endTimer System.Single|number
---`Field Private Instance`
---@field savedOnStart System.Boolean|boolean
---`Field Private Instance`
---@field gameOver System.Boolean|boolean
---`Field Private Instance`
---@field lastControlledCharacter Barotrauma.Character
---`Field Private Instance`
---@field showCampaignResetText System.Boolean|boolean
---`Field Public Static`
---@field MinimumInitialMoney System.Int32|integer
---`Getter Public Instance Virtual`
---@field Paused System.Boolean|boolean
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field PurchasedHullRepairs System.Boolean|boolean
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field PurchasedLostShuttles System.Boolean|boolean
---`Getter Public Instance Virtual`
---<br/>`Setter Public Instance Virtual`
---@field PurchasedItemRepairs System.Boolean|boolean
_G['SinglePlayerCampaign'] = {}

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
_G['SinglePlayerCampaign'].UpdateWhilePaused = function(deltaTime) end

---`Method Public Static`
---@param mapSeed System.String|string
---@param startingSettings Barotrauma.CampaignSettings
---@return Barotrauma.SinglePlayerCampaign
_G['SinglePlayerCampaign'].StartNew = function(mapSeed, startingSettings) end

---`Method Public Static`
---@param element System.Xml.Linq.XElement
---@return Barotrauma.SinglePlayerCampaign
_G['SinglePlayerCampaign'].Load = function(element) end

---`Method Private Instance`
_G['SinglePlayerCampaign'].InitUI = function() end

---`Method Private Instance`
_G['SinglePlayerCampaign'].CreateEndRoundButton = function() end

---`Method Public Instance Virtual`
_G['SinglePlayerCampaign'].HUDScaleChanged = function() end

---`Method Public Instance Virtual`
_G['SinglePlayerCampaign'].Start = function() end

---`Method NonPublic Instance Virtual`
_G['SinglePlayerCampaign'].LoadInitialLevel = function() end

---`Method Private Instance`
---@param level Barotrauma.LevelData
---@param mirror System.Boolean|boolean
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
_G['SinglePlayerCampaign'].DoLoadInitialLevel = function(level, mirror) end

---`Method Private Instance`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
_G['SinglePlayerCampaign'].DoInitialCameraTransition = function() end

---`Method NonPublic Instance Virtual`
---@param transitionType Barotrauma.CampaignMode.TransitionType
---@param newLevel Barotrauma.LevelData
---@param leavingSub Barotrauma.Submarine
---@param mirror System.Boolean|boolean
---@param traitorResults? System.Collections.Generic.List*1Barotrauma*TraitorMissionResult|Barotrauma.TraitorMissionResult[]
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
_G['SinglePlayerCampaign'].DoLevelTransition = function(transitionType, newLevel, leavingSub, mirror, traitorResults) end

---`Method NonPublic Instance Virtual`
_G['SinglePlayerCampaign'].EndCampaignProjSpecific = function() end

---`Method Private Instance`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*CoroutineStatus|(fun():Barotrauma.CoroutineStatus)
_G['SinglePlayerCampaign'].DoEndCampaignCameraTransition = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
_G['SinglePlayerCampaign'].Update = function(deltaTime) end

---`Method Private Instance`
---@return System.Boolean|boolean
_G['SinglePlayerCampaign'].TryEndRound = function() end

---`Method Private Instance`
_G['SinglePlayerCampaign'].GameOver = function() end

---`Method Private Instance`
_G['SinglePlayerCampaign'].EnableRoundSummaryGameOverState = function() end

---`Method Public Instance Virtual`
---@param element System.Xml.Linq.XElement
_G['SinglePlayerCampaign'].Save = function(element) end

---`Constructor Private Instance`
---@overload fun(mapSeed:System.String|string, settings:Barotrauma.CampaignSettings):Barotrauma.SinglePlayerCampaign
---@param element System.Xml.Linq.XElement
---@return Barotrauma.SinglePlayerCampaign
_G['SinglePlayerCampaign'] = function(element) end

---`Constructor Private Instance`
---@overload fun(mapSeed:System.String|string, settings:Barotrauma.CampaignSettings):Barotrauma.SinglePlayerCampaign
---@param element System.Xml.Linq.XElement
---@return Barotrauma.SinglePlayerCampaign
_G['SinglePlayerCampaign'].__new = function(element) end

