/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();

if (score >= 25 and image_index = 0) {
	score -= 25
	global.greenGrenade = true
	image_index = 1
}
else if (image_index = 1) {
	global.currentWeapon = 3
	image_index = 2
}