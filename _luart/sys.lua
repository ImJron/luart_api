---  The sys module provides access to system-specific parameters and functions
--- https://www.luart.org/doc/sys/index.html

---@class sys
sys = {}
sys.registry = {}

---@type function
--- ***READ/WRITE***
---
--- The sys.atexit property get or set the function to be called at program exit. This function don't take any arguments.
---
--- https://www.luart.org/doc/sys/atexit.html
sys.atexit = {}

---@type any
--- ***READ/WRITE***
---
--- Get or set data from/to the Windows clipboard.
---
--- https://www.luart.org/doc/sys/clipboard.html
sys.clipboard = {}


---@type string
--- ***READ/WRITE***
---
--- The sys.currentdir property get or set a string representing the current working directory.
---
--- https://www.luart.org/doc/sys/currentdir.html
sys.currentdir = {}


---@type table
--- ***READONLY***
---
--- Get a proxy table representing environment variables. To set or get an environment variable, just index the table with the variable name.
---
--- https://www.luart.org/doc/sys/env.html
sys.env = {}


---@type string
--- ***READONLY***
---
--- The sys.error property returns a string representing the last Windows error message or nil if no error occured.
---
--- https://www.luart.org/doc/sys/error.html
sys.error = {}



---@type number
--- ***READ/WRITE***
---
--- Controls how frequently the scheduler pauses to release CPU resources, defaulting to 2. A higher idleThreshold value reduces how often the scheduler pauses, prioritizing responsiveness for tasks at the cost of slightly higher CPU usage.
---
--- A lower value increases pausing frequency, reducing CPU usage but may introduce minor delays in task execution.
---
--- https://www.luart.org/doc/sys/idleThreshold.html
sys.idleThreshold = {}


---@type string
--- ***READONLY***
---
--- Get the full localized name of the current locale as a string, for example "english (United States)"
---
--- https://www.luart.org/doc/sys/language.html
sys.language = {}



---@type string
--- ***READ/WRITE***
---
--- Get or set the current user locale as a string, in short format, for example "en-US"
---
--- Set this property to nil to set back the locale to the current Windows user locale.
---
--- https://www.luart.org/doc/sys/locale.html
sys.locale = {}





--- Plays a beeping sound of 550hz for a duration of 0.2 seconds (200 milliseconds).
---
--- https://www.luart.org/doc/sys/beep.html
function sys.beep() end

--- Returns the current elapsed time, that can be used for time-interval measurements.
--- @return number @This function returns the current elapsed time in millisecond. Luart uses a high performance counter if available, or the current elapsed time since the system has started otherwise.
---
--- https://www.luart.org/doc/sys/clock.html
function sys.clock() end

--- Executes an operating-system command.
--- @param command string A string that contains the command to send to the command interpreter.
---@param hidden? boolean An optional boolean value indicating if the command must be executed in a hidden window (the default).
---@param standalone? boolean An optional boolean value indicating whether the child process should be independent from the current process. In this case, when the current process is stopped, the child process will be able to continue its execution. Default value is false.
---@return boolean @This function returns true if the command was sucessfully executed or false otherwise.
---
---https://www.luart.org/doc/sys/cmd.html
function sys.cmd(command, hidden, standalone) end

--- Terminates the program.
--- @param status? number An optional number returned to the operating system. Default value is zero. By convention, a value of zero means that the program completed successfully. A value of -1 means that an error occured.
---
--- https://www.luart.org/doc/sys/exit.html
function sys.exit(status) end

--- Get a filesystem entry by name or fullpath.
--- @param entry string A string representing a filesystem entry name (ie a file name, or a folder name)
--- @return File|Directory Returns a  File or  Directory instance that represents the filesystem entry. If the entry doesn't exists, it returns nil.
---
--- https://www.luart.org/doc/sys/fsentry.html
function sys.fsentry(entry) end

