/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();

if (score >= 50 and image_index = 0) {
	score -= 50
	global.checkpoint = 1
	image_index = 1
}
else if (image_index = 1) {
	global.checkpoint = 2
	image_index = 2
}