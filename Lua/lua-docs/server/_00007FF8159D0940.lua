---@meta
---@class Barotrauma.EventManager : System.Object
---`Field Private Instance`
---@field level Barotrauma.Level
---`Field Private Instance`
---@field preloadedSprites System.Collections.Generic.List*1Barotrauma*Sprite|Barotrauma.Sprite[]
---`Field Private Instance`
---@field currentIntensity System.Single|number
---`Field Private Instance`
---@field targetIntensity System.Single|number
---`Field Private Instance`
---@field musicIntensity System.Single|number
---`Field Private Instance`
---@field eventThreshold System.Single|number
---`Field Private Instance`
---@field eventCoolDown System.Single|number
---`Field Private Instance`
---@field intensityUpdateTimer System.Single|number
---`Field Private Instance`
---@field pathFinder Barotrauma.PathFinder
---`Field Private Instance`
---@field totalPathLength System.Single|number
---`Field Private Instance`
---@field calculateDistanceTraveledTimer System.Single|number
---`Field Private Instance`
---@field distanceTraveled System.Single|number
---`Field Private Instance`
---@field avgCrewHealth System.Single|number
---`Field Private Instance`
---@field avgHullIntegrity System.Single|number
---`Field Private Instance`
---@field floodingAmount System.Single|number
---`Field Private Instance`
---@field fireAmount System.Single|number
---`Field Private Instance`
---@field enemyDanger System.Single|number
---`Field Private Instance`
---@field monsterStrength System.Single|number
---`Field Public Instance`
---@field CumulativeMonsterStrengthMain System.Single|number
---`Field Public Instance`
---@field CumulativeMonsterStrengthRuins System.Single|number
---`Field Public Instance`
---@field CumulativeMonsterStrengthWrecks System.Single|number
---`Field Public Instance`
---@field CumulativeMonsterStrengthCaves System.Single|number
---`Field Private Instance`
---@field roundDuration System.Single|number
---`Field Private Instance`
---@field isCrewAway System.Boolean|boolean
---`Field Private Instance`
---@field crewAwayResetTimer System.Single|number
---`Field Private Instance`
---@field crewAwayDuration System.Single|number
---`Field Private Instance`
---@field pendingEventSets System.Collections.Generic.List*1Barotrauma*EventSet|Barotrauma.EventSet[]
---`Field Private Instance`
---@field selectedEvents System.Collections.Generic.Dictionary*1Barotrauma*EventSet*1System*Collections*Generic*List*2Barotrauma*Event|{[Barotrauma.EventSet]:System.Collections.Generic.List*1Barotrauma*Event|Barotrauma.Event[]}
---`Field Private Instance`
---@field activeEvents System.Collections.Generic.List*1Barotrauma*Event|Barotrauma.Event[]
---`Field Private Instance`
---@field finishedEvents System.Collections.Generic.HashSet*1Barotrauma*Event|Barotrauma.Event[]
---`Field Private Instance`
---@field nonRepeatableEvents System.Collections.Generic.HashSet*1Barotrauma*EventPrefab|Barotrauma.EventPrefab[]
---`Field Private Instance`
---@field settings Barotrauma.EventManagerSettings
---`Field Private Instance`
---@field isClient System.Boolean|boolean
---`Field Public Instance`
---@field QueuedEvents System.Collections.Generic.Queue*1Barotrauma*Event|(fun():Barotrauma.Event)
---`Field Private Instance`
---@field timeStamps System.Collections.Generic.List*1Barotrauma*EventManager*TimeStamp|Barotrauma.EventManager.TimeStamp[]
---`Field Public Instance`
---@field Enabled System.Boolean|boolean
---`Field Private Instance`
---@field rand Barotrauma.MTRandom
---`Field Private Instance`
---@field eventsInitialized System.Boolean|boolean
---`Field Private Static`
---@field IntensityUpdateInterval System.Single|number
---`Field Private Static`
---@field CalculateDistanceTraveledInterval System.Single|number
---`Field Private Static`
---@field MaxEventHistory System.Int32|integer
---`Field Private Static`
---@field CrewAwayResetDelay System.Single|number
---`Getter Public Instance`
---@field CurrentIntensity System.Single|number
---`Getter Public Instance`
---@field MusicIntensity System.Single|number
---`Getter Public Instance`
---@field ActiveEvents System.Collections.Generic.List*1Barotrauma*Event|Barotrauma.Event[]
_G['EventManager'] = {}

