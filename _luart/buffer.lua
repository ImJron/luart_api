
---@class Buffer
---@alias buffer_encoding "utf8"|"unicode"|"base64"|"hex"
--- https://www.luart.org/doc/sys/Buffer.html
Buffer = {}

---@type buffer_encoding
---***READ/WRITE***
---
---The Buffer.encoding property get or set the encoding to be used when converting the Buffer to a string
---
---https://www.luart.org/doc/sys/Buffer-encoding.html
Buffer.encoding = {}


---@type number
--- ***READ/WRITE***
---
--- The Buffer.size property get or set the current Buffer byte size. The property permits to extend or shrink the Buffer.
--- - The length operator # can be used to get the Buffer size
---
--- https://www.luart.org/doc/sys/Buffer-size.html
Buffer.size = {}



---Append binary data to the Buffer with the specified content.
---@param var @A variable used to append the Buffer. Only number, string and table values are permitted with the following behavior :
--- - number : append the Buffer with the specified size. All bytes are appended to zero.
--- - string : append the Buffer with the specified string. An optional encoding argument can specify how to decode the string (see below)
--- - table : append the Buffer with the specified table. The table must contain only sequential byte values (for example { 20, 33, 75 })
---@param encoding? buffer_encoding An optional string used to specify the decoding method when initializing the Buffer with a string value :
--- - "utf8" : append the Buffer with a UTF8 encoded string, or as raw binary data (default)
--- - "unicode" : append the Buffer with an UNICODE (UCS-2 LE) encoded string
--- - "base64" : append the Buffer with a base64 encoded string
--- - "hex" : append the Buffer with a hexadecimal encoded string
--- https://www.luart.org/doc/sys/Buffer-append.html
function Buffer:append(var, encoding) end

---Compress the Buffer to another binary Buffer, using the DEFLATE compression algorithm.
---https://www.luart.org/doc/sys/Buffer-compress.html
function Buffer:compress() end

---Checks if the Buffer contains the whole byte pattern.
---@param pattern string|Buffer A string or Buffer value that contains the byte sequence to search for
---@return any @Returns a number representing the byte sequence position in the Buffer, or false if it has not been found.
---https://www.luart.org/doc/sys/Buffer-contains.html
function Buffer:contains(pattern) end

---Decompress the Buffer to another binary Buffer, using the DEFLATE decompression algorithm.
---@return string @Returns the decompressed Buffer.
---https://www.luart.org/doc/sys/Buffer-decompress.html
function Buffer:decompress() end

--- Returns a string, encoded from the Buffer according to the provided encoding.
--- @param encoding buffer_encoding A string that specifies the encoding method to convert the binary Buffer to string :
--- - "utf8" : uses the UTF8 encoding (default)
--- - "unicode" : uses the UNICODE (UCS-2 LE) encoding
--- - "base64" : uses base64 encoding
--- - "hex" : uses hexadecimal encoding
--- @return string @Returns the encoded string.
--- https://www.luart.org/doc/sys/Buffer-encode.html
function Buffer:encode(encoding) end

---Reinitialize the Buffer with the specified content.
---@param var @A variable used to initialize the Buffer. Only number, string and table values are permitted with the following behavior :
--- - number : Initialize the Buffer with the specified size. All bytes are initialized to zero.
--- - string : Initialize the Buffer with the specified string. An optional encoding argument can specify how to decode the string (see below)
--- - table : Initialize the Buffer with the specified table. The table must contain only sequential byte values (for example { 20, 33, 75 })
---@param encoding? buffer_encoding An optional string used to specify the decoding method when initializing the Buffer with a string value :
--- - "utf8" : Initialize the Buffer with a UTF8 encoded string, or as raw binary data (default)
--- - "unicode" : Initialize the Buffer with an UNICODE (UCS-2 LE) encoded string
--- - "base64" : Initialize the Buffer with a base64 encoded string
--- - "hex" : Initialize the Buffer with a hexadecimal encoded string
--- https://www.luart.org/doc/sys/Buffer-from.html
function Buffer:from(var, encoding) end

---Serialize the Buffer, using the provided format.
---@param format string A format string to specify the binary layout to serialize the values. See Lua programming reference "string.pack" for available sequence of conversions options.
---@param value1 any One or more values to serialize in binary format.
---https://www.luart.org/doc/sys/Buffer-pack.html
function Buffer:pack(format, value1) end

---Extracts part of the Buffer like the function string.sub.
---@param start number An index of the Buffer defining the start of the sub-Buffer. That index can be negative (starting to count from the end of the Buffer).
---@param _end? number An optional index that defines where the sub-Buffer ends. That index can be negative (starting to count from the end of the Buffer).
---When that argument is absent, it is assumed to be equal to -1 (end of the Buffer).
---@return Buffer
---https://www.luart.org/doc/sys/Buffer-sub.html
function Buffer:sub(start, _end) end

---Deserialize the Buffer, using the provided format.
---@param format string A format string to specify the binary layout to serialize the values. See Lua programming reference "string.pack" for available sequence of conversions options.
---https://www.luart.org/doc/sys/Buffer-unpack.html
function Buffer:unpack(format) end
