/// @description Cheat Codes

//cheat codes to switch between weapons
if(keyboard_check_pressed(ord("1"))){
	global.currentWeapon = 1
	current_shot = obj_bulletStarter
}

if(keyboard_check_pressed(ord("2"))){
	global.currentWeapon = 2
	current_shot = obj_bulletGlacier
}

if(keyboard_check_pressed(ord("3"))){
	global.currentWeapon = 3
	current_shot = obj_bulletGrenade
}

if(keyboard_check_pressed(ord("4"))){
	global.currentWeapon = 4
	current_shot = obj_bulletSolar
}

if(keyboard_check_pressed(ord("5"))){
	global.currentWeapon = 5
	current_shot = obj_bulletLightning
}

//cheat code to give the player tokens
if(keyboard_check_pressed(ord("T"))){
	score += 100
}
