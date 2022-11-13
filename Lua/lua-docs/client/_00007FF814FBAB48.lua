---@meta
---@class Microsoft.Xna.Framework.Graphics.Texture2D : Microsoft.Xna.Framework.Graphics.Texture
---`Field NonPublic Instance`
---@field width System.Int32|integer
---`Field NonPublic Instance`
---@field height System.Int32|integer
---`Field NonPublic Instance`
---@field ArraySize System.Int32|integer
---`Field Private Instance`
---@field _shared System.Boolean|boolean
---`Field Private Instance`
---@field _mipmap System.Boolean|boolean
---`Field Private Instance`
---@field _sampleDescription SharpDX.DXGI.SampleDescription
---`Field Private Instance`
---@field _cachedStagingTexture SharpDX.Direct3D11.Texture2D
---`Field Private Static`
---@field imgfactory SharpDX.WIC.ImagingFactory
---`Getter NonPublic Instance`
---<br/>`Setter Private Instance`
---@field TexelWidth System.Single|number
---`Getter NonPublic Instance`
---<br/>`Setter Private Instance`
---@field TexelHeight System.Single|number
---`Getter Public Instance`
---@field Bounds Microsoft.Xna.Framework.Rectangle
---`Getter Public Instance Virtual`
---@field Width System.Int32|integer
---`Getter Public Instance Virtual`
---@field Height System.Int32|integer
---`Getter NonPublic Instance`
---@field Shared System.Boolean|boolean
---`Getter NonPublic Instance`
---@field Mipmap System.Boolean|boolean
---`Getter NonPublic Instance`
---@field SampleDescription SharpDX.DXGI.SampleDescription
_G['Microsoft']['Xna']['Framework']['Graphics']['Texture2D'] = {}

---`Method Public Instance`
---@overload fun(level:System.Int32|integer, arraySlice:System.Int32|integer, rect:System.Nullable*1Microsoft*Xna*Framework*Rectangle, data:Microsoft.Xna.Framework.Graphics.T-arr|Microsoft.Xna.Framework.Graphics.Texture2D.T[], startIndex:System.Int32|integer, elementCount:System.Int32|integer)
---@overload fun(level:System.Int32|integer, rect:System.Nullable*1Microsoft*Xna*Framework*Rectangle, data:Microsoft.Xna.Framework.Graphics.T-arr|Microsoft.Xna.Framework.Graphics.Texture2D.T[], startIndex:System.Int32|integer, elementCount:System.Int32|integer)
---@overload fun(data:Microsoft.Xna.Framework.Graphics.T-arr|Microsoft.Xna.Framework.Graphics.Texture2D.T[], startIndex:System.Int32|integer, elementCount:System.Int32|integer)
---@param data Microsoft.Xna.Framework.Graphics.T-arr|Microsoft.Xna.Framework.Graphics.Texture2D.T[]
_G['Microsoft']['Xna']['Framework']['Graphics']['Texture2D'].SetData = function(data) end

---`Method Public Instance`
---@overload fun(level:System.Int32|integer, arraySlice:System.Int32|integer, rect:System.Nullable*1Microsoft*Xna*Framework*Rectangle, data:Microsoft.Xna.Framework.Graphics.T-arr|Microsoft.Xna.Framework.Graphics.Texture2D.T[], startIndex:System.Int32|integer, elementCount:System.Int32|integer)
---@overload fun(level:System.Int32|integer, rect:System.Nullable*1Microsoft*Xna*Framework*Rectangle, data:Microsoft.Xna.Framework.Graphics.T-arr|Microsoft.Xna.Framework.Graphics.Texture2D.T[], startIndex:System.Int32|integer, elementCount:System.Int32|integer)
---@overload fun(data:Microsoft.Xna.Framework.Graphics.T-arr|Microsoft.Xna.Framework.Graphics.Texture2D.T[], startIndex:System.Int32|integer, elementCount:System.Int32|integer)
---@param data Microsoft.Xna.Framework.Graphics.T-arr|Microsoft.Xna.Framework.Graphics.Texture2D.T[]
_G['Microsoft']['Xna']['Framework']['Graphics']['Texture2D'].GetData = function(data) end

