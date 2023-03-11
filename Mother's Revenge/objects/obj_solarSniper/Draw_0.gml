/// @description draw sprites

// Inherit the parent event
event_inherited();

// decides what sprite index to display
if (global.solarSniper = true and global.currentWeapon != 4) {
	image_index = 1
}
else if (global.currentWeapon == 4) {
	image_index = 2
}