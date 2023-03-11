/// @description politician logic

if (instance_exists(obj_player) and obj_player.x > 1345) {
		if(canShoot) {
			instance_create_layer(x,y,"Instances",obj_speechBubble,
			{
				bullet_direction : 180
			})
			alarm[1] = 75
			canShoot = false
		} 
	
		
	
}  