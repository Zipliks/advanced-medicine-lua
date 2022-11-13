---@meta
---@class EventInput.KeyboardDispatcher : System.Object
---`Field Private Instance`
---@field _subscriber EventInput.IKeyboardSubscriber
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Subscriber EventInput.IKeyboardSubscriber
_G['EventInput']['KeyboardDispatcher'] = {}

---`Method Public Instance`
---@param sender System.Object
---@param e EventInput.KeyEventArgs
_G['EventInput']['KeyboardDispatcher'].EventInput_KeyDown = function(sender, e) end

---`Method Private Instance`
---@param sender System.Object
---@param e EventInput.CharacterEventArgs
_G['EventInput']['KeyboardDispatcher'].EventInput_CharEntered = function(sender, e) end

---`Constructor Public Instance`
---@param window Microsoft.Xna.Framework.GameWindow
---@return EventInput.KeyboardDispatcher
_G['EventInput']['KeyboardDispatcher'] = function(window) end

---`Constructor Public Instance`
---@param window Microsoft.Xna.Framework.GameWindow
---@return EventInput.KeyboardDispatcher
_G['EventInput']['KeyboardDispatcher'].__new = function(window) end

