--- @class power
local power = {}


--- ***READONLY***
---
--- The power.battery property gets the current battery usage as a table. If no battery is present, the property returns nil.
--- The table provides the following fields :
--- - charging : indicates if the battery is charging or not.
--- - percent : indicates the battery left, in percent.
--- - lifetime : indicates the battery lifetime in seconds or nil if the system cannot calculate it.
--- - saver : indicates if the battery saver is currently in use.
---
--- https://www.luart.org/doc/power/battery.html
power.battery = {
    --- @type boolean
    charging = {},
    --- @type number
    percent = {},
    --- @type number|nil
    lifetime = {},
    --- @type boolean
    saver = {}
}



---@type boolean
--- ***READONLY***
---
--- The power.plugged checks if the computer is plugged to AC, returning true or false otherwise.
---
--- https://www.luart.org/doc/power/plugged.html
power.plugged = {}


--- The power.onBatteryLow() event is thrown when the battery is low.
---
--- https://www.luart.org/doc/power/onBatteryLow.html
function power.onBatteryLow() end

--- The power.onPlugged() event is thrown each time the computer is plugged or unplugged from AC.
--- @param source string A string representing new source of power, either 'battery' or 'AC' otherwise.
---
--- https://www.luart.org/doc/power/onPlugged.html
function power.onPlugged(source) end

--- The power.onResume() event is thrown each time the computer is resumed from sleep.
---
--- https://www.luart.org/doc/power/onResume.html
function power.onResume() end

--- The power.onSuspend() event is thrown each time the computer is going to be suspended.
--- - On modern computers (using S0 power state), this event may not fire correctly.
---
--- https://www.luart.org/doc/power/onSuspend.html
function power.onSuspend() end

--- This function turns off the monitor.
---
--- https://www.luart.org/doc/power/displayoff.html
function power.displayoff() end

--- power.hibernate() suspends the computer in hibernation mode.
--- - Hibernation mode must have been activated in the Windows settings for this function to work.
--- @return boolean @This function returns true on success or false otherwise.
---
--- https://www.luart.org/doc/power/hibernate.html
function power.hibernate() end

--- This function prevents the computer from going into sleep mode. Call power.unhold() to permit sleep mode again.
--- - This function does not block user-initiated sleep: If the user closes the lid, presses the power button, or selects Sleep manually, the system will still sleep.
--- - On newer devices (especially laptops), the request may be ignored or auto-terminated after 5 minutes on battery power.
--- @return boolean @This function returns true on success or false otherwise.
---
--- https://www.luart.org/doc/power/hold.html
function power.hold() end

--- power.sleep() suspends the computer in sleep mode.
--- - On modern computers using the S0 power state, this function may fail.
--- @return boolean @This function returns true on success or false otherwise.
---
--- https://www.luart.org/doc/power/sleep.html
function power.sleep() end

--- This function permits the computer to enter sleep mode again, after a previous call to power.hold().
--- @return boolean @This function returns true on success or false otherwise.
---
--- https://www.luart.org/doc/power/unhold.html
function power.unhold() end

return power
