--- @class Ftp

Ftp = {}

---@type string
--- ***READ/WRITE***
---
--- The Ftp.currentdir property gets or sets the current directory on the FTP server as a string.
--- Returns nil if the value could not be retrieved (get more information with the net.error property).
---
--- https://www.luart.org/doc/net/Ftp-currentdir.html
Ftp.currentdir = {}


---@type string
--- ***READONLY***
---
--- The Ftp.hostname property gets the current hostname string used for connection to the FTP server or nil if connection have been closed.
---
--- https://www.luart.org/doc/net/Ftp-hostname.html
Ftp.hostname = {}


---@type string
--- ***READONLY***
---
--- The Ftp.port property gets the current port used for connection to the FTP server or nil if connection have been closed.
---
--- https://www.luart.org/doc/net/Ftp-port.html
Ftp.port = {}


--- Close the Ftp client connection.
--- - Remember to close the connection when no more needed. Ftp:close() is automatically called before garbage collection of the FTP object, but this behaviour cannot be predicted
---
--- https://www.luart.org/doc/net/Ftp-close.html
function Ftp:close() end

--- Sends and executes the provided command to the FTP server.
--- @param cmd string A string that contains the command to execute.
--- @param response? boolean An optional boolean value indicating if the Task should wait for a response.
--- @return Task @This method return a  Task instance. Once the Task has finished, it will return a boolean value indicating if the operation was successful.
---
--- https://www.luart.org/doc/net/Ftp-command.html
function Ftp:command(cmd, response) end

--- Download a remote file from the FTP server, to the current local directory.
--- @param filename string A string that contains the name of the file to be retrieved from the FTP server.
--- @param local_filename? string An optional string that contains the name of the file in the current local directory. If not provided, the remote filename will be used.
--- @return Task @This method return a  Task instance. Once the Task has finished, it will return one of the following possible values :
--- - File value representing the downloaded file. If the file already exists in the current directory, it will be overwritten.
--- - false value if the operation failed. You can get more information with the net.error property.
---
--- https://www.luart.org/doc/net/Ftp-download.html
function Ftp:download(filename, local_filename) end

--- Iterates over directory content inside the specified search path.
--- @param search_path? string An optional string that contains a valid directory path or file name. The string can contain wildcards, but no blank spaces are allowed.
--- - If not specified, iterate over all current directory contents.
--- @return any @Returns two values at each iteration :
--- - A string that contains the element name
--- - A boolean value set to true if the current element is a directory, or false if it's a file.
---
--- https://www.luart.org/doc/net/Ftp-list.html
function Ftp:list(search_path) end

--- Creates a new directory on the FTP server.
--- @param path string A string that contains the name of the directory to be created. This can be either a fully qualified path or a name relative to the current FTP directory.
--- @return Task @This method return a  Task instance. Once the Task has finished, it will return a boolean value indicating if the operation was successful.
---
--- https://www.luart.org/doc/net/Ftp-makedir.html
function Ftp:makedir(path) end

--- Moves the specified file from the FTP server.
--- @param path string A string that contains the file path (partially or fully qualified file names relative to the current FTP directory can be used).
--- @param newpath string A string that contains the new file path (partially or fully qualified file names relative to the current FTP directory can be used).
--- @return Task @This method return a  Task instance. Once the Task has finished, it will return a boolean value indicating if the operation was successful.
---
--- https://www.luart.org/doc/net/Ftp-movefile.html
function Ftp:movefile(path, newpath) end

--- Sets the FTP proxy server connection.
--- @param proxy_server? string An optional string representing the proxy server address.
--- @param username? string An optional string representing the proxy user name.
--- @param password? string An optional string representing the proxy password.
--- @return boolean @This function returns a boolean value indicating if the operation was successful.
---
--- https://www.luart.org/doc/net/Ftp-proxy.html
function Ftp:proxy(proxy_server, username, password) end

--- Removes the specified directory from the FTP server.
--- @param path string A string that contains the name of the directory to be removed. This can be either a fully qualified path or a name relative to the current FTP directory.
--- @return Task @This method return a  Task instance. Once the Task has finished, it will return a boolean value indicating if the operation was successful.
---
--- https://www.luart.org/doc/net/Ftp-removedir.html
function Ftp:removedir(path) end

--- Removes the specified file from the FTP server.
--- @param path string A string that contains the name of the directory to be removed. This can be either a fully qualified path or a name relative to the current FTP directory.
--- @return Task @This method return a  Task instance. Once the Task has finished, it will return a boolean value indicating if the operation was successful.
---
--- https://www.luart.org/doc/net/Ftp-removefile.html
function Ftp:removefile(path) end

--- Upload a file to the connected FTP server.
--- @param remote_name? string An optional string that contains the destination path and filename on the server.
--- If not provided, the file will be uploaded on the current FTP directory (See Ftp.currentdir) using the same filename.
--- @return boolean @Returns true if uploading to the FTP server was successful, or false otherwise.
---
--- https://www.luart.org/doc/net/Ftp-upload.html
function Ftp:upload(remote_name) end
