--- @class Process
local Process = {}


---@type boolean
--- ***READONLY***
---
--- This property checks if the process is suspended, returning a boolean value.
---
--- https://www.luart.org/doc/sysutils/Process-suspended.html
Process.suspended = {}


---@type boolean
--- ***READONLY***
---
--- This property checks if the process is terminated, returning a boolean value.
---
--- https://www.luart.org/doc/sysutils/Process-terminated.html
Process.terminated = {}



--- Aborts the running Process immediately.
--- @return boolean @This method returns a boolean value indicating if the operation succeeded.
---
--- https://www.luart.org/doc/sysutils/Process-abort.html
function Process:abort() end

--- Try a graceful process termination.
--- @return boolean @This method returns a boolean value indicating if the operation succeeded.
---
--- https://www.luart.org/doc/sysutils/Process-close.html
function Process:close() end

--- Resume execution of the process, previously suspended.
--- @return boolean @This method returns a boolean value indicating if the operation succeeded.
---
--- https://www.luart.org/doc/sysutils/Process-resume.html
function Process:resume() end

--- Starts the process execution.
--- @param suspended boolean An optional boolean value indicating if the process should be suspended once spawn, defaulting to false.
--- @return Task @This method returns a  Task instance that will run until the process stops its execution.
---
--- https://www.luart.org/doc/sysutils/Process-spawn.html
function Process:spawn(suspended) end

--- Suspends current execution of the running process.
--- @return boolean @This method returns a boolean value indicating if the operation succeeded.
---
--- https://www.luart.org/doc/sysutils/Process-suspend.html
function Process:suspend() end

--- Writes data in the standard input stream of the executed process.
--- @param data string A string that will be written to the Process standard input stream.
---
--- https://www.luart.org/doc/sysutils/Process-write.html
function Process:write(data) end

--- Event that occurs when the running process outputs data to standard output/error stream.
--- @param data Buffer A  Buffer that contains the data written by the process.
--- - This event is thrown only if the Process.constructor() redirect parameter is set to true
---
--- https://www.luart.org/doc/sysutils/Process-onRedirect.html
function Process:onRedirect(data) end
