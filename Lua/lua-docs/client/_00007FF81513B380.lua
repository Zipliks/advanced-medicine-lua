---@meta
---@class Barotrauma.CharacterInfo.HeadInfo : System.Object
---`Field Public Instance`
---@field CharacterInfo Barotrauma.CharacterInfo
---`Field Public Instance`
---@field Preset Barotrauma.CharacterInfo.HeadPreset
---`Field Private Instance`
---@field hairIndex System.Int32|integer
---`Field Public Instance`
---@field BeardIndex System.Int32|integer
---`Field Public Instance`
---@field MoustacheIndex System.Int32|integer
---`Field Public Instance`
---@field FaceAttachmentIndex System.Int32|integer
---`Field Public Instance`
---@field HairColor Microsoft.Xna.Framework.Color
---`Field Public Instance`
---@field FacialHairColor Microsoft.Xna.Framework.Color
---`Field Public Instance`
---@field SkinColor Microsoft.Xna.Framework.Color
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field HairIndex System.Int32|integer
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field HairWithHatIndex System.Int32|integer
---`Getter Public Instance`
---@field SheetIndex Microsoft.Xna.Framework.Vector2
---`Getter Public Instance`
---@field HairElement Barotrauma.ContentXElement
---`Getter Public Instance`
---@field HairWithHatElement Barotrauma.ContentXElement
---`Getter Public Instance`
---@field BeardElement Barotrauma.ContentXElement
---`Getter Public Instance`
---@field MoustacheElement Barotrauma.ContentXElement
---`Getter Public Instance`
---@field FaceAttachment Barotrauma.ContentXElement
_G['CharacterInfo']['HeadInfo'] = {}

---`Method Public Instance`
_G['CharacterInfo']['HeadInfo'].ResetAttachmentIndices = function() end

---`Constructor Public Instance`
---@param characterInfo Barotrauma.CharacterInfo
---@param headPreset Barotrauma.CharacterInfo.HeadPreset
---@param hairIndex? System.Int32|integer
---@param beardIndex? System.Int32|integer
---@param moustacheIndex? System.Int32|integer
---@param faceAttachmentIndex? System.Int32|integer
---@return Barotrauma.CharacterInfo.HeadInfo
_G['CharacterInfo']['HeadInfo'] = function(characterInfo, headPreset, hairIndex, beardIndex, moustacheIndex, faceAttachmentIndex) end

---`Constructor Public Instance`
---@param characterInfo Barotrauma.CharacterInfo
---@param headPreset Barotrauma.CharacterInfo.HeadPreset
---@param hairIndex? System.Int32|integer
---@param beardIndex? System.Int32|integer
---@param moustacheIndex? System.Int32|integer
---@param faceAttachmentIndex? System.Int32|integer
---@return Barotrauma.CharacterInfo.HeadInfo
_G['CharacterInfo']['HeadInfo'].__new = function(characterInfo, headPreset, hairIndex, beardIndex, moustacheIndex, faceAttachmentIndex) end

