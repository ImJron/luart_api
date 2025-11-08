--- @class Database
local Database = {}

---@type File|string
--- ***READONLY***
---
--- Get the file where the Database is stored on disk as a  File, or the string ":memory:" in case of an in-memory Database.
---
--- https://www.luart.org/doc/sqlite/Database-file.html
Database.file = {}


--- Closes the Database.
--- - When garbage collected (for example when going out of scope), Database are automatically closed before destruction. In this case, it's not necessary to call the Database:close() method.
---
--- https://www.luart.org/doc/sqlite/Database-close.html
function Database:close() end

---Executes a SQL query with support for parameters to bind values dynamically
---@param sql string A string that contains a SQL query.
---@param ... string One or more optional string that contains parameters for the query. Each '?' characters in the query will be replaced by the corresponding argument in order.
---@return table @Returns the result of the SQL statement as rows (each row is represented as a Lua table with column names as keys) or nil if there is no result.
---
---https://www.luart.org/doc/sqlite/Database-exec.html
function Database:exec(sql, ...) end

--- A string that contains a SQL statement.
--- @param sql string A string that contains a SQL statement.
--- @return table @Returns the result of the SQL statement as an iterator function to iterate over each row (represented as a Lua table with column names as keys).
---
--- https://www.luart.org/doc/sqlite/Database-query.html
function Database:query(sql) end
