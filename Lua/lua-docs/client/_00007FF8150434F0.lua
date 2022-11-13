---@meta
---@class Barotrauma.LuaCsSteam : System.Object
---`Field Private Instance`
---@field lastTimeChecked System.Double|number
---`Field Private Instance`
---@field itemsBeingDownloaded System.Collections.Generic.List*1Barotrauma*LuaCsSteam*WorkshopItemDownload|Barotrauma.LuaCsSteam.WorkshopItemDownload[]
_G['Steam'] = {}

---`Method Private Instance`
---@param download Barotrauma.LuaCsSteam.WorkshopItemDownload
---@param startDownload? System.Boolean|boolean
_G['Steam'].DownloadWorkshopItemAsync = function(download, startDownload) end

---`Method Public Instance`
---@overload fun(id:System.UInt64|integer, destination:System.String|string, callback:Barotrauma.LuaCsAction|(fun(...:System.Object)))
---@param item Steamworks.Ugc.Item
---@param destination System.String|string
---@param callback Barotrauma.LuaCsAction|(fun(...:System.Object))
_G['Steam'].DownloadWorkshopItem = function(item, destination, callback) end

---`Method Public Instance`
---@param id System.UInt64|integer
---@param callback Barotrauma.LuaCsAction|(fun(...:System.Object))
_G['Steam'].GetWorkshopItem = function(id, callback) end

---`Method Public Instance`
_G['Steam'].Update = function() end

---`Constructor Public Instance`
---@return Barotrauma.LuaCsSteam
_G['Steam'] = function() end

---`Constructor Public Instance`
---@return Barotrauma.LuaCsSteam
_G['Steam'].__new = function() end

