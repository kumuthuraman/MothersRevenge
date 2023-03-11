/// @description player glacier bullet damage

if (takeDamage == true) {
	instance_destroy(other)
	hp -= other.bullet_damage

	if(!isSlowed){
		isSlowed = true
		alarm[0] = 60
		move_speed = move_speed/1.5
		image_blend = make_color_rgb(0,100,255)
	}

	if(hp < 1) {
		instance_destroy()
		instance_create_layer(x,y,"instances",deathAnimation)
	}
}