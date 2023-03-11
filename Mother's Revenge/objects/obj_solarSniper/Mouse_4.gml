/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();

if (score >= 50 and image_index = 0) {
	score -= 50
	audio_play_sound(snd_purchase, 10, false)
	global.solarSniper = true
	image_index = 1
}
else if (image_index = 1) {
	global.currentWeapon = 4
	image_index = 2
}
if (global.solarSniper = true and global.currentWeapon != 4) {
	image_index = 1
}