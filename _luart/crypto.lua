---@class Crypto
crypto = {}

--- @alias cipher_algorithm "aes128"|"aes192"|"aes256"|"des"|"2des"|"3des"|"rc2"|"rc4"

--- The Cipher constructor returns a Cipher instance representing a cryptographic algorithm to be used for encryption/decryption, with the provided key.
--- @param algorithm cipher_algorithm A string representing the algorithm to be used for encryption/decryption :
--- - "aes128" :advanced encryption standard with 128 bits (16 bytes) key length (block cipher)
--- - "aes192" :advanced encryption standard with 192 bits (24 bytes) key length (block cipher)
--- - "aes256" :advanced encryption standard with 256 bits (32 bytes) key length (block cipher)
--- - "des" :data encryption standard with 56 bits (7 bytes) key length (block cipher)
--- - "2des":double data encryption standard with 112 bits (14 bytes) key length (block cipher)
--- - "3des" :triple data encryption standard with 168 bits (21 bytes) key length (block cipher)
--- - "rc2" :Rivest cipher 2 with 40 to 128 bits (5...16 bytes) key length (block cipher)
--- - "rc4" :Rivest cipher 4 with 40 to 128 bits (5...16 bytes) key length (stream cipher)
---@param key string|Buffer A string or a  Buffer value, containing the key. If the key is longer than the expected key length, only the first given bytes are used. An error occurs if the key length is too small.
---@param iv? string|Buffer A optional string or  Buffer value, containing an initialization vector.
---@param mode? "cbc"|"cfb"|"ecb"|"cts" A string representing the algorithm to be used for encryption/decryption :
--- - "cbc": cipher block chaining mode (the default for block algorithms)
--- - "cfb": cipher feedback mode
--- - "ecb": electronic codebook mode
--- - "cts": ciphertext stealing mode
--- @return Cipher
--- 
--- https://www.luart.org/doc/crypto/Cipher-constructor.html
function crypto.Cipher(algorithm, key, iv, mode) end

--- Calculate the Cyclic Redundancy Check (CRC) value of the given data..
--- @param data string|Buffer
--- @return number @Returns a number containing CRC32 checksum.
--- 
--- https://www.luart.org/doc/crypto/crc32.html
function crypto.crc32(data) end


--- Generate binary data with cryptographically random bytes.
--- @param length number A number representing the length in bytes of the data to be generated.
--- @return Buffer @Returns a  Buffer containing the random bytes.
--- 
--- https://www.luart.org/doc/crypto/generate.html
function crypto.generate(length) end


--- Create a hash digest of data, using the specified algorithm.
--- @param algorithm "md5"|"sha1"|"sha256"|"sha384"|"sha512"
--- @param data string|Buffer A string or a  Buffer that contains the data to hash.
--- @return Buffer @Returns a  Buffer containing the hash value as bytes.
--- 
--- https://www.luart.org/doc/crypto/hash.html
function crypto.hash(algorithm, data) end
