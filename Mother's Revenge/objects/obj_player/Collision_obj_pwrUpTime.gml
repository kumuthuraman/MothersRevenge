/// @description increase time by 10 seconds

//play sound
audio_play_sound(snd_powerUp, 10, false)

// timer is increased by 10 seconds
obj_game.timer += 10

//powerup instance no longer exists
instance_destroy(other)