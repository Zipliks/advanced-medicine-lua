---@meta
---@class Barotrauma.Character.AddToCrewEventData : System.ValueType
---`Field Public Instance`
---@field ItemTeamChange Barotrauma.Character.ItemTeamChange
---`Getter Public Instance Virtual`
---@field EventType Barotrauma.Character.EventType
_G['Character']['AddToCrewEventData'] = {}

---`Constructor Public Instance`
---@param teamType Barotrauma.CharacterTeamType
---@param inventoryItems System.Collections.Generic.IEnumerable*1Barotrauma*Item|(fun():Barotrauma.Item)
---@return Barotrauma.Character.AddToCrewEventData
_G['Character']['AddToCrewEventData'] = function(teamType, inventoryItems) end

---`Constructor Public Instance`
---@param teamType Barotrauma.CharacterTeamType
---@param inventoryItems System.Collections.Generic.IEnumerable*1Barotrauma*Item|(fun():Barotrauma.Item)
---@return Barotrauma.Character.AddToCrewEventData
_G['Character']['AddToCrewEventData'].__new = function(teamType, inventoryItems) end

