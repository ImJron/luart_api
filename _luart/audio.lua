---@class vector3
---@field x number
---@field y number
---@field z number

---@class cone
---@field inangle number
---@field outangle number
---@field outgain number

---@alias audioFormat "wav"|"mp3"|"aac"
---@class audio
---The audio module plays and records audio using any audio device
---
--- [https://www.luart.org/doc/audio/index.html](https://www.luart.org/doc/audio/index.html)
local audio = {}
audio.record = {}

---@type number
--- ***READONLY***
---
--Get the current audio device number of channels, as a number.
--1 channel device will play sounds in "mono", while 2 channels device will play sounds in "stereo" and more channels will play sounds in "surround"
--
---[https://www.luart.org/doc/audio/channels.html](https://www.luart.org/doc/audio/channels.html)
audio.channels = 0

---@type cone
--- ***READ/WRITE***
---
---Get or set the listener cone, that controls how sound is attenuated based on the listener's direction
---
---[https://www.luart.org/doc/audio/cone.html](https://www.luart.org/doc/audio/cone.html)
audio.cone = {}

--- ***READONLY***
---
--- Get the list of detected audio devices, as a table, that contains the following fields :
--- - "playback": to get a table that lists audio playing devices.
--- - "recording": to get a table that lists audio recoding devices.
---
---[https://www.luart.org/doc/audio/devices.html](https://www.luart.org/doc/audio/devices.html)
audio.devices = {
    --- list of audio playing devices
    playback = {},

    --- list of audio recording devices
    recording = {}
}

---@type vector3
--- ***READ/WRITE***
---
--- Get or set the listener direction in the world
---
---[https://www.luart.org/doc/audio/devices.html](https://www.luart.org/doc/audio/devices.html)
audio.direction = {}

---@type number
--- ***READ/WRITE***
---
--- Get or set the master gain, the global loudness of sounds in decibels. This property provides global amplification of sounds.
---
---[https://www.luart.org/doc/audio/gain.html](https://www.luart.org/doc/audio/gain.html)
audio.gain = {}

---@type string
--- ***READ/WRITE***
---
--- Get or set the current audio playing device, as a string
---
---[https://www.luart.org/doc/audio/playdevice.html](https://www.luart.org/doc/audio/playdevice.html)
audio.playdevice = {}


---@type vector3
--- ***READ/WRITE***
---
--- Get or set the listener position in the world
---
--- [https://www.luart.org/doc/audio/position.html](https://www.luart.org/doc/audio/position.html)
audio.position = {}

---@type string
--- ***READ/WRITE***
---
--- Get or set the current audio recording device, as a string
---
--- [https://www.luart.org/doc/audio/recdevice.html](https://www.luart.org/doc/audio/recdevice.html)
audio.recdevice = {}


---@type number
--- ***READONLY***
---
--- Get the current audio device sample rate, as a number. The audio sample rate is measured in hertz (Hz) and it determines the sound quality
---
--- [https://www.luart.org/doc/audio/samplerate.html](https://www.luart.org/doc/audio/samplerate.html)
audio.samplerate = {}


---@type vector3
--- ***READ/WRITE***
---
--- Get or set the listener current velocity (speed and direction)
---
--- [https://www.luart.org/doc/audio/velocity.html](https://www.luart.org/doc/audio/velocity.html)
audio.velocity = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the global master volume, a linear scale, with 0 results in silence and anything above 1 results in amplification.
---
--- [https://www.luart.org/doc/audio/volume.html](https://www.luart.org/doc/audio/volume.html)
audio.volume = {}


---@type vector3
--- ***READ/WRITE***
---
--- Get or set the listener worldup
---
--- [https://www.luart.org/doc/audio/worldup.html](https://www.luart.org/doc/audio/worldup.html)
audio.worldup = {}


--- Plays the specified sound.
---@param file file|string A File or a filename as a string representing the file to load the sound from.
---
---[https://www.luart.org/doc/audio/play.html](https://www.luart.org/doc/audio/play.html)
function audio.play(file) return end

---Starts a new audio recording session.
---@param file file|string
---@param format audioFormat An optional string that indicates the audio encoding format of the specified file
---@param channels? number An optional number indicating the number of channels that will be recorded, defaulting to 2.
---@param samplerate? number An optional number indicating the number of channels that will be recorded, defaulting to 44100.
---@param bitrate? number An optional number indicating the amount of data processed per unit of time in the audio file, defaulting to:
-- - WAV format : 0
-- - MP3 format : 128
-- - AAC format : 96
---@return boolean @a boolean value, which indicates whether the recording session started successfully.
---
---[https://www.luart.org/doc/audio/record-start.html](https://www.luart.org/doc/audio/record-start.html)
function audio.record.start(file, format, channels, samplerate, bitrate) return end

---Stops the current audio recording session.
---
---[https://www.luart.org/doc/audio/record-stop.html](https://www.luart.org/doc/audio/record-stop.html)
function audio.record.stop() return end

---The Sound constructor returns a Sound instance representing a binary sample data loaded from a file.
--- The audio module support the following file types :
--- - WAV (Waveform Audio file format) *.wav
--- - MP3 (Moving Picture Experts Group Layer 3) *.mp3
--- - FLAC (Free Lossless Audio Codec) *.flac
--- - OGG VORBIS *.ogg
---@param file File|string A  File or a filename as a string representing the file to load the sound from.
---@param nodecoding? boolean A boolean value that prevent decoding of the binary sample when set to true.The sound will be decoded later (with a risk of performance hit). If set to false (the default value), the binary sample will be decoded during load time.
---@param nopitch? boolean A boolean value that prevent using pitching/doppler effect on the sound when set to true (provides better optimization). If set to false (the default value), pitching and doppler effect will be available for this sound.
---@param nospatial? boolean A boolean value that prevent to use spatialization on the sound when set to true (provides better optimization). If set to false (the default value), spatialization will be available for this sound.
---@return Sound
---
---https://www.luart.org/doc/audio/Sound-constructor.html
function audio.Sound(file, nodecoding, nopitch, nospatial) end

return audio
