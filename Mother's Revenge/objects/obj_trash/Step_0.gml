if (instance_exists(obj_player)) {
	// Speed up if player is on the same y-elevation
	if(y == floor(obj_player.y)) {
		hspeed = (move_speed * 1.25) * sign(image_xscale)
	}  else {
		hspeed = move_speed * sign(image_xscale)
	}


	//Collision with walls
	if(place_meeting(x+hspeed,y,obj_block)){
		//Keep moving closer to wall until touching it
		while(!place_meeting(x+sign(hspeed),y,obj_block)){
			x = x + sign(hspeed)
		}
		hspeed = hspeed * -1
		image_xscale = image_xscale*-1
	}

	//Check to see if at an edge
	if(place_meeting(x+speed,y+1,obj_blockx)){
		image_xscale = image_xscale*-1
		hspeed = hspeed * -1
	}
}
else {
	hspeed = 0
}
