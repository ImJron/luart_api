---@class Task
Task = {}

---@type function
--- ***READ/WRITE***
---
--- This property is used to define the function to be called once the Task is terminated.
--- - When set, this function is called with the Task return values as arguments.
---
--- https://www.luart.org/doc/sys/Task-after.html
Task.after = {}


---@type boolean
--- ***READONLY***
---
--- The Task.expired property returns true if the Task.timeout is reached, or false otherwise.
---
--- https://www.luart.org/doc/sys/Task-expired.html
Task.expired = {}


---@type number
--- ***READ/WRITE***
---
--- The Task.priority property get/set the Task execution priority, a number. Tasks with high priority values will be resumed before others by the scheduler
---
--- https://www.luart.org/doc/sys/Task-priority.html
Task.priority = {}

---@alias task_status "created"|"running"|"sleeping"|"waiting"|"terminated"
---@type task_status
--- ***READONLY***
---
--- The Task.status returns the current state of the Task, as a string. Possible values are :
--- - "created" : the Task has just been created, and has not started.
--- - "running" : the Task is currently running.
--- - "sleeping" : the Task is sleeping (ie has called the global sleep() function).
--- - "waiting" : the Task is waiting for another Task to terminate.
--- - "terminated" : the Task has terminated its execution.
---
--- https://www.luart.org/doc/sys/Task-status.html
Task.status = {}

---@type boolean
--- ***READONLY***
---
--- Checks if the Task has terminated its execution, returning true or false otherwise.
---
--- https://www.luart.org/doc/sys/Task-terminated.html
Task.terminated = {}


---@type number
--- ***READ/WRITE***
---
--- The Task.timeout property get/set the Task execution timeout in milliseconds. Once the timeout is reached, the Task will be terminated.
---
--- https://www.luart.org/doc/sys/Task-timeout.html
Task.timeout = {}



--- Stops Task execution, and set its status to "terminated".
--- @return boolean @This method returns true, or false if the Task was already terminated.
---
--- https://www.luart.org/doc/sys/Task-cancel.html
function Task:cancel() end

--- Suspend the Task execution until the Task is resumed with Task:resume().
---
--- https://www.luart.org/doc/sys/Task-pause.html
function Task:pause() end

--- Resume the Task execution, previously paused by Task:pause().
---
--- https://www.luart.org/doc/sys/Task-resume.html
function Task:resume() end

--- Suspend the execution flow until the Task have been terminated, allowing other tasks to run during this time.
--- @return any @This method returns the Task return values.
---
--- https://www.luart.org/doc/sys/Task-wait.html
function Task:wait() end
