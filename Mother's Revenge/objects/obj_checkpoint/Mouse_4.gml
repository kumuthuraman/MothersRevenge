/// @description clicking interactions


// Inherit the parent event
event_inherited();

// buys item and decides what sprite index to show based on player decision
if (score >= 50 and image_index = 0) {
	score -= 50
	audio_play_sound(snd_purchase, 10, false)
	global.checkpoint = 1
	image_index = 1
}
else if (image_index = 1) {
	global.checkpoint = 2
	global.first = true
	image_index = 2
}
else if (image_index = 2) {
	global.checkpoint = 1
	global.first = false
	image_index = 1
}