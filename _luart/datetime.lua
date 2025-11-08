---@class Datetime
---https://www.luart.org/doc/sys/Datetime.html
local Datetime = {}

---@type string
--- ***READONLY***
---
--- The Datetime.date property returns a string representing the "date part" of the moment, in the current local short format.
---
--- https://www.luart.org/doc/sys/Datetime-date.html
Datetime.date = {}


---@type number
--- ***READ/WRITE***
---
--- The Datetime.day property returns a number representing the day of the month. Valid values are from 1 through 31.
--- - Setting the day property with a value lower or higher will throw an error.
---
--- https://www.luart.org/doc/sys/Datetime-day.html
Datetime.day = {}


---@type string
--- ***READONLY***
---
--- The Datetime.dayname property returns a string representing the name of the day of the moment, in the current local.
---
--- https://www.luart.org/doc/sys/Datetime-dayname.html
Datetime.dayname = {}



---@type number
--- ***READ/WRITE***
---
--- The Datetime.hour property returns a number representing the hour of the moment. Valid values are from 0 through 23.
--- - Setting the hour property with a value lower or higher will throw an error.
---
--- https://www.luart.org/doc/sys/Datetime-hour.html
Datetime.hour = {}


---@type number
--- ***READ/WRITE***
---
--- The Datetime.milliseconds property returns a number representing the milliseconds of the moment. Valid values are from 0 through 999.
--- - Setting the milliseconds property with a value lower or higher will throw an error.
---
--- https://www.luart.org/doc/sys/Datetime-milliseconds.html
Datetime.milliseconds = {}



---@type number
--- ***READ/WRITE***
---
--- The Datetime.minute property returns a number representing the minutes of the moment. Valid values are from 0 through 59.
--- - Setting the minute property with a value lower or higher will throw an error.
---
--- https://www.luart.org/doc/sys/Datetime-minute.html
Datetime.minute = {}


---@type number
--- ***READ/WRITE***
---
--- The Datetime.month property returns a number representing the month of the moment. Valid values are from 1 through 12.
---
--- https://www.luart.org/doc/sys/Datetime-month.html
Datetime.month = {}


---@type string
--- ***READONLY***
---
--- The Datetime.monthname property returns a string representing the name of the month of the moment, in the current local.
---
--- https://www.luart.org/doc/sys/Datetime-monthname.html
Datetime.monthname = {}


---@type number
--- ***READ/WRITE***
---
--- The Datetime.second property returns a number representing the second of the moment. Valid values are from 0 through 59.
--- - Setting the second property with a value lower or higher will throw an error
---
--- https://www.luart.org/doc/sys/Datetime-second.html
Datetime.second = {}


---@type string
--- ***READONLY***
---
--- The Datetime.time property returns a string representing the "time part" of the moment, in the current local short format.
---
--- https://www.luart.org/doc/sys/Datetime-time.html
Datetime.time = {}


---@type number
--- ***READ/WRITE***
---
--- The Datetime.weekday property returns a number representing the day of the week. Valid values are from 1 through 7.
--- 1. Sunday
--- 1. Monday
--- 1. Tuesday
--- 1. Wednesday
--- 1. Thursday
--- 1. Friday
--- 1. Saturday
---
--- - Setting the weekday property with a value lower or higher will throw an error.
---
--- https://www.luart.org/doc/sys/Datetime-weekday.html
Datetime.weekday = {}


---@type number
--- ***READ/WRITE***
---
--- The Datetime.year property returns a number representing the year of the moment. Valid values are from 1601 through 30827.
--- - Setting the year property with a value lower or higher will throw an error.
---
--- https://www.luart.org/doc/sys/Datetime-year.html
Datetime.year = {}


---Formats the Datetime value as a string.
---@param dateformat? string An optional string representing the format for the date part. For only formatting the time part, use nil in place. The format tokens accepted are :
--- - Year : "y" or "yy" for short format of the Year, and "yyyy" for the long format.
--- - Month :"M" or "MM" for short format of the Month, and "MMMM" for the long format.
--- - Day : "d" or "dd" for short format of the Day, and "dddd" for the long format.
---@param timeformat? string An optional string representing the format for the time part. For only formatting the date part, omit that argument. The format tokens accepted are :
--- - Hours (12-hour clock): "h", or "hh" with a leading zero.
--- - Hours (24-hour clock): "H, or "HH" with aleading zero.
--- - Minutes :"m" or "mm" with a leading zero.
--- - Seconds : "s" or "ss" with a leading zero
--- - Time marker : "t or "tt" for AM/PM time marker.
--- @return string
---
---https://www.luart.org/doc/sys/Datetime-format.html
function Datetime:format(dateformat, timeformat) end

---Returns an interval with the from Datetime value, expressed by default in days.
---@alias expressed "seconds"|"minutes"|"hours"|"days"|"months"|"years"
---@param from Datetime A  Datetime value from where the interval will be calculated, to the current Datetime value.
---@param expressed? expressed
---@return number @Return a number as an interval, expressed in days by default.
---https://www.luart.org/doc/sys/Datetime-interval.html
function Datetime:interval(from, expressed) end
