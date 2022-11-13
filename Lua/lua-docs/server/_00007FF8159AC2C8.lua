---@meta
---@class Barotrauma.Items.Components.RemoteController : Barotrauma.Items.Components.ItemComponent
---`Field Private Instance`
---@field currentTarget Barotrauma.Item
---`Field Private Instance`
---@field currentUser Barotrauma.Character
---`Field Private Instance`
---@field currentSub Barotrauma.Submarine
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Target System.String|string
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field OnlyInOwnSub System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Range System.Single|number
---`Getter Public Instance`
---@field TargetItem Barotrauma.Item
_G['Components']['RemoteController'] = {}

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['RemoteController'].Select = function(character) end

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
_G['Components']['RemoteController'].Equip = function(character) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['RemoteController'].Update = function(deltaTime, cam) end

---`Method Private Instance`
---@param user Barotrauma.Character
_G['Components']['RemoteController'].FindTarget = function(user) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.RemoteController
_G['Components']['RemoteController'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.RemoteController
_G['Components']['RemoteController'].__new = function(item, element) end

