/// @description draw sprites

// Inherit the parent event
event_inherited();

// decides what sprite to display
if (global.glacierGun = true and global.currentWeapon != 2) {
	image_index = 1
}
else if (global.currentWeapon == 2) {
	image_index = 2
}