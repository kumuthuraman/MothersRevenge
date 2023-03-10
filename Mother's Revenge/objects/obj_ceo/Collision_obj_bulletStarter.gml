/// @description Insert description here
// You can write your code in this editor

if (takeDamage == true) {
	instance_destroy(other)
	hp -= other.bullet_damage
	image_blend = make_color_rgb(255,100,100)
	alarm[2] = 5

	if(hp < 1) {
		instance_destroy()
		instance_create_layer(x,y,"instances",deathAnimation)
	}
}
