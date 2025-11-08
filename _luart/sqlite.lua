--- @class sqlite
local sqlite = {}

---@type string
--- ***READONLY***
---
--- Get the Sqlite library version, as a string
---
--- https://www.luart.org/doc/sqlite/version.html
sqlite.version = {}


---The Database constructor returns a Database value representing a SQLite database.
---@param file string|File A string or a  File representing an SQLite database.
--- - You can use in-:memory: Database by using the string ":memory:"
--- @return Database
---
--- https://www.luart.org/doc/sqlite/Database-constructor.html
function sqlite.Database(file) end

return sqlite
