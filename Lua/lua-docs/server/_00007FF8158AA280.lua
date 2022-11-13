---@meta
---@class Barotrauma.Reputation : System.Object
---`Field Private Instance`
---@field metaDataIdentifier Barotrauma.Identifier
---`Field Public Instance`
---@field OnReputationValueChanged Barotrauma.NamedEvent*1Barotrauma*Reputation
---`Field Public Instance`
---@field Faction Barotrauma.Faction
---`Field Public Instance`
---@field Location Barotrauma.Location
---`Field Public Static`
---@field OnAnyReputationValueChanged Barotrauma.NamedEvent*1Barotrauma*Reputation
---`Field Public Static`
---@field HostileThreshold System.Single|number
---`Field Public Static`
---@field ReputationLossPerNPCDamage System.Single|number
---`Field Public Static`
---@field ReputationLossPerStolenItemPrice System.Single|number
---`Field Public Static`
---@field ReputationLossPerWallDamage System.Single|number
---`Field Public Static`
---@field MinReputationLossPerStolenItem System.Single|number
---`Field Public Static`
---@field MaxReputationLossPerStolenItem System.Single|number
---`Getter Public Instance`
---@field Identifier Barotrauma.Identifier
---`Getter Public Instance`
---@field MinReputation System.Int32|integer
---`Getter Public Instance`
---@field MaxReputation System.Int32|integer
---`Getter Public Instance`
---@field InitialReputation System.Int32|integer
---`Getter Public Instance`
---@field Metadata Barotrauma.CampaignMetadata
---`Getter Public Instance`
---@field NormalizedValue System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Value System.Single|number
_G['Reputation'] = {}

---`Method Public Instance`
---@param newReputation System.Single|number
_G['Reputation'].SetReputation = function(newReputation) end

---`Method Public Instance`
---@param reputationChange System.Single|number
_G['Reputation'].AddReputation = function(reputationChange) end

---`Method Public Instance`
---@return Barotrauma.LocalizedString
_G['Reputation'].GetReputationName = function() end

---`Method Public Static`
---@param normalizedValue System.Single|number
---@return Barotrauma.LocalizedString
_G['Reputation'].GetReputationName = function(normalizedValue) end

---`Constructor Public Instance`
---@overload fun(metadata:Barotrauma.CampaignMetadata, location:Barotrauma.Location, identifier:Barotrauma.Identifier, minReputation:System.Int32|integer, maxReputation:System.Int32|integer, initialReputation:System.Int32|integer):Barotrauma.Reputation
---@overload fun(metadata:Barotrauma.CampaignMetadata, faction:Barotrauma.Faction, minReputation:System.Int32|integer, maxReputation:System.Int32|integer, initialReputation:System.Int32|integer):Barotrauma.Reputation
---@overload fun(metadata:Barotrauma.CampaignMetadata, faction:Barotrauma.Faction, location:Barotrauma.Location, identifier:Barotrauma.Identifier, minReputation:System.Int32|integer, maxReputation:System.Int32|integer, initialReputation:System.Int32|integer):Barotrauma.Reputation
---@return Barotrauma.Reputation
_G['Reputation'] = function() end

---`Constructor Public Instance`
---@overload fun(metadata:Barotrauma.CampaignMetadata, location:Barotrauma.Location, identifier:Barotrauma.Identifier, minReputation:System.Int32|integer, maxReputation:System.Int32|integer, initialReputation:System.Int32|integer):Barotrauma.Reputation
---@overload fun(metadata:Barotrauma.CampaignMetadata, faction:Barotrauma.Faction, minReputation:System.Int32|integer, maxReputation:System.Int32|integer, initialReputation:System.Int32|integer):Barotrauma.Reputation
---@overload fun(metadata:Barotrauma.CampaignMetadata, faction:Barotrauma.Faction, location:Barotrauma.Location, identifier:Barotrauma.Identifier, minReputation:System.Int32|integer, maxReputation:System.Int32|integer, initialReputation:System.Int32|integer):Barotrauma.Reputation
---@return Barotrauma.Reputation
_G['Reputation'].__new = function() end

