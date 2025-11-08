---@class sysutils
local sysutils = {}
sysutils.recyclebin = {}

---@class sysutils_drive
---@field root string
---@field name string
---@field filesystem string
---@field type string
---@field readonly boolean
---@field compressed boolean


---@type string
--- ***READONLY***
---
--- Retrieves the computer name as a string
---
--- https://www.luart.org/doc/sysutils/computer.html
sysutils.computer = {}


---@type sysutils_drive[]
--- ***READONLY***
---
--- Get a list of current available disk drives. Each drive in the list is represented by a table that contains the following fields :
--- - root: The drive root directory, for example "C:\\"
--- - name: The drive name as a string
--- - filesystem: The drive's filesystem, for example "FAT32" or "NTFS"
--- - readonly: A boolean value indicating wether the drive is readonly.
--- - compressed: A boolean value indicating wether the drive is compressed.
--- - type: The drive's type
---
--- https://www.luart.org/doc/sysutils/drives.html
sysutils.drives = {}


--- ***READONLY***
---
--- Retrieves the full path of a Windows known folder as a string
--- This property is a virtual table that can be indexed using the following fields :
--- - Documents:the current user Documents folder
--- - Downloads:the current user Downloads folder
--- - Videos:the current user Videos folder
--- - Pictures:the current user Pictures folder
--- - Music:the current user Music folder
--- - Contacts:the current user Contacts folder
--- - Favorites:the current user Favorites folder
--- - Links:the current user Links folder
--- - Fonts:the Fonts Windows folder
--- - Startup:the current user Startup folder
--- - StartMenu:the current user Start Menu folder
--- - Sendto: the Send to Windows context menu
--- - Recent:the current user Recents folder
--- - Windows:the Windows folder
--- - System:the System32 Windows folder
--- - ProgramFiles:the Program Files (x86) folder (for x86 LuaRT) or Program Files (for x64 LuaRT) folder
--- - Desktop:the user Desktop folder
--- - Programs:the user Programs Start Menu Folder (stores shortcuts to applications in the Start Menu)
--- - RoamingAppData:the user Roaming AppData folder, (stores application data on the current user profile)
--- - LocalAppData:the Local Application Data folder, (stores application data that is specific to the computer)
---
--- https://www.luart.org/doc/sysutils/folders.html
sysutils.folders = {
    ---@type string
    Documents = {},
    ---@type string
    Downloads = {},
    ---@type string
    Videos = {},
    ---@type string
    Pictures = {},
    ---@type string
    Music = {},
    ---@type string
    Contacts = {},
    ---@type string
    Favorites = {},
    ---@type string
    Links = {},
    ---@type string
    Fonts = {},
    ---@type string
    Startup = {},
    ---@type string
    StartMenu = {},
    ---@type string
    Sendto = {},
    ---@type string
    Recent = {},
    ---@type string
    Windows = {},
    ---@type string
    System = {},
    ---@type string
    ProgramFiles = {},
    ---@type string
    Desktop = {},
    ---@type string
    Programs = {},
    ---@type string
    RoamingAppData = {},
    ---@type string,
    LocalAppData = {}
}


---@type boolean
--- ***READONLY***
---
--- Check if the current user is an Administrator or if the current program is run using UAC.
---
--- https://www.luart.org/doc/sysutils/isadmin.html
sysutils.isadmin = {}



---@type "x64"|"x86"
--- ***READONLY***
---
--- Retrieves the current Windows architecture either "x64" or "x86"
---
--- https://www.luart.org/doc/sysutils/sysarch.html
sysutils.sysarch = {}


---@type string
--- ***READONLY***
---
--- Retrieves the current user name as a string
---
--- https://www.luart.org/doc/sysutils/user.html
sysutils.user = {}



--- Adds an item to the Windows recent documents list in the Start menu, or in the File Explorer under "Recent".
--- @param fname File|string The the file to be added, as a string representing the full path or as a  File.
---
--- https://www.luart.org/doc/sysutils/addrecent.html
function sysutils.addrecent(fname) end

