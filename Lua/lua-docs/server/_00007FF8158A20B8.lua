---@meta
---@class System.Xml.Linq.XDocument : System.Xml.Linq.XContainer
---`Field Private Instance`
---@field _declaration System.Xml.Linq.XDeclaration
---`Getter Public Instance`
---<br/>`Setter Public Instance`
---@field Declaration System.Xml.Linq.XDeclaration
---`Getter Public Instance`
---@field DocumentType System.Xml.Linq.XDocumentType
---`Getter Public Instance Virtual`
---@field NodeType System.Xml.XmlNodeType
---`Getter Public Instance`
---@field Root System.Xml.Linq.XElement
_G['XDocument'] = {}

---`Method Public Static`
---@overload fun(uri:System.String|string):System.Xml.Linq.XDocument
---@overload fun(uri:System.String|string, options:System.Xml.Linq.LoadOptions):System.Xml.Linq.XDocument
---@overload fun(stream:System.IO.Stream):System.Xml.Linq.XDocument
---@overload fun(stream:System.IO.Stream, options:System.Xml.Linq.LoadOptions):System.Xml.Linq.XDocument
---@overload fun(textReader:System.IO.TextReader):System.Xml.Linq.XDocument
---@overload fun(textReader:System.IO.TextReader, options:System.Xml.Linq.LoadOptions):System.Xml.Linq.XDocument
---@overload fun(reader:System.Xml.XmlReader):System.Xml.Linq.XDocument
---@param reader System.Xml.XmlReader
---@param options System.Xml.Linq.LoadOptions
---@return System.Xml.Linq.XDocument
_G['XDocument'].Load = function(reader, options) end

---`Method Public Static`
---@overload fun(stream:System.IO.Stream, options:System.Xml.Linq.LoadOptions, cancellationToken:System.Threading.CancellationToken):System.Threading.Tasks.Task*1System*Xml*Linq*XDocument
---@overload fun(textReader:System.IO.TextReader, options:System.Xml.Linq.LoadOptions, cancellationToken:System.Threading.CancellationToken):System.Threading.Tasks.Task*1System*Xml*Linq*XDocument
---@param reader System.Xml.XmlReader
---@param options System.Xml.Linq.LoadOptions
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task*1System*Xml*Linq*XDocument
_G['XDocument'].LoadAsync = function(reader, options, cancellationToken) end

---`Method Private Static`
---@param reader System.Xml.XmlReader
---@param options System.Xml.Linq.LoadOptions
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task*1System*Xml*Linq*XDocument
_G['XDocument'].LoadAsyncInternal = function(reader, options, cancellationToken) end

---`Method Private Static`
---@param reader System.Xml.XmlReader
---@param options System.Xml.Linq.LoadOptions
---@return System.Xml.Linq.XDocument
_G['XDocument'].InitLoad = function(reader, options) end

---`Method Public Static`
---@overload fun(text:System.String|string):System.Xml.Linq.XDocument
---@param text System.String|string
---@param options System.Xml.Linq.LoadOptions
---@return System.Xml.Linq.XDocument
_G['XDocument'].Parse = function(text, options) end

---`Method Public Instance`
---@overload fun(stream:System.IO.Stream)
---@overload fun(stream:System.IO.Stream, options:System.Xml.Linq.SaveOptions)
---@overload fun(textWriter:System.IO.TextWriter)
---@overload fun(textWriter:System.IO.TextWriter, options:System.Xml.Linq.SaveOptions)
---@overload fun(writer:System.Xml.XmlWriter)
---@overload fun(fileName:System.String|string)
---@param fileName System.String|string
---@param options System.Xml.Linq.SaveOptions
_G['XDocument'].Save = function(fileName, options) end

---`Method Public Instance`
---@overload fun(stream:System.IO.Stream, options:System.Xml.Linq.SaveOptions, cancellationToken:System.Threading.CancellationToken):System.Threading.Tasks.Task
---@overload fun(textWriter:System.IO.TextWriter, options:System.Xml.Linq.SaveOptions, cancellationToken:System.Threading.CancellationToken):System.Threading.Tasks.Task
---@param writer System.Xml.XmlWriter
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
_G['XDocument'].SaveAsync = function(writer, cancellationToken) end

---`Method Public Instance Virtual`
---@param writer System.Xml.XmlWriter
_G['XDocument'].WriteTo = function(writer) end

---`Method Public Instance Virtual`
---@param writer System.Xml.XmlWriter
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
_G['XDocument'].WriteToAsync = function(writer, cancellationToken) end

---`Method Private Instance`
---@param writer System.Xml.XmlWriter
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
_G['XDocument'].WriteToAsyncInternal = function(writer, cancellationToken) end

---`Method NonPublic Instance Virtual`
---@param a System.Xml.Linq.XAttribute
_G['XDocument'].AddAttribute = function(a) end

---`Method NonPublic Instance Virtual`
---@param a System.Xml.Linq.XAttribute
_G['XDocument'].AddAttributeSkipNotify = function(a) end

---`Method NonPublic Instance Virtual`
---@return System.Xml.Linq.XNode
_G['XDocument'].CloneNode = function() end

---`Method NonPublic Instance Virtual`
---@param node System.Xml.Linq.XNode
---@return System.Boolean|boolean
_G['XDocument'].DeepEquals = function(node) end

---`Method NonPublic Instance Virtual`
---@return System.Int32|integer
_G['XDocument'].GetDeepHashCode = function() end

---`Method Private Instance`
---@return System.Xml.Linq.XDocument.T
_G['XDocument'].GetFirstNode = function() end

---`Method NonPublic Static`
---@param s System.String|string
---@return System.Boolean|boolean
_G['XDocument'].IsWhitespace = function(s) end

---`Method NonPublic Instance Virtual`
---@param node System.Xml.Linq.XNode
---@param previous System.Xml.Linq.XNode
_G['XDocument'].ValidateNode = function(node, previous) end

---`Method Private Instance`
---@param previous System.Xml.Linq.XNode
---@param allowBefore System.Xml.XmlNodeType
---@param allowAfter System.Xml.XmlNodeType
_G['XDocument'].ValidateDocument = function(previous, allowBefore, allowAfter) end

---`Method NonPublic Instance Virtual`
---@param s System.String|string
_G['XDocument'].ValidateString = function(s) end

---`Constructor Public Instance`
---@overload fun():System.Xml.Linq.XDocument
---@overload fun(...:System.Object):System.Xml.Linq.XDocument
---@overload fun(declaration:System.Xml.Linq.XDeclaration, ...:System.Object):System.Xml.Linq.XDocument
---@param other System.Xml.Linq.XDocument
---@return System.Xml.Linq.XDocument
_G['XDocument'] = function(other) end

---`Constructor Public Instance`
---@overload fun():System.Xml.Linq.XDocument
---@overload fun(...:System.Object):System.Xml.Linq.XDocument
---@overload fun(declaration:System.Xml.Linq.XDeclaration, ...:System.Object):System.Xml.Linq.XDocument
---@param other System.Xml.Linq.XDocument
---@return System.Xml.Linq.XDocument
_G['XDocument'].__new = function(other) end

