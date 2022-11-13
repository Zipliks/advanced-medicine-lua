---@meta
---@class Barotrauma.DecalManager : System.Object
---`Field Public Static`
---@field Prefabs Barotrauma.PrefabCollection*1Barotrauma*DecalPrefab|(fun():Barotrauma.DecalPrefab)
---`Field Public Static`
---@field GrimeSprites Barotrauma.PrefabCollection*1Barotrauma*GrimeSprite|(fun():Barotrauma.GrimeSprite)
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field GrimeSpriteCount System.Int32|integer
_G['DecalManager'] = {}

---`Method Public Static`
---@param configFile Barotrauma.DecalsFile
_G['DecalManager'].LoadFromFile = function(configFile) end

---`Method Public Static`
---@param configFile Barotrauma.DecalsFile
_G['DecalManager'].RemoveByFile = function(configFile) end

---`Method Public Static`
_G['DecalManager'].SortAll = function() end

---`Method Public Static`
---@param decalName System.String|string
---@param scale System.Single|number
---@param worldPosition Microsoft.Xna.Framework.Vector2
---@param hull Barotrauma.Hull
---@param spriteIndex? System.Nullable*1System*Int32|integer
---@return Barotrauma.Decal
_G['DecalManager'].CreateDecal = function(decalName, scale, worldPosition, hull, spriteIndex) end

---`Constructor Private Static`
---@return Barotrauma.DecalManager
_G['DecalManager'] = function() end

---`Constructor Private Static`
---@return Barotrauma.DecalManager
_G['DecalManager'].__new = function() end

