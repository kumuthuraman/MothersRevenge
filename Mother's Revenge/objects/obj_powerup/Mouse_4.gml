/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();

if (score >= 5 and image_index = 0) {
	score -= 5
	global.powerUp = 1
	image_index = 2
}
else if (score >= 15 and image_index = 2) {
	score -= 15
	global.powerUp = 1.5
	image_index = 4
}
else if (score >= 25 and image_index = 4) {
	score -= 25
	global.powerUp = 2
	image_index = 5
}