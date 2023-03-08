/// @description player dies

sprite_index = spr_playerDies
global.lives -= 1

if (global.lives == 0) {
	room_goto(rm_shop)
}
else {
	instance_create_layer(x, y, "Instances", obj_player)
}
