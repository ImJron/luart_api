--- @class yaml
local yaml = {}

---@type nil
--- ***READONLY***
---
--- Read-only property representing a YAML null value. When encoded, produces a YAML null literal, and when decoding a YAML null, results in this value.
---
--- https://www.luart.org/doc/yaml/null.html
yaml.null = {}


--- Parses the given YAML string and returns the resulting Lua value. This function supports multiple documents, placeholder substitution, anchors, and type conversion.
---
--- Placeholders in the form {{ var }} can be replaced with values from the provided table, from local variables, upvalues, or globals. Unresolved placeholders become yaml.null.
---
--- Conversion to Lua values follows this rules:
--- - "string" -> "string"
--- - number -> number
--- - boolean -> boolean
--- - YAML mapping {} -> table
--- - YAML sequence [] -> table (integer keys)
--- - null -> yaml.null
---
--- @param src string The YAML string to parse.
--- @param vars? table An optional table of placeholder names to values. If omited, local variables, upvalues and globals will be used for resolution.
--- @return any @Returns the decoded Lua value (table, string, number, boolean, or yaml.null).
--- A table of documents is returned if multiple documents were found.
--- On error, returns nil and an error message string
---
--- https://www.luart.org/doc/yaml/decode.html
function yaml.decode(src, vars) end

--- Encodes the given Lua table into a YAML string.
--- This function supports sequences (table with integer keys), mappings (tables with string keys), multiple documents (when given an array of tables), and preserves types following this rules :
--- - "string" -> "string"
--- - number -> number
--- - boolean -> boolean
--- - table (non array) -> YAML mapping {}
--- - table (integer keys) -> YAML sequence []
--- - yaml.null -> null
--- - object -> Not supported (raises an error)
--- - thread -> Not supported (raises an error)
--- - userdata -> Not supported (raises an error)
--- @param value table The Lua table to encode to YAML string.
--- @return string @Returns the YAML representation as a string.
---
--- https://www.luart.org/doc/yaml/encode.html
function yaml.encode(value) end

--- Loads and decodes YAML content from a file. See the yaml.decode() for more information on YAML decoding.
--- @param filename File|string A  File object or a filename string, representing the YAML file.
--- @param vars? table An optional table of placeholder names to values. If omited, local variables, upvalues and globals will be used for resolution.
--- @return table @Returns the parsed Lua value or table of documents. On error, returns nil and an error message string.
---
--- https://www.luart.org/doc/yaml/load.html
function yaml.load(filename, vars) end

--- Encodes a Lua table into YAML and writes it to a file. Returns true and nil on success, or false and an error message on failure.
--- @param filename File|string A  File object or a filename string, representing the YAML file.
--- @param table table The Lua table to encode and save.
--- @return boolean @On success, returns true. On failure, returns false and an error message string
---
--- https://www.luart.org/doc/yaml/save.html
function yaml.save(filename, table) end

return yaml
