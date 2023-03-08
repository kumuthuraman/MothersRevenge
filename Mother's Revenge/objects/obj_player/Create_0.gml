canShoot = true

if (global.checkpoint == 2) {
	x = 64
	y = 512
	view_visible[1] = true
}

global.shield = true
instance_create_layer(x, y, "Instances", obj_ozoneProtection)