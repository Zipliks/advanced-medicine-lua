---@meta
---@class Barotrauma.GUICustomComponent : Barotrauma.GUIComponent
---`Field Public Instance`
---@field OnDraw System.Action*1Microsoft*Xna*Framework*Graphics*SpriteBatch*1Barotrauma*GUICustomComponent|(fun(arg1:Microsoft.Xna.Framework.Graphics.SpriteBatch, arg2:Barotrauma.GUICustomComponent))
---`Field Public Instance`
---@field OnUpdate System.Action*1System*Single*1Barotrauma*GUICustomComponent|(fun(arg1:System.Single|number, arg2:Barotrauma.GUICustomComponent))
---`Field Public Instance`
---@field HideElementsOutsideFrame System.Boolean|boolean
_G['GUI']['CustomComponent'] = {}

---`Method NonPublic Instance Virtual`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['GUI']['CustomComponent'].Draw = function(spriteBatch) end

---`Method NonPublic Instance Virtual`
---@param deltaTime System.Single|number
_G['GUI']['CustomComponent'].Update = function(deltaTime) end

---`Constructor Public Instance`
---@param rectT Barotrauma.RectTransform
---@param onDraw? System.Action*1Microsoft*Xna*Framework*Graphics*SpriteBatch*1Barotrauma*GUICustomComponent|(fun(arg1:Microsoft.Xna.Framework.Graphics.SpriteBatch, arg2:Barotrauma.GUICustomComponent))
---@param onUpdate? System.Action*1System*Single*1Barotrauma*GUICustomComponent|(fun(arg1:System.Single|number, arg2:Barotrauma.GUICustomComponent))
---@return Barotrauma.GUICustomComponent
_G['GUI']['CustomComponent'] = function(rectT, onDraw, onUpdate) end

---`Constructor Public Instance`
---@param rectT Barotrauma.RectTransform
---@param onDraw? System.Action*1Microsoft*Xna*Framework*Graphics*SpriteBatch*1Barotrauma*GUICustomComponent|(fun(arg1:Microsoft.Xna.Framework.Graphics.SpriteBatch, arg2:Barotrauma.GUICustomComponent))
---@param onUpdate? System.Action*1System*Single*1Barotrauma*GUICustomComponent|(fun(arg1:System.Single|number, arg2:Barotrauma.GUICustomComponent))
---@return Barotrauma.GUICustomComponent
_G['GUI']['CustomComponent'].__new = function(rectT, onDraw, onUpdate) end

