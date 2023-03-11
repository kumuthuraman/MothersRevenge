/// @description draw sprites


// Inherit the parent event
event_inherited();

// buys item and decides what sprite index to show based on player decision
if (global.checkpoint = 2) {
	image_index = 2
}
else if (global.checkpoint = 1) {
	image_index = 1
}