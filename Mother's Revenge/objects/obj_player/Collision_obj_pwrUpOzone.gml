/// @description ozone forcefield activated

// play sound
audio_play_sound(snd_powerUp, 10, false)

// time for powerup
powerUpTimer = 5

// player is invincible using the ozone shield for 5 seconds
global.shield = true
instance_create_layer(x, y, "Instances", obj_ozoneProtection)
instance_destroy(other)