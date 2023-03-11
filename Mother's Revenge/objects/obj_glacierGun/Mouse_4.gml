/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();

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
