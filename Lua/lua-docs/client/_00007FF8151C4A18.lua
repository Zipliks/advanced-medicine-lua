---@meta
---@class Barotrauma.Items.Components.VineTile : System.Object
---`Field Public Instance`
---@field Sides Barotrauma.Items.Components.TileSide
---`Field Public Instance`
---@field BlockedSides Barotrauma.Items.Components.TileSide
---`Field Public Instance`
---@field FlowerConfig Barotrauma.Items.Components.FoliageConfig
---`Field Public Instance`
---@field LeafConfig Barotrauma.Items.Components.FoliageConfig
---`Field Public Instance`
---@field FailedGrowthAttempts System.Int32|integer
---`Field Public Instance`
---@field Rect Microsoft.Xna.Framework.Rectangle
---`Field Public Instance`
---@field Position Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field diameter System.Single|number
---`Field Public Instance`
---@field offset Microsoft.Xna.Framework.Vector2
---`Field Public Instance`
---@field Type Barotrauma.Items.Components.VineTileType
---`Field Public Instance`
---@field AdjacentPositions System.Collections.Generic.Dictionary*1Barotrauma*Items*Components*TileSide*1Microsoft*Xna*Framework*Vector2|{[Barotrauma.Items.Components.TileSide]:Microsoft.Xna.Framework.Vector2}
---`Field Public Instance`
---@field VineStep System.Single|number
---`Field Public Instance`
---@field FlowerStep System.Single|number
---`Field Private Instance`
---@field growthStep System.Single|number
---`Field Public Instance`
---@field HealthColor Microsoft.Xna.Framework.Color
---`Field Public Instance`
---@field DecayDelay System.Single|number
---`Field Private Instance`
---@field Parent Barotrauma.Items.Components.Growable
---`Field Public Static`
---@field Size System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field GrowthStep System.Single|number
_G['Components']['VineTile'] = {}

---`Method Public Instance`
---@param deltaTime System.Single|number
_G['Components']['VineTile'].UpdateScale = function(deltaTime) end

---`Method Public Instance`
---@param planter Barotrauma.Items.Components.Planter
---@param slotOffset Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Vector2
_G['Components']['VineTile'].GetWorldPosition = function(planter, slotOffset) end

---`Method Public Instance`
_G['Components']['VineTile'].UpdateType = function() end

---`Method Public Instance`
---@param random? System.Random
---@return Barotrauma.Items.Components.TileSide
_G['Components']['VineTile'].GetRandomFreeSide = function(random) end

---`Method Public Instance`
---@return System.Boolean|boolean
_G['Components']['VineTile'].CanGrowMore = function() end

---`Method Public Instance`
---@param side Barotrauma.Items.Components.TileSide
---@return System.Boolean|boolean
_G['Components']['VineTile'].IsSideBlocked = function(side) end

---`Method Public Static`
---@param pos Microsoft.Xna.Framework.Vector2
---@return Microsoft.Xna.Framework.Rectangle
_G['Components']['VineTile'].CreatePlantRect = function(pos) end

---`Constructor Public Instance`
---@overload fun(parent:Barotrauma.Items.Components.Growable, position:Microsoft.Xna.Framework.Vector2, type:Barotrauma.Items.Components.VineTileType, flowerConfig?:System.Nullable*1Barotrauma*Items*Components*FoliageConfig, leafConfig?:System.Nullable*1Barotrauma*Items*Components*FoliageConfig, rect?:System.Nullable*1Microsoft*Xna*Framework*Rectangle):Barotrauma.Items.Components.VineTile
---@return Barotrauma.Items.Components.VineTile
_G['Components']['VineTile'] = function() end

---`Constructor Public Instance`
---@overload fun(parent:Barotrauma.Items.Components.Growable, position:Microsoft.Xna.Framework.Vector2, type:Barotrauma.Items.Components.VineTileType, flowerConfig?:System.Nullable*1Barotrauma*Items*Components*FoliageConfig, leafConfig?:System.Nullable*1Barotrauma*Items*Components*FoliageConfig, rect?:System.Nullable*1Microsoft*Xna*Framework*Rectangle):Barotrauma.Items.Components.VineTile
---@return Barotrauma.Items.Components.VineTile
_G['Components']['VineTile'].__new = function() end

---`Constructor Private Static`
---@overload fun(parent:Barotrauma.Items.Components.Growable, position:Microsoft.Xna.Framework.Vector2, type:Barotrauma.Items.Components.VineTileType, flowerConfig?:System.Nullable*1Barotrauma*Items*Components*FoliageConfig, leafConfig?:System.Nullable*1Barotrauma*Items*Components*FoliageConfig, rect?:System.Nullable*1Microsoft*Xna*Framework*Rectangle):Barotrauma.Items.Components.VineTile
---@return Barotrauma.Items.Components.VineTile
_G['Components']['VineTile'] = function() end

---`Constructor Private Static`
---@overload fun(parent:Barotrauma.Items.Components.Growable, position:Microsoft.Xna.Framework.Vector2, type:Barotrauma.Items.Components.VineTileType, flowerConfig?:System.Nullable*1Barotrauma*Items*Components*FoliageConfig, leafConfig?:System.Nullable*1Barotrauma*Items*Components*FoliageConfig, rect?:System.Nullable*1Microsoft*Xna*Framework*Rectangle):Barotrauma.Items.Components.VineTile
---@return Barotrauma.Items.Components.VineTile
_G['Components']['VineTile'].__new = function() end

