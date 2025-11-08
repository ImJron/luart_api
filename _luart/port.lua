--- @class Port
local Port = {}

---@type number
--- ***READ/WRITE***
---
--- Sets/gets the current serial port data transmission speed, as a number. It represents the number of symbol changes per second in a communication channel.
--- Common baud rates include 9600, 19200, 38400, 57600, and 115200
---
--- https://www.luart.org/doc/serial/Port-baudrate.html
Port.baudrate = {}


---@type number
--- ***READ/WRITE***
---
--- Sets/gets the the number of data bits in each transmitted character.
--- Common values include 5, 6, 7, 8, or 9 bits, with 8-bit being the most widely used in modern applications.
--- - If the current bytesize state cannot be retrieved, this property returns nil
---
--- https://www.luart.org/doc/serial/Port-bytesize.html
Port.bytesize = {}


---@type "enabled"|"disabled"|"handshake"
--- ***READ/WRITE***
---
--- Sets/gets the "Data Terminal Ready" control signal of the serial port, using the following possible values :
--- - "enabled": DTR signal is always active
--- - "disabled": DTR signal stays inactive
--- - "handshake": DTR signal is used for hardware handshaking
---
--- If the current dtr state cannot be retrieved, this property returns nil
---
--- https://www.luart.org/doc/serial/Port-dtr.html
Port.dtr = {}


---@type boolean
--- ***READONLY***
---
--- Checks if the serial port is open, returning true or false otherwise.
---
--- https://www.luart.org/doc/serial/Port-isopen.html
Port.isopen = {}


---@type "none"|"odd"|"even"|"mark"|"space"
--- ***READ/WRITE***
---
--- Sets/gets the parity mode of the serial port, using the following possible values :
--- - "none": No parity bit is used
--- - "odd": parity bit is set to ensure an odd number of 1 in the data
--- - "even": parity bit is set to ensure an even number of 1 in the data
--- - "mark": parity bit is always set to 1
--- - "space": parity bit is always set to 0
---
--- If the current parity state cannot be retrieved, this property returns nil
---
--- https://www.luart.org/doc/serial/Port-parity.html
Port.parity = {}


---@type "on"|"off"|"handshake"|"toggle"
--- ***READ/WRITE***
---
--- Sets/gets the "Request To Send" mode of the serial port, using the following possible values :
--- - "on": RTS signal is always active
--- - "off": RTS signal stays inactive
--- - "handshake": RTS signal is used for hardware handshaking
--- - "toogle": RTS signal toggles between ready and not ready states
---
--- If the current RTS state cannot be retrieved, this property returns nil
---
--- https://www.luart.org/doc/serial/Port-rts.html
Port.rts = {}


---@type "one"|"one5"|"two"
--- ***READ/WRITE***
---
--- Sets/gets the stop bits mode of the serial port.
--- Stop bits in serial communication indicate the end of a data packet. They help synchronize the sender and receiver, ensuring proper data transmission. The following values are supported:
--- - "one": 1 stop bit, used in most serial communications
--- - "one5": 1.5 stop bits, rarely used, mainly in older systems
--- - "two": 2 stop bits, provides extra timing buffer (useful for slower devices)
---
--- If the current stopbits state cannot be retrieved, this property returns nil
---
--- https://www.luart.org/doc/serial/Port-stopbits.html
Port.stopbits = {}



--- Close the serial communication Port.
---
--- https://www.luart.org/doc/serial/Port-close.html
function Port:close() end

--- Flush the serial communication Port, causing all buffered data to be sent now.
---
--- https://www.luart.org/doc/serial/Port-flush.html
function Port:flush() end

---Open the Port for serial communication with another connected device.
---@param state table An optional table to configure the serial communication, using the following optional fields :
--- - ["rts"] : a string that indicates the RTS mode, defaulting to "off" (see Port-rts.html for other possible values)
--- - ["dtr"] : a string that indicates the DTR control signal, defaulting to "disabled" (see Port-dtr.html for other possible values)
--- - ["baudrate"] : a number that indicates the transmission speed, defaulting to 9600 (see Port-baudrate.html for other possible values)
--- - ["bytesize"] : a number that indicates the byte size, defaulting to 8 (see Port-bytesize.html for other possible values)
--- - ["parity"] : a string that indicates the parity mode, defaulting to "none" (see Port-parity.html for other possible values)
--- - ["stopbits"] : a string that indicates the stop bits mode, defaulting to "one" (see Port-stopbits.html for other possible values)
--- @return boolean @Returns true if serial Port has been successfully opened.
--- In case of error, returns false. Error message can be obtained with the sys.error property.
---
--- https://www.luart.org/doc/serial/Port-open.html
function Port:open(state) end

--- Reads data from the serial communication Port.
--- @param len number A number indicating the number of bytes to read.
--- @return Task @Returns a  Task object to perform the read operation asynchronously.
--- Once the Task has terminated, it will return a  Buffer that contains the data, or false in case of error.
---
--- https://www.luart.org/doc/serial/Port-read.html
function Port:read(len) end

--- Reads data until a End Of Line character sequence is reached.
--- @param eol? string A string indicating the End Of Line characters sequence, defaulting to "\n".
--- @return Task @Returns a  Task object to perform the read operation asynchronously.
--- Once the Task has terminated, it will return a  Buffer that contains the data, or false in case of error.
---
--- https://www.luart.org/doc/serial/Port-readline.html
function Port:readline(eol) end

--- Writes data to the serial communication Port.
--- @param data Buffer|string A  Buffer or a string containing the data to be written. If another type of variable is used, it is internaly converted to a string before sending.
--- @return Task @Returns a  Task object to perform the write operation asynchronously.
--- Once the Task has terminated, it will return the number of bytes written, or false in case of error.
---
--- https://www.luart.org/doc/serial/Port-write.html
function Port:write(data) end
