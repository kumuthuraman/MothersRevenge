/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_player) and obj_player.x > 1345) {
		if(canShoot) {
			instance_create_layer(x,y,"Instances",obj_speechBubble,
			{
				bullet_direction : 180
			})
			alarm[1] = 50
			canShoot = false
		} 
	
		
	
}  