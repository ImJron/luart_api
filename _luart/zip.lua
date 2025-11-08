---https://www.luart.org/doc/compression/Zip.html
---@class Zip
local Zip = {}

---@type number
--- ***READONLY***
---
--- Get the number of entries in the zip archive.
---
--- https://www.luart.org/doc/compression/Zip-count.html
Zip.count = {}

---@type string
--- ***READONLY***
---
--- Get the last error message after a zip operation failed.
---
--- https://www.luart.org/doc/compression/Zip-error.html
Zip.error = {}


---@type File
--- ***READONLY***
---
--- Get the  File object representing the current opened ZIP archive.
---
--- https://www.luart.org/doc/compression/Zip-file.html
Zip.file = {}


---@type boolean
--- ***READONLY***
---
--- Checks if the zip archive uses the ZIP64 extensions (for zip archives larger than 4 GiB).
---
--- https://www.luart.org/doc/compression/Zip-iszip64.html
Zip.iszip64 = {}


---@type number
--- ***READONLY***
---
--- Get the size in bytes of the zip archive.
---
--- https://www.luart.org/doc/compression/Zip-size.html
Zip.size = {}


--- Extract on the disk an entry with the given path/name in the Zip archive, asynchronously. The Zip archive should have been previously opened in "read" mode.
--- @param path string A string representing the path and/or the name of the entry in the Zip archive to be extracted.
--- @param use_entrypath? boolean An optional boolean value that indicates to extract the entry conserving its path or not.
--- @return Task @***ASYNC*** - This function returns a  Task executed in background, or false in case of error.
--- @return File|Directory @Returns a  File or a  Directory representing the extracted entry on the disk.
--- Returns false if any error occured. You can check the Zip.error property to get the error message.
--- Once the Task has terminated the entry extraction, it will return one of the following possible values :
--- - File representing the extracted file on the disk.
--- - Directory representing the extracted directory on the disk.
--- - false if any error occured. You can check the Zip.error property to get the error message.
---
--- https://www.luart.org/doc/compression/Zip-async-extract.html
---
--- https://www.luart.org/doc/compression/Zip-extract.html
function Zip:extract(path, use_entrypath) end

--- ***ASYNC*** - Extract on the disk all the content of the Zip archive, asynchronously. The Zip archive should have been previously opened in "read" mode.
--- Once the Task has terminated the entry extraction, it will return the number of extracted entries or false if any error occured. You can check the zip.error property to get the error message.
---
--- Extract on the disk all the content of the Zip archive.
---
--- @return Task|false @This function returns a Task executed in background.
--- @return number @Returns the number of extracted entries.
--- Returns false if any error occured. You can check the zip.error property to get the error message.
---
--- https://www.luart.org/doc/compression/Zip-async-extractall.html
---
--- https://www.luart.org/doc/compression/Zip-extractall.html
function Zip:extractall() end

--- Closes the zip archive.
--- - Zip values that are garbage collected (for example when going out of scope) are automatically closed before destruction. In this case, it's not necessary to call the Zip:close() method
---
--- https://www.luart.org/doc/compression/Zip-close.html
function Zip:close() end

--- Deletes one ore more entries from the Zip archive. The Zip archive should have been previously opened in "delete" mode.
--- @return number|false @Returns the number of deleted entries or false in case of error. You can check the Zip.error property to get the error message.
---
--- https://www.luart.org/doc/compression/Zip-delete.html
function Zip:delete() end

--- Check if the entry with the given path/name in the Zip archive represents a directory. The Zip archive should have been previously opened in "read" mode.
--- @param path string A string representing the path and/or the name of the entry in the Zip archive.
--- @return boolean @Returns true if the given entry is a directory, false otherwise.
---
--- https://www.luart.org/doc/compression/Zip-isdirectory.html
function Zip:isdirectory(path) end

--- Reads an entry in memory at the given path/name in the Zip archive. The Zip archive should have been previously opened in "read" mode.
--- @param path string A string representing the path and/or the name of the entry in the Zip archive.
--- @return Buffer @Returns a  Buffer value with the entry content.
---Returns false if any error occured. You can check the Zip.error property to get the error message.
---
---https://www.luart.org/doc/compression/Zip-read.html
function Zip:read(path) end

--- @alias zip_reopen_mode "read"|"append"|"write"|
--- Closes the zip archive and reopens it using the specified mode and level compression.
---@param mode? zip_reopen_mode An optional string that indicate the open mode :
--- - "read" : The zip archive is open for reading (the zip archive must exist). It's the default mode.
--- - "append" : The zip archive is open for appending (the zip archive must exist).
--- - "write" : The zip archive is open for writing (the zip archive is created and overwrites any previous existing archive).
---@param level? number An optional number that indicate the compression level, from 0 (no compression) to 10 (maximum compression level), defaulting to 6.
---
---https://www.luart.org/doc/compression/Zip-reopen.html
function Zip:reopen(mode, level) end

--- Writes a new entry in the Zip archive. The Zip archive should have been previously opened in "write" or "append" mode.
--- @param path? string An optional string representing the path and/or the name of the new entry in the Zip archive. If omitted, the new entry will be archived at the root of the Zip archive, using the name provided by the entry parameter.
--- @return boolean @Returns true if entry has been successfully added to the zip archive or false otherwise. You can check the Zip.error property to get the error message.
---
--- https://www.luart.org/doc/compression/Zip-write.html
function Zip:write(path) end