---`Constructor Private Instance`
---@overload fun(metadata:Barotrauma.CampaignMetadata, location:Barotrauma.Location, identifier:Barotrauma.Identifier, minReputation:System.Int32|integer, maxReputation:System.Int32|integer, initialReputation:System.Int32|integer):Barotrauma.Reputation
---@overload fun(metadata:Barotrauma.CampaignMetadata, faction:Barotrauma.Faction, minReputation:System.Int32|integer, maxReputation:System.Int32|integer, initialReputation:System.Int32|integer):Barotrauma.Reputation
---@overload fun(metadata:Barotrauma.CampaignMetadata, faction:Barotrauma.Faction, location:Barotrauma.Location, identifier:Barotrauma.Identifier, minReputation:System.Int32|integer, maxReputation:System.Int32|integer, initialReputation:System.Int32|integer):Barotrauma.Reputation
---@return Barotrauma.Reputation
_G['Reputation'] = function() end

---`Constructor Private Instance`
---@overload fun(metadata:Barotrauma.CampaignMetadata, location:Barotrauma.Location, identifier:Barotrauma.Identifier, minReputation:System.Int32|integer, maxReputation:System.Int32|integer, initialReputation:System.Int32|integer):Barotrauma.Reputation
---@overload fun(metadata:Barotrauma.CampaignMetadata, faction:Barotrauma.Faction, minReputation:System.Int32|integer, maxReputation:System.Int32|integer, initialReputation:System.Int32|integer):Barotrauma.Reputation
---@overload fun(metadata:Barotrauma.CampaignMetadata, faction:Barotrauma.Faction, location:Barotrauma.Location, identifier:Barotrauma.Identifier, minReputation:System.Int32|integer, maxReputation:System.Int32|integer, initialReputation:System.Int32|integer):Barotrauma.Reputation
---@return Barotrauma.Reputation
_G['Reputation'].__new = function() end

---`Constructor Private Static`
---@overload fun(metadata:Barotrauma.CampaignMetadata, location:Barotrauma.Location, identifier:Barotrauma.Identifier, minReputation:System.Int32|integer, maxReputation:System.Int32|integer, initialReputation:System.Int32|integer):Barotrauma.Reputation
---@overload fun(metadata:Barotrauma.CampaignMetadata, faction:Barotrauma.Faction, minReputation:System.Int32|integer, maxReputation:System.Int32|integer, initialReputation:System.Int32|integer):Barotrauma.Reputation
---@overload fun(metadata:Barotrauma.CampaignMetadata, faction:Barotrauma.Faction, location:Barotrauma.Location, identifier:Barotrauma.Identifier, minReputation:System.Int32|integer, maxReputation:System.Int32|integer, initialReputation:System.Int32|integer):Barotrauma.Reputation
---@return Barotrauma.Reputation
_G['Reputation'] = function() end

---`Constructor Private Static`
---@overload fun(metadata:Barotrauma.CampaignMetadata, location:Barotrauma.Location, identifier:Barotrauma.Identifier, minReputation:System.Int32|integer, maxReputation:System.Int32|integer, initialReputation:System.Int32|integer):Barotrauma.Reputation
---@overload fun(metadata:Barotrauma.CampaignMetadata, faction:Barotrauma.Faction, minReputation:System.Int32|integer, maxReputation:System.Int32|integer, initialReputation:System.Int32|integer):Barotrauma.Reputation
---@overload fun(metadata:Barotrauma.CampaignMetadata, faction:Barotrauma.Faction, location:Barotrauma.Location, identifier:Barotrauma.Identifier, minReputation:System.Int32|integer, maxReputation:System.Int32|integer, initialReputation:System.Int32|integer):Barotrauma.Reputation
---@return Barotrauma.Reputation
_G['Reputation'].__new = function() end

