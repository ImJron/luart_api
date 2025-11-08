--- @class Http
local Http = {}


---@type string
--- ***READONLY***
---
--- The Http.content property gets a string, representing the current content of the response server from the last HTTP request.
---
--- https://www.luart.org/doc/net/Http-content.html
Http.content = {}


---@type table
--- ***READONLY***
---
--- The Http.cookies property returns a table that contains the cookies of the requests to be sent to the server (where keys and values are strings representing cookies names and values respectively).
---
--- https://www.luart.org/doc/net/Http-cookies.html
Http.cookies = {}


---@type table
--- ***READONLY***
---
--- The Http.headers property returns a table that contains the headers of the requests to be sent to the server (where keys and values are strings representing header names and values respectively).
---
--- https://www.luart.org/doc/net/Http-headers.html
Http.headers = {}

---@type string
--- ***READONLY***
---
--- The Http.hostname property gets the current hostname string used for connection to the HTTP server or nil if connection have been closed.
---
--- https://www.luart.org/doc/net/Http-hostname.html
Http.hostname = {}


---@type number
--- ***READONLY***
---
--- The Http.port property gets the port number used for connection to the HTTP server or nil if connection have been closed.
---
--- https://www.luart.org/doc/net/Http-port.html
Http.port = {}


---@type number
--- ***READONLY***
---
--- The Http.received property gets a number, representing the byte count of data received from the server during last HTTP request.
---
--- https://www.luart.org/doc/net/Http-received.html
Http.received = {}


---@type table
--- ***READONLY***
---
--- The Http.response property returns a table that contains the HTTP response of the last request.
---
--- https://www.luart.org/doc/net/Http-response.html
Http.response = {}


--- Close the HTTP client connection.
---
--- https://www.luart.org/doc/net/Http-close.html
function Http:close() end

--- Send an asynchronous DELETE request to the connected HTTP server to delete the specified resource on the server.
--- @param uri string A stringrepresenting the target resource on the server to delete.
---@param content File|any A  File or any value converted to a string representing the body content of the request.
---@return Task @This method return a  Task instance. Once the Task has finished, it will return two values :
--- The first value is the  Http instance used for the PUT request.
---
--- The second value is nil in case of error or a table that contains the server response, with the following fields
--- - "content" : a string containing the body part of the HTTP response
--- - "elapsed" : a number representing the elapsed time to get the response
--- - "status" : a number containing the HTTP response status
--- - "reason" : a string containing HTTP response status text
--- - "ok" : a boolean value indicating if the GET request succeeded
--- - "headers" : a table containing a pair of strings(header field names of the HTTP response as key and content as values)
--- - "cookies" : a table containing a pair of strings(cookies names of the HTTP response as key and content as values)
---
--- https://www.luart.org/doc/net/Http-delete.html
function Http:delete(uri, content) end

--- Send an asynchronous GET request to the connected HTTP server to download the specified resource from the server.
--- @param uri string A string representing the target resource on the server to be downloaded.
--- @return Task @This method return a  Task instance. Once the Task has finished, it will return two values :
--- The first value is the  Http instance used for the PUT request.
---
--- The second value is nil in case of error or a table that contains the server response, with the following fields
--- - "file" : a  File object instance representing the downloaded file. The file is dowloaded in the current directory.
--- - "elapsed" : a number representing the elapsed time to get the response
--- - "status" : a number containing the HTTP response status
--- - "reason" : a string containing HTTP response status text
--- - "ok" : a boolean value indicating if the GET request succeeded
--- - "headers" : a table containing a pair of strings(header field names of the HTTP response as key and content as values)
--- - "cookies" : a table containing a pair of strings(cookies names of the HTTP response as key and content as values)
---
--- https://www.luart.org/doc/net/Http-download.html
function Http:download(uri) end

