--- @class Wifi
local Wifi = {}

---@type number
--- ***READONLY***
---
--- The wifi.channel property gets the current wireless connection channel.
---
--- https://www.luart.org/doc/wifi/channel.html
Wifi.channel = {}


---@type boolean
--- ***READONLY***
---
--- The wifi.connected property checks if the computer is connected to a wireless network, returning a boolean value.
---
--- https://www.luart.org/doc/wifi/connected.html
Wifi.connected = {}


---@type string
--- ***READONLY***
---
--- The wifi.mac property gets the wireless access point MAC address as a string or nil if not connected.
---
--- https://www.luart.org/doc/wifi/mac.html
Wifi.mac = {}


---@type string
--- ***READONLY***
---
--- The wifi.name property gets the current connected wireless network SSID, or nil if the computer is not connected.
---
--- https://www.luart.org/doc/wifi/name.html
Wifi.name = {}



---@type number
--- ***READONLY***
---
--- The wifi.quality property gets the current wireless connection signal quality as a number, in percent.
---
--- https://www.luart.org/doc/wifi/quality.html
Wifi.quality = {}


--- The wifi.connect() function try to connect to the specified WIFI endpoint. If the endpoint is already known by Windows, password won't be needed.
--- - The function returns immediately. A true result just means the connection process has successfully started.
--- - To check for a successful connection you can use the wifi.onConnected event.
--- @param endpoint string A string representing the WIFI endpoint name.
--- @param password? string A string representing the password if the wireless network is not already known by Windows.
--- @param authmethod? "WPA"|"WPAPSK"|"WPA2"|"WPA2PSK"|"WPA3ENT192" An optional string representing the authentification method to use among those values :
--- - "WPA" : PA-Enterprise 802.11 authentication.
--- - "WPAPSK" : WPA-Personal 802.11 authentication.
--- - "WPA2" : WPA2-Enterprise 802.11 authentication.
--- - "WPA2PSK" : WPA2-Personal 802.11 authentication (the default).
--- - "WPA3ENT192" : WPA3-Enterprise 192-bit mode authentication.
--- @param encryptmethod? "none"|"WEP"|"TKIP"|"AES"|"GCMP256" An optional string representing the encryption method to use among those values :
--- - "none" : no encryption
--- - "WEP" – WEP encryption
--- - "TKIP" : TKIP encryption
--- - "AES" : AES encryption (the default)
--- - "GCMP256" : GCMP256 encryption
--- @return boolean @Returns a boolean value indicating if the connection process has correctly started.
---
--- https://www.luart.org/doc/wifi/connect.html
function Wifi:connect(endpoint, password, authmethod, encryptmethod) end

--- The wifi.disconnect() function tries to disconnect from the WIFI endpoint.
--- - The function returns immediately. A true result just means the disconnection process has successfully started.
--- - To check for a successful disconnection you can use the wifi.onDisconnected event.
--- @return boolean @Returns a boolean value indicating if the disconnection process has correctly started.
---
--- https://www.luart.org/doc/wifi/disconnect.html
function Wifi:disconnect() end

--- @class endpoint_data
--- @field name string
--- @field quality number
--- @field secured boolean
--- @field known boolean

--- The wifi.scan() function scan for available networks.
--- @return endpoint_data[]
---
--- https://www.luart.org/doc/wifi/scan.html
function Wifi:scan() end

--- The wifi.onConnected() event is thrown each time the computer has successfully connected to a WIFI endpoint.
---
--- https://www.luart.org/doc/wifi/onConnected.html
function Wifi.onConnected() end

--- The wifi.onDisconnected() event is thrown each time the computer has lost its connection to WIFI endpoint.
---
--- https://www.luart.org/doc/wifi/onDisconnected.html
function Wifi.onDisconnected() end

return Wifi
