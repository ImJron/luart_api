--- @class Socket
local Socket = {}

---@type boolean
--- ***READ/WRITE***
---
--- The Socket.blocking property sets or checks if the Socket is in blocking mode.
--- - When set to true, all Socket operations (such as reading and sending data) will block until they have terminated.
--- - When set to false, all Socket operations will return immediately a  Task object that will perform asynchronously.
---
--- https://www.luart.org/doc/net/Socket-blocking.html
Socket.blocking = {}


---@type boolean
--- ***READONLY***
---
--- The Socket.canread gets the readability of a Socket after a net.select() call.
---
--- https://www.luart.org/doc/net/Socket-canread.html
Socket.canread = {}


---@type boolean
--- ***READONLY***
---
--- The Socket.canwrite property gets the writability of a Socket after a net.select() call.
---
--- https://www.luart.org/doc/net/Socket-canwrite.html
Socket.canwrite = {}


---@type boolean
--- ***READONLY***
---
--- The Socket.failed property checks the Socket for errors after net.select() call.
--- Returns true if an error occured during last net.select() call, or false otherwise.
---
--- https://www.luart.org/doc/net/Socket-failed.html
Socket.failed = {}


---@type net_family
--- ***READONLY***
---
--- The Socket.family property gets the address family "ipv4" or "ipv6"
---
--- https://www.luart.org/doc/net/Socket-family.html
Socket.family = {}


---@type string
--- ***READONLY***
---
--- The Socket.ip property gets the IP address the socket is bound to as a string
---
--- https://www.luart.org/doc/net/Socket-ip.html
Socket.ip = {}


---@type boolean
--- ***READ/WRITE***
---
--- The Socket.nodelay property get/set the TCP_NODELAY option on the socket, to control Nagle algorithm.
--- - When set to false Nagle algorithm is enabled, TCP will wait to send small amounts of data until the acknowledgment for the previous data is received.
--- - When set to true Nagle algorithm is disabled (the default), TCP will send small amounts of data even before the acknowledgment for previous data sent is received.
---
--- https://www.luart.org/doc/net/Socket-nodelay.html
Socket.nodelay = {}


---@type number
--- ***READONLY***
---
--- The Socket.port property gets the port number used to create the Socket.
---
--- https://www.luart.org/doc/net/Socket-port.html
Socket.port = {}


--- Accept a connection. The socket should have been set to listen for incoming connections with a previous Socket:bind() call.
--- @return Socket|Task @Returns one of the following possible values :
--- - Socket, usable to send or recv data from the new connection.
--- - false if an error occured.
--- - Task object to perform the operation asynchronously if the Socket is non-blocking, returning one of the previous values once finished.
---
--- https://www.luart.org/doc/net/Socket-accept.html
function Socket:accept() end

--- Bind the Socket and listen for incoming connection.
--- @param backlog? integer An optional integer representing the maximum length of the queue of pending connections (defaults to 5).
--- @return boolean @Returns a boolean value indicating if the operation is successful.
---
--- https://www.luart.org/doc/net/Socket-bind.html
function Socket:bind(backlog) end

--- Closes the Socket and the bounded connection. The Socket should not be used anymore.
--- - When the Socket is garbage collected, the close method is called automatically
---
--- https://www.luart.org/doc/net/Socket-close.html
function Socket:close() end

--- Connect to the remote Socket.ip address. Used in blocking mode, the methods wait until the connection is established, or returns immediately otherwise.
--- @return boolean @true if the operation succedded, or false if an error occured.
--- @return Task @ Task object to perform the operation asynchronously if the Socket is non-blocking, returning one of the previous values once finished.
---
--- https://www.luart.org/doc/net/Socket-connect.html
function Socket:connect() end

--- Get how many bytes are available for reading on the Socket connection with a single Socket:recv() call.
--- @return number @Returns the number of bytes available for reading.
---
--- https://www.luart.org/doc/net/Socket-peek.html
function Socket:peek() end

--- Receive data from the Socket. In blocking mode, the method wait until some data is available for reading.
--- @param length? integer An optional integer representing the maximum number of bytes to read from the connection, defaults to 1024.
--- @return Buffer|Task @Returns one of the following possible values :
--- - Buffer containing the received bytes.
--- - false if an error occured.
--- - Task object to perform the operation asynchronously if the Socket is non-blocking, returning one of the previous values once finished.
---
--- If the connection has been lost, Socket:recv() returns false and the net.error property returns nil.
---
--- https://www.luart.org/doc/net/Socket-recv.html
function Socket:recv(length) end

--- Send all the data to the Socket. In blocking mode, the method can block if the length of the data is larger than the maximum allowed by the transport.
--- @param data Buffer|string A  Buffer or a string containing the data to be sent. If another type of variable is used, it is internaly converted to a string before sending.
--- @return boolean|Task @Returns one of the following possible values :
--- - true if the operation succeeded, or false if an error occured.
--- - Task object to perform the operation asynchronously if the Socket is non-blocking, returning one of the previous values once finished.
---
--- https://www.luart.org/doc/net/Socket-send.html
function Socket:send(data) end

--- Shuts down the Socket. Further sends or reveives are disallowed, and any pending data is discarded. Call this method if you want to stop using the connection immediately, because Socket:close() can take some time to effectively close the connection.
---
--- https://www.luart.org/doc/net/Socket-shutdown.html
function Socket:shutdown() end

--- Enable transport level security (TLS -formerly known as SSL) on a Socket connection. The connection must have been initialized with a previous Socket:bind() or Socket:connect() call. Any further calls to Socket:send() or Socket:recv() will be encrypted/decrypted, respectively.
--- @param certificate? string An optional string representing the certificate to verify the identity of the other peer. If none is provided, uses the certificate from the server. The string can be :
--- - A server name of a certificate already installed in the current user/Windows certificate store
--- - A path to a .pfx file (PKCS #12), that contains cryptographic information (certificates and private keys). Its contents can be cryptographically protected with passwords.
--- @param password? string An optional string representing the password that must be provided when using a .pfx file .
--- @return boolean @Returns true if TLS has been successfully enabled. In case of error, returns false. Error message can be obtained with the net.error property.
---
--- https://www.luart.org/doc/net/Socket-starttls.html
function Socket:starttls(certificate, password) end