---`Method Public Static`
---@param graphicsDevice Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@param stream System.IO.Stream
---@return Microsoft.Xna.Framework.Graphics.Texture2D
_G['Microsoft']['Xna']['Framework']['Graphics']['Texture2D'].FromStream = function(graphicsDevice, stream) end

---`Method Public Static`
---@param stream System.IO.Stream
---@param width System.Int32-ref
---@param height System.Int32-ref
---@param channels System.Int32-ref
---@return System.Byte-arr|System.Byte|integer[]
_G['Microsoft']['Xna']['Framework']['Graphics']['Texture2D'].TextureDataFromStream = function(stream, width, height, channels) end

---`Method Public Instance`
---@param stream System.IO.Stream
---@param width System.Int32|integer
---@param height System.Int32|integer
_G['Microsoft']['Xna']['Framework']['Graphics']['Texture2D'].SaveAsJpeg = function(stream, width, height) end

---`Method Public Instance`
---@param stream System.IO.Stream
---@param width System.Int32|integer
---@param height System.Int32|integer
_G['Microsoft']['Xna']['Framework']['Graphics']['Texture2D'].SaveAsPng = function(stream, width, height) end

---`Method Public Instance`
---@param textureStream System.IO.Stream
_G['Microsoft']['Xna']['Framework']['Graphics']['Texture2D'].Reload = function(textureStream) end

---`Method Private Static`
---@param pixelHeight System.Int32|integer
---@param pixelWidth System.Int32|integer
---@param pixels System.Int32-arr|System.Int32|integer[]
_G['Microsoft']['Xna']['Framework']['Graphics']['Texture2D'].ConvertToABGR = function(pixelHeight, pixelWidth, pixels) end

---`Method Private Instance`
---@param level System.Int32|integer
---@param arraySlice System.Int32|integer
---@param rect System.Nullable*1Microsoft*Xna*Framework*Rectangle
---@param data Microsoft.Xna.Framework.Graphics.T-arr|Microsoft.Xna.Framework.Graphics.Texture2D.T[]
---@param startIndex System.Int32|integer
---@param elementCount System.Int32|integer
---@param checkedRect Microsoft.Xna.Framework.Rectangle-ref
_G['Microsoft']['Xna']['Framework']['Graphics']['Texture2D'].ValidateParams = function(level, arraySlice, rect, data, startIndex, elementCount, checkedRect) end

---`Method Private Instance`
---@param width System.Int32|integer
---@param height System.Int32|integer
---@param mipmap System.Boolean|boolean
---@param format Microsoft.Xna.Framework.Graphics.SurfaceFormat
---@param type Microsoft.Xna.Framework.Graphics.Texture2D.SurfaceType
---@param shared System.Boolean|boolean
_G['Microsoft']['Xna']['Framework']['Graphics']['Texture2D'].PlatformConstruct = function(width, height, mipmap, format, type, shared) end

---`Method Private Instance`
---@overload fun(level:System.Int32|integer, data:Microsoft.Xna.Framework.Graphics.T-arr|Microsoft.Xna.Framework.Graphics.Texture2D.T[], startIndex:System.Int32|integer, elementCount:System.Int32|integer)
---@param level System.Int32|integer
---@param arraySlice System.Int32|integer
---@param rect Microsoft.Xna.Framework.Rectangle
---@param data Microsoft.Xna.Framework.Graphics.T-arr|Microsoft.Xna.Framework.Graphics.Texture2D.T[]
---@param startIndex System.Int32|integer
---@param elementCount System.Int32|integer
_G['Microsoft']['Xna']['Framework']['Graphics']['Texture2D'].PlatformSetData = function(level, arraySlice, rect, data, startIndex, elementCount) end

