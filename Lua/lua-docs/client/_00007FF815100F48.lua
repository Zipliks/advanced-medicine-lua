---@meta
---@class Barotrauma.SettingsMenu : System.Object
---`Field Private Instance`
---@field unsavedConfig Barotrauma.GameSettings.Config
---`Field Private Instance`
---@field mainFrame Barotrauma.GUIFrame
---`Field Private Instance`
---@field tabber Barotrauma.GUILayoutGroup
---`Field Private Instance`
---@field contentFrame Barotrauma.GUIFrame
---`Field Private Instance`
---@field bottom Barotrauma.GUILayoutGroup
---`Field Public Instance`
---@field WorkshopMenu Barotrauma.Steam.WorkshopMenu
---`Field Private Instance`
---@field tabContents System.Collections.Generic.Dictionary*1Barotrauma*SettingsMenu*Tab*1System*ValueTuple*2Barotrauma*GUIButton*2Barotrauma*GUIFrame|{[Barotrauma.SettingsMenu.Tab]:System.ValueTuple*1Barotrauma*GUIButton*1Barotrauma*GUIFrame}
---`Field Private Instance`
---@field inputButtonValueNameGetters System.Collections.Generic.Dictionary*1Barotrauma*GUIButton*1System*Func*2Barotrauma*LocalizedString|{[Barotrauma.GUIButton]:System.Func*1Barotrauma*LocalizedString|(fun():Barotrauma.LocalizedString)}
---`Field Private Instance`
---@field inputBoxSelectedThisFrame System.Boolean|boolean
---`Field Private Static`
---@field LegacyInputTypes System.Collections.Immutable.ImmutableHashSet*1Barotrauma*InputType|Barotrauma.InputType[]
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field Instance Barotrauma.SettingsMenu
---`Getter Public Instance`
---<br/>`Setter Private Instance`
---@field CurrentTab Barotrauma.SettingsMenu.Tab
_G['SettingsMenu'] = {}

---`Method Public Static`
---@param mainParent Barotrauma.RectTransform
---@return Barotrauma.SettingsMenu
_G['SettingsMenu'].Create = function(mainParent) end

---`Method Private Instance`
---@param newContent Barotrauma.GUIFrame
_G['SettingsMenu'].SwitchContent = function(newContent) end

---`Method Public Instance`
---@param tab Barotrauma.SettingsMenu.Tab
_G['SettingsMenu'].SelectTab = function(tab) end

---`Method Private Instance`
---@param tab Barotrauma.SettingsMenu.Tab
---@param content Barotrauma.GUIFrame
_G['SettingsMenu'].AddButtonToTabber = function(tab, content) end

---`Method Private Instance`
---@param tab Barotrauma.SettingsMenu.Tab
---@return Barotrauma.GUIFrame
_G['SettingsMenu'].CreateNewContentFrame = function(tab) end

---`Method Private Static`
---@param parent Barotrauma.GUIFrame
---@param split? System.Boolean|boolean
---@return System.ValueTuple*1Barotrauma*GUILayoutGroup*1Barotrauma*GUILayoutGroup
_G['SettingsMenu'].CreateSidebars = function(parent, split) end

---`Method Private Static`
---@param parent Barotrauma.GUIFrame
---@return Barotrauma.GUILayoutGroup
_G['SettingsMenu'].CreateCenterLayout = function(parent) end

---`Method Private Static`
---@param parent Barotrauma.GUILayoutGroup
---@return Barotrauma.RectTransform
_G['SettingsMenu'].NewItemRectT = function(parent) end

---`Method Private Static`
---@param parent Barotrauma.GUILayoutGroup
_G['SettingsMenu'].Spacer = function(parent) end

---`Method Private Static`
---@param parent Barotrauma.GUILayoutGroup
---@param str Barotrauma.LocalizedString
---@param font Barotrauma.GUIFont
---@return Barotrauma.GUITextBlock
_G['SettingsMenu'].Label = function(parent, str, font) end

---`Method Private Static`
---@param parent Barotrauma.GUILayoutGroup
---@param textFunc System.Func*1Barotrauma*SettingsMenu*T*1Barotrauma*LocalizedString|(fun(arg:Barotrauma.SettingsMenu.T):Barotrauma.LocalizedString)
---@param tooltipFunc System.Func*1Barotrauma*SettingsMenu*T*1Barotrauma*LocalizedString|(fun(arg:Barotrauma.SettingsMenu.T):Barotrauma.LocalizedString)
---@param currentValue Barotrauma.SettingsMenu.T
---@param setter System.Action*1Barotrauma*SettingsMenu*T|(fun(obj:Barotrauma.SettingsMenu.T))
_G['SettingsMenu'].DropdownEnum = function(parent, textFunc, tooltipFunc, currentValue, setter) end

---`Method Private Static`
---@param parent Barotrauma.GUILayoutGroup
---@param textFunc System.Func*1Barotrauma*SettingsMenu*T*1Barotrauma*LocalizedString|(fun(arg:Barotrauma.SettingsMenu.T):Barotrauma.LocalizedString)
---@param tooltipFunc System.Func*1Barotrauma*SettingsMenu*T*1Barotrauma*LocalizedString|(fun(arg:Barotrauma.SettingsMenu.T):Barotrauma.LocalizedString)
---@param values System.Collections.Generic.IReadOnlyList*1Barotrauma*SettingsMenu*T|Barotrauma.SettingsMenu.T[]
---@param currentValue Barotrauma.SettingsMenu.T
---@param setter System.Action*1Barotrauma*SettingsMenu*T|(fun(obj:Barotrauma.SettingsMenu.T))
_G['SettingsMenu'].Dropdown = function(parent, textFunc, tooltipFunc, values, currentValue, setter) end

---`Method Private Instance`
---@param parent Barotrauma.GUILayoutGroup
---@param range Microsoft.Xna.Framework.Vector2
---@param steps System.Int32|integer
---@param labelFunc System.Func*1System*Single*1System*String|(fun(arg:System.Single|number):System.String|string)
---@param currentValue System.Single|number
---@param setter System.Action*1System*Single|(fun(obj:System.Single|number))
---@param tooltip? Barotrauma.LocalizedString
_G['SettingsMenu'].Slider = function(parent, range, steps, labelFunc, currentValue, setter, tooltip) end

---`Method Private Instance`
---@param parent Barotrauma.GUILayoutGroup
---@param label Barotrauma.LocalizedString
---@param tooltip Barotrauma.LocalizedString
---@param currentValue System.Boolean|boolean
---@param setter System.Action*1System*Boolean|(fun(obj:System.Boolean|boolean))
_G['SettingsMenu'].Tickbox = function(parent, label, tooltip, currentValue, setter) end

---`Method Private Instance`
---@param v System.Single|number
---@return System.String|string
_G['SettingsMenu'].Percentage = function(v) end

---`Method Private Instance`
---@param v System.Single|number
---@return System.Int32|integer
_G['SettingsMenu'].Round = function(v) end

---`Method Private Instance`
_G['SettingsMenu'].CreateGraphicsTab = function() end

---`Method Private Static`
---@param name System.String|string
---@return System.String|string
_G['SettingsMenu'].TrimAudioDeviceName = function(name) end

---`Method Private Static`
---@param message System.String|string
---@return System.Int32|integer
_G['SettingsMenu'].HandleAlErrors = function(message) end

---`Method Private Static`
---@param listSpecifier System.Int32|integer
---@param defaultSpecifier System.Int32|integer
---@param list System.Collections.Generic.IReadOnlyList
---@param current System.String-ref
_G['SettingsMenu'].GetAudioDevices = function(listSpecifier, defaultSpecifier, list, current) end

---`Method Private Instance`
_G['SettingsMenu'].CreateAudioAndVCTab = function() end

---`Method Private Instance`
_G['SettingsMenu'].CreateControlsTab = function() end

---`Method Private Instance`
_G['SettingsMenu'].CreateGameplayTab = function() end

---`Method Private Instance`
---@param workshopMenu Barotrauma.Steam.WorkshopMenu-ref
_G['SettingsMenu'].CreateModsTab = function(workshopMenu) end

---`Method Private Instance`
_G['SettingsMenu'].CreateBottomButtons = function() end

---`Method Public Instance`
_G['SettingsMenu'].ApplyInstalledModChanges = function() end

---`Method Public Instance`
_G['SettingsMenu'].Close = function() end

---`Constructor Private Instance`
---@overload fun(mainParent:Barotrauma.RectTransform, setConfig?:Barotrauma.GameSettings.Config):Barotrauma.SettingsMenu
---@return Barotrauma.SettingsMenu
_G['SettingsMenu'] = function() end

---`Constructor Private Instance`
---@overload fun(mainParent:Barotrauma.RectTransform, setConfig?:Barotrauma.GameSettings.Config):Barotrauma.SettingsMenu
---@return Barotrauma.SettingsMenu
_G['SettingsMenu'].__new = function() end

---`Constructor Private Static`
---@overload fun(mainParent:Barotrauma.RectTransform, setConfig?:Barotrauma.GameSettings.Config):Barotrauma.SettingsMenu
---@return Barotrauma.SettingsMenu
_G['SettingsMenu'] = function() end

---`Constructor Private Static`
---@overload fun(mainParent:Barotrauma.RectTransform, setConfig?:Barotrauma.GameSettings.Config):Barotrauma.SettingsMenu
---@return Barotrauma.SettingsMenu
_G['SettingsMenu'].__new = function() end

