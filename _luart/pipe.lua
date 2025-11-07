--- https://www.luart.org/doc/sys/Pipe.html
---@class Pipe
Pipe = {}

--- Closes the Pipe and the associated process. Any further read/write/readerror operations won't achieve.
--- 
--- https://www.luart.org/doc/sys/Pipe-close.html
function Pipe:close() end


--- Reads from the Pipe (from the stdout and stderr of the executed process).
--- @param delay? number An optional number representing the delay to wait before reading, in milliseconds, defaulting to 100
--- @return Task @Returns a  Task instance. Once finished, the Task will return a string or nil if the executed process has been terminated.
--- https://www.luart.org/doc/sys/Pipe-read.html
function Pipe:read(delay) end


--- Writes data to the Pipe (into the standard input of the executed process).
--- @param data string A variable converted to a string value to be written to the Pipe.
--- https://www.luart.org/doc/sys/Pipe-write.html
function Pipe:write(data) end