/// @description increase lives by 1

// play sound
audio_play_sound(snd_powerUp, 10, false)

// increase lives by 1
global.lives += 1

instance_destroy(other)