---@meta
---@class Barotrauma.Items.Components.Growable : Barotrauma.Items.Components.ItemComponent
---`Field Public Instance`
---@field VineSprites System.Collections.Generic.Dictionary*1Barotrauma*Items*Components*VineTileType*1Barotrauma*Items*Components*VineSprite|{[Barotrauma.Items.Components.VineTileType]:Barotrauma.Items.Components.VineSprite}
---`Field Public Instance`
---@field FlowerSprites System.Collections.Generic.List*1Barotrauma*Sprite|Barotrauma.Sprite[]
---`Field Public Instance`
---@field LeafSprites System.Collections.Generic.List*1Barotrauma*Sprite|Barotrauma.Sprite[]
---`Field Public Instance`
---@field VineAtlas Barotrauma.Sprite
---`Field Public Instance`
---@field DecayAtlas Barotrauma.Sprite
---`Field Private Instance`
---@field mutex System.Object
---`Field Public Instance`
---@field FailedRectangles System.Collections.Generic.HashSet*1Microsoft*Xna*Framework*Rectangle|Microsoft.Xna.Framework.Rectangle[]
---`Field Private Instance`
---@field accelerateDeath System.Boolean|boolean
---`Field Private Instance`
---@field health System.Single|number
---`Field Private Instance`
---@field flowerVariants System.Int32|integer
---`Field Private Instance`
---@field leafVariants System.Int32|integer
---`Field Private Instance`
---@field flowerTiles System.Int32-arr|System.Int32|integer[]
---`Field Public Instance`
---@field Decayed System.Boolean|boolean
---`Field Public Instance`
---@field FullyGrown System.Boolean|boolean
---`Field Private Instance`
---@field productDelay System.Int32|integer
---`Field Private Instance`
---@field vineDelay System.Int32|integer
---`Field Private Instance`
---@field fireCheckCooldown System.Single|number
---`Field Public Instance`
---@field ProducedItems System.Collections.Generic.List*1Barotrauma*Items*Components*ProducedItem|Barotrauma.Items.Components.ProducedItem[]
---`Field Public Instance`
---@field Vines System.Collections.Generic.List*1Barotrauma*Items*Components*VineTile|Barotrauma.Items.Components.VineTile[]
---`Field Private Instance`
---@field ProducedSeed Barotrauma.Items.Components.ProducedItem
---`Field Private Static`
---@field MinFlowerScale System.Single|number
---`Field Private Static`
---@field MaxFlowerScale System.Single|number
---`Field Private Static`
---@field MinLeafScale System.Single|number
---`Field Private Static`
---@field MaxLeafScale System.Single|number
---`Field Private Static`
---@field increasedDeathSpeed System.Single|number
---`Field Private Static`
---@field maxProductDelay System.Int32|integer
---`Field Private Static`
---@field maxVineGrowthDelay System.Int32|integer
---`Field Private Static`
---@field VineChunkSize System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field GrowthSpeed System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MaxHealth System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field FloodTolerance System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Hardiness System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SeedRate System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ProductRate System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MutationProbability System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field FlowerTint Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field FlowerQuantity System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field BaseFlowerScale System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field BaseLeafScale System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field LeafTint Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field LeafProbability System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field VineTint Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field MaximumVines System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field VineScale System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field DeadTint Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field GrowthWeights Microsoft.Xna.Framework.Vector4
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field FireVulnerability System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Health System.Single|number
_G['Components']['Growable'] = {}

---`Method NonPublic Instance Virtual`
_G['Components']['Growable'].RemoveComponentSpecific = function() end

