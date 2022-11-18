---@meta
---@class Barotrauma.MedicalClinic : System.Object
---`Field Private Instance`
---@field afflictionRequests System.Collections.Generic.List*1Barotrauma*MedicalClinic*RequestAction*2Barotrauma*MedicalClinic*AfflictionRequest|Barotrauma.MedicalClinic.RequestAction*1Barotrauma*MedicalClinic*AfflictionRequest[]
---`Field Private Instance`
---@field pendingHealRequests System.Collections.Generic.List*1Barotrauma*MedicalClinic*RequestAction*2Barotrauma*MedicalClinic*PendingRequest|Barotrauma.MedicalClinic.RequestAction*1Barotrauma*MedicalClinic*PendingRequest[]
---`Field Private Instance`
---@field clearAllRequests System.Collections.Generic.List*1Barotrauma*MedicalClinic*RequestAction*2Barotrauma*MedicalClinic*CallbackOnlyRequest|Barotrauma.MedicalClinic.RequestAction*1Barotrauma*MedicalClinic*CallbackOnlyRequest[]
---`Field Private Instance`
---@field healAllRequests System.Collections.Generic.List*1Barotrauma*MedicalClinic*RequestAction*2Barotrauma*MedicalClinic*HealRequest|Barotrauma.MedicalClinic.RequestAction*1Barotrauma*MedicalClinic*HealRequest[]
---`Field Private Instance`
---@field addRequests System.Collections.Generic.List*1Barotrauma*MedicalClinic*RequestAction*2Barotrauma*MedicalClinic*CallbackOnlyRequest|Barotrauma.MedicalClinic.RequestAction*1Barotrauma*MedicalClinic*CallbackOnlyRequest[]
---`Field Private Instance`
---@field removeRequests System.Collections.Generic.List*1Barotrauma*MedicalClinic*RequestAction*2Barotrauma*MedicalClinic*CallbackOnlyRequest|Barotrauma.MedicalClinic.RequestAction*1Barotrauma*MedicalClinic*CallbackOnlyRequest[]
---`Field Public Instance`
---@field PendingHeals System.Collections.Generic.List*1Barotrauma*MedicalClinic*NetCrewMember|Barotrauma.MedicalClinic.NetCrewMember[]
---`Field Public Instance`
---@field OnUpdate System.Action|(fun())
---`Field Private Instance`
---@field campaign Barotrauma.CampaignMode
_G['MedicalClinic'] = {}

---`Method Public Instance`
---@param info Barotrauma.CharacterInfo
---@param onReceived System.Action*1Barotrauma*MedicalClinic*AfflictionRequest|(fun(obj:Barotrauma.MedicalClinic.AfflictionRequest))
_G['MedicalClinic'].RequestAfflictions = function(info, onReceived) end

---`Method Public Instance`
---@param onReceived System.Action*1Barotrauma*MedicalClinic*PendingRequest|(fun(obj:Barotrauma.MedicalClinic.PendingRequest))
_G['MedicalClinic'].RequestLatestPending = function(onReceived) end

---`Method Public Instance`
---@param deltaTime System.Single|number
_G['MedicalClinic'].Update = function(deltaTime) end

---`Method Public Instance`
---@param character Barotrauma.MedicalClinic.NetCrewMember
---@param affliction Barotrauma.MedicalClinic.NetAffliction
---@return System.Boolean|boolean
_G['MedicalClinic'].IsAfflictionPending = function(character, affliction) end

---`Method Private Static`
---@param requestQueue System.Collections.Generic.List*1Barotrauma*MedicalClinic*RequestAction*2Barotrauma*MedicalClinic*T|Barotrauma.MedicalClinic.RequestAction*1Barotrauma*MedicalClinic*T[]
---@param result System.Action
---@return System.Boolean|boolean
_G['MedicalClinic'].TryDequeue = function(requestQueue, result) end

---`Method Private Static`
---@param requestQueue System.Collections.Generic.List*1Barotrauma*MedicalClinic*RequestAction*2Barotrauma*MedicalClinic*T|Barotrauma.MedicalClinic.RequestAction*1Barotrauma*MedicalClinic*T[]
---@param now System.DateTimeOffset
---@param onTimeout System.Action*1System*Action*2Barotrauma*MedicalClinic*T|(fun(obj:System.Action*1Barotrauma*MedicalClinic*T|(fun(obj:Barotrauma.MedicalClinic.T))))
_G['MedicalClinic'].UpdateQueue = function(requestQueue, now, onTimeout) end

---`Method Private Instance`
---@param e Barotrauma.WalletChangedEvent
_G['MedicalClinic'].OnMoneyChanged = function(e) end

---`Method Private Static`
---@return System.DateTimeOffset
_G['MedicalClinic'].GetTimeout = function() end

---`Method Private Static`
---@return System.Int32|integer
_G['MedicalClinic'].GetPing = function() end

---`Method Public Instance`
---@param onReceived System.Action*1Barotrauma*MedicalClinic*HealRequest|(fun(obj:Barotrauma.MedicalClinic.HealRequest))
_G['MedicalClinic'].HealAllButtonAction = function(onReceived) end