--- Returns the disk space usage for the specified drive
--- @param drive string The drive letter, as a string
--- @return number currentFreeSpace
--- @return number totalDiskSpace
--- If the function succeeds, the function returns two numbers: the current free disk space in bytes, and the total disk space in bytes. If the function fails it returns a nil value.
---
--- https://www.luart.org/doc/sysutils/diskusage.html
function sysutils.diskusage(drive) end

--- Checks if an application instance is already running, using the provided identifier.
--- @param id string A unique string that identifies the application.
--- @return boolean @Returns a boolean value indicating if the current application is already running, using the provided identifier.
---
--- https://www.luart.org/doc/sysutils/isinstance.html
function sysutils.isinstance(id) end

--- Empties the Recycle Bin on the specified drive.
--- @param drive string A string that contains the path of the root drive of the Recycle Bin to empty.
--- - If the string is empty, all Recycle Bins on all drives will be emptied.
--- @return boolean @Returns a boolean value indicating if the operation succeeded.
---
--- https://www.luart.org/doc/sysutils/recyclebin-empty.html
function sysutils.recyclebin.empty(drive) end

--- Sends a file or folder to the Recycle Bin.
--- @param item File|Directory The file or directory to be send on the Recycle Bin, as a string, as a  File, or as a  Directory
--- - Files or folders deleted using File.remove() and Directory.remove() are deleted forever.
--- - Use this function to send them to the Recycle Bin instead.
--- @return boolean @Returns a boolean value indicating if the operation succeeded.
---
--- https://www.luart.org/doc/sysutils/recyclebin-send.html
function sysutils.recyclebin.send(item) end

--- Performs an operation on a file or folder, such as opening, printing, or exploring, and returns when the operation has finished.
--- @param action "open"|"openas"|"runas"|"edit"|"print"|"properties"|"explore"|"find" A string that indicates the action to perform on the provided file/directory.The following verbs are commonly used
--- - "open": opens the file/directory.
--- - "openas": shows a dialog to select an app with which to open the file.
--- - "runas": launches an application as Administrator, with UAC prompt if needed.
--- - "edit": launches an editor to edit the file.
--- - "print": prints the file.
--- - "properties": shows the file/folder properties.
--- - "explore": explores the specified folder.
--- - "find": start a search starting from the specified directory.
--- @param file File|Directory The file or directory on which the action will be performed on, as a string, as a  File, or as a  Directory
--- @param parameters? string An optional string that contains the application parameters, separated by spaces.
--- @param directory? string An optional string that contains the name of the application working directory.
--- @return boolean @Returns a boolean value indicating if the shell execution succeeded or not.
---
--- https://www.luart.org/doc/sysutils/shellexec.html
function sysutils.shellexec(action, file, parameters, directory) end

--- Informs the Windows Shell about changes in the file system, such as file creation, deletion, attribute changes or file associations.
---
--- https://www.luart.org/doc/sysutils/shellupdate.html
function sysutils.shellupdate() end

--- Monitors a directory for changes in the background.
--- @param folder string|Directory The folder to be watched, as a string or as a  Directory
--- @param func fun(action: string, entry: File|Directory, newentry: File|Directory) A callback function that will be called each time a directory change has been detected.
--- This function receives the following arguments :
--- - The action that occured as a string among "new", "removed", "modified", or "renamed"
--- - The concerned  File or  Directory
--- - A third argument only if the action is "renamed", which contains the renamed  File or  Directory
--- @return Task @Returns a  Task instance that will run forever in the background.
---
--- https://www.luart.org/doc/sysutils/watch.html
function sysutils.watch(folder, func) end

--- Find a file in the current system path
--- @param file File|string The filename to be searched for, as a string or as a  File.
--- @return File @Returns a  File if a file was found or nil otherwise.
---
--- https://www.luart.org/doc/sysutils/where.html
function sysutils.where(file) end

--- The Process constructor creates a new Windows process.
--- @param cmd string A string representing the command to be executed as a new process, that contains the executable and parameters separated by spaces
--- @param hidden? boolean An optional boolean value indicating if the application is hidden, defaulting to false
--- @param redirect? boolean An optional boolean value indicating if the process stdin, stdout and stderr are redirected, defaulting to false
--- @return Process
function sysutils.Process(cmd, hidden, redirect) end

return sysutils