--- @alias halt_mode "logoff"|"shutdown"|"reboot"|"force"
--- Shutdown the operating system.
--- @param mode? halt_mode An optional string that indicates the shutdown method to use. If this parameter is not specified, the default value "shutdown" is used.
--- - "logoff" : close the current Windows session
--- - "shutdown" : shutdown the computer
--- - "reboot" : reboot the computer
--- - "force" : do not wait for other applications to terminate
---
--- https://www.luart.org/doc/sys/halt.html
function sys.halt(mode) end

---@alias registry_root "HKEY_CLASSES_ROOT"|"HKEY_CURRENT_CONFIG"|"HKEY_CURRENT_USER"|"HKEY_LOCAL_MACHINE"
--- Remove a key and all it's assosciated values, or just a value, from the Windows registry.
--- @param root registry_root Indicates the predefined entry point in the Windows registry, from which the key/value will be accessed. Must be one of the following string :
--- - "HKEY_CLASSES_ROOT" : types (or classes) of documents and the properties associated with those types
--- - "HKEY_CURRENT_CONFIG" : information about the current hardware
--- - "HKEY_CURRENT_USER" : preferences of the current user
--- - "HKEY_LOCAL_MACHINE" : data about the computer, system memory, and installed hardware and software
---@param key string Indicates the name of the key to be deleted, or the path to the value to be deleted (the value must be provided as a third parameter).
---@param value? string Indicates the specific value to be deleted, removes all values for the key if omitted
---@return boolean @This function returns true if the value has been removed from the registry, or otherwise false (See sys.error to get the error message).
---https://www.luart.org/doc/sys/registry.delete.html
function sys.registry.delete(root, key, value) end

--- Read a value associated with the provided key, in the Windows registry.
--- @param rootkey registry_root Indicates the predefined entry point in the Windows registry, from which the key/value will be accessed. Must be one of the following string :
--- - "HKEY_CLASSES_ROOT" : types (or classes) of documents and the properties associated with those types
--- - "HKEY_CURRENT_CONFIG" : information about the current hardware
--- - "HKEY_CURRENT_USER" : preferences of the current user
--- - "HKEY_LOCAL_MACHINE" : data about the computer, system memory, and installed hardware and software
---@param key string Indicates the name of the key with which the value is associated.
---@param isexpanded boolean Indicates if environment strings should be expanded or not (defaults to false). Registry values may contains references to environment variables (for example, %PATH%). Expanding those references replaces them with their current value.
---@return any @This function returns nil if the value cannot be found, or returns the registry value according to the following conversion rules:
--- https://www.luart.org/doc/sys/registry.read.html
---TODO:
function sys.registry.read(rootkey, key, isexpanded) end

---Write a value under the specified key in the Windows registry.
--- @param rootkey registry_root Indicates the predefined entry point in the Windows registry, from which the key/value will be accessed. Must be one of the following string :
--- - "HKEY_CLASSES_ROOT" : types (or classes) of documents and the properties associated with those types
--- - "HKEY_CURRENT_CONFIG" : information about the current hardware
--- - "HKEY_CURRENT_USER" : preferences of the current user
--- - "HKEY_LOCAL_MACHINE" : data about the computer, system memory, and installed hardware and software
---@param key string Indicates the name of the key with which the value is associated.
---@param value string Indicates the name of the value.
---@param data any Indicates the content of the value according to the following conversion rules:
--- - **Buffer** -> REG_BINARY
--- - **number** -> REG_QWORD | REG_DWORD
--- - **string** -> REG_SZ | REG_EXPAND_SZ
--- - **table of strings** -> REG_MULTI_SZ
--- - **nil** -> REG_NONE
---@param isexpanded boolean Indicates if environment strings should be expanded or not (defaults to false). Registry values may contains references to environment variables (for example, %PATH%). Expanding those references replaces them with their current value.
---@return any @TThis function returns true if the value has been written to the registry, or otherwise false (See sys.error to get the error message).
--- https://www.luart.org/doc/sys/registry.write.html
function sys.registry.write(rootkey, key, value, data, isexpanded) end

