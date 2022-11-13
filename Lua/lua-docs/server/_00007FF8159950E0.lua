---@meta
---@class Barotrauma.DecalPrefab : Barotrauma.PrefabWithUintIdentifier
---`Field Public Instance`
---@field Sprites System.Collections.Generic.List*1Barotrauma*Sprite|Barotrauma.Sprite[]
---`Field Public Instance`
---@field Color Microsoft.Xna.Framework.Color
---`Field Public Instance`
---@field LifeTime System.Single|number
---`Field Public Instance`
---@field FadeOutTime System.Single|number
---`Field Public Instance`
---@field FadeInTime System.Single|number
---`Getter Public Instance`
---@field Name System.String|string
_G['DecalPrefab'] = {}

---`Method Public Instance Virtual`
_G['DecalPrefab'].Dispose = function() end

---`Constructor Public Instance`
---@param element Barotrauma.ContentXElement
---@param file Barotrauma.DecalsFile
---@return Barotrauma.DecalPrefab
_G['DecalPrefab'] = function(element, file) end

---`Constructor Public Instance`
---@param element Barotrauma.ContentXElement
---@param file Barotrauma.DecalsFile
---@return Barotrauma.DecalPrefab
_G['DecalPrefab'].__new = function(element, file) end

