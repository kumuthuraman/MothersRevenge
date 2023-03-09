/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_player) and obj_player.x > 1345) {
		if(canShoot) {
			canShoot = false
			instance_create_layer(x,y,"Instances",obj_speechBubble,
			{
				bullet_direction : point_direction(x,y,obj_player.x,(y-irandom(10)))
			})
		} 
	
		if !(alarm[1] > 0) then alarm[1] = 50 * irandom(3)
	
	}  else {
		canShoot = false
	}