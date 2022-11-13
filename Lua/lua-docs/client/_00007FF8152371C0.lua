---@meta
---@class Barotrauma.TextureLoader : System.Object
---`Field Private Static`
---@field cancelAll System.Boolean|boolean
---`Field Private Static`
---@field _graphicsDevice Microsoft.Xna.Framework.Graphics.GraphicsDevice
---`Getter Public Static`
---<br/>`Setter Private Static`
---@field PlaceHolderTexture Microsoft.Xna.Framework.Graphics.Texture2D
_G['TextureLoader'] = {}

---`Method Public Static`
---@param graphicsDevice Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@param needsBmp? System.Boolean|boolean
_G['TextureLoader'].Init = function(graphicsDevice, needsBmp) end

---`Method Public Static`
_G['TextureLoader'].CancelAll = function() end

---`Method Private Static`
---@param data System.Byte-arr|System.Byte|integer[]
---@param width System.Int32|integer
---@param height System.Int32|integer
---@return System.Byte-arr|System.Byte|integer[]
_G['TextureLoader'].CompressDxt5 = function(data, width, height) end

---`Method Private Static`
---@param data System.Byte-arr|System.Byte|integer[]
---@param offset System.Int32|integer
---@param width System.Int32|integer
---@param output System.IO.Stream
_G['TextureLoader'].CompressDxt5Block = function(data, offset, width, output) end

---`Method Public Static`
---@param path System.String|string
---@param compress? System.Boolean|boolean
---@param mipmap? System.Boolean|boolean
---@return Microsoft.Xna.Framework.Graphics.Texture2D
_G['TextureLoader'].FromFile = function(path, compress, mipmap) end

---`Method Public Static`
---@param stream System.IO.Stream
---@param path? System.String|string
---@param compress? System.Boolean|boolean
---@param mipmap? System.Boolean|boolean
---@return Microsoft.Xna.Framework.Graphics.Texture2D
_G['TextureLoader'].FromStream = function(stream, path, compress, mipmap) end

