/// @description ceo dies

instance_destroy()
audio_stop_sound(snd_ceoSound)
instance_create_layer(x, y, "instances", obj_ceo_death)

