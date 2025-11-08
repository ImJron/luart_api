---@class File
local File = {}

---@type Datetime
--- ***READ/WRITE***
---
--- The File.accessed property set or get a  Datetime value indicating when the file has been last accessed. The file must exist physically on the disk.
---
--- https://www.luart.org/doc/sys/File-accessed.html
File.accessed = {}

---@type Datetime
--- ***READ/WRITE***
---
--- The File.created property set or get a  Datetime value indicating when the file has been created. The file must exist physically on the disk.
---
--- https://www.luart.org/doc/sys/File-created.html
File.created = {}

---@type Directory
--- ***READONLY***
---
--- The File.directory property returns a  Directory representing the folder that contains the file.
---
--- https://www.luart.org/doc/sys/File-directory.html
File.directory = {}


---@type string
--- ***READONLY***
---
--- The File.encoding property returns the current file encoding. File should have been opened before to determine it's encoding or the property defaults to "binary" otherwise.
---
--- File encoding is one of these strings :
--- - "binary" encoding : the File has no encoding, using raw bytes for read/write operations.
--- - "utf8" encoding : the File is UTF8 encoded, using UTF8 characters for read/write operations.
--- - "unicode" encoding : the File is UNICODE (UCS-2 LE) encoded, using UNICODE characters for read/write operations.
---
--- https://www.luart.org/doc/sys/File-encoding.html
File.encoding = {}



---@type boolean
--- ***READONLY***
---
--- The File.eof property returns a boolean value indicating if the File position has reached the end of file or not. The file must have been opened before using the property.
---
--- https://www.luart.org/doc/sys/File-eof.html
File.eof = {}


---@type boolean
--- ***READONLY***
---
--- The File.exists property returns a boolean value indicating if the File exists physically on the drive or not.
---
--- https://www.luart.org/doc/sys/File-exists.html
File.exists = {}




---@type string
--- ***READONLY***
---
--- The File.extension property returns a string representing the extension of the File, including the "." character.
---
--- https://www.luart.org/doc/sys/File-extension.html
File.extension = {}


---@type string
--- ***READONLY***
---
--- The File.fullpath property returns a string representing the full path of the File. The fullpath is set during the call to the File constructor, relative to the current working directory at this time.
---
--- https://www.luart.org/doc/sys/File-fullpath.html
File.fullpath = {}



---@type boolean
--- ***READ/WRITE***
---
--- The File.hidden property set or get a boolean value indicating if the File is hidden or not. The file must exist physically on the disk.
---
--- https://www.luart.org/doc/sys/File-hidden.html
File.hidden = {}


---@type function
--- ***READONLY***
---
--- The File.lines iterator returns the next line in the File with each loop iteration. File should have been opened before in "read" mode. The line omits the leading end of line character marker.
---
--- https://www.luart.org/doc/sys/File-lines.html
File.lines = {}


---@type Datetime
--- ***READ/WRITE***
---
--- The File.modified property set or get a  Datetime value indicating when the file has been last modified. The file must exist physically on the disk.
---
--- https://www.luart.org/doc/sys/File-modified.html
File.modified = {}


---@type string
--- ***READONLY***
---
--- The File.name property returns a string representing the file name and extension of the File.
---
--- https://www.luart.org/doc/sys/File-name.html
File.name = {}


---@type string
--- ***READONLY***
---
--- The File.path property returns a string representing the path of the file (fullpath without the filename). The path is set during the call to the File constructor, relative to the current working directory at this time.
---
--- https://www.luart.org/doc/sys/File-path.html
File.path = {}