---`Method Public Instance`
---@param onReceived System.Action*1Barotrauma*MedicalClinic*CallbackOnlyRequest|(fun(obj:Barotrauma.MedicalClinic.CallbackOnlyRequest))
_G['MedicalClinic'].ClearAllButtonAction = function(onReceived) end

---`Method Private Instance`
_G['MedicalClinic'].ClearRequstReceived = function() end

---`Method Private Instance`
---@param inc Barotrauma.Networking.IReadMessage
_G['MedicalClinic'].HealRequestReceived = function(inc) end

---`Method Public Instance`
---@param crewMember Barotrauma.MedicalClinic.NetCrewMember
---@param onReceived System.Action*1Barotrauma*MedicalClinic*CallbackOnlyRequest|(fun(obj:Barotrauma.MedicalClinic.CallbackOnlyRequest))
_G['MedicalClinic'].AddPendingButtonAction = function(crewMember, onReceived) end

---`Method Public Instance`
---@param crewMember Barotrauma.MedicalClinic.NetCrewMember
---@param affliction Barotrauma.MedicalClinic.NetAffliction
---@param onReceived System.Action*1Barotrauma*MedicalClinic*CallbackOnlyRequest|(fun(obj:Barotrauma.MedicalClinic.CallbackOnlyRequest))
_G['MedicalClinic'].RemovePendingButtonAction = function(crewMember, affliction, onReceived) end

---`Method Private Instance`
---@param inc Barotrauma.Networking.IReadMessage
---@param flag Barotrauma.MedicalClinic.MessageFlag
_G['MedicalClinic'].NewAdditonReceived = function(inc, flag) end

---`Method Private Instance`
---@param inc Barotrauma.Networking.IReadMessage
---@param flag Barotrauma.MedicalClinic.MessageFlag
_G['MedicalClinic'].NewRemovalReceived = function(inc, flag) end

---`Method Private Static`
---@param info Barotrauma.CharacterInfo
_G['MedicalClinic'].SendAfflictionRequest = function(info) end

---`Method Private Static`
_G['MedicalClinic'].SendPendingRequest = function() end

---`Method Private Instance`
---@param inc Barotrauma.Networking.IReadMessage
_G['MedicalClinic'].AfflictionRequestReceived = function(inc) end

---`Method Private Instance`
---@param inc Barotrauma.Networking.IReadMessage
_G['MedicalClinic'].PendingRequestReceived = function(inc) end

---`Method Private Static`
---@return Barotrauma.Networking.IWriteMessage
_G['MedicalClinic'].StartSending = function() end

---`Method Private Static`
---@param netStruct Barotrauma.INetSerializableStruct
---@param header Barotrauma.MedicalClinic.NetworkHeader
---@param deliveryMethod Barotrauma.Networking.DeliveryMethod
_G['MedicalClinic'].ClientSend = function(netStruct, header, deliveryMethod) end

---`Method Public Instance`
---@param inc Barotrauma.Networking.IReadMessage
_G['MedicalClinic'].ClientRead = function(inc) end

---`Method Private Static`
---@return System.Boolean|boolean
_G['MedicalClinic'].IsOutpostInCombat = function() end

---`Method Private Instance`
---@param force? System.Boolean|boolean
---@param client? Barotrauma.Networking.Client
---@return Barotrauma.MedicalClinic.HealRequestResult
_G['MedicalClinic'].HealAllPending = function(force, client) end

---`Method Private Instance`
_G['MedicalClinic'].ClearPendingHeals = function() end

---`Method Private Instance`
---@param crewMember Barotrauma.MedicalClinic.NetCrewMember
---@param affliction Barotrauma.MedicalClinic.NetAffliction
_G['MedicalClinic'].RemovePendingAffliction = function(crewMember, affliction) end

---`Method Private Instance`
---@param crewMember Barotrauma.MedicalClinic.NetCrewMember
_G['MedicalClinic'].InsertPendingCrewMember = function(crewMember) end

---`Method Public Static`
---@param affliction Barotrauma.Affliction
---@return System.Boolean|boolean
_G['MedicalClinic'].IsHealable = function(affliction) end

---`Method Private Instance`
---@param health Barotrauma.CharacterHealth
---@return Barotrauma.NetAffliction-arr|Barotrauma.MedicalClinic.NetAffliction[]
_G['MedicalClinic'].GetAllAfflictions = function(health) end

---`Method Public Instance`
---@return System.Int32|integer
_G['MedicalClinic'].GetTotalCost = function() end

---`Method Private Instance`
---@param price System.Int32|integer
---@return System.Int32|integer
_G['MedicalClinic'].GetAdjustedPrice = function(price) end

---`Method Public Instance`
---@return System.Int32|integer
_G['MedicalClinic'].GetBalance = function() end

---`Method Public Static`
---@return System.Collections.Immutable.ImmutableArray*1Barotrauma*CharacterInfo|Barotrauma.CharacterInfo[]
_G['MedicalClinic'].GetCrewCharacters = function() end

---`Constructor Public Instance`
---@param campaign Barotrauma.CampaignMode
---@return Barotrauma.MedicalClinic
_G['MedicalClinic'] = function(campaign) end

---`Constructor Public Instance`
---@param campaign Barotrauma.CampaignMode
---@return Barotrauma.MedicalClinic
_G['MedicalClinic'].__new = function(campaign) end

