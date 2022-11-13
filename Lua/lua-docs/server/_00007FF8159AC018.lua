---@meta
---@class Barotrauma.Items.Components.Quality : Barotrauma.Items.Components.ItemComponent
---`Field Private Instance`
---@field statValues System.Collections.Generic.Dictionary*1Barotrauma*Items*Components*Quality*StatType*1System*Single|{[Barotrauma.Items.Components.Quality.StatType]:System.Single|number}
---`Field Private Instance`
---@field qualityLevel System.Int32|integer
---`Field Public Static`
---@field QualityCommonnesses System.Single-arr|System.Single|number[]
---`Field Public Static`
---@field MaxQuality System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field QualityLevel System.Int32|integer
_G['Components']['Quality'] = {}

---`Method Public Instance`
---@param statType Barotrauma.Items.Components.Quality.StatType
---@param value System.Single|number
_G['Components']['Quality'].SetValue = function(statType, value) end

---`Method Public Instance`
---@param statType Barotrauma.Items.Components.Quality.StatType
---@return System.Single|number
_G['Components']['Quality'].GetValue = function(statType) end

---`Constructor Public Instance`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.Quality
---@return Barotrauma.Items.Components.Quality
_G['Components']['Quality'] = function() end

---`Constructor Public Instance`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.Quality
---@return Barotrauma.Items.Components.Quality
_G['Components']['Quality'].__new = function() end

---`Constructor Private Static`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.Quality
---@return Barotrauma.Items.Components.Quality
_G['Components']['Quality'] = function() end

---`Constructor Private Static`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.Quality
---@return Barotrauma.Items.Components.Quality
_G['Components']['Quality'].__new = function() end

