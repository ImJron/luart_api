--- https://www.luart.org/doc/compression/index.html
---@class Compression
Compression = {}


--- The deflate() function compress data using the DEFLATE algorithm.
--- @param data string|Buffer
--- @return Buffer @Returns a  Buffer that holds the compressed data or nil if compression failed.
---
--- https://www.luart.org/doc/compression/deflate.html
function Compression.deflate(data) end

--- The gunzip() function decompress a GZIP compressed file.
--- @param file string|File A string or a  File instance, representing the GZIP compressed file.
--- @return File @Returns a temporary  File instance that represent the decompressed file.
---
--- https://www.luart.org/doc/compression/gunzip.html
function Compression.gunzip(file) end

--- The gzip() function compress a file using the GZIP file format specification.
--- @param file string|File A string or a  File instance, representing the file to be compressed.
--- @return File @Returns a temporary  File instance that represent the compressed file.
---
--- https://www.luart.org/doc/compression/gzip.html
function Compression.gzip(file) end

--- The inflate() function decompress data using the INFLATE algorithm.
--- @param data string|Buffer A string or a  Buffer object, to be decompressed.
--- @return Buffer @Returns a  Buffer that holds the compressed data or nil if compression failed.
---
--- https://www.luart.org/doc/compression/inflate.html
function Compression.inflate(data) end

--- The isZip() function checks wether a file represent a valid ZIP archive.
--- @param file string|File A string or a  File object, to be checked for ZIP validity.
--- @return boolean @Returns true if the given file is a valid ZIP archive, false otherwise.
---
--- https://www.luart.org/doc/compression/isZip.html
function Compression.isZip(file) end

--- @alias zip_open_mode "read"|"append"|"write"|"delete"
--- The Zip constructor opens the specified ZIP archive using the specified mode. Returns a Zip value representing the ZIP archive.
--- @param file string|File A string or a  File object, representing the ZIP archive to be opened.
---@param mode? zip_open_mode An optional string that indicate the open mode :
--- - "read" : The zip archive is open for reading (the zip archive must exist). It's the default mode.
--- - "append" : The zip archive is open for appending (the zip archive must exist).
--- - "write" : The zip archive is open for writing (the zip archive is created and overwrites any previous existing archive).
--- - "delete" : The zip archive is open for deleting (Zip.delete() can be used to delete entries).
---@param level? number An optional number that indicate the compression level, from 0 (no compression) to 10 (maximum compression level), defaulting to 6.
---@return Zip
---
---https://www.luart.org/doc/compression/Zip-constructor.html
function Compression.Zip(file, mode, level) end
