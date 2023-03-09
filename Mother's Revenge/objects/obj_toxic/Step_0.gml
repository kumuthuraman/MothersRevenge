
if(y == floor(obj_player.y)) {
	hspeed = 0
	
	if(canShoot) {
		canShoot = false
		instance_create_layer(x,y,"Instances",obj_enemyBullet,
		{
			bullet_direction : point_direction(x,y,obj_player.x,obj_player.y)
		})
	} 
	
	if !(alarm[1] > 0) then alarm[1] = 45
	
}  else {
	canShoot = false
	if hspeed == 0 then hspeed = move_speed * image_xscale
	hspeed = move_speed * sign(hspeed)
}

//Collision with walls
if(place_meeting(x+hspeed,y,obj_block)){
	//Keep moving closer to wall until touching it
	while(!place_meeting(x+sign(hspeed),y,obj_block)){
		x = x + sign(hspeed)
	}
	hspeed = hspeed * -1
	image_xscale = image_xscale * -1
}

//Check to see if at an edge
if(!place_meeting(x+hspeed,y+1,obj_block)){
	hspeed = hspeed * -1
	image_xscale = image_xscale * -1
}


