---@class Serial
local Serial = {}

--- The Port constructor returns a Port value representing a COM port.
--- @param port string A string representing the COM port to be used : "COM1", "COM2"...
--- - Once created, you must call Port:open() to open the serial port connection.
--- @return Port
---
--- https://www.luart.org/doc/serial/Port-constructor.html
function Serial.Port(port) end


return Serial