---@type number
--- ***READ/WRITE***
---
--- The File.position property get or set the current file position, as a number. The file must have been opened before using this property.
---
--- File position always starts at 1. File position interpretation depends on the file encoding.
--- - In "binary" encoding : the position is expressed in bytes.
--- - In "utf8" or "unicode" encoding : the position is expressed in characters (and you don't have to care about BOM).
---
--- https://www.luart.org/doc/sys/File-position.html
File.position = {}


---@type boolean
--- ***READ/WRITE***
---
--- The File.readonly property set or get a boolean value indicating if the File is readonly or not. The file must exist physically on the disk.
---
--- https://www.luart.org/doc/sys/File-readonly.html
File.readonly = {}


---@type number
--- ***READONLY***
---
--- The File.size property returns a number representing the file size (in bytes) on disk.
---
--- https://www.luart.org/doc/sys/File-size.html
File.size = {}


---@type boolean
--- ***READ/WRITE***
---
--- The File.temporary property set or get a boolean value indicating if the File is considered temporary or not (meaning that cache data will not be written to disk once the File is closed). The file must exist physically on the disk.
---
--- https://www.luart.org/doc/sys/File-temporary.html
File.temporary = {}

---Closes the file previously opened for read/write operations. Any further read/write operations will fail.
---
---https://www.luart.org/doc/sys/File-close.html
function File:close() end

---Copies the file physically on the disk to the specified filename.
---
---@param filename string A string representing the destination filename. If the filename contains a path, the path must already exist. If the destination file exists, the function will fail.
---@return boolean @returns boolean value indicating if the operation succeeded.
---https://www.luart.org/doc/sys/File-copy.html
function File:copy(filename) end

--- Copies the file to a new one with the specified filename, asynchronously (without blocking program execution flow)
--- @param filename string A string representing the destination filename. If the filename contains a path, the path must already exist. If the destination file exists, the function will fail.
---@param func function An optional callback function that will be called periodically during the copy operation to get progress information. This function takes two parameters :
--- - The first argument is the total bytes to be copied
--- - The second argument is the number of bytes that have been copied
--- @return Task @Returns a  Task that will return a boolean value indicating if the operation succeeded.
--- https://www.luart.org/doc/sys/File-copytask.html
function File:copytask(filename, func) end

--- Ensures that all recently written data is saved to the file.
---
--- https://www.luart.org/doc/sys/File-flush.html
function File:flush() end

--- Moves the file physically on the disk to the specified path.
--- @param path string A string representing the destination path.
--- @return boolean @Returns true if the operation succeeded or false otherwise (if a file is open in another program for example).
--- https://www.luart.org/doc/sys/File-move.html
function File:move(path) end

--- @alias file_mode "read"|"write"|"append"|"readwrite"
--- @alias file_encoding "binary"|"utf8"|"unicode"
--- Open the file for read/write operations.
--- @param mode? file_mode An optional string that indicates the kind of access when opening the file.
--- - "read": the file will be opened for read operations, it's the default if neither mode nor encoding are specified.
--- - "write": the file will be opened for write operations, erasing any data already present.
--- - "append": the file will be opened for write operations, keeping the current data and starting writing at the end.
--- - "readwrite": the file will be opened for read and write operations.
---@param encoding? file_encoding An optional string that indicates the encoding for read/write operations. By default, encoding is autodetected using Byte Mark Order (BOM) if not provided.
--- - "binary" encoding : the file has no encoding, using raw bytes for read/write operations.
--- - "utf8" encoding : the File is UTF8 encoded, using UTF8 characters for read/write operations.
--- - "unicode" encoding : the File is UNICODE (UCS-2 LE) encoded, using UNICODE characters for read/write operations.
--- @return any @Returns the same File value if the operation succeeded or raises an error.
--- https://www.luart.org/doc/sys/File-open.html
function File:open(mode, encoding) end

--- Reads data from the file.
--- @param length? number An optional number indicating the number of characters (or bytes in binary encoding) to read.
--- When no value is provided, the method read all data from the current position until the end of file is reached.
--- @return string|Buffer @Returns the data as a string (for utf8 and unicode encoding) or as a  Buffer (for binary encoding).
--- https://www.luart.org/doc/sys/File-read.html
function File:read(length) end

--- Reads data from the file until end of line is encountered.
--- @return string|Buffer @Returns the data as a string (for utf8 and unicode encoding) or as a  Buffer (for binary encoding).
--- https://www.luart.org/doc/sys/File-readln.html
function File:readln() end

--- Deletes the file physically on the disk.
--- @return boolean @Returns true if the operation succeeded or false otherwise (in case of an opened file for example).
--- https://www.luart.org/doc/sys/File-remove.html
function File:remove() end

--- Writes data to the file.
--- @param data string A variable converted to a string value to be written to the file.
--- @return number @Returns the number of bytes written to the file.
--- https://www.luart.org/doc/sys/File-write.html
function File:write(data) end

--- Writes data to the file, adding a terminal end of line character.
--- @param data string A variable converted to a string value to be written to the file.
--- @return number @Returns the number of bytes written to the file.
--- https://www.luart.org/doc/sys/File-writeln.html
function File:writeln(data) end
