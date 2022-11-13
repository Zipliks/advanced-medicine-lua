---@meta
---@class Barotrauma.CharacterInfo.HeadPreset : System.Object
---`Field Private Instance`
---@field characterInfoPrefab Barotrauma.CharacterInfoPrefab
---`Getter Public Instance`
---@field MenuCategory Barotrauma.Identifier
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field TagSet System.Collections.Immutable.ImmutableHashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field Tags System.String|string
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field SheetIndex Microsoft.Xna.Framework.Vector2
---`Getter Public Instance Virtual`
---@field Name System.String|string
---`Getter Public Instance Virtual`
---<br/>`Setter Private Instance`
---@field SerializableProperties System.Collections.Generic.Dictionary*1Barotrauma*Identifier*1Barotrauma*SerializableProperty|{[Barotrauma.Identifier]:Barotrauma.SerializableProperty}
_G['CharacterInfo']['HeadPreset'] = {}

---`Method Private Instance`
---@param element System.Xml.Linq.XElement
_G['CharacterInfo']['HeadPreset'].DetermineTagsFromLegacyFormat = function(element) end

---`Constructor Public Instance`
---@param charInfoPrefab Barotrauma.CharacterInfoPrefab
---@param element System.Xml.Linq.XElement
---@return Barotrauma.CharacterInfo.HeadPreset
_G['CharacterInfo']['HeadPreset'] = function(charInfoPrefab, element) end

---`Constructor Public Instance`
---@param charInfoPrefab Barotrauma.CharacterInfoPrefab
---@param element System.Xml.Linq.XElement
---@return Barotrauma.CharacterInfo.HeadPreset
_G['CharacterInfo']['HeadPreset'].__new = function(charInfoPrefab, element) end

