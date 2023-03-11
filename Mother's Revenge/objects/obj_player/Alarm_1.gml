/// @description timer for x2 powerup

// decreases time
powerUpTimer -= 1

// sets up multiplier value to double coins or to no longer double coins
if (powerUpTimer == 0) {
	global.multiplier = 1
	instance_destroy(otherID)
}
else {
	global.multiplier = 2
	alarm[1] = 60
}