/// @description timer

timer -= 1

alarm[0] = 60

if(timer == 0){
	lives = 0;
	room_goto(rm_shop);
	instance_destroy(obj_player);
}