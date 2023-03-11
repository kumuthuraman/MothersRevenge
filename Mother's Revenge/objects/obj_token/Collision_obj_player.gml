// if player collides with coin, score increases and coin is collected
instance_destroy()
score += (1 * global.multiplier)
audio_play_sound(snd_coin, 10, false)