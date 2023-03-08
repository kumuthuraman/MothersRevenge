/// @description Insert description here
// You can write your code in this editor

obj_player.powerUpTimer -= 1

if (obj_player.powerUpTimer == 0) {
	global.shield = false
}
else {
	alarm[0] = 60
}