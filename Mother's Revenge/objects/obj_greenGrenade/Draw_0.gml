/// @description draw sprites


// Inherit the parent event
event_inherited();

// decides what sprite to display
if (global.greenGrenade = true and global.currentWeapon != 3) {
	image_index = 1
}
else if (global.currentWeapon == 3) {
	image_index = 2
}