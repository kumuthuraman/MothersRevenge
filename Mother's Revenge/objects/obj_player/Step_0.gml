/// @description 
// Some of the movement logic taken from https://gamemaker.io/en/tutorials/create-a-platformer-game-with-gml

key_left = keyboard_check(vk_left)
key_right = keyboard_check(vk_right)

//check which direction to move
var _move = key_right - key_left

//Animation for movement
switch(global.currentWeapon){
	case 1:
		current_shot = obj_bulletStarter
		if (_move!= 0) {
			image_xscale = _move 
			sprite_index = spr_playerStarterRun
		} else {
			sprite_index = spr_playerStarter
		}
		break
	case 2:
		current_shot = obj_bulletGlacier
		if (_move!= 0) {
			image_xscale = _move 
			sprite_index = spr_playerGlacierRun
		} else {
			sprite_index = spr_playerGlacier
		}
		break
	case 3:
		current_shot = obj_bulletGrenade
		if (_move!= 0) {
			image_xscale = _move 
			sprite_index = spr_playerGrenadeRun
		} else {
			sprite_index = spr_playerGrenade
		}
		break
	case 4:
		current_shot = obj_bulletSolar
		if (_move!= 0) {
			image_xscale = _move 
			sprite_index = spr_playerSolarRun
		} else {
			sprite_index = spr_playerSolar
		}
		break
	case 5:
		current_shot = obj_bulletLightning
		if (_move!= 0) {
			image_xscale = _move 
			sprite_index = spr_playerLightningRun
		} else {
			sprite_index = spr_playerLightning
		}
		break
}

hspeed = _move * move_speed // Move in direction based on key pressed multiplied by movement speed
vspeed = vspeed + fall_speed // Apply fall speed/gravity

//Check to see if player is on floor before jumping
if(keyboard_check_pressed(vk_up) && instance_place(x,y+1,obj_block)){
		vspeed = -jump_speed
}

//timer
if (obj_game.timer == 0) {
	instance_destroy()
}

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

// Firing
if(canShoot && keyboard_check_pressed(ord("Z"))){
	canShoot = false
	// Check to see which direction the player is facing
	if image_xscale == 1 then bullet_direction = 0 else bullet_direction = 180 
	instance_create_layer(x,y,"Instances",current_shot,
	{
		bullet_direction : bullet_direction 
	})
	// Cooldown timer
	alarm[0] = current_shot.cool_down
}

//Collision with walls
if(place_meeting(x+hspeed,y,obj_block)){
	//Keep moving closer to wall until touching it
	while(!place_meeting(x+sign(hspeed),y,obj_block)){
		x = x + sign(hspeed)
	}
	hspeed = 0
}

//Vertical collision
if(place_meeting(x,y+vspeed,obj_block)){
	//Keep moving closer to floor/ceiling until touching it
	while(!place_meeting(x,y+sign(vspeed),obj_block)){
		y = y + sign(vspeed)
	}
	vspeed = 0
}

//Make hidden areas disappear and appear
if(place_meeting(x, y, obj_hidden)) {
	layer_set_visible("tile_hidden1", false)
	layer_set_visible("tile_hidden2", false)
	layer_set_visible("tile_hidden3", false)
}
else {
	layer_set_visible("tile_hidden1", true)
	layer_set_visible("tile_hidden2", true)
	layer_set_visible("tile_hidden3", true)
}

//Restarts if player loses all lives
if(global.lives == 0){
	instance_destroy();
	room_goto(rm_shop);
}