---@meta
---@class Barotrauma.DestructibleLevelWall : Barotrauma.LevelWall
---`Field Public Instance`
---@field NetworkUpdatePending System.Boolean|boolean
---`Getter Public Instance Virtual`
---@field Alpha System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Damage System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field MaxHealth System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Destroyed System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field FadeOutDuration System.Single|number
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field FadeOutTimer System.Single|number
---`Getter Public Instance Virtual`
---@field SimPosition Microsoft.Xna.Framework.Vector2
---`Getter Public Instance Virtual`
---@field WorldPosition Microsoft.Xna.Framework.Vector2
---`Getter Public Instance Virtual`
---@field Health System.Single|number
_G['DestructibleLevelWall'] = {}

---`Method Public Instance`
---@param damage System.Single|number
_G['DestructibleLevelWall'].SetDamage = function(damage) end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
_G['DestructibleLevelWall'].Update = function(deltaTime) end

---`Method Public Instance`
---@param damage System.Single|number
---@param worldPosition Microsoft.Xna.Framework.Vector2
_G['DestructibleLevelWall'].AddDamage = function(damage, worldPosition) end

---`Method Public Instance Virtual`
---@param attacker Barotrauma.Character
---@param worldPosition Microsoft.Xna.Framework.Vector2
---@param attack Barotrauma.Attack
---@param deltaTime System.Single|number
---@param playSound? System.Boolean|boolean
---@return Barotrauma.AttackResult
_G['DestructibleLevelWall'].AddDamage = function(attacker, worldPosition, attack, deltaTime, playSound) end

---`Method Private Instance`
---@param damage System.Single|number
---@param worldPosition Microsoft.Xna.Framework.Vector2
_G['DestructibleLevelWall'].AddDamageProjSpecific = function(damage, worldPosition) end

---`Method Private Instance`
_G['DestructibleLevelWall'].CreateFragments = function() end

---`Method Public Instance`
_G['DestructibleLevelWall'].Destroy = function() end

---`Constructor Public Instance`
---@param vertices System.Collections.Generic.List*1Microsoft*Xna*Framework*Vector2|Microsoft.Xna.Framework.Vector2[]
---@param color Microsoft.Xna.Framework.Color
---@param level Barotrauma.Level
---@param health? System.Nullable*1System*Single|number
---@param giftWrap? System.Boolean|boolean
---@return Barotrauma.DestructibleLevelWall
_G['DestructibleLevelWall'] = function(vertices, color, level, health, giftWrap) end

---`Constructor Public Instance`
---@param vertices System.Collections.Generic.List*1Microsoft*Xna*Framework*Vector2|Microsoft.Xna.Framework.Vector2[]
---@param color Microsoft.Xna.Framework.Color
---@param level Barotrauma.Level
---@param health? System.Nullable*1System*Single|number
---@param giftWrap? System.Boolean|boolean
---@return Barotrauma.DestructibleLevelWall
_G['DestructibleLevelWall'].__new = function(vertices, color, level, health, giftWrap) end

