/// @description clicking interactions


// Inherit the parent event
event_inherited();

// buys item and decides what sprite index to show based on player decision
if (score >= 10 and image_index = 0) {
	score -= 10
	audio_play_sound(snd_purchase, 10, false)
	global.lives = 2
	global.boughtLives = 1
	image_index = 1
}
else if (score >= 25 and image_index = 1) {
	score -= 25
	audio_play_sound(snd_purchase, 10, false)
	global.lives = 3
	global.boughtLives = 2
	image_index = 2
}
else if (score >= 50 and image_index = 2) {
	score -= 50
	audio_play_sound(snd_purchase, 10, false)
	global.lives = 4
	global.boughtLives = 3
	image_index = 3
}