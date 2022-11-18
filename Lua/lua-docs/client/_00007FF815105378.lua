---@meta
---@class Barotrauma.AutoItemPlacer : System.Object
---`Field Public Static`
---@field OutputDebugInfo System.Boolean|boolean
---`Field Public Static`
---@field DefaultStartItemSet Barotrauma.Identifier
---`Field Private Static`
---@field qualityCommonnesses System.ValueTuple|System.ValueTuple*1System*Int32*1System*Single[]
_G['AutoItemPlacer'] = {}

---`Method Public Static`
---@param startItemSet? System.Nullable*1Barotrauma*Identifier
_G['AutoItemPlacer'].SpawnItems = function(startItemSet) end

---`Method Public Static`
---@param sub Barotrauma.Submarine
---@param regeneratedContainer Barotrauma.Items.Components.ItemContainer
_G['AutoItemPlacer'].RegenerateLoot = function(sub, regeneratedContainer) end

---`Method Private Static`
---@param sub Barotrauma.Submarine
---@param startItemSet System.Nullable*1Barotrauma*Identifier
_G['AutoItemPlacer'].SpawnStartItems = function(sub, startItemSet) end

---`Method Private Static`
---@param subs System.Collections.Generic.IEnumerable*1Barotrauma*Submarine|(fun():Barotrauma.Submarine)
---@param regeneratedContainer? Barotrauma.Items.Components.ItemContainer
_G['AutoItemPlacer'].CreateAndPlace = function(subs, regeneratedContainer) end

---`Method Private Static`
---@param preferredContainer Barotrauma.PreferredContainer
---@param allContainers System.Collections.Generic.IEnumerable*1Barotrauma*Items*Components*ItemContainer|(fun():Barotrauma.Items.Components.ItemContainer)
---@param validContainers System.Collections.Generic.Dictionary*1Barotrauma*Items*Components*ItemContainer*1Barotrauma*PreferredContainer|{[Barotrauma.Items.Components.ItemContainer]:Barotrauma.PreferredContainer}
---@param primary System.Boolean|boolean
---@return System.Collections.Generic.Dictionary*1Barotrauma*Items*Components*ItemContainer*1Barotrauma*PreferredContainer|{[Barotrauma.Items.Components.ItemContainer]:Barotrauma.PreferredContainer}
_G['AutoItemPlacer'].GetValidContainers = function(preferredContainer, allContainers, validContainers, primary) end

---`Method Private Static`
---@param itemPrefab Barotrauma.ItemPrefab
---@param containers System.Collections.Generic.List*1Barotrauma*Items*Components*ItemContainer|Barotrauma.Items.Components.ItemContainer[]
---@param validContainer System.Collections.Generic.KeyValuePair*1Barotrauma*Items*Components*ItemContainer*1Barotrauma*PreferredContainer
---@return System.Collections.Generic.List*1Barotrauma*Item|Barotrauma.Item[]
_G['AutoItemPlacer'].CreateItems = function(itemPrefab, containers, validContainer) end

---`Constructor Private Static`
---@return Barotrauma.AutoItemPlacer
_G['AutoItemPlacer'] = function() end

---`Constructor Private Static`
---@return Barotrauma.AutoItemPlacer
_G['AutoItemPlacer'].__new = function() end

