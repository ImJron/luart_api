--- The base module contains global functions specific to Luart
--- https://www.luart.org/doc/base/index.html


---Throws an asynchronous task.
---@param task Task|function A function or a Task object instance to wait for. If a function is supplied, a new task instance is transparently created and started.
---@param ... any Other provided optional arguments are used as function arguments when the Task is started.
---@return Task @This function returns the  Task object instance.
---[https://www.luart.org/doc/base/async.html](https://www.luart.org/doc/base/async.html)
function async(task, ...) end

--- Wait for the task to terminate, suspending execution and allowing other tasks to run during this time.
---@param task Task|function A function or a Task object instance to wait for. If a function is supplied, a new task instance is transparently created and started.
---@param ... any Other provided optional arguments are used as function arguments when the Task is started.
---@return Task @This function returns the  Task object instance.
--- [https://www.luart.org/doc/base/await.html](https://www.luart.org/doc/base/await.html)
function await(task, ...) end

--- Returns an iterator function that iterates over the values of a table or Object.
---@generic T: table, K, V
---@param iterable T
---@return fun(table: table<V>, index?: K):V
---@return T
--- [https://www.luart.org/doc/base/each.html](https://www.luart.org/doc/base/each.html)
function each(iterable) end

--- Check if the variable inherits from the specified Object.
---@param var any A variable for which we want to check inheritance. That variable can be of any type.
---@return boolean @This function returns true if the variable inherits from the specified Object, or false otherwise.
--- [https://www.luart.org/doc/base/is.html](https://www.luart.org/doc/base/is.html)
function is(var) end

--- Declare a new Object type using the from prototype.
--- The Object() function implements multilevel single inheritance object oriented programming for Lua.
---@param from table|Object A table or an other previously declared object that serves as a prototype to define a new custom type.
---@param mixin1? table|Object One or more optional tables that contains methods, to extend the object capabilities.
---@return Object @Returns the new defined object type.
--- [https://www.luart.org/doc/base/Object.html](https://www.luart.org/doc/base/Object.html)
function Object(from, mixin1) end

--- Suspend the current execution flow until the delay elapse, allowing tasks to run during this time.
--- @param delay? number The delay for which current execution flow will be suspended, in milliseconds. Delay is optional, with a default 1 millisecond program suspension.
--- [https://www.luart.org/doc/base/sleep.html](https://www.luart.org/doc/base/sleep.html)
function sleep(delay) end

--- Get the ancestor of an object or instance.
--- @param object Object An object (as defined by the Object() function) or an instance.
--- @return Object|nil @This function returns the ancestor object, or nil if no ancestor is found.
--- [https://www.luart.org/doc/base/super.html](https://www.luart.org/doc/base/super.html)
function super(object) end

--- Returns the type of a variable.
--- @param var any A variable to check its type.
--- @return any @Returns the type of its only argument, as a string. The possible results of this function are "nil", "number", "string", "boolean", "table", "function", "thread", "userdata", "Object" or the name of the last inherited Object.
--- [https://www.luart.org/doc/base/type.html](https://www.luart.org/doc/base/type.html)
function type(var) end

--- Suspend the current execution flow until all running tasks (or only the specified ones) have been terminated.
--- @param ... Task objects to wait for. If no Task is provided, the function will wait for all running tasks to terminate.
--- @return any|table @This function returns no value when waiting for all tasks, or a table containing the results of the completed tasks. Each entry is a table with the returned values of the corresponding Task in order
--- [https://www.luart.org/doc/base/waitall.html](https://www.luart.org/doc/base/waitall.html)
function waitall(...) end
