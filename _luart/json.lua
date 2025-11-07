--- @class json
json = {}

--- Decode a JSON string to a Lua value, following those rules :
--- - "string" -> "string"
--- - number -> number
--- - "true"/"false" -> boolean
--- - object {} -> table
--- - array [] -> table (integer keys)
--- - null -> "null"
--- @param string string JSON string to be decoded.
--- @return any @Returns the corresponding Lua value or a nil value in case of error.
---
--- https://www.luart.org/doc/json/decode.html
function json.decode(string) end

--- Encode any Lua value in a JSON representation string, following those rules :
--- - "string" -> "string"
--- - number -> number
--- - boolean -> "true" / "false"
--- - table -> object {}
--- - table -> (integer keys)	array []
--- - "null" -> null
--- - object -> Not supported (converted to JSON object {})
--- - thread -> Not supported (converted to "string")
--- - userdata -> Not supported (converted to "string")
--- @param value any Lua value to be encoded.
--- @return string @Returns the encoded JSON string or a nil value in case of error.
---
--- https://www.luart.org/doc/json/encode.html
function json.encode(value) end

--- Load and decode a file containing JSON data.
--- @param file File|string A  File object or a filename string, representing the file whose content will be decoded from JSON.
--- @return any @Returns the corresponding Lua value or a nil value in case of error.
---
--- https://www.luart.org/doc/json/load.html
function json.load(file) end

--- Encode a Lua value to a JSON representation string and save it to a file.
--- @param file File|string A  File object or a filename string, representing the file to save the JSON data.
---@param value any Lua value to be encoded.
---@return boolean @Returns true or false in case of error.
---
---https://www.luart.org/doc/json/save.html
function json.save(file, value) end