---`Method Private Instance`
---@param level System.Int32|integer
---@param arraySlice System.Int32|integer
---@param rect Microsoft.Xna.Framework.Rectangle
---@param data Microsoft.Xna.Framework.Graphics.T-arr|Microsoft.Xna.Framework.Graphics.Texture2D.T[]
---@param startIndex System.Int32|integer
---@param elementCount System.Int32|integer
_G['Microsoft']['Xna']['Framework']['Graphics']['Texture2D'].PlatformGetData = function(level, arraySlice, rect, data, startIndex, elementCount) end

---`Method NonPublic Instance Virtual`
---@param disposing System.Boolean|boolean
_G['Microsoft']['Xna']['Framework']['Graphics']['Texture2D'].Dispose = function(disposing) end

---`Method Private Instance`
---@param arraySlice System.Int32|integer
---@param level System.Int32|integer
---@return System.Int32|integer
_G['Microsoft']['Xna']['Framework']['Graphics']['Texture2D'].CalculateSubresourceIndex = function(arraySlice, level) end

---`Method Private Static`
---@param graphicsDevice Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@param stream System.IO.Stream
---@return Microsoft.Xna.Framework.Graphics.Texture2D
_G['Microsoft']['Xna']['Framework']['Graphics']['Texture2D'].PlatformFromStream = function(graphicsDevice, stream) end

---`Method Private Instance`
---@param stream System.IO.Stream
---@param width System.Int32|integer
---@param height System.Int32|integer
_G['Microsoft']['Xna']['Framework']['Graphics']['Texture2D'].PlatformSaveAsJpeg = function(stream, width, height) end

---`Method Private Static`
---@param pixelHeight System.Int32|integer
---@param pixelWidth System.Int32|integer
---@param pixels System.Byte-arr|System.Byte|integer[]
_G['Microsoft']['Xna']['Framework']['Graphics']['Texture2D'].ConvertToRGBA = function(pixelHeight, pixelWidth, pixels) end

---`Method Private Instance`
---@param stream System.IO.Stream
---@param width System.Int32|integer
---@param height System.Int32|integer
_G['Microsoft']['Xna']['Framework']['Graphics']['Texture2D'].PlatformSaveAsPng = function(stream, width, height) end

---`Method Private Static`
---@param bsource SharpDX.WIC.BitmapSource
---@param device Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@return SharpDX.Direct3D11.Texture2D
_G['Microsoft']['Xna']['Framework']['Graphics']['Texture2D'].CreateTex2DFromBitmap = function(bsource, device) end

---`Method Private Static`
---@param stream System.IO.Stream
---@param decoder SharpDX.WIC.BitmapDecoder-ref
---@return SharpDX.WIC.BitmapSource
_G['Microsoft']['Xna']['Framework']['Graphics']['Texture2D'].LoadBitmap = function(stream, decoder) end

---`Method NonPublic Instance Virtual`
---@return SharpDX.Direct3D11.Texture2DDescription
_G['Microsoft']['Xna']['Framework']['Graphics']['Texture2D'].GetTexture2DDescription = function() end

---`Method NonPublic Instance Virtual`
---@return SharpDX.Direct3D11.Resource
_G['Microsoft']['Xna']['Framework']['Graphics']['Texture2D'].CreateTexture = function() end

---`Method NonPublic Instance Virtual`
---@return SharpDX.Direct3D11.ShaderResourceView
_G['Microsoft']['Xna']['Framework']['Graphics']['Texture2D'].CreateShaderResourceView = function() end

---`Method NonPublic Instance Virtual`
---@return SharpDX.DXGI.SampleDescription
_G['Microsoft']['Xna']['Framework']['Graphics']['Texture2D'].CreateSampleDescription = function() end

---`Method NonPublic Instance`
---@return SharpDX.DXGI.SampleDescription
_G['Microsoft']['Xna']['Framework']['Graphics']['Texture2D'].GetTextureSampleDescription = function() end

---`Method Private Instance`
---@param textureStream System.IO.Stream
_G['Microsoft']['Xna']['Framework']['Graphics']['Texture2D'].PlatformReload = function(textureStream) end

