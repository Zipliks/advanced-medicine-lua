---@meta
---@class Barotrauma.Items.Components.IdCard : Barotrauma.Items.Components.Pickable
---`Field Public Instance`
---@field StoredOwnerAppearance Barotrauma.Items.Components.IdCard.OwnerAppearance
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field TeamID Barotrauma.CharacterTeamType
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field SubmarineSpecificID System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field OwnerTags System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Description System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field OwnerTagSet System.Collections.Immutable.ImmutableHashSet*1Barotrauma*Identifier|Barotrauma.Identifier[]
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field OwnerName System.String|string
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field OwnerJobId Barotrauma.Identifier
---`Getter Public Instance`
---@field OwnerJob Barotrauma.JobPrefab
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field OwnerHairIndex System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field OwnerBeardIndex System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field OwnerMoustacheIndex System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field OwnerFaceAttachmentIndex System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field OwnerHairColor Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field OwnerFacialHairColor Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field OwnerSkinColor Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field OwnerSheetIndex Microsoft.Xna.Framework.Vector2
_G['Components']['IdCard'] = {}

---`Method Public Instance`
---@param spawnPoint Barotrauma.WayPoint
---@param character Barotrauma.Character
_G['Components']['IdCard'].Initialize = function(spawnPoint, character) end

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
_G['Components']['IdCard'].Equip = function(character) end

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
_G['Components']['IdCard'].Unequip = function(character) end

---`Method Public Instance Virtual`
_G['Components']['IdCard'].OnItemLoaded = function() end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.IdCard
_G['Components']['IdCard'] = function(item, element) end

---`Constructor Public Instance`
---@param item Barotrauma.Item
---@param element Barotrauma.ContentXElement
---@return Barotrauma.Items.Components.IdCard
_G['Components']['IdCard'].__new = function(item, element) end

