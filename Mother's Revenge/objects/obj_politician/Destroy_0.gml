/// @description politician dies

instance_destroy()
audio_stop_sound(snd_polSound)
instance_create_layer(x, y, "Instances", deathAnimation)