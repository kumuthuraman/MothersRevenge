/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();

if (score >= 100 and image_index = 0) {
	score -= 100
	global.lightningRod = true
	image_index = 1
}
else if (image_index = 1) {
	global.currentWeapon = 5
	image_index = 2
}