---`Constructor Public Instance`
---@overload fun(graphicsDevice:Microsoft.Xna.Framework.Graphics.GraphicsDevice, width:System.Int32|integer, height:System.Int32|integer):Microsoft.Xna.Framework.Graphics.Texture2D
---@overload fun(graphicsDevice:Microsoft.Xna.Framework.Graphics.GraphicsDevice, width:System.Int32|integer, height:System.Int32|integer, mipmap:System.Boolean|boolean, format:Microsoft.Xna.Framework.Graphics.SurfaceFormat):Microsoft.Xna.Framework.Graphics.Texture2D
---@overload fun(graphicsDevice:Microsoft.Xna.Framework.Graphics.GraphicsDevice, width:System.Int32|integer, height:System.Int32|integer, mipmap:System.Boolean|boolean, format:Microsoft.Xna.Framework.Graphics.SurfaceFormat, arraySize:System.Int32|integer):Microsoft.Xna.Framework.Graphics.Texture2D
---@overload fun(graphicsDevice:Microsoft.Xna.Framework.Graphics.GraphicsDevice, width:System.Int32|integer, height:System.Int32|integer, mipmap:System.Boolean|boolean, format:Microsoft.Xna.Framework.Graphics.SurfaceFormat, type:Microsoft.Xna.Framework.Graphics.Texture2D.SurfaceType):Microsoft.Xna.Framework.Graphics.Texture2D
---@param graphicsDevice Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@param width System.Int32|integer
---@param height System.Int32|integer
---@param mipmap System.Boolean|boolean
---@param format Microsoft.Xna.Framework.Graphics.SurfaceFormat
---@param type Microsoft.Xna.Framework.Graphics.Texture2D.SurfaceType
---@param shared System.Boolean|boolean
---@param arraySize System.Int32|integer
---@return Microsoft.Xna.Framework.Graphics.Texture2D
_G['Microsoft']['Xna']['Framework']['Graphics']['Texture2D'] = function(graphicsDevice, width, height, mipmap, format, type, shared, arraySize) end

---`Constructor Public Instance`
---@overload fun(graphicsDevice:Microsoft.Xna.Framework.Graphics.GraphicsDevice, width:System.Int32|integer, height:System.Int32|integer):Microsoft.Xna.Framework.Graphics.Texture2D
---@overload fun(graphicsDevice:Microsoft.Xna.Framework.Graphics.GraphicsDevice, width:System.Int32|integer, height:System.Int32|integer, mipmap:System.Boolean|boolean, format:Microsoft.Xna.Framework.Graphics.SurfaceFormat):Microsoft.Xna.Framework.Graphics.Texture2D
---@overload fun(graphicsDevice:Microsoft.Xna.Framework.Graphics.GraphicsDevice, width:System.Int32|integer, height:System.Int32|integer, mipmap:System.Boolean|boolean, format:Microsoft.Xna.Framework.Graphics.SurfaceFormat, arraySize:System.Int32|integer):Microsoft.Xna.Framework.Graphics.Texture2D
---@overload fun(graphicsDevice:Microsoft.Xna.Framework.Graphics.GraphicsDevice, width:System.Int32|integer, height:System.Int32|integer, mipmap:System.Boolean|boolean, format:Microsoft.Xna.Framework.Graphics.SurfaceFormat, type:Microsoft.Xna.Framework.Graphics.Texture2D.SurfaceType):Microsoft.Xna.Framework.Graphics.Texture2D
---@param graphicsDevice Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@param width System.Int32|integer
---@param height System.Int32|integer
---@param mipmap System.Boolean|boolean
---@param format Microsoft.Xna.Framework.Graphics.SurfaceFormat
---@param type Microsoft.Xna.Framework.Graphics.Texture2D.SurfaceType
---@param shared System.Boolean|boolean
---@param arraySize System.Int32|integer
---@return Microsoft.Xna.Framework.Graphics.Texture2D
_G['Microsoft']['Xna']['Framework']['Graphics']['Texture2D'].__new = function(graphicsDevice, width, height, mipmap, format, type, shared, arraySize) end

