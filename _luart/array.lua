--- @class Array
local Array = {}


---@type table
--- ***READONLY***
---
--- Gets the C Array dimensions, as a table that contains each dimensions in order.
---
--- https://www.luart.org/doc/c/Array-dimensions.html
Array.dimensions = {}


---@type number
--- ***READONLY***
---
--- Gets the number of elements in the C Array, in bytes.
---
--- https://www.luart.org/doc/c/Array-length.html
Array.length = {}


---@type number
--- ***READONLY***
---
--- Gets the C Array size in memory, in bytes.
---
--- https://www.luart.org/doc/c/Array-size.html
Array.size = {}



---@type string
--- ***READONLY***
---
--- Gets the type of elements stored in the C Array, as a string.
---
--- https://www.luart.org/doc/c/Array-type.html
Array.type = {}



--- Get the Array value stored at the given position.
--- @return any @This method returns the value stored in the Array at the given position.
---
--- https://www.luart.org/doc/c/Array-get.html
function Array:get(...) end

--- Sets value stored at the given Array position.
--- @param value any @The last parameter is the value to be used to set the Array at the given position
--- - The number of indices must be equal to the Array dimensions.
---
--- https://www.luart.org/doc/c/Array-set.html
function Array:set(value) end
