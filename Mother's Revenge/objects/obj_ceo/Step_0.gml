/// @description Insert description here
// You can write your code in this editor


if (instance_exists(obj_player) and obj_player.x > 1345 and obj_player.y < 500 and wave1 == false) {
	sprite_index = spr_ceoAtacks
	instance_create_layer(x, y, "instances", obj_smoke, {fly_path: Path5})
	instance_create_layer(x, y, "instances", obj_smoke, {fly_path: Path6})
	instance_create_layer(x, y, "instances", obj_smoke, {fly_path: Path7})
	wave1 = true
	takeDamage = true
}

if (takeDamage) {
	sprite_index = spr_ceoSleep
	alarm[1] = 300
}
