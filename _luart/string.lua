---  The string module provides powerful functions for string manipulation
--- https://www.luart.org/doc/string/index.html

--- Capitalize the string : All letters are lowered except the first character of the string.
--- @param str string A string that will be capitalized.
--- - This function will try to capitalize the string, even for UTF8 characters.
--- @return string @Returns a new string with the same content but capizalized.
---
--- https://www.luart.org/doc/string/capitalize.html
function string.capitalize(...) end

--- Gets the bytes of an UTF8 string
---
--- @see string.byte
function string.ubyte(...) end

--- Get an UTF8 string from successive bytes	
---
--- @see string.char
function string.uchar(...) end

--- Search for the first pattern in an UFT8 string	
---
--- @see string.find
function string.ufind(...) end

--- Get an UTF8 pattern matching iterator
---
--- @see string.gmatch
function string.gumatch(...) end

--- Get a new UTF8 string after a global pattern substitution
---
--- @see string.gsub
function string.gusub(...) end

--- Get an UTF8 string match from a pattern	
---
--- @see string.sub
function string.usub(...) end

--- Normalize the string : All accentued characters are replaced by non accentued ones.
--- @return string
---
--- https://www.luart.org/doc/string/normalize.html
function string.normalize(...) end

--- Get a new reversed UTF8 string
---
--- @see string.reverse
function string.ureverse(...) end

--- Calculate the similarity between two strings, using Levenshtein distance algorithm.
--- @return number @Returns a number between 0 (no similarity at all) and 100 (strings are the same)
---
--- https://www.luart.org/doc/string/similarity.html
function string.similarity(str1, str2) end

--- Splits a string into substrings by a separator.
--- @param str string The string that will be divided into substrings.
--- @param separator string A string that will be used as a separator to divide the string into substrings.
--- @return table @Returns a list of substrings as a table.
---
--- This function can split ASCII or UTF8 encoded strings.
---
--- https://www.luart.org/doc/string/split.html
function string.split(str, separator) end

--- Gets the length in characters of the provided UTF8 string.
--- @param str string The UTF8 string whose length will be returned
--- @return number @Returns the number of characters.
---
--- https://www.luart.org/doc/string/ulen.html
function string.ulen(str) end

--- Search an UTF8 string for the first occurence of a substring, using plain text (no patterns). Faster than string.ufind()
--- @param str string
--- @param substring string
--- @param start? number An optional number indicating where to start the search. Its default value is 1 and canbe negative.
--- @return number startPosition
--- @return number endPosition
---
--- If the function finds a match, it returns two number : the character position where this occurrence starts and ends. If the sub-string has not been found, it returns nil.
---
--- https://www.luart.org/doc/string/usearch.html
function string.usearch(str, substring, start) end
