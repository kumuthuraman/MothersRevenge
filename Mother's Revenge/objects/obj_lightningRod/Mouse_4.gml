/// @description clicking interactions


// Inherit the parent event
event_inherited();

// buys item and decides what sprite index to show based on player decision
if (score >= 100 and image_index = 0) {
	score -= 100
	audio_play_sound(snd_purchase, 10, false)
	global.lightningRod = true
	image_index = 1
}
else if (image_index = 1) {
	global.currentWeapon = 5
	image_index = 2
}
