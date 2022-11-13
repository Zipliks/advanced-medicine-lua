---@meta
---@class Barotrauma.MapCreatures.Behavior.BallastFloraBranch : Barotrauma.Items.Components.VineTile
---`Field Public Instance`
---@field ParentBallastFlora Barotrauma.MapCreatures.Behavior.BallastFloraBehavior
---`Field Public Instance`
---@field ID System.Int32|integer
---`Field Public Instance`
---@field ClaimedItem Barotrauma.Item
---`Field Public Instance`
---@field ClaimedItemId System.Int32|integer
---`Field Public Instance`
---@field MaxHealth System.Single|number
---`Field Private Instance`
---@field health System.Single|number
---`Field Public Instance`
---@field RemoveTimer System.Single|number
---`Field Public Instance`
---@field SpawningItem System.Boolean|boolean
---`Field Public Instance`
---@field AttackItem Barotrauma.Item
---`Field Public Instance`
---@field IsRoot System.Boolean|boolean
---`Field Public Instance`
---@field IsRootGrowth System.Boolean|boolean
---`Field Public Instance`
---@field Removed System.Boolean|boolean
---`Field Public Instance`
---@field DisconnectedFromRoot System.Boolean|boolean
---`Field Public Instance`
---@field CurrentHull Barotrauma.Hull
---`Field Public Instance`
---@field Pulse System.Single|number
---`Field Private Instance`
---@field inflate System.Boolean|boolean
---`Field Private Instance`
---@field pulseDelay System.Single|number
---`Field Private Instance`
---@field parentBranch Barotrauma.MapCreatures.Behavior.BallastFloraBranch
---`Field Public Instance`
---@field AccumulatedDamage System.Single|number
---`Field Public Instance`
---@field DamageVisualizationTimer System.Single|number
---`Field Public Instance`
---@field Connections System.Collections.Generic.Dictionary*1Barotrauma*Items*Components*TileSide*1Barotrauma*MapCreatures*Behavior*BallastFloraBranch|{[Barotrauma.Items.Components.TileSide]:Barotrauma.MapCreatures.Behavior.BallastFloraBranch}
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Health System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ParentBranch Barotrauma.MapCreatures.Behavior.BallastFloraBranch
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field BranchDepth System.Int32|integer
_G['BallastFloraBranch'] = {}

---`Method Public Instance`
_G['BallastFloraBranch'].UpdateHealth = function() end

---`Method Public Instance`
---@param deltaTime System.Single|number
---@param inflateSpeed System.Single|number
---@param deflateSpeed System.Single|number
---@param delay System.Single|number
_G['BallastFloraBranch'].UpdatePulse = function(deltaTime, inflateSpeed, deflateSpeed, delay) end

---`Constructor Public Instance`
---@param parent Barotrauma.MapCreatures.Behavior.BallastFloraBehavior
---@param parentBranch Barotrauma.MapCreatures.Behavior.BallastFloraBranch
---@param position Microsoft.Xna.Framework.Vector2
---@param type Barotrauma.Items.Components.VineTileType
---@param flowerConfig? System.Nullable*1Barotrauma*Items*Components*FoliageConfig
---@param leafConfig? System.Nullable*1Barotrauma*Items*Components*FoliageConfig
---@param rect? System.Nullable*1Microsoft*Xna*Framework*Rectangle
---@return Barotrauma.MapCreatures.Behavior.BallastFloraBranch
_G['BallastFloraBranch'] = function(parent, parentBranch, position, type, flowerConfig, leafConfig, rect) end

---`Constructor Public Instance`
---@param parent Barotrauma.MapCreatures.Behavior.BallastFloraBehavior
---@param parentBranch Barotrauma.MapCreatures.Behavior.BallastFloraBranch
---@param position Microsoft.Xna.Framework.Vector2
---@param type Barotrauma.Items.Components.VineTileType
---@param flowerConfig? System.Nullable*1Barotrauma*Items*Components*FoliageConfig
---@param leafConfig? System.Nullable*1Barotrauma*Items*Components*FoliageConfig
---@param rect? System.Nullable*1Microsoft*Xna*Framework*Rectangle
---@return Barotrauma.MapCreatures.Behavior.BallastFloraBranch
_G['BallastFloraBranch'].__new = function(parent, parentBranch, position, type, flowerConfig, leafConfig, rect) end

