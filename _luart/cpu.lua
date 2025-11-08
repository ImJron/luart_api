---@class cpu
local cpu = {}

---@type table
--- ***READONLY***
---
--- This property gets different cache levels and their size (in kb). The returned table with the cache identifier as a key, and its size as value.
---
--- https://www.luart.org/doc/cpu/cache.html
cpu.cache = {}


---@type number
--- ***READONLY***
---
--- The cpu.clock property gets the theorical frequency in Mhz.
---
--- https://www.luart.org/doc/cpu/clock.html
cpu.clock = {}


---@type number
--- ***READONLY***
---
--- The cpu.cores property gets the number of physical cpu cores.
---
--- https://www.luart.org/doc/cpu/cores.html
cpu.cores = {}



---@type number
--- ***READONLY***
---
--- The cpu.currentclock property gets the current cpu frequency in Mhz.
---
--- https://www.luart.org/doc/cpu/currentclock.html
cpu.currentclock = {}


---@type table
--- ***READONLY***
---
--- This property gets instruction sets supported by the cpu, as a table with the following fields:
--- - MMX: true if the cpu supports MMX instruction set, or false otherwise.
--- - SSE: true if the cpu supports SSE instruction set, or false otherwise.
--- - SSE2: true if the cpu supports SSE2 instruction set, or false otherwise.
--- - SSE3: true if the cpu supports SSE3 instruction set, or false otherwise.
--- - SSE4.1: true if the cpu supports SSE4.1 instruction set, or false otherwise.
--- - SSE4.2: true if the cpu supports SSE4.2 instruction set, or false otherwise.
--- - AVX: true if the cpu supports AVX instruction set, or false otherwise.
--- - AVX2: true if the cpu supports AVX2 instruction set, or false otherwise.
---
--- https://www.luart.org/doc/cpu/features.html
cpu.features = {}


---@type string
--- ***READONLY***
---
--- The cpu.name property gets the human-readable name of the cpu.
---
--- https://www.luart.org/doc/cpu/name.html
cpu.name = {}


---@alias cpu_priority "idle"|"low"|"normal"|"high"|"highest"
---@type cpu_priority
--- ***READ/WRITE***
---
--- The cpu.priority property get or set the current process and thread (the one executing Luart) scheduling priority.
---
--- https://www.luart.org/doc/cpu/priority.html
cpu.priority = {}


---@type number
--- ***READONLY***
---
--- The cpu.threads property gets the number hardware threads.
---
--- https://www.luart.org/doc/cpu/threads.html
cpu.threads = {}

---@type number
--- ***READONLY***
---
--- The cpu.usage property gets the current cpu usage in percent.
---
--- https://www.luart.org/doc/cpu/usage.html
cpu.usage = {}


---@type number
--- ***READONLY***
---
--- The cpu.currentclock property gets the cpu manufacturer identifier.
---
--- https://www.luart.org/doc/cpu/vendor.html
cpu.vendor = {}

return cpu
