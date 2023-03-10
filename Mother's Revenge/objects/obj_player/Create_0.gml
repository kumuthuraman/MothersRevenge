canShoot = true

if (global.checkpoint == 2 and global.politicianDefeat == true) {
	if (global.first) {
		x = 64
		y = 512
		view_visible[1] = true
		global.first = false
	}
	else {
		x = x
		y = y
		view_visible[1] = true
	}
}

global.shield = true
instance_create_layer(x, y, "Instances", obj_ozoneProtection)