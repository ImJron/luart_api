---@class ini
local ini = {}

--- Decode an ini string to a Lua table
--- @param string string ini string to be decoded.
--- @return table @Returns the corresponding Lua table or a nil value in case of error.
---
--- https://www.luart.org/doc/ini/decode.html
function ini.decode(string) end

--- Encode a Lua table in a ini representation string.
--- @param value table The table to be encoded to ini format. The table must follow the following rules :
--- - The table must contain only string keys, each with an associated sub-table
--- - In each of those sub-tables, the key/pair values will be converted to string
--- @return string @Returns the encoded ini string or a nil value in case of error.
---
--- https://www.luart.org/doc/ini/encode.html
function ini.encode(value) end

--- Load and decode a file containing ini data
--- @param file File|string A  File object or a filename string, representing the file whose content will be decoded from ini.
--- @return table @Returns the corresponding Lua table or a nil value in case of error.
---
--- https://www.luart.org/doc/ini/load.html
function ini.load(file) end

--- Encode a Lua table to ini format and save it to a file.
--- @param file File|string A  File object or a filename string, representing the file to save the ini data.
--- @param table table The table to be encoded to ini format and saved to the file. The table must follow the following rules :
--- - The table must contain only string keys, each with an associated sub-table
--- - Each sub-table must contain only pairs of string keys and string or number values
--- @return boolean @Returns true or false in case of error.
---
--- https://www.luart.org/doc/ini/save.html
function ini.save(file, table) end

return ini
