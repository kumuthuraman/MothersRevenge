/// @description ozone forcefield activated

audio_play_sound(snd_powerUp, 10, false)
powerUpTimer = 5
global.shield = true
instance_create_layer(x, y, "Instances", obj_ozoneProtection)
instance_destroy(other)