--- Send an asynchronous GET request to the connected HTTP server for a specific resource.
--- @param uri string A string representing the resource to get on the server.
--- @param parameters? table An optional table that contains parameters to be sent with the request, in the form of key1=value1&key2=value2...
--- @return Task @This method return a  Task instance. Once the Task has finished, it will return two values :
--- The first value is the  Http instance used for the GET request.
---
--- The second value is nil in case of error or a table that contains the server response, with the following fields
--- - "content" : a string containing the body part of the HTTP response
--- - "elapsed" : a number representing the elapsed time to get the response
--- - "status" : a number containing the HTTP response status
--- - "reason" : a string containing HTTP response status text
--- - "ok" : a boolean value indicating if the GET request succeeded
--- - "headers" : a table containing a pair of strings(header field names of the HTTP response as key and content as values)
--- - "cookies" : a table containing a pair of strings(cookies names of the HTTP response as key and content as values)
---
--- https://www.luart.org/doc/net/Http-get.html
function Http:get(uri, parameters) end

--- Send an asynchronous PATCH request to the connected HTTP server to apply partial modifications to the target resource.
--- @param uri string A string representing the targer resource on the server.
--- @param content File|any A  File or any value converted to a string representing the body content of the request.
--- @return Task @This method return a  Task instance. Once the Task has finished, it will return two values :
--- The first value is the  Http instance used for the GET request.
---
--- The second value is nil in case of error or a table that contains the server response, with the following fields
--- - "content" : a string containing the body part of the HTTP response
--- - "elapsed" : a number representing the elapsed time to get the response
--- - "status" : a number containing the HTTP response status
--- - "reason" : a string containing HTTP response status text
--- - "ok" : a boolean value indicating if the GET request succeeded
--- - "headers" : a table containing a pair of strings(header field names of the HTTP response as key and content as values)
--- - "cookies" : a table containing a pair of strings(cookies names of the HTTP response as key and content as values)
---
--- https://www.luart.org/doc/net/Http-patch.html
function Http:patch(uri, content) end

--- Send an asynchronous POST request to the connected HTTP server at a specific resource.
--- @param uri string A string representing the resource on the server to POST parameters to.
--- @param parameters? table|string An optional table (for multipart/form-data content) or a string (for raw data content) that contains parameters to be sent with the request.Each key of the provided table must be a string (representing the parameter name) and each value represents the value for the corresponding parameter (a string or a  File object).
--- @return Task @This method return a  Task instance. Once the Task has finished, it will return two values :
--- The first value is the  Http instance used for the POST request.
--- The second value is nil in case of error or a table that contains the server response, with the following fields
--- - "content" : a string containing the body part of the HTTP response
--- - "elapsed" : a number representing the elapsed time to get the response
--- - "status" : a number containing the HTTP response status
--- - "reason" : a string containing HTTP response status text
--- - "ok" : a boolean value indicating if the POST request succeeded
--- - "headers" : a table containing a pair of strings(header field names of the HTTP response as key and content as values)
--- - "cookies" : a table containing a pair of strings(cookies names of the HTTP response as key and content as values)
---
--- https://www.luart.org/doc/net/Http-post.html
function Http:post(uri, parameters) end

--- Sets the proxy server connection.
--- @param proxy_server? string An optional string representing the proxy server address.
--- @param username? string An optional string representing the proxy user name.
--- @param password? string An optional string representing the proxy password.
--- @return boolean @This function returns a boolean value indicating if the operation was successful.
---
--- https://www.luart.org/doc/net/Http-proxy.html
function Http:proxy(proxy_server, username, password) end

--- Send an asynchronous PUT request to the connected HTTP server to creates a new resource or replaces a representation of the target resource.
--- @param uri string A stringrepresenting the target resource on the server.
--- @param content File|any A  File or any value converted to a string representing the body content of the request.
--- @return Task @This method return a  Task instance. Once the Task has finished, it will return two values :
--- The first value is the  Http instance used for the PUT request.
--- The second value is nil in case of error or a table that contains the server response, with the following fields
--- - "content" : a string containing the body part of the HTTP response
--- - "elapsed" : a number representing the elapsed time to get the response
--- - "status" : a number containing the HTTP response status
--- - "reason" : a string containing HTTP response status text
--- - "ok" : a boolean value indicating if the GET request succeeded
--- - "headers" : a table containing a pair of strings(header field names of the HTTP response as key and content as values)
--- - "cookies" : a table containing a pair of strings(cookies names of the HTTP response as key and content as values)
---
--- https://www.luart.org/doc/net/Http-put.html
function Http:put(uri, content) end