---`Method Public Instance`
---@param inc Barotrauma.Networking.IReadMessage
---@param sender Barotrauma.Networking.Client
_G['EventManager'].ServerRead = function(inc, sender) end

---`Method Public Instance`
---@param e Barotrauma.Event
_G['EventManager'].AddTimeStamp = function(e) end

---`Method Public Instance`
---@param level Barotrauma.Level
_G['EventManager'].StartRound = function(level) end

---`Method Private Instance`
_G['EventManager'].SelectSettings = function() end

---`Method Public Instance`
---@return System.Collections.Generic.IEnumerable*1Barotrauma*ContentFile|(fun():Barotrauma.ContentFile)
_G['EventManager'].GetFilesToPreload = function() end

---`Method Public Instance`
---@param contentFiles System.Collections.Generic.IEnumerable*1Barotrauma*ContentFile|(fun():Barotrauma.ContentFile)
_G['EventManager'].PreloadContent = function(contentFiles) end

---`Method Public Instance`
_G['EventManager'].EndRound = function() end

---`Method Public Instance`
_G['EventManager'].RegisterEventHistory = function() end

---`Method Public Instance`
_G['EventManager'].SkipEventCooldown = function() end

---`Method Private Instance`
---@param eventPrefab Barotrauma.EventPrefab
---@param baseCommonness System.Single|number
---@return System.Single|number
_G['EventManager'].CalculateCommonness = function(eventPrefab, baseCommonness) end

---`Method Private Instance`
---@param eventSet Barotrauma.EventSet
_G['EventManager'].CreateEvents = function(eventSet) end

---`Method Private Instance`
---@param eventSets System.Collections.Generic.IReadOnlyList*1Barotrauma*EventSet|Barotrauma.EventSet[]
---@param requireCampaignSet? System.Nullable*1System*Boolean|boolean
---@param random? System.Random
---@return Barotrauma.EventSet
_G['EventManager'].SelectRandomEvents = function(eventSets, requireCampaignSet, random) end

---`Method Private Instance`
---@param eventSet Barotrauma.EventSet
---@param level Barotrauma.Level
---@return System.Boolean|boolean
_G['EventManager'].IsValidForLevel = function(eventSet, level) end

---`Method Private Instance`
---@param eventSet Barotrauma.EventSet
---@param location Barotrauma.Location
---@return System.Boolean|boolean
_G['EventManager'].IsValidForLocation = function(eventSet, location) end

---`Method Private Instance`
---@param eventSet Barotrauma.EventSet
---@return System.Boolean|boolean
_G['EventManager'].CanStartEventSet = function(eventSet) end

---`Method Public Instance`
---@param deltaTime System.Single|number
_G['EventManager'].Update = function(deltaTime) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['EventManager'].CalculateCurrentIntensity = function(deltaTime) end

---`Method Private Instance`
---@return System.Single|number
_G['EventManager'].CalculateDistanceTraveled = function() end

---`Method Private Static`
---@param scriptedEvent Barotrauma.ScriptedEvent
---@return System.Collections.Generic.List*1System*Tuple*2System*Int32*2Barotrauma*EventAction|System.Tuple*1System*Int32*1Barotrauma*EventAction[]
_G['EventManager'].FindActions = function(scriptedEvent) end

---`Method Public Static`
---@return Barotrauma.ISpatialEntity
_G['EventManager'].GetRefEntity = function() end

---`Method Private Instance`
---@return System.Boolean|boolean
_G['EventManager'].IsCrewAway = function() end

---`Method Private Instance`
---@param character Barotrauma.Character
---@return System.Boolean|boolean
_G['EventManager'].IsCharacterAway = function(character) end

---`Constructor Public Instance`
---@return Barotrauma.EventManager
_G['EventManager'] = function() end

---`Constructor Public Instance`
---@return Barotrauma.EventManager
_G['EventManager'].__new = function() end

