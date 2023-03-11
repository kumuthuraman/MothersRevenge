/// @description increase lives by 1

audio_play_sound(snd_powerUp, 10, false)
global.lives += 1

instance_destroy(other)