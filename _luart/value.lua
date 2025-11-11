--- @class Value
local Value = {}

---@type number
--- ***READONLY***
---
--- The Value.size property gets the current C Value size in memory, in bytes.
---
--- https://www.luart.org/doc/c/Value-size.html
Value.size = {}


---@type string
--- ***READONLY***
---
--- The Value.type property gets the type of the C Value as a string.
---
--- https://www.luart.org/doc/c/Value-type.html
Value.type = {}


--- @alias ctype "uchar"|"char"|"wchar_t"|"bool"|"short"|"ushort"|"int"|"uint"|"long"|"long long"|"ulong"|"ulonglong"|"size_t"|"int16_t"|"int32_t"|"int64_t"|"uint16_t"|"uint32_t"|"uint64_t"|"double"|"string"|"wstring"|"pointer"
--- Cast the Value to a new one, using the provided type.
--- @param ctype ctype
--- @return Value
---
--- https://www.luart.org/doc/c/Value-as.html
function Value:as(ctype) end

--- Converts the C Value to a Lua number or to a Lua integer if the value fits in it.
--- @return number
---
--- https://www.luart.org/doc/c/Value-tonumber.html
function Value:tonumber() end

--- Converts the C Value to a Lua string
--- @return string
---
--- https://www.luart.org/doc/c/Value-tostring.html
function Value:tostring() end