---`Constructor NonPublic Instance`
---@overload fun(graphicsDevice:Microsoft.Xna.Framework.Graphics.GraphicsDevice, width:System.Int32|integer, height:System.Int32|integer):Microsoft.Xna.Framework.Graphics.Texture2D
---@overload fun(graphicsDevice:Microsoft.Xna.Framework.Graphics.GraphicsDevice, width:System.Int32|integer, height:System.Int32|integer, mipmap:System.Boolean|boolean, format:Microsoft.Xna.Framework.Graphics.SurfaceFormat):Microsoft.Xna.Framework.Graphics.Texture2D
---@overload fun(graphicsDevice:Microsoft.Xna.Framework.Graphics.GraphicsDevice, width:System.Int32|integer, height:System.Int32|integer, mipmap:System.Boolean|boolean, format:Microsoft.Xna.Framework.Graphics.SurfaceFormat, arraySize:System.Int32|integer):Microsoft.Xna.Framework.Graphics.Texture2D
---@overload fun(graphicsDevice:Microsoft.Xna.Framework.Graphics.GraphicsDevice, width:System.Int32|integer, height:System.Int32|integer, mipmap:System.Boolean|boolean, format:Microsoft.Xna.Framework.Graphics.SurfaceFormat, type:Microsoft.Xna.Framework.Graphics.Texture2D.SurfaceType):Microsoft.Xna.Framework.Graphics.Texture2D
---@param graphicsDevice Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@param width System.Int32|integer
---@param height System.Int32|integer
---@param mipmap System.Boolean|boolean
---@param format Microsoft.Xna.Framework.Graphics.SurfaceFormat
---@param type Microsoft.Xna.Framework.Graphics.Texture2D.SurfaceType
---@param shared System.Boolean|boolean
---@param arraySize System.Int32|integer
---@return Microsoft.Xna.Framework.Graphics.Texture2D
_G['Microsoft']['Xna']['Framework']['Graphics']['Texture2D'] = function(graphicsDevice, width, height, mipmap, format, type, shared, arraySize) end

---`Constructor NonPublic Instance`
---@overload fun(graphicsDevice:Microsoft.Xna.Framework.Graphics.GraphicsDevice, width:System.Int32|integer, height:System.Int32|integer):Microsoft.Xna.Framework.Graphics.Texture2D
---@overload fun(graphicsDevice:Microsoft.Xna.Framework.Graphics.GraphicsDevice, width:System.Int32|integer, height:System.Int32|integer, mipmap:System.Boolean|boolean, format:Microsoft.Xna.Framework.Graphics.SurfaceFormat):Microsoft.Xna.Framework.Graphics.Texture2D
---@overload fun(graphicsDevice:Microsoft.Xna.Framework.Graphics.GraphicsDevice, width:System.Int32|integer, height:System.Int32|integer, mipmap:System.Boolean|boolean, format:Microsoft.Xna.Framework.Graphics.SurfaceFormat, arraySize:System.Int32|integer):Microsoft.Xna.Framework.Graphics.Texture2D
---@overload fun(graphicsDevice:Microsoft.Xna.Framework.Graphics.GraphicsDevice, width:System.Int32|integer, height:System.Int32|integer, mipmap:System.Boolean|boolean, format:Microsoft.Xna.Framework.Graphics.SurfaceFormat, type:Microsoft.Xna.Framework.Graphics.Texture2D.SurfaceType):Microsoft.Xna.Framework.Graphics.Texture2D
---@param graphicsDevice Microsoft.Xna.Framework.Graphics.GraphicsDevice
---@param width System.Int32|integer
---@param height System.Int32|integer
---@param mipmap System.Boolean|boolean
---@param format Microsoft.Xna.Framework.Graphics.SurfaceFormat
---@param type Microsoft.Xna.Framework.Graphics.Texture2D.SurfaceType
---@param shared System.Boolean|boolean
---@param arraySize System.Int32|integer
---@return Microsoft.Xna.Framework.Graphics.Texture2D
_G['Microsoft']['Xna']['Framework']['Graphics']['Texture2D'].__new = function(graphicsDevice, width, height, mipmap, format, type, shared, arraySize) end

