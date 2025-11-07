---@class Cipher
Cipher = {}

---@type cipher_algorithm
--- ***READONLY***
---
--- The Cipher.algorithm property gets the current algorithm used for encryption/decryption.
--- 
--- https://www.luart.org/doc/crypto/Cipher-algorithm.html
Cipher.algorithm = {}


---@type Buffer
--- ***READONLY***
---
--- The Cipher.decrypted property gets  Buffer value, containing the data decrypted previously by the Cipher:decrypt() method.
--- 
--- https://www.luart.org/doc/crypto/Cipher-decrypted.html
Cipher.decrypted = {}


---@type Buffer
--- ***READONLY***
---
--- The Cipher.encrypted property gets a  Buffer value, containing the data encrypted previously by the Cipher:encrypt() method.
--- 
--- https://www.luart.org/doc/crypto/Cipher-encrypted.html
Cipher.encrypted = {}



--- Decrypt the specified data.
--- @param data Buffer|string A  Buffer or a string containing the data to be decrypted. The Cipher object uses an internal decryption buffer, so that sucessive calls to this method appends the decrypted data to this internal buffer. That permits to decrypt data from various streams easily.
--- Use the property Cipher.decrypted to retrieve the whole decrypted data.
--- @return number @Returns the number of bytes encrypted.
--- 
--- https://www.luart.org/doc/crypto/Cipher-decrypt.html
function Cipher:decrypt(data) end

--- Encrypt the specified data.
--- @param data Buffer|string A  Buffer or a string containing the data to be encrypted. The Cipher object uses an internal encryption buffer, so that sucessive calls to this method appends the encrypted data to this internal buffer. That permits to encrypt data from various streams easily.
--- Use the property Cipher.encrypted to retrieve the whole encrypted data.
--- @return number @Returns the number of bytes encrypted.
--- 
--- https://www.luart.org/doc/crypto/Cipher-encrypt.html
function Cipher:encrypt(data) end


--- Empty and reset the Cipher internal encryption and decryption buffers, to work with new data.
--- 
--- https://www.luart.org/doc/crypto/Cipher-reset.html
function Cipher:reset() end