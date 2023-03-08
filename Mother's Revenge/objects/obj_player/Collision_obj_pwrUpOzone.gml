/// @description ozone forcefield activated
// You can write your code in this editor

powerUpTimer = 5
global.shield = true
instance_create_layer(x, y, "Instances", obj_ozoneProtection)
instance_destroy(other)