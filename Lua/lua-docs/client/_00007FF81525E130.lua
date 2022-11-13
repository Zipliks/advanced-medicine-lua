---@meta
---@class Barotrauma.MedicalClinicUI : System.Object
---`Field Private Instance`
---@field medicalClinic Barotrauma.MedicalClinic
---`Field Private Instance`
---@field container Barotrauma.GUIComponent
---`Field Private Instance`
---@field prevResolution Microsoft.Xna.Framework.Point
---`Field Private Instance`
---@field pendingHealList System.Nullable*1Barotrauma*MedicalClinicUI*PendingHealList
---`Field Private Instance`
---@field crewHealList System.Nullable*1Barotrauma*MedicalClinicUI*CrewHealList
---`Field Private Instance`
---@field selectedCrewElement Barotrauma.GUIFrame
---`Field Private Instance`
---@field selectedCrewAfflictionList System.Nullable*1Barotrauma*MedicalClinicUI*PopupAfflictionList
---`Field Private Instance`
---@field isWaitingForServer System.Boolean|boolean
---`Field Private Instance`
---@field refreshTimer System.Single|number
---`Field Private Instance`
---@field playerBalanceElement System.Nullable*1Barotrauma*CampaignUI*PlayerBalanceElement
---`Field Private Static`
---@field refreshTimerMax System.Single|number
_G['MedicalClinicUI'] = {}

---`Method Private Instance`
_G['MedicalClinicUI'].OnMedicalClinicUpdated = function() end

---`Method Private Instance`
_G['MedicalClinicUI'].UpdatePopupAfflictions = function() end

---`Method Private Instance`
_G['MedicalClinicUI'].UpdatePending = function() end

---`Method Private Instance`
---@param element Barotrauma.MedicalClinicUI.PendingHealElement
_G['MedicalClinicUI'].UpdatePendingAfflictions = function(element) end

---`Method Private Instance`
_G['MedicalClinicUI'].UpdateCrewPanel = function() end

---`Method Private Static`
---@param healElement Barotrauma.MedicalClinicUI.CrewElement
_G['MedicalClinicUI'].UpdateAfflictionList = function(healElement) end

---`Method Private Static`
---@param healElement Barotrauma.MedicalClinicUI.CrewElement
---@param parent Barotrauma.GUIComponent
---@param prefab Barotrauma.AfflictionPrefab
---@param strength System.Single|number
_G['MedicalClinicUI'].CreateCrewAfflictionIcon = function(healElement, parent, prefab, strength) end

---`Method Private Instance`
_G['MedicalClinicUI'].CreateUI = function() end

---`Method Private Instance`
---@param parent Barotrauma.GUIComponent
_G['MedicalClinicUI'].CreateLeftSidePanel = function(parent) end

---`Method Private Instance`
---@param parent Barotrauma.GUIComponent
---@param healList Barotrauma.MedicalClinicUI.CrewHealList
---@param info Barotrauma.CharacterInfo
---@param panel Barotrauma.GUIComponent
_G['MedicalClinicUI'].CreateCrewEntry = function(parent, healList, info, panel) end

---`Method Private Instance`
---@param parent Barotrauma.GUIComponent
_G['MedicalClinicUI'].CreateRightSidePanel = function(parent) end

---`Method Private Instance`
---@param parent Barotrauma.GUIComponent
---@param crewMember Barotrauma.MedicalClinic.NetCrewMember
---@param healList Barotrauma.MedicalClinicUI.PendingHealList
---@param afflictions Barotrauma.NetAffliction-arr|Barotrauma.MedicalClinic.NetAffliction[]
_G['MedicalClinicUI'].CreatePendingHealElement = function(parent, crewMember, healList, afflictions) end

---`Method Private Instance`
---@param parent Barotrauma.GUIListBox
---@param crewMember Barotrauma.MedicalClinic.NetCrewMember
---@param affliction Barotrauma.MedicalClinic.NetAffliction
---@param healElement Barotrauma.MedicalClinicUI.PendingHealElement
_G['MedicalClinicUI'].CreatePendingAffliction = function(parent, crewMember, affliction, healElement) end

---`Method Private Static`
---@param parent Barotrauma.GUIComponent
---@param info Barotrauma.CharacterInfo
_G['MedicalClinicUI'].CreateCharacterBlock = function(parent, info) end

---`Method Private Instance`
---@param crewMember Barotrauma.MedicalClinic.NetCrewMember
---@param location Microsoft.Xna.Framework.Vector2
_G['MedicalClinicUI'].SelectCharacter = function(crewMember, location) end

---`Method Private Instance`
---@param parent Barotrauma.GUIComponent
---@param crewMember Barotrauma.MedicalClinic.NetCrewMember
---@param affliction Barotrauma.MedicalClinic.NetAffliction
---@return System.Collections.Immutable.ImmutableArray*1Barotrauma*GUIComponent|Barotrauma.GUIComponent[]
_G['MedicalClinicUI'].CreatePopupAffliction = function(parent, crewMember, affliction) end

---`Method Private Instance`
---@param elementsToDisable System.Collections.Immutable.ImmutableArray*1Barotrauma*GUIComponent|Barotrauma.GUIComponent[]
---@param crewMember Barotrauma.MedicalClinic.NetCrewMember
---@param afflictions System.Collections.Immutable.ImmutableArray*1Barotrauma*MedicalClinic*NetAffliction|Barotrauma.MedicalClinic.NetAffliction[]
_G['MedicalClinicUI'].AddPending = function(elementsToDisable, crewMember, afflictions) end

---`Method Public Static`
---@param text System.String|string
---@param textBlock Barotrauma.GUITextBlock
---@param bounds Microsoft.Xna.Framework.Rectangle
---@param layoutGroups? System.Nullable*1System*Collections*Immutable*ImmutableArray*2Barotrauma*GUILayoutGroup
_G['MedicalClinicUI'].EnsureTextDoesntOverflow = function(text, textBlock, bounds, layoutGroups) end

---`Method Public Instance`
_G['MedicalClinicUI'].RequestLatestPending = function() end

---`Method Public Instance`
_G['MedicalClinicUI'].ClosePopup = function() end

---`Method Private Static`
---@param result Barotrauma.MedicalClinic.RequestResult
---@return Barotrauma.LocalizedString
_G['MedicalClinicUI'].GetErrorText = function(result) end

---`Method Private Instance`
---@return System.Collections.Immutable.ImmutableArray*1Barotrauma*MedicalClinic*NetCrewMember|Barotrauma.MedicalClinic.NetCrewMember[]
_G['MedicalClinicUI'].GetPendingCharacters = function() end

---`Method Private Static`
---@param state Barotrauma.MedicalClinicUI.ElementState
---@param elements System.Collections.Immutable.ImmutableArray*1Barotrauma*GUIComponent|Barotrauma.GUIComponent[]
_G['MedicalClinicUI'].ToggleElements = function(state, elements) end

---`Method Private Static`
---@param ... Barotrauma.GUILayoutGroup
_G['MedicalClinicUI'].RecalculateLayouts = function(...) end

---`Method Public Instance`
---@param deltaTime System.Single|number
_G['MedicalClinicUI'].Update = function(deltaTime) end

---`Constructor Public Instance`
---@param clinic Barotrauma.MedicalClinic
---@param parent Barotrauma.GUIComponent
---@return Barotrauma.MedicalClinicUI
_G['MedicalClinicUI'] = function(clinic, parent) end

---`Constructor Public Instance`
---@param clinic Barotrauma.MedicalClinic
---@param parent Barotrauma.GUIComponent
---@return Barotrauma.MedicalClinicUI
_G['MedicalClinicUI'].__new = function(clinic, parent) end

