---@meta
---@class Barotrauma.VideoPlayer : System.Object
---`Field Public Instance`
---@field IsPlaying System.Boolean|boolean
---`Field Private Instance`
---@field currentVideo Barotrauma.Media.Video
---`Field Private Instance`
---@field filePath System.String|string
---`Field Private Instance`
---@field background Barotrauma.GUIFrame
---`Field Private Instance`
---@field videoFrame Barotrauma.GUIFrame
---`Field Private Instance`
---@field textFrame Barotrauma.GUIFrame
---`Field Private Instance`
---@field title Barotrauma.GUITextBlock
---`Field Private Instance`
---@field textContent Barotrauma.GUITextBlock
---`Field Private Instance`
---@field objectiveTitle Barotrauma.GUITextBlock
---`Field Private Instance`
---@field objectiveText Barotrauma.GUITextBlock
---`Field Private Instance`
---@field videoView Barotrauma.GUICustomComponent
---`Field Private Instance`
---@field okButton Barotrauma.GUIButton
---`Field Private Instance`
---@field backgroundColor Microsoft.Xna.Framework.Color
---`Field Private Instance`
---@field callbackOnStop System.Action|(fun())
---`Field Private Instance`
---@field scaledVideoResolution Microsoft.Xna.Framework.Point
---`Field Private Instance`
---@field borderSize System.Int32|integer
---`Field Private Instance`
---@field buttonSize Microsoft.Xna.Framework.Point
---`Field Private Instance`
---@field titleHeight System.Int32|integer
---`Field Private Instance`
---@field objectiveFrameHeight System.Int32|integer
---`Field Private Instance`
---@field textHeight System.Int32|integer
---`Field Private Instance`
---@field useTextOnRightSide System.Boolean|boolean
_G['VideoPlayer'] = {}

---`Method Public Instance`
_G['VideoPlayer'].Play = function() end

---`Method Public Instance`
_G['VideoPlayer'].Stop = function() end

---`Method Private Instance`
---@param button Barotrauma.GUIButton
---@param userData System.Object
---@return System.Boolean|boolean
_G['VideoPlayer'].DisposeVideo = function(button, userData) end

---`Method Public Instance`
_G['VideoPlayer'].Update = function() end

---`Method Public Instance`
---@param ignoreChildren? System.Boolean|boolean
---@param order? System.Int32|integer
_G['VideoPlayer'].AddToGUIUpdateList = function(ignoreChildren, order) end

---`Method Public Instance`
---@overload fun(contentPath:System.String|string, videoSettings:Barotrauma.VideoPlayer.VideoSettings, textSettings:Barotrauma.VideoPlayer.TextSettings, contentId:Barotrauma.Identifier, startPlayback:System.Boolean|boolean)
---@param contentPath System.String|string
---@param videoSettings Barotrauma.VideoPlayer.VideoSettings
---@param textSettings Barotrauma.VideoPlayer.TextSettings
---@param contentId Barotrauma.Identifier
---@param startPlayback System.Boolean|boolean
---@param objective Barotrauma.LocalizedString
---@param onStop? System.Action|(fun())
_G['VideoPlayer'].LoadContent = function(contentPath, videoSettings, textSettings, contentId, startPlayback, objective, onStop) end

---`Method Private Instance`
---@param videoSettings Barotrauma.VideoPlayer.VideoSettings
---@param textSettings Barotrauma.VideoPlayer.TextSettings
_G['VideoPlayer'].AdjustFrames = function(videoSettings, textSettings) end

---`Method Private Instance`
---@return Barotrauma.Media.Video
_G['VideoPlayer'].CreateVideo = function() end

---`Method Private Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param rect Microsoft.Xna.Framework.Rectangle
_G['VideoPlayer'].DrawVideo = function(spriteBatch, rect) end

---`Method Public Instance`
_G['VideoPlayer'].Remove = function() end

---`Constructor Public Instance`
---@return Barotrauma.VideoPlayer
_G['VideoPlayer'] = function() end

---`Constructor Public Instance`
---@return Barotrauma.VideoPlayer
_G['VideoPlayer'].__new = function() end

