---@meta
---@class Steamworks.Ugc.Item : System.ValueType
---`Field NonPublic Instance`
---@field details Steamworks.Data.SteamUGCDetails_t
---`Field NonPublic Instance`
---@field _id Steamworks.Data.PublishedFileId
---`Getter Public Instance`
---@field Id Steamworks.Data.PublishedFileId
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field Title System.String|string
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field Description System.String|string
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field Tags System.String-arr|System.String|string[]
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field KeyValueTags System.Collections.Generic.Dictionary*1System*String*1System*String|{[System.String|string]:System.String|string}
---`Getter Public Instance`
---@field CreatorApp Steamworks.AppId
---`Getter Public Instance`
---@field ConsumerApp Steamworks.AppId
---`Getter Public Instance`
---@field Owner Steamworks.Friend
---`Getter Public Instance`
---@field Score System.Single|number
---`Getter Public Instance`
---@field Created System.DateTime
---`Getter Public Instance`
---@field Updated System.DateTime
---`Getter Public Instance`
---@field LatestUpdateTime System.DateTime
---`Getter Public Instance`
---@field Visibility Steamworks.Ugc.Visibility
---`Getter Public Instance`
---@field IsBanned System.Boolean|boolean
---`Getter Public Instance`
---@field IsAcceptedForUse System.Boolean|boolean
---`Getter Public Instance`
---@field VotesUp System.UInt32|integer
---`Getter Public Instance`
---@field VotesDown System.UInt32|integer
---`Getter Public Instance`
---@field IsInstalled System.Boolean|boolean
---`Getter Public Instance`
---@field IsDownloading System.Boolean|boolean
---`Getter Public Instance`
---@field IsDownloadPending System.Boolean|boolean
---`Getter Public Instance`
---@field IsSubscribed System.Boolean|boolean
---`Getter Public Instance`
---@field NeedsUpdate System.Boolean|boolean
---`Getter Public Instance`
---@field Directory System.String|string
---`Getter Public Instance`
---@field DownloadBytesTotal System.Int64|integer
---`Getter Public Instance`
---@field DownloadBytesDownloaded System.Int64|integer
---`Getter Public Instance`
---@field InstalledSize System.Int64|integer
---`Getter Public Instance`
---@field SizeOfFileInBytes System.Int64|integer
---`Getter Public Instance`
---@field DownloadAmount System.Single|number
---`Getter Private Instance`
---@field State Steamworks.ItemState
---`Getter Public Instance`
---@field Url System.String|string
---`Getter Public Instance`
---@field ChangelogUrl System.String|string
---`Getter Public Instance`
---@field CommentsUrl System.String|string
---`Getter Public Instance`
---@field DiscussUrl System.String|string
---`Getter Public Instance`
---@field StatsUrl System.String|string
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field NumSubscriptions System.UInt64|integer
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field NumFavorites System.UInt64|integer
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field NumFollowers System.UInt64|integer
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field NumUniqueSubscriptions System.UInt64|integer
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field NumUniqueFavorites System.UInt64|integer
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field NumUniqueFollowers System.UInt64|integer
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field NumUniqueWebsiteViews System.UInt64|integer
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field ReportScore System.UInt64|integer
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field NumSecondsPlayed System.UInt64|integer
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field NumPlaytimeSessions System.UInt64|integer
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field NumComments System.UInt64|integer
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field NumSecondsPlayedDuringTimePeriod System.UInt64|integer
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field NumPlaytimeSessionsDuringTimePeriod System.UInt64|integer
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field PreviewImageUrl System.String|string
---`Getter Public Instance`
---<br/>`Setter NonPublic Instance`
---@field Metadata System.String|string
---`Getter Public Instance`
---@field Result Steamworks.Result
_G['Steamworks']['Ugc']['Item'] = {}

---`Method Public Static`
---@param id Steamworks.Data.PublishedFileId
---@param maxageseconds? System.Int32|integer
---@return System.Threading.Tasks.Task*1System*Nullable*2Steamworks*Ugc*Item
_G['Steamworks']['Ugc']['Item'].GetAsync = function(id, maxageseconds) end

---`Method NonPublic Static`
---@param details Steamworks.Data.SteamUGCDetails_t
---@return Steamworks.Ugc.Item
_G['Steamworks']['Ugc']['Item'].From = function(details) end

---`Method Public Instance`
---@param find System.String|string
---@return System.Boolean|boolean
_G['Steamworks']['Ugc']['Item'].HasTag = function(find) end

---`Method Public Instance`
---@return System.Threading.Tasks.Task*1System*Boolean
_G['Steamworks']['Ugc']['Item'].Subscribe = function() end

---`Method Public Instance`
---@param progress? System.Action*1System*Single|(fun(obj:System.Single|number))
---@param milisecondsUpdateDelay? System.Int32|integer
---@param ct? System.Threading.CancellationToken
---@return System.Threading.Tasks.Task*1System*Boolean
_G['Steamworks']['Ugc']['Item'].DownloadAsync = function(progress, milisecondsUpdateDelay, ct) end

---`Method Public Instance`
---@return System.Threading.Tasks.Task*1System*Boolean
_G['Steamworks']['Ugc']['Item'].Unsubscribe = function() end

---`Method Public Instance`
---@return System.Threading.Tasks.Task*1System*Boolean
_G['Steamworks']['Ugc']['Item'].AddFavorite = function() end

---`Method Public Instance`
---@return System.Threading.Tasks.Task*1System*Boolean
_G['Steamworks']['Ugc']['Item'].RemoveFavorite = function() end

---`Method Public Instance`
---@param up System.Boolean|boolean
---@return System.Threading.Tasks.Task*1System*Nullable*2Steamworks*Result
_G['Steamworks']['Ugc']['Item'].Vote = function(up) end

---`Method Public Instance`
---@return System.Threading.Tasks.Task*1System*Nullable*2Steamworks*Ugc*UserItemVote
_G['Steamworks']['Ugc']['Item'].GetUserVote = function() end

---`Method Public Instance`
---@return Steamworks.Ugc.Editor
_G['Steamworks']['Ugc']['Item'].Edit = function() end

---`Constructor Public Instance`
---@param id Steamworks.Data.PublishedFileId
---@return Steamworks.Ugc.Item
_G['Steamworks']['Ugc']['Item'] = function(id) end

---`Constructor Public Instance`
---@param id Steamworks.Data.PublishedFileId
---@return Steamworks.Ugc.Item
_G['Steamworks']['Ugc']['Item'].__new = function(id) end

