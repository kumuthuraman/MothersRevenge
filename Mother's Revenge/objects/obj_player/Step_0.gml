/// @description 
// Some of the movement logic taken from https://gamemaker.io/en/tutorials/create-a-platformer-game-with-gml

key_left = keyboard_check(vk_left)
key_right = keyboard_check(vk_right)

//check which direction to move
var _move = key_right - key_left

if _move != 0 then image_xscale = _move

hspeed = _move * move_speed // Move in direction based on key pressed multiplied by movement speed
vspeed = vspeed + fall_speed // Apply fall speed/gravity

//Check to see if player is on floor before jumping
if(keyboard_check_pressed(vk_up) && instance_place(x,y+1,obj_block)){
		vspeed = -jump_speed
}

// Firing
if(canShoot && keyboard_check_pressed(ord("Z"))){
	// Cooldown timer
	canShoot = false
	alarm[0] = 15
	// Check to see which direction the player is facing
	if image_xscale == 1 then bullet_direction = 0 else bullet_direction = 180 
	instance_create_layer(x,y,"Instances",obj_bullet,
	{
		bullet_direction : bullet_direction 
	})
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


