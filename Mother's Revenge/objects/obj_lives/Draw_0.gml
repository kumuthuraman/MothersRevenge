/// @description draw sprites


// Inherit the parent event
event_inherited();

// decides what sprite to display
if (global.boughtLives == 0) {
	image_index = 0
}
else if (global.boughtLives == 1) {
	image_index = 1
}
else if (global.boughtLives == 2) {
	image_index = 2
}
else if (global.boughtLives == 3) {
	image_index = 3
}