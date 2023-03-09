/// @description player dies


global.lives -= 1

if (global.lives > 0) {
	instance_create_layer(x, y, "Instances", obj_player)
	obj_game.timer = 15
}