---`Method Public Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param planter Barotrauma.Items.Components.Planter
---@param offset Microsoft.Xna.Framework.Vector2
---@param depth System.Single|number
_G['Components']['Growable'].Draw = function(spriteBatch, planter, offset, depth) end

---`Method Private Instance`
---@param vine Barotrauma.Items.Components.VineTile
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param position Microsoft.Xna.Framework.Vector2
---@param depth System.Single|number
---@param leafDepth System.Single|number
_G['Components']['Growable'].DrawBranch = function(vine, spriteBatch, position, depth, leafDepth) end

---`Method Public Instance Virtual`
---@param msg Barotrauma.Networking.IReadMessage
---@param sendingTime System.Single|number
_G['Components']['Growable'].ClientEventRead = function(msg, sendingTime) end

---`Method Private Instance`
_G['Components']['Growable'].ResetPlanterSize = function() end

---`Method Public Instance Virtual`
_G['Components']['Growable'].OnItemLoaded = function() end

---`Method Private Instance`
---@param random? System.Random
_G['Components']['Growable'].GenerateFlowerTiles = function(random) end

---`Method Private Instance`
---@param element Barotrauma.ContentXElement
_G['Components']['Growable'].LoadVines = function(element) end

---`Method Public Instance`
---@param planter Barotrauma.Items.Components.Planter
---@param slot Barotrauma.Items.Components.PlantSlot
_G['Components']['Growable'].OnGrowthTick = function(planter, slot) end

---`Method Private Instance`
_G['Components']['Growable'].UpdateBranchHealth = function() end

---`Method Private Instance`
---@param planter Barotrauma.Items.Components.Planter
---@param slot Barotrauma.Items.Components.PlantSlot
_G['Components']['Growable'].TryGenerateProduct = function(planter, slot) end

---`Method Private Instance`
---@return System.Boolean|boolean
_G['Components']['Growable'].CheckPlantState = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['Growable'].Update = function(deltaTime, cam) end

---`Method Private Instance`
---@param deltaTime System.Single|number
_G['Components']['Growable'].UpdateFires = function(deltaTime) end

---`Method Private Instance`
---@param planter Barotrauma.Items.Components.Planter
---@param slot Barotrauma.Items.Components.PlantSlot
_G['Components']['Growable'].GrowVines = function(planter, slot) end

---`Method Private Instance`
_G['Components']['Growable'].GenerateStem = function() end

---`Method Private Instance`
---@param planter Barotrauma.Items.Components.Planter
---@param slot Barotrauma.Items.Components.PlantSlot
---@param random? System.Random
---@param flowerRandom? System.Random
_G['Components']['Growable'].TryGenerateBranches = function(planter, slot, random, flowerRandom) end

---`Method Private Instance`
---@param rect Microsoft.Xna.Framework.Rectangle
---@param planter Barotrauma.Items.Components.Planter
---@param slot Barotrauma.Items.Components.PlantSlot
---@return System.Boolean|boolean
_G['Components']['Growable'].CollidesWithWorld = function(rect, planter, slot) end

---`Method Public Instance Virtual`
---@param parentElement System.Xml.Linq.XElement
---@return System.Xml.Linq.XElement
_G['Components']['Growable'].Save = function(parentElement) end

---`Method Public Instance Virtual`
---@param componentElement Barotrauma.ContentXElement
---@param usePrefabValues System.Boolean|boolean
---@param idRemap Barotrauma.IdRemap
_G['Components']['Growable'].Load = function(componentElement, usePrefabValues, idRemap) end

---`Method Private Instance`
---@return System.Boolean|boolean
_G['Components']['Growable'].CanGrowMore = function() end

---`Method Public Static`
---@param min System.Int32|integer
---@param max System.Int32|integer
---@param random? System.Random
---@return System.Int32|integer
_G['Components']['Growable'].RandomInt = function(min, max, random) end

---`Method Public Static`
---@param min System.Double|number
---@param max System.Double|number
---@param random? System.Random
---@return System.Double|number
_G['Components']['Growable'].RandomDouble = function(min, max, random) end

---`Constructor Public Instance`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.Growable
---@return Barotrauma.Items.Components.Growable
_G['Components']['Growable'] = function() end

---`Constructor Public Instance`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.Growable
---@return Barotrauma.Items.Components.Growable
_G['Components']['Growable'].__new = function() end

---`Constructor Private Static`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.Growable
---@return Barotrauma.Items.Components.Growable
_G['Components']['Growable'] = function() end

---`Constructor Private Static`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.Growable
---@return Barotrauma.Items.Components.Growable
_G['Components']['Growable'].__new = function() end

