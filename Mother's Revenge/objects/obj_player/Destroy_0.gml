/// @description player dies


global.lives -= 1

if (global.lives > 0) {
	instance_create_layer(x, y, "Instances", obj_player)
	obj_game.timer = 15
}

//Restarts if player loses all lives
if(global.lives == 0){
	room_goto(rm_shop);
}