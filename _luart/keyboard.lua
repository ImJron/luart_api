---@class Keyboard
local keyboard = {}

--- Binds a key to a Lua callback function, called each time the specified key is pressed.
--- @param key string|number A string or number representing the key to wait for. See [the list of supported key codes](https://www.luart.org/doc/keyboard/keys.html)
--- @return Task @This function returns a  Task executed in background.
--- - To cancel the key binding, use the Task:cancel() method.
---
--- https://www.luart.org/doc/keyboard/bind.html
function keyboard.bind(key) end

--- Checks if a key is down.
--- @param key string|number A string or number representing the key to wait for. See [the list of supported key codes](https://www.luart.org/doc/keyboard/keys.html)
--- @return boolean @This function true if the key is down or false otherwise.
---
--- https://www.luart.org/doc/keyboard/isdown.html
function keyboard.isdown(key) end

--- Checks if one or more keys have been pressed.
--- @param keys string
--- @return boolean @This function true if all keys have been pressed or false otherwise.
---
--- https://www.luart.org/doc/keyboard/ispressed.html
function keyboard.ispressed(keys) end

--- Checks if a key is up.
--- @param key string|number A string or number representing the key to wait for. See [the list of supported key codes](https://www.luart.org/doc/keyboard/keys.html)
--- @return boolean @This function true if the key is up or false otherwise.
---
--- https://www.luart.org/doc/keyboard/isup.html
function keyboard.isup(key) end

--- Gets the key name corresponding to the provided character
--- @param char string A string with a single character from which the corresponding key on the keyboard will be guessed.
--- - This function don't manage diacratics/accentued characters.
--- - If the character is not represented by a key, this function will return a nil value.
---
--- @return string
--- @return boolean
--- @return boolean
--- @return boolean
--- This function returns four values if a physical key represents the specified character :
--- - A string representing the key name.
--- - A boolean value that indicates if the SHIFT should be pressed.
--- - A boolean value that indicates if the CONTROL should be pressed.
--- - A boolean value that indicates if the MENU should be pressed.
---
--- https://www.luart.org/doc/keyboard/keyname.html
function keyboard.keyname(char) end

--- Sends virtual key presses to other applications.
--- @param keys string A string that contains one or more key codes/commands combination.
--- @return boolean @This function true if the key/command sequence has been successfully sended, or false otherwise.
---
--- https://www.luart.org/doc/keyboard/sendkeys.html
function keyboard.sendkeys(keys) end

--- Converts a combination of keys to the resulting string.
--- @return string @This function returns astring representing the string that results of the provided keys combination.
---
--- https://www.luart.org/doc/keyboard/tostring.html
function keyboard.tostring() end

--- Waits for any key, or for a specific key, to be pressed asynchronously, meaning it will block only current execution flow but Tasks will still run in background.
--- @param key? string|number An optional string or number representing the key to wait for. See [the list of supported key codes](https://www.luart.org/doc/keyboard/keys.html)
--- If this parameter is omitted, this function waits for any key to be pressed.
--- @return string @This function returns only when a key have been pressed. The key name is returned as a string.
---
--- https://www.luart.org/doc/keyboard/waitfor.html
function keyboard.waitfor(key) end

return keyboard
