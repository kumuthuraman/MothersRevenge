// initialize player variables
canShoot = true

// initialize player startpoints with/without checkpoint
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

// allows player invincibility using the ozone shield for 5 seconds
global.shield = true
instance_create_layer(x, y, "Instances", obj_ozoneProtection)