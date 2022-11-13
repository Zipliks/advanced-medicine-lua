---@meta
---@class Barotrauma.Items.Components.MiniMap : Barotrauma.Items.Components.Powered
---`Field Private Instance`
---@field submarineContainer Barotrauma.GUIFrame
---`Field Private Instance`
---@field hullInfoFrame Barotrauma.GUIFrame
---`Field Private Instance`
---@field scissorComponent Barotrauma.GUIScissorComponent
---`Field Private Instance`
---@field miniMapContainer Barotrauma.GUIComponent
---`Field Private Instance`
---@field miniMapFrame Barotrauma.GUIComponent
---`Field Private Instance`
---@field electricalFrame Barotrauma.GUIComponent
---`Field Private Instance`
---@field reportFrame Barotrauma.GUILayoutGroup
---`Field Private Instance`
---@field searchBarFrame Barotrauma.GUILayoutGroup
---`Field Private Instance`
---@field searchBar Barotrauma.GUITextBox
---`Field Private Instance`
---@field searchAutoComplete Barotrauma.GUIComponent
---`Field Private Instance`
---@field searchedPrefab Barotrauma.ItemPrefab
---`Field Private Instance`
---@field tooltipHeader Barotrauma.GUITextBlock
---`Field Private Instance`
---@field tooltipFirstLine Barotrauma.GUITextBlock
---`Field Private Instance`
---@field tooltipSecondLine Barotrauma.GUITextBlock
---`Field Private Instance`
---@field tooltipThirdLine Barotrauma.GUITextBlock
---`Field Private Instance`
---@field noPowerTip Barotrauma.LocalizedString
---`Field Private Instance`
---@field displayedSubs System.Collections.Generic.List*1Barotrauma*Submarine|Barotrauma.Submarine[]
---`Field Private Instance`
---@field prevResolution Microsoft.Xna.Framework.Point
---`Field Private Instance`
---@field cardRefreshTimer System.Single|number
---`Field Private Instance`
---@field cardsToDraw System.Collections.Generic.HashSet*1Barotrauma*Items*Components*MiniMapSprite|Barotrauma.Items.Components.MiniMapSprite[]
---`Field Private Instance`
---@field subEntities System.Collections.Generic.List*1Barotrauma*MapEntity|Barotrauma.MapEntity[]
---`Field Private Instance`
---@field submarinePreview Microsoft.Xna.Framework.Graphics.Texture2D
---`Field Private Instance`
---@field currentMode Barotrauma.Items.Components.MiniMapMode
---`Field Private Instance`
---@field modeSwitchButtons System.Collections.Immutable.ImmutableArray*1Barotrauma*GUIButton|Barotrauma.GUIButton[]
---`Field Private Instance`
---@field elementSize Microsoft.Xna.Framework.Point
---`Field Private Instance`
---@field hullStatusComponents System.Collections.Immutable.ImmutableDictionary*1Barotrauma*MapEntity*1Barotrauma*Items*Components*MiniMapGUIComponent|{[Barotrauma.MapEntity]:Barotrauma.Items.Components.MiniMapGUIComponent}
---`Field Private Instance`
---@field electricalMapComponents System.Collections.Immutable.ImmutableDictionary*1Barotrauma*MapEntity*1Barotrauma*Items*Components*MiniMapGUIComponent|{[Barotrauma.MapEntity]:Barotrauma.Items.Components.MiniMapGUIComponent}
---`Field Private Instance`
---@field electricalChildren System.Collections.Immutable.ImmutableDictionary*1Barotrauma*Items*Components*MiniMapGUIComponent*1Barotrauma*GUIComponent|{[Barotrauma.Items.Components.MiniMapGUIComponent]:Barotrauma.GUIComponent}
---`Field Private Instance`
---@field doorChildren System.Collections.Immutable.ImmutableDictionary*1Barotrauma*Items*Components*MiniMapGUIComponent*1Barotrauma*GUIComponent|{[Barotrauma.Items.Components.MiniMapGUIComponent]:Barotrauma.GUIComponent}
---`Field Private Instance`
---@field weaponChildren System.Collections.Immutable.ImmutableDictionary*1Barotrauma*Items*Components*MiniMapGUIComponent*1Barotrauma*GUIComponent|{[Barotrauma.Items.Components.MiniMapGUIComponent]:Barotrauma.GUIComponent}
---`Field Private Instance`
---@field itemsFoundOnSub System.Collections.Immutable.ImmutableHashSet*1Barotrauma*ItemPrefab|Barotrauma.ItemPrefab[]
---`Field Private Instance`
---@field MiniMapBlips System.Collections.Immutable.ImmutableHashSet*1Microsoft*Xna*Framework*Vector2|Microsoft.Xna.Framework.Vector2[]
---`Field Private Instance`
---@field blipState System.Single|number
---`Field Private Instance`
---@field zoom System.Single|number
---`Field Private Instance`
---@field mapOffset Microsoft.Xna.Framework.Vector2
---`Field Private Instance`
---@field dragMap System.Boolean|boolean
---`Field Private Instance`
---@field dragMapStart System.Nullable*1Microsoft*Xna*Framework*Vector2
---`Field Private Instance`
---@field recalculate System.Boolean|boolean
---`Field Private Instance`
---@field resetDataTime System.DateTime
---`Field Private Instance`
---@field hasPower System.Boolean|boolean
---`Field Private Instance`
---@field hullDatas System.Collections.Generic.Dictionary*1Barotrauma*Hull*1Barotrauma*Items*Components*MiniMap*HullData|{[Barotrauma.Hull]:Barotrauma.Items.Components.MiniMap.HullData}
---`Field Public Static`
---@field MiniMapBaseColor Microsoft.Xna.Framework.Color
---`Field Private Static`
---@field WetHullColor Microsoft.Xna.Framework.Color
---`Field Private Static`
---@field DoorIndicatorColor Microsoft.Xna.Framework.Color
---`Field Private Static`
---@field NoPowerDoorColor Microsoft.Xna.Framework.Color
---`Field Private Static`
---@field DefaultNeutralColor Microsoft.Xna.Framework.Color
---`Field Private Static`
---@field HoverColor Microsoft.Xna.Framework.Color
---`Field Private Static`
---@field BlueprintBlue Microsoft.Xna.Framework.Color
---`Field Private Static`
---@field HullWaterColor Microsoft.Xna.Framework.Color
---`Field Private Static`
---@field HullWaterLineColor Microsoft.Xna.Framework.Color
---`Field Private Static`
---@field NoPowerColor Microsoft.Xna.Framework.Color
---`Field Private Static`
---@field ElectricalBaseColor Microsoft.Xna.Framework.Color
---`Field Private Static`
---@field NoPowerElectricalColor Microsoft.Xna.Framework.Color
---`Field Private Static`
---@field cardRefreshDelay System.Single|number
---`Field Private Static`
---@field maxBlipState System.Single|number
---`Field Private Static`
---@field maxZoom System.Single|number
---`Field Private Static`
---@field minZoom System.Single|number
---`Field Private Static`
---@field defaultZoom System.Single|number
---`Field Private Static`
---@field dragTreshold System.Int32|integer
---`Getter Private Instance`
---<br/>`Setter Private Instance`
---@field Zoom System.Single|number
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field RequireWaterDetectors System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field RequireOxygenDetectors System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field ShowHullIntegrity System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field EnableHullStatus System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field EnableElectricalView System.Boolean|boolean
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field EnableItemFinder System.Boolean|boolean
_G['Components']['MiniMap'] = {}

