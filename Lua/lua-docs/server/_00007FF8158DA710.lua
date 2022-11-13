---@meta
---@class Barotrauma.AICharacter : Barotrauma.Character
---`Field Private Instance`
---@field aiController Barotrauma.AIController
---`Getter Public Instance Virtual`
---@field AIController Barotrauma.AIController
_G['AICharacter'] = {}

---`Method Public Instance`
---@param aiController Barotrauma.AIController
_G['AICharacter'].SetAI = function(aiController) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['AICharacter'].Update = function(deltaTime, cam) end

---`Constructor Public Instance`
---@param prefab Barotrauma.CharacterPrefab
---@param position Microsoft.Xna.Framework.Vector2
---@param seed System.String|string
---@param characterInfo? Barotrauma.CharacterInfo
---@param id? System.UInt16|integer
---@param isNetworkPlayer? System.Boolean|boolean
---@param ragdoll? Barotrauma.RagdollParams
---@return Barotrauma.AICharacter
_G['AICharacter'] = function(prefab, position, seed, characterInfo, id, isNetworkPlayer, ragdoll) end

---`Constructor Public Instance`
---@param prefab Barotrauma.CharacterPrefab
---@param position Microsoft.Xna.Framework.Vector2
---@param seed System.String|string
---@param characterInfo? Barotrauma.CharacterInfo
---@param id? System.UInt16|integer
---@param isNetworkPlayer? System.Boolean|boolean
---@param ragdoll? Barotrauma.RagdollParams
---@return Barotrauma.AICharacter
_G['AICharacter'].__new = function(prefab, position, seed, characterInfo, id, isNetworkPlayer, ragdoll) end