---Create a temporary empty Directory Object, created in the user temporary folder.
---@param prefix? string An optional string that contains the first 3 letters of the temporary directory name.
---@return Directory @Returns a  Directory Object that represents a temporary directory located in the Windows system temporary path. In case of error, this function returns nil
---https://www.luart.org/doc/sys/tempdir.html
function sys.tempdir(prefix) end

---Create a temporary empty File Object, created in the user temporary folder.
---@param prefix? string An optional string that contains the first 3 letters of the temporary directory name.
---@return File @Returns a File Object that represents a temporary directory located in the Windows system temporary path. In case of error, this function returns nil
---https://www.luart.org/doc/sys/tempfile.html
function sys.tempfile(prefix) end

---The Buffer constructor returns a Buffer value representing a sequence of raw bytes in memory, initialized with the var argument. The Buffer value can then be accessed, modified, resized, converted from/to string, compressed, decoded...
---@param var @A variable used to initialize the Buffer. Only number, string and table values are permitted with the following behavior :
--- - number : Initialize the Buffer with the specified size. All bytes are initialized to zero.
--- - string : Initialize the Buffer with the specified string. An optional encoding argument can specify how to decode the string (see below)
--- - table : Initialize the Buffer with the specified table. The table must contain only sequential byte values (for example { 20, 33, 75 })
---@param encoding? buffer_encoding An optional string used to specify the decoding method when initializing the Buffer with a string value :
--- - "utf8" : Initialize the Buffer with a UTF8 encoded string, or as raw binary data (default)
--- - "unicode" : Initialize the Buffer with an UNICODE (UCS-2 LE) encoded string
--- - "base64" : Initialize the Buffer with a base64 encoded string
--- - "hex" : Initialize the Buffer with a hexadecimal encoded string
---@return Buffer
---https://www.luart.org/doc/sys/Buffer-constructor.html
function sys.Buffer(var, encoding) end

--- The COM constructor returns a COM object instance, representing an abstraction of a Windows COM object.
---@param classname string A string representing the class name of the Windows COM object. The class name must correspond to a Windows registered COM component.
---@param use_existing? boolean An optional boolean, that when set to true, indicates that an already running instance of the COM object will be used. If set to false (the default), the system will create a new instance of the COM object.
---@return COM
---https://www.luart.org/doc/sys/COM-constructor.html
function sys.COM(classname, use_existing) end

--- The Datetime constructor returns a Datetime value representing a moment, including a date part and a time part.
---
--- The Datetime value is initialized with the moment argument. If that argument is omitted, the constructor returns the current local date and time. The Datetime value can then be accessed, modified, converted to string,...
--- @param moment? string An optional string used to specify the Datetime value, using the current short date format depending on the user current locale.
---
---@return Datetime
--- https://www.luart.org/doc/sys/Datetime-constructor.html
function sys.Datetime(moment) end

--- The Directory constructor returns a Directory value representing a folder (that may or may not exist on disk).
--- @param path string A string representing the path to the folder. The path may exist physically on a disk or not. To create the folder on a disk, use the Directory:make() method.
--- - If a relative path is given to the Directory constructor, it will be converted to an absolute path (relative to the current working folder).
--- @return Directory
--- https://www.luart.org/doc/sys/Directory-constructor.html
function sys.Directory(path) end

--- The File constructor returns a File value, representing an abstraction of a file (that may or may not exist).
--- @param filename string A string representing the filename. The file may exist physically on disk or not. To create the file on a disk, use the File:open() method with "write" or "read/write" mode.
--- @return File
--- https://www.luart.org/doc/sys/File-constructor.html
function sys.File(filename) end

--- The Pipe constructor executes a process and returns a Pipe value to interact with it.
--- @param cmd string A string representing the command to execute.
--- @return Pipe
--- https://www.luart.org/doc/sys/Pipe-constructor.html
function sys.Pipe(cmd) end

--- The Task constructor returns an asynchronous Task, executing the provided function when started.
--- @param func function A function that will be executed once the Task is started.
--- - To start a Task, just call it like a function, see: https://www.luart.org/doc/sys/Task-call.html
--- @return Task
---
--- https://www.luart.org/doc/sys/Task-constructor.html
function sys.Task(func) end
