--- @class c

local c = {}

---@type nil
--- ***READONLY***
---
--- The C.NULL property returns a new NULL pointer.
---
--- https://www.luart.org/doc/c/NULL.html
c.NULL = {}



--- Creates a new C Value of type uchar. This function is a simplified wrapper around the Value constructor.
--- @return Value
---
--- https://www.luart.org/doc/c/uchar.html
function c.uchar(value) end

--- Creates a new C Value of type char. This function is a simplified wrapper around the Value constructor.
--- @return Value
---
--- https://www.luart.org/doc/c/char.html
function c.char(value) end

--- Creates a new C Value of type wchar_t. This function is a simplified wrapper around the Value constructor.
--- @return Value
---
--- https://www.luart.org/doc/c/wchar_t.html
function c.wchar_t(value) end

--- Creates a new C Value of type bool. This function is a simplified wrapper around the Value constructor.
--- @return Value
---
--- https://www.luart.org/doc/c/bool.html
function c.bool(value) end

--- Creates a new C Value of type short. This function is a simplified wrapper around the Value constructor.
--- @return Value
---
--- https://www.luart.org/doc/c/short.html
function c.short(value) end

--- Creates a new C Value of type ushort. This function is a simplified wrapper around the Value constructor.
--- @return Value
---
--- https://www.luart.org/doc/c/ushort.html
function c.ushort(value) end

--- Creates a new C Value of type int. This function is a simplified wrapper around the Value constructor.
--- @return Value
---
--- https://www.luart.org/doc/c/int.html
function c.int(value) end

--- Creates a new C Value of type uint. This function is a simplified wrapper around the Value constructor.
--- @return Value
---
--- https://www.luart.org/doc/c/uint.html
function c.uint(value) end

--- Creates a new C Value of type long. This function is a simplified wrapper around the Value constructor.
--- @return Value
---
--- https://www.luart.org/doc/c/long.html
function c.long(value) end

--- Creates a new C Value of type long long. This function is a simplified wrapper around the Value constructor.
--- @return Value
---
--- https://www.luart.org/doc/c/long long.html
function c.longlong(value) end

--- Creates a new C Value of type ulong. This function is a simplified wrapper around the Value constructor.
--- @return Value
---
--- https://www.luart.org/doc/c/ulong.html
function c.ulong(value) end

--- Creates a new C Value of type ulonglong. This function is a simplified wrapper around the Value constructor.
--- @return Value
---
--- https://www.luart.org/doc/c/ulonglong.html
function c.ulonglong(value) end

--- Creates a new C Value of type size_t. This function is a simplified wrapper around the Value constructor.
--- @return Value
---
--- https://www.luart.org/doc/c/size_t.html
function c.size_t(value) end

--- Creates a new C Value of type int16_t. This function is a simplified wrapper around the Value constructor.
--- @return Value
---
--- https://www.luart.org/doc/c/int16_t.html
function c.int16_t(value) end

--- Creates a new C Value of type int32_t. This function is a simplified wrapper around the Value constructor.
--- @return Value
---
--- https://www.luart.org/doc/c/int32_t.html
function c.int32_t(value) end

--- Creates a new C Value of type int64_t. This function is a simplified wrapper around the Value constructor.
--- @return Value
---
--- https://www.luart.org/doc/c/int64_t.html
function c.int64_t(value) end

--- Creates a new C Value of type uint16_t. This function is a simplified wrapper around the Value constructor.
--- @return Value
---
--- https://www.luart.org/doc/c/uint16_t.html
function c.uint16_t(value) end

--- Creates a new C Value of type uint32_t. This function is a simplified wrapper around the Value constructor.
--- @return Value
---
--- https://www.luart.org/doc/c/uint32_t.html
function c.uint32_t(value) end

--- Creates a new C Value of type uint64_t. This function is a simplified wrapper around the Value constructor.
--- @return Value
---
--- https://www.luart.org/doc/c/uint64_t.html
function c.uint64_t(value) end

--- Creates a new C Value of type double. This function is a simplified wrapper around the Value constructor.
--- @return Value
---
--- https://www.luart.org/doc/c/double.html
function c.double(value) end

--- Creates a new C Value of type string. This function is a simplified wrapper around the Value constructor.
--- @return Value
---
--- https://www.luart.org/doc/c/string.html
function c.string(value) end

--- Creates a new C Value of type wstring. This function is a simplified wrapper around the Value constructor.
--- @return Value
---
--- https://www.luart.org/doc/c/wstring.html
function c.wstring(value) end

--- Gets the memory size in bytes of the provided C object.
--- @param object Value|Struct|Union|Array A C object instance to get the size from
--- @return number @Returns the type of the C object as a number
---
--- https://www.luart.org/doc/c/sizeof.html
function c.sizeof(object) end

--- The Array constructor creates a new C Array definition, that can be used later to create new C Array instances (see Calling C Array definition).
--- @param type Value|Struct|Union|Pointer|Array|string This argument defines the type of data stored in the C Array. The type can be either :
---  A C definition object :  Value,  Struct,  Union,  Pointer or [] Array
---
--- A string with a single signature character for integral C types :
--- - "B"	int (or bool for C++)
--- - "c"	char
--- - "C"	unsigned char
--- - "s"	short / int16_t
--- - "S"	unsigned short / uint16_t
--- - "i"	int / int32_t
--- - "I"	unsigned int / uint32_t
--- - "j"	long / int32_t
--- - "J"	unsigned long / uint32_t
--- - "l"	long long / int64_t
--- - "L"	unsigned long long / uint64_t
--- - "#"	size_t
--- - "f"	float
--- - "d"	double
--- - "Z"	char* / >const char*
--- - "W"	wchar_t* / >const wchar_t*
--- - "p"	void*
---
--- @return Array
--- https://www.luart.org/doc/c/Array-constructor.html
function c.Array(type) end

--- The Value constructor creates a new Value instance, that represents an in-memory C variable of the provided type.
--- @param ctype ctype
--- @param value? any An optional Lua value of any type that will be used to initialize the created C Value.
--- - The C module contains functions to create C Values directly depending on the C type.
--- - When creating a C string or wide string Value, you can initialize it only with another  Value, a Lua string or with a number that indicates the string length.
--- @return Value
---
--- https://www.luart.org/doc/c/Value-constructor.html
function c.Value(ctype, value) end

--- The Library constructor creates a new Library instance, that represents a Windows DLL.
--- Once the Library is loaded, its exported symbols are accessible using the returned Library instance.
--- @param lib? string An optional string representing the Windows dynamic library to load. The string can be a full path or a DLL name in the current path.
--- - When the lib parameter is omitted, the C runtime library will be loaded.
--- - DLL embedded in the current compiled executable are loaded seamlessly.
--- - If the provided library cannot be loaded, the constructor returns nil (use sys.error to get the error message).
--- @return Library
---
--- https://www.luart.org/doc/c/Library-constructor.html
function c.Library(lib) end

--- The Pointer constructor creates a new Pointer instance, that points to the memory address of the C value represented by the provided C object instance.
--- @param cobj? Value|Struct|Union|Array
--- - Calling the constructor without any arguments will return a NULL C pointer.
--- - Only Cvalues can be pointed to (C definition objects can't be used).
--- @return Pointer
---
--- https://www.luart.org/doc/c/Pointer-constructor.html
function c.Pointer(cobj) end

return c
