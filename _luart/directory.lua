---@class Directory
Directory = {}

---@type Datetime
--- ***READ/WRITE***
---
--- The Directory.accessed property set or get a  Datetime value indicating when the folder has been last accessed.
---
--- https://www.luart.org/doc/sys/Directory-accessed.html
Directory.accessed = {}

---@type Datetime
--- ***READ/WRITE***
---
--- The Directory.created property set or get a  Datetime value indicating when the folder has been created.
---
--- https://www.luart.org/doc/sys/Directory-created.html
Datetime.created = {}


---@type boolean
--- ***READONLY***
---
--- The Directory.exists property returns a boolean value indicating if the folder exists physically on the drive or not.
---
--- https://www.luart.org/doc/sys/Directory-exists.html
Directory.exists = {}


---@type string
--- ***READONLY***
---
--- The Directory.fullpath property returns a string representing the full path to the folder. The fullpath is set during the call to the Directory constructor, relative to the current working directory at this time.
---
--- https://www.luart.org/doc/sys/Directory-fullpath.html
Directory.fullpath = {}



---@type boolean
--- ***READ/WRITE***
---
--- The Directory.hidden property set or get a boolean value indicating if the folder is hidden or not. The folder must exist physically on the disk.
---
--- https://www.luart.org/doc/sys/Directory-hidden.html
Directory.hidden = {}


---@type boolean
--- ***READONLY***
---
--- The Directory.isempty property returns a boolean value indicating if the folder is empty (don't contains any file/directory) or not. If the folder don't exists, the property returns false
---
--- https://www.luart.org/doc/sys/Directory-isempty.html
Directory.isempty = {}


---@type Datetime
--- ***READ/WRITE***
---
--- The Directory.modified property set or get a  Datetime value indicating when the folder has been last modified.
---
--- https://www.luart.org/doc/sys/Directory-modified.html
Directory.modified = {}


---@type string
--- ***READONLY***
---
--- The Directory.name property returns a string representing the folder name (the last part of the fullpath).
---
--- https://www.luart.org/doc/sys/Directory-name.html
Directory.name = {}


---@type Directory
--- ***READONLY***
---
--- The Directory.parent property returns a  Directory representing the parent folder. If the folder is already a root folder, the property returns nil
---
--- https://www.luart.org/doc/sys/Directory-parent.html
Directory.parent = {}


--- Copies the Directory physically on the disk to the specified new directory name.
--- @param dirname string A string representing the destination directory. If the dirname contains a path, the path must already exist.
--- @return boolean @Returns a boolean value indicating if the operation succeeded.
--- https://www.luart.org/doc/sys/Directory-copy.html
function Directory:copy(dirname) end

--- Copies the Directory to a new one with the specified folder path, asynchronously (without blocking program execution flow)
--- @param dirpath string A string representing the destination directory path.
--- @return Task @Returns a  Task that will return a boolean value indicating if the operation succeeded.
--- https://www.luart.org/doc/sys/Directory-copytask.html
function Directory:copytask(dirpath) end

--- Filters the folder content and returns an iterator.
--- @param filter string A string used to filter folder content. The string can include wildcard characters : an asterisk (*) for one or more characters march or a question mark (?) for single character match.
--- @return function @Returns an iterator function to be used in a for loop, to iterate over the filtered directory content. Each iterator call returns either a  File or a  Directory value.
--- https://www.luart.org/doc/sys/Directory-list.html
function Directory:list(filter) end

--- Create a folder physically on the disk if it doesn't exists.
--- @return boolean @Returns true if the operation succeeded or false otherwise (in case of an already existing folder for example).
--- https://www.luart.org/doc/sys/Directory-make.html
function Directory:make() end

--- Moves the folder physically on the disk and all contained files and subdirectories, to the specified path.
--- @param path string A string representing the destination path.
--- @return boolean @Returns true if the operation succeeded or false otherwise (if a file is open in another program for example).
--- https://www.luart.org/doc/sys/Directory-move.html
function Directory:move(path) end

--- Deletes the folder physically on the disk if the folder is empty.
--- @return boolean @Returns true if the operation succeeded or false otherwise (in case of an non empty folder for example).
--- https://www.luart.org/doc/sys/Directory-remove.html
function Directory:remove() end

--- Deletes the folder physically on the disk and all contained files and subdirectories.
--- @return boolean @Returns true if the operation succeeded or false otherwise (if a file is open in another program for example).
--- https://www.luart.org/doc/sys/Directory-removeall.html
function Directory:removeall() end
