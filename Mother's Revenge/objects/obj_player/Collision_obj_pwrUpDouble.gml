/// @description doubles coin value

// play sound
audio_play_sound(snd_powerUp, 10, false)

// time for powerup, hide powerup until time is up then destroy powerup
powerUpTimer = 5
otherID = instance_id_get(other)
other.visible = false

alarm[1] = 60