---`Method Private Instance`
_G['Components']['MiniMap'].SetDefaultMode = function() end

---`Method NonPublic Instance Virtual`
_G['Components']['MiniMap'].CreateGUI = function() end

---`Method Private Instance`
---@param it Barotrauma.Item
---@return System.Boolean|boolean
_G['Components']['MiniMap'].VisibleOnItemFinder = function(it) end

---`Method Public Instance Virtual`
---@param order? System.Int32|integer
_G['Components']['MiniMap'].AddToGUIUpdateList = function(order) end

---`Method Private Instance`
_G['Components']['MiniMap'].CreateHUD = function() end

---`Method Public Instance Virtual`
---@param character Barotrauma.Character
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['MiniMap'].UpdateHUD = function(character, deltaTime, cam) end

---`Method Private Instance`
---@param sub Barotrauma.Submarine
_G['Components']['MiniMap'].UpdateIDCards = function(sub) end

---`Method Private Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param container Barotrauma.GUICustomComponent
_G['Components']['MiniMap'].DrawHUDFront = function(spriteBatch, container) end

---`Method Private Instance`
---@param sender Barotrauma.GUITextBox
---@param key Microsoft.Xna.Framework.Input.Keys
_G['Components']['MiniMap'].ControlSearchTooltip = function(sender, key) end

---`Method Private Instance`
---@param box Barotrauma.GUITextBox
---@param text System.String|string
---@return System.Boolean|boolean
_G['Components']['MiniMap'].UpdateSearchTooltip = function(box, text) end

---`Method Private Instance`
---@param tooltip Barotrauma.GUIComponent
---@param box Barotrauma.GUITextBox
_G['Components']['MiniMap'].SetAutoCompletePosition = function(tooltip, box) end

---`Method Private Instance`
---@param prefab Barotrauma.ItemPrefab
---@param parent Barotrauma.RectTransform
_G['Components']['MiniMap'].CreateItemFrame = function(prefab, parent) end

---`Method Private Instance`
---@param text System.String|string
_G['Components']['MiniMap'].SearchItems = function(text) end

---`Method Private Instance`
_G['Components']['MiniMap'].UpdateHUDBack = function() end

---`Method Private Instance`
_G['Components']['MiniMap'].UpdateHullStatus = function() end

---`Method Private Instance`
_G['Components']['MiniMap'].UpdateElectricalView = function() end

---`Method Private Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param container Barotrauma.GUICustomComponent
_G['Components']['MiniMap'].DrawHUDBack = function(spriteBatch, container) end

---`Method Private Instance`
---@param pos Microsoft.Xna.Framework.Point
---@param header Barotrauma.LocalizedString
---@param line1 Barotrauma.LocalizedString
---@param line2 Barotrauma.LocalizedString
---@param line3 Barotrauma.LocalizedString
---@param line1Color? System.Nullable*1Microsoft*Xna*Framework*Color
---@param line2Color? System.Nullable*1Microsoft*Xna*Framework*Color
---@param line3Color? System.Nullable*1Microsoft*Xna*Framework*Color
_G['Components']['MiniMap'].SetTooltip = function(pos, header, line1, line2, line3, line1Color, line2Color, line3Color) end

---`Method Private Instance`
---@param sub Barotrauma.Submarine
---@param container Microsoft.Xna.Framework.Rectangle
_G['Components']['MiniMap'].BakeSubmarine = function(sub, container) end

---`Method Private Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
_G['Components']['MiniMap'].DrawSubmarine = function(spriteBatch) end

---`Method Private Static`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.ISpriteBatch
---@param item Barotrauma.Item
---@param parent Microsoft.Xna.Framework.Rectangle
---@param border Microsoft.Xna.Framework.Rectangle
---@param inflate System.Int32|integer
_G['Components']['MiniMap'].DrawItem = function(spriteBatch, item, parent, border, inflate) end

---`Method Private Static`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.ISpriteBatch
---@param structure Barotrauma.Structure
---@param parent Microsoft.Xna.Framework.Rectangle
---@param border Microsoft.Xna.Framework.Rectangle
---@param inflate System.Int32|integer
_G['Components']['MiniMap'].DrawStructure = function(spriteBatch, structure, parent, border, inflate) end

---`Method Private Static`
---@overload fun(entity:Barotrauma.MapEntity, parentRect:Microsoft.Xna.Framework.RectangleF, worldBorders:Microsoft.Xna.Framework.RectangleF):Microsoft.Xna.Framework.RectangleF
---@param rect Microsoft.Xna.Framework.RectangleF
---@param parentRect Microsoft.Xna.Framework.RectangleF
---@param worldBorders Microsoft.Xna.Framework.RectangleF
---@return Microsoft.Xna.Framework.RectangleF
_G['Components']['MiniMap'].ScaleRectToUI = function(rect, parentRect, worldBorders) end

---`Method Private Instance`
---@param spriteBatch Microsoft.Xna.Framework.Graphics.SpriteBatch
---@param hull Barotrauma.Hull
---@param data Barotrauma.Items.Components.MiniMap.HullData
---@param frame Barotrauma.GUIComponent
_G['Components']['MiniMap'].DrawHullCards = function(spriteBatch, hull, data, frame) end

---`Method Public Static`
---@param hull Barotrauma.Hull
---@param linkedHulls System.Collections.Generic.List*1Barotrauma*Hull|Barotrauma.Hull[]
_G['Components']['MiniMap'].GetLinkedHulls = function(hull, linkedHulls) end

---`Method Public Static`
---@overload fun(sub:Barotrauma.Submarine, parent:Barotrauma.GUIComponent, settings:Barotrauma.Items.Components.MiniMapSettings):Barotrauma.GUIFrame
---@param sub Barotrauma.Submarine
---@param parent Barotrauma.GUIComponent
---@param settings Barotrauma.Items.Components.MiniMapSettings
---@param pointsOfInterest System.Collections.Generic.IEnumerable*1Barotrauma*MapEntity|(fun():Barotrauma.MapEntity)
---@param elements System.Collections.Immutable.ImmutableDictionary
---@return Barotrauma.GUIFrame
_G['Components']['MiniMap'].CreateMiniMap = function(sub, parent, settings, pointsOfInterest, elements) end

---`Method Private Static`
---@param hulls System.Collections.Immutable.ImmutableArray*1Barotrauma*Hull|Barotrauma.Hull[]
---@return System.Collections.Immutable.ImmutableDictionary*1Barotrauma*Hull*1System*Collections*Immutable*ImmutableArray*2Barotrauma*Hull|{[Barotrauma.Hull]:System.Collections.Immutable.ImmutableArray*1Barotrauma*Hull|Barotrauma.Hull[]}
_G['Components']['MiniMap'].CombinedHulls = function(hulls) end

---`Method Private Static`
---@param mainHull Barotrauma.Hull
---@param linkedHulls System.Collections.Immutable.ImmutableArray*1Barotrauma*Hull|Barotrauma.Hull[]
---@param parent Barotrauma.GUIComponent
---@param worldBorders Microsoft.Xna.Framework.RectangleF
---@return Barotrauma.Items.Components.MiniMapHullData
_G['Components']['MiniMap'].ConstructHullPolygon = function(mainHull, linkedHulls, parent, worldBorders) end

---`Method NonPublic Instance Virtual`
_G['Components']['MiniMap'].RemoveComponentSpecific = function() end

---`Method Private Instance`
_G['Components']['MiniMap'].InitProjSpecific = function() end

---`Method Public Instance Virtual`
---@param deltaTime System.Single|number
---@param cam Barotrauma.Camera
_G['Components']['MiniMap'].Update = function(deltaTime, cam) end

---`Method Public Instance Virtual`
---@param connection? Barotrauma.Items.Components.Connection
---@return System.Single|number
_G['Components']['MiniMap'].GetCurrentPowerConsumption = function(connection) end

---`Method Public Instance Virtual`
---@param picker Barotrauma.Character
---@return System.Boolean|boolean
_G['Components']['MiniMap'].Pick = function(picker) end

---`Method Public Instance Virtual`
---@param signal Barotrauma.Items.Components.Signal
---@param connection Barotrauma.Items.Components.Connection
_G['Components']['MiniMap'].ReceiveSignal = function(signal, connection) end

---`Constructor Public Instance`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.MiniMap
---@return Barotrauma.Items.Components.MiniMap
_G['Components']['MiniMap'] = function() end

---`Constructor Public Instance`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.MiniMap
---@return Barotrauma.Items.Components.MiniMap
_G['Components']['MiniMap'].__new = function() end

---`Constructor Private Static`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.MiniMap
---@return Barotrauma.Items.Components.MiniMap
_G['Components']['MiniMap'] = function() end

---`Constructor Private Static`
---@overload fun(item:Barotrauma.Item, element:Barotrauma.ContentXElement):Barotrauma.Items.Components.MiniMap
---@return Barotrauma.Items.Components.MiniMap
_G['Components']['MiniMap'].__new = function() end

