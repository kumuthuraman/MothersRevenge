/// @description clicking interactions

// Inherit the parent event
event_inherited();

// buys item and decides what sprite index to show based on player decision
if (score >= 10 and image_index = 0) {
	score -= 10
	audio_play_sound(snd_purchase, 10, false)
	global.glacierGun = true
	image_index = 1
}
else if (image_index = 1) {
	global.currentWeapon = 2
	image_index = 2
}
