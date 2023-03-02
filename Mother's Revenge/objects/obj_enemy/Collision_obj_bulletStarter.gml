/// @description Take damage when hit by bullet
instance_destroy(other)
hp -= other.bullet_damage

if(hp < 1) {
	instance_destroy()
	instance_create_layer(x,y,"instances",obj_token)
}