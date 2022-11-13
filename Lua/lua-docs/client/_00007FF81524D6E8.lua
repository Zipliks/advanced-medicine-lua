---@meta
---@class Barotrauma.CrewManagement : System.Object
---`Field Private Instance`
---@field campaignUI Barotrauma.CampaignUI
---`Field Private Instance`
---@field parentComponent Barotrauma.GUIComponent
---`Field Private Instance`
---@field hireableList Barotrauma.GUIListBox
---`Field Private Instance`
---@field pendingList Barotrauma.GUIListBox
---`Field Private Instance`
---@field crewList Barotrauma.GUIListBox
---`Field Private Instance`
---@field characterPreviewFrame Barotrauma.GUIFrame
---`Field Private Instance`
---@field sortingDropDown Barotrauma.GUIDropDown
---`Field Private Instance`
---@field totalBlock Barotrauma.GUITextBlock
---`Field Private Instance`
---@field validateHiresButton Barotrauma.GUIButton
---`Field Private Instance`
---@field clearAllButton Barotrauma.GUIButton
---`Field Private Instance`
---@field playerBalanceElement System.Nullable*1Barotrauma*CampaignUI*PlayerBalanceElement
---`Field Private Instance`
---@field resolutionWhenCreated Microsoft.Xna.Framework.Point
---`Getter Private Instance`
---@field campaign Barotrauma.CampaignMode
---`Getter Private Instance`
---@field PendingHires System.Collections.Generic.List*1Barotrauma*CharacterInfo|Barotrauma.CharacterInfo[]
---`Getter Private Instance`
---@field HasPermission System.Boolean|boolean
_G['CrewManagement'] = {}

---`Method Public Instance`
_G['CrewManagement'].RefreshPermissions = function() end

---`Method Private Instance`
---@param listBox Barotrauma.GUIListBox
_G['CrewManagement'].RefreshCrewFrames = function(listBox) end

---`Method Private Instance`
_G['CrewManagement'].CreateUI = function() end

---`Method Private Instance`
---@param location Barotrauma.Location
---@param removePending System.Boolean|boolean
---@param prevLocation? Barotrauma.Location
_G['CrewManagement'].UpdateLocationView = function(location, removePending, prevLocation) end

---`Method Private Instance`
---@param location Barotrauma.Location
_G['CrewManagement'].UpdateHireables = function(location) end

---`Method Public Instance`
---@param location Barotrauma.Location
---@param availableHires System.Collections.Generic.List*1Barotrauma*CharacterInfo|Barotrauma.CharacterInfo[]
_G['CrewManagement'].SetHireables = function(location, availableHires) end

---`Method Public Instance`
_G['CrewManagement'].UpdateCrew = function() end

---`Method Private Instance`
---@param list Barotrauma.GUIListBox
---@param sortingMethod Barotrauma.CrewManagement.SortingMethod
_G['CrewManagement'].SortCharacters = function(list, sortingMethod) end

---`Method Private Instance`
---@param characterInfo Barotrauma.CharacterInfo
---@param listBox Barotrauma.GUIListBox
_G['CrewManagement'].CreateCharacterFrame = function(characterInfo, listBox) end

---`Method Private Instance`
---@param listBox Barotrauma.GUIListBox
---@param characterFrame Barotrauma.GUIFrame
---@param characterInfo Barotrauma.CharacterInfo
_G['CrewManagement'].CreateCharacterPreviewFrame = function(listBox, characterFrame, characterInfo) end

---`Method Private Instance`
---@param listBox Barotrauma.GUIListBox
---@param characterFrame Barotrauma.GUIFrame
---@param characterInfo Barotrauma.CharacterInfo
---@return System.Boolean|boolean
_G['CrewManagement'].SelectCharacter = function(listBox, characterFrame, characterInfo) end

---`Method Private Instance`
---@param characterInfo Barotrauma.CharacterInfo
---@param createNetworkMessage? System.Boolean|boolean
---@return System.Boolean|boolean
_G['CrewManagement'].AddPendingHire = function(characterInfo, createNetworkMessage) end

---`Method Private Instance`
---@param characterInfo Barotrauma.CharacterInfo
---@param setTotalHireCost? System.Boolean|boolean
---@param createNetworkMessage? System.Boolean|boolean
---@return System.Boolean|boolean
_G['CrewManagement'].RemovePendingHire = function(characterInfo, setTotalHireCost, createNetworkMessage) end

---`Method Private Instance`
---@param createNetworkMessage? System.Boolean|boolean
---@return System.Boolean|boolean
_G['CrewManagement'].RemoveAllPendingHires = function(createNetworkMessage) end

---`Method Private Instance`
_G['CrewManagement'].SetTotalHireCost = function() end

---`Method Public Instance`
---@param hires System.Collections.Generic.List*1Barotrauma*CharacterInfo|Barotrauma.CharacterInfo[]
---@param createNetworkEvent? System.Boolean|boolean
---@return System.Boolean|boolean
_G['CrewManagement'].ValidateHires = function(hires, createNetworkEvent) end

---`Method Private Instance`
---@param button Barotrauma.GUIButton
---@param userData System.Object
---@return System.Boolean|boolean
_G['CrewManagement'].CreateRenamingComponent = function(button, userData) end

---`Method Public Instance`
---@param characterInfo Barotrauma.CharacterInfo
---@param newName System.String|string
---@return System.Boolean|boolean
_G['CrewManagement'].RenameCharacter = function(characterInfo, newName) end

---`Method Private Instance`
---@param button Barotrauma.GUIButton
---@param selection System.Object
---@return System.Boolean|boolean
_G['CrewManagement'].FireCharacter = function(button, selection) end

---`Method Public Instance`
_G['CrewManagement'].Update = function() end

---`Method Public Instance`
---@param characterInfos System.Collections.Generic.List*1System*Int32|System.Int32|integer[]
---@param location Barotrauma.Location
_G['CrewManagement'].SetPendingHires = function(characterInfos, location) end

---`Method Public Instance`
---@param updatePending System.Boolean|boolean
---@param renameCharacter? System.ValueTuple*1Barotrauma*CharacterInfo*1System*String
---@param firedCharacter? Barotrauma.CharacterInfo
---@param validateHires? System.Boolean|boolean
_G['CrewManagement'].SendCrewState = function(updatePending, renameCharacter, firedCharacter, validateHires) end

---`Constructor Public Instance`
---@param campaignUI Barotrauma.CampaignUI
---@param parentComponent Barotrauma.GUIComponent
---@return Barotrauma.CrewManagement
_G['CrewManagement'] = function(campaignUI, parentComponent) end

---`Constructor Public Instance`
---@param campaignUI Barotrauma.CampaignUI
---@param parentComponent Barotrauma.GUIComponent
---@return Barotrauma.CrewManagement
_G['CrewManagement'].__new = function(campaignUI, parentComponent) end

