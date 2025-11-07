--- @class net
net = {}

---@type string
--- ***READONLY***
---
--- The net.error property gets the last network error message or nil
--- 
--- https://www.luart.org/doc/net/error.html
net.error = {}


---@type string
--- ***READONLY***
---
--- net.ip returns a string
--- 
--- https://www.luart.org/doc/net/ip.html
net.ip = {}


---@type boolean
--- ***READONLY***
---
--- The net.isalive property checks if a network connection is available, returning true or false otherwise.
--- 
--- https://www.luart.org/doc/net/isalive.html
net.isalive = {}


---@type string
--- ***READONLY***
---
--- The net.publicip property gets the current public IPv4 address as a string. A valid Internet connection must be available, or returns false otherwise.
--- 
--- https://www.luart.org/doc/net/publicip.html
net.publicip = {}

---@alias net_family "ipv4"|"ipv6"

--- Iterator function to retrieve installed network adapters on the Windows operating system, using the IPv4 or IPv6 address family.
--- @param family net_family A string representing the IP family address returned at each iteration : "ipv4" or "ipv6".
--- @return function @Returns an iterator function to be used in a for loop, to iterate over network adapters, returning two values at each iteration :
--- - A string, representing the name of the adapter.
--- - A table, that contains the list of all the IP associated with the adapter.
--- 
--- https://www.luart.org/doc/net/adapters.html
function net.adapters(family) end


--- Returns the fully qualified domain from an IP address (reverse DNS lookup).
--- @param value File|string The value to retrieve the MIME type from, can be any of the following values :
--- - A  File value.
--- - A string representing an URI or a filename.
--- @return string @Return a string representing the fully qualified MIME type, or nil if the MIME type cannot be found.
--- 
--- https://www.luart.org/doc/net/getmime.html
function net.getmime(value) end


--- Resolves the given hostname to an IP address from the DNS record.
--- @param hostname string The string to indicate the hostname to resolve, for example "luart.org".https://www.luart.org/doc/net/index.html?methods
--- @param family? net_family An optional string to indicate the IP address family to retrieve from the DNS record :
--- - "ipv4" : an IPv4 address will be returned (default)
--- - "ipv6" : an IPv6 address will be returned
--- @return any @
--- - In case of success, returns the IP address associated with the DNS record, represented by a string.
--- - If no DNS record was found, returns nil
--- - In case of error, returns false (you can check error message with the net.error property).
--- 
--- https://www.luart.org/doc/net/resolve.html
function net.resolve(hostname, family) end


--- Returns the fully qualified domain from an IP address (reverse DNS lookup).
--- @param ip string The IPv4 or IPv6 address to perform the reverse DNS lookup.
--- @return string @Return a string representing the fully qualified hostname.
--- 
--- https://www.luart.org/doc/net/reverse.html
function net.reverse(ip) end


--- Check for network events (readability, writability and errors) on the provided array of Sockets, by updating their corresponding properties Socket.canread, Socket.canwrite, Socket.failed.
--- @param socket_array table A table containing an array of Sockets to check for network events.
--- @param timeout? number An optional number to indicate the maximum time for select to wait for network events, in microseconds. If that argument is not provided, the function wait until a network event occurs.
--- @return boolean @
--- In case of success, returns true.
--- - In case of error, returns false (you can check error message with the net.error property).
--- - If no networking event occured and the time limit expired, returns nil
--- 
--- https://www.luart.org/doc/net/select.html
function net.select(socket_array, timeout) end


--- Returns an URL-encoded string, so that it can be safely transmitted over the internet
--- @param str string The string to URL-encode.
--- @return string @Return a URL-encoded string.
--- 
--- https://www.luart.org/doc/net/urlencode.html
function net.urlencode(str) end


--- Parse a URL into 4 components, corresponding to the structure of a URL : scheme://hostname /path?parameters
--- @param url string A string representing a URL to parse, for example "https://www.luart.org/index.html".
--- @return string scheme
--- @return string hostname
--- @return string path
--- @return string parameters
--- 
--- Returns 4 strings, representing the scheme, the hostname, the path, and the parameters fields of the URL.
--- If any component is not found, returns a nil value instead of a string.
--- If the string cannot be parsed, returns false.
--- 
--- https://www.luart.org/doc/net/urlparse.html
function net.urlparse(url) end

--- The Ftp constructor returns a Ftp value representing a FTP client and connects it to the FTP server at the given URL, using provided authentication.
--- @param hostname string A string representing a valid hostname to connect to the FTP server. The string can contain a port, a username and password (in this case, the following parameters are not needed)
--- @param username? string An optional string representing the username (use "anonymous" for anonymous access if supported by the server).
--- @param password? string An optional string representing the password (use any string for anonymous access).
--- @return Ftp
---
--- https://www.luart.org/doc/net/Ftp-constructor.html
function net.Ftp(hostname, username, password) end


--- The Http constructor returns a Http value representing a HTTP client and connect it to the HTTP server at the given URL, using optional basic authentication.
--- @param url string A string representing a valid URL to connect to the HTTP server.
--- @param username? string An optional string representing a username for basic HTTP authentication.
--- @param password? string An optional string representing a password for basic HTTP authentication.
--- @return Http
function net.Http(url, username, password) end