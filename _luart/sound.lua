--- @class Sound
local Sound = {}

---@type cone
--- ***READ/WRITE***
---
--- Get or set the sound cone, that controls how sound is attenuated based on the Sound's direction
---
--- https://www.luart.org/doc/audio/Sound-cone.html
Sound.cone = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the sound cursor position in seconds, a value of 0.0 means the start of the sound.
---
--- https://www.luart.org/doc/audio/Sound-cursor.html
Sound.cursor = {}

---@type vector3
--- ***READ/WRITE***
---
--- Get or set the sound direction in the world
---
--- https://www.luart.org/doc/audio/Sound-direction.html
Sound.direction = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the sound doppler effect. This property default value is set to 1.0
---
--- https://www.luart.org/doc/audio/Sound-doppler.html
Sound.doppler = {}


---@type number
--- ***READONLY***
---
--- Get the sound is length in seconds
---
--- https://www.luart.org/doc/audio/Sound-duration.html
Sound.duration = {}


---@type boolean
--- ***READONLY***
---
--- Check if the sound has ended, a boolean value. When the property is true, the end of the sound have been reached.
---
--- https://www.luart.org/doc/audio/Sound-ended.html
Sound.ended = {}


---@type boolean
--- ***READ/WRITE***
---
--- Get or set the sound looping mode, a boolean value. If set to true, the sound will be played again from start once its end have been reached.
---
--- https://www.luart.org/doc/audio/Sound-loop.html
Sound.loop = {}



---@type number
--- ***READ/WRITE***
---
--- Get or set the maximum distance for attentation calculation. This property default value is set to 3.4028234663853e+38
---
--- https://www.luart.org/doc/audio/Sound-maxdistance.html
Sound.maxdistance = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the maximum gain to apply from spatialization. This property default value is set to 1.0
---
--- https://www.luart.org/doc/audio/Sound-maxgain.html
Sound.maxgain = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the minimum distance for attentation calculation. This property default value is set to 3.4028234663853e+38
---
--- https://www.luart.org/doc/audio/Sound-mindistance.html
Sound.mindistance = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the minimum gain to apply from spatialization. This property default value is set to 0.0
---
--- https://www.luart.org/doc/audio/Sound-mingain.html
Sound.mingain = {}



---@type number
--- ***READ/WRITE***
---
--- Get or set the sound pan, number that controls the distribution of the sound in channels. A value of -1.0 means the sound is on the left channel, a value of -1.0 means the sound is on the right channel.
---
--- https://www.luart.org/doc/audio/Sound-pan.html
Sound.pan = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the sound pitch, number that controls the playback speed of the sound. A value of 1.0 means the sound will play at original speed.
---
--- https://www.luart.org/doc/audio/Sound-pitch.html
Sound.pitch = {}


---@type boolean
--- ***READONLY***
---
--- Check if the sound is playing, a boolean value. If the property is true, the sound is currently playing.
---
--- https://www.luart.org/doc/audio/Sound-playing.html
Sound.playing = {}


---@type vector3
--- ***READ/WRITE***
---
--- Get or set the sound position in the world
---
--- https://www.luart.org/doc/audio/Sound-position.html
Sound.position = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the sound current rolloff (speed and direction)
---
--- https://www.luart.org/doc/audio/Sound-rolloff.html
Sound.rolloff = {}


---@type vector3
--- ***READ/WRITE***
---
--- Get or set the sound current velocity (speed and direction)
---
--- https://www.luart.org/doc/audio/Sound-velocity.html
Sound.velocity = {}


---@type number
--- ***READ/WRITE***
---
--- Get or set the sound volume, a linear scale, with 0 results in silence and anything above 1 results in sound amplification.
---
--- https://www.luart.org/doc/audio/Sound-volume.html
Sound.volume = {}


---Apply an echo effect on the sound. Calling this method with an explicit nil will suppress the echo effect.
---@param delay? number A number representing the echo delay in seconds, the time delay between the original sound and its echo.
--- The default value is 0.4
---@param decay? number A number representing the echo delay in seconds, the time it takes for the echo to decay to zero after the sound has stopped emitting.
--- The default value is 0.3
---@param dry? number A number representing the volume adjustment of the original ("dry") sound.
--- The default value is 1.0
---@param wet? number A number representing the volume adjustment of the echo effect ("wet") sound.
--- The default value is 1.0
---
---https://www.luart.org/doc/audio/Sound-echo.html
function Sound:echo(delay, decay, dry, wet) end

--- Gradual increase (fade out) or decrease (fade in) the volume of the sound over a period of time
--- @param from number A number representing the starting volume. A value of 0.0 (the default) means silence. The special value -1 means the current volume
--- @param to number A number representing the ending volume. A value of 1.0 (the default) means maximum volume without amplification.
--- @param duration number A number representing the duration of the fade effect in seconds. The default value is 1.0 second.
---
--- https://www.luart.org/doc/audio/Sound-fade.html
function Sound:fade(from, to, duration) end

---Plays the sound, from its current cursor position
---@param delay number A number representing an optional delay before the sound is played, in milliseconds (defaulting to 0)
---@return Task @This function returns a  Task, that will end when the sound will finish to play. You can cancel the play by calling Task.cancel() if needed.
---
---https://www.luart.org/doc/audio/Sound-play.html
function Sound:play(delay) end

---Apply a reverberation effect on the sound. Calling this method with an explicit nil will suppress the reverb effect.
---@param roomsize number A number representing the virtual room size: 0.0 is like a closet, 1.0 is like a large auditorium. The default value is 0.5
---@param damping number A number representing the absorption of high frequencies in the virtual room: 0.0 means no absorption, 1.0 means maximal absorption. The default value is 0.25
---@param width number A number representing the "width" of the reverb effect : high values create a more "spacious" effect The default value is 1.0 second.
---@param dry number A number representing the volume adjustement of the original ("dry") sound. The default value is 0.0
---@param wet number A number representing the volume adjustement of the reverb ("wet") effect. The default value is 0.33333333333
---
---https://www.luart.org/doc/audio/Sound-reverb.html
function Sound:reverb(roomsize, damping, width, dry, wet) end

--- Moves the sound cursor position
--- @param pos number A number representing the time position on the sound, in seconds.
---
--- https://www.luart.org/doc/audio/Sound-seek.html
function Sound:seek(pos) end

---Plays the sound, from its current cursor position
---@param delay? number A number representing an optional delay before the sound is stopped, in milliseconds (defaulting to 0)
---
--- https://www.luart.org/doc/audio/Sound-stop.html
function Sound:stop(delay) end
