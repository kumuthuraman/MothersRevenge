// if the enemy bullet collides into player, player and bullet dies
// unless player has the ozone protection shield
if (global.shield == false) {
	instance_destroy()
}
instance_destroy(other);
