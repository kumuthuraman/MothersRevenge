/// @description power up timer

powerUpTimer -= 1

if (powerUpTimer == 0) {
	global.multiplier = 1
	instance_destroy(otherID)
}
else {
	global.multiplier = 2
	alarm[1] = 60
}