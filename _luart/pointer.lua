--- @class Pointer
local Pointer = {}

---@type boolean
--- ***READ/WRITE***
---
--- The Pointer.autorelease property controls wether the pointed memory is freed by the Lua garbage collector, are not (the default).
---
--- https://www.luart.org/doc/c/Pointer-autorelease.html
Pointer.autorelease = {}



---@type Value
--- ***READ/WRITE***
---
--- The Pointer.content property access the memory content of the pointed memory, as a  Value
---
--- https://www.luart.org/doc/c/Pointer-content.html
Pointer.content = {}



---@type boolean
--- ***READONLY***
---
--- The Pointer.isnull property checks if the Pointer is NULL, returning true in this case or false otherwise.
---
--- https://www.luart.org/doc/c/Pointer-isnull.html
Pointer.isnull = {}


---@type number
--- ***READONLY***
---
--- The Pointer.size property gets the size in bytes of a C pointer on the current execution context, depending on the LuaRT interpreter used (x86 or x64).
---
--- https://www.luart.org/doc/c/Pointer-size.html
Pointer.size = {}



---@type string
--- ***READONLY***
---
--- The Pointer.type property gets the type of the data that the Pointer points to.
---
--- https://www.luart.org/doc/c/Pointer-type.html
Pointer.type = {}



--- Casts the current Pointer to the provided Pointer type.
--- @return Pointer @The function returns a new  Pointer pointing to the same memory address but casted to the provided C type.
---
--- https://www.luart.org/doc/c/Pointer-as.html
function Pointer:as(...) end

--- Decrements the Pointer memory position to one or more position, meaning it moves by the size of the data type it points to.
--- @return Pointer @The function returns the decremented  Pointer for convenience.
---
--- https://www.luart.org/doc/c/Pointer-dec.html
function Pointer:dec() end
