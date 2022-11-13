---@meta
---@class Barotrauma.MedicalClinic : System.Object
---`Field Private Instance`
---@field rateLimits System.Collections.Generic.Dictionary*1Barotrauma*Networking*Client*1Barotrauma*MedicalClinic*RateLimitInfo|{[Barotrauma.Networking.Client]:Barotrauma.MedicalClinic.RateLimitInfo}
---`Field Public Instance`
---@field PendingHeals System.Collections.Generic.List*1Barotrauma*MedicalClinic*NetCrewMember|Barotrauma.MedicalClinic.NetCrewMember[]
---`Field Public Instance`
---@field OnUpdate System.Action|(fun())
---`Field Private Instance`
---@field campaign Barotrauma.CampaignMode
_G['MedicalClinic'] = {}

---`Method Public Instance`
---@param inc Barotrauma.Networking.IReadMessage
---@param sender Barotrauma.Networking.Client
_G['MedicalClinic'].ServerRead = function(inc, sender) end

---`Method Private Instance`
---@param inc Barotrauma.Networking.IReadMessage
---@param client Barotrauma.Networking.Client
_G['MedicalClinic'].ProcessNewAddition = function(inc, client) end

---`Method Private Instance`
---@param inc Barotrauma.Networking.IReadMessage
---@param client Barotrauma.Networking.Client
_G['MedicalClinic'].ProcessNewRemoval = function(inc, client) end

---`Method Private Instance`
---@param client Barotrauma.Networking.Client
_G['MedicalClinic'].ProcessRequestedPending = function(client) end

---`Method Private Instance`
---@param client Barotrauma.Networking.Client
_G['MedicalClinic'].ProcessHealing = function(client) end

---`Method Private Instance`
---@param client Barotrauma.Networking.Client
_G['MedicalClinic'].ProcessClearing = function(client) end

---`Method Private Instance`
---@param inc Barotrauma.Networking.IReadMessage
---@param client Barotrauma.Networking.Client
_G['MedicalClinic'].ProcessRequestedAfflictions = function(inc, client) end

---`Method Private Instance`
---@param client Barotrauma.Networking.Client
---@return Barotrauma.MedicalClinic.RateLimitResult
_G['MedicalClinic'].CheckRateLimit = function(client) end

---`Method Private Instance`
---@return Barotrauma.Networking.IWriteMessage
_G['MedicalClinic'].StartSending = function() end

---`Method Private Instance`
---@param netStruct Barotrauma.INetSerializableStruct
---@param header Barotrauma.MedicalClinic.NetworkHeader
---@param deliveryMethod Barotrauma.Networking.DeliveryMethod
---@param targetClient? Barotrauma.Networking.Client
---@param reponseClient? Barotrauma.Networking.Client
_G['MedicalClinic'].ServerSend = function(netStruct, header, deliveryMethod, targetClient, reponseClient) end

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

