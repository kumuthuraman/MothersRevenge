/// @description Insert description here
// You can write your code in this editor


if (instance_exists(obj_player) and obj_player.x > 1345 and obj_player.y < 500 and wave == 1) {
	sprite_index = spr_ceoAtacks // Change sprite to signify invulnerbility
	currentEnemies[0] = instance_create_layer(x, y, "instances", obj_smoke, {fly_path: Path5})
	currentEnemies[1] = instance_create_layer(x, y, "instances", obj_smoke, {fly_path: Path6})
	currentEnemies[2] = instance_create_layer(x, y, "instances", obj_smoke, {fly_path: Path7})
	takeDamage = false
	wave += 1 // Increase wave
}

if (wave == 3) {
	sprite_index = spr_ceoAtacks
	currentEnemies[0] = instance_create_layer(x+50, y+16, "instances", obj_trash)
	currentEnemies[1] = instance_create_layer(x + 75, y+16, "instances", obj_trash)
	takeDamage = false
	wave += 1
}

if (wave == 5) {
	sprite_index = spr_ceoAtacks
	currentEnemies[0] = instance_create_layer(x + 50, y+16, "instances", obj_toxic)
	currentEnemies[1] = instance_create_layer(x + 100, y+16, "instances", obj_trash)
	takeDamage = false
	wave += 1
}

// Check to see if all enemies in a given wave are defeated
for(var i = 0; i < array_length(currentEnemies); i += 1){
	takeDamage = true
	if(instance_exists(currentEnemies[i])){
		takeDamage = false
		break;
	}
}

// Vulnerability phase (last 5 seconds unless on last wave)
if (takeDamage and !waveCoolDown) {
	waveCoolDown = true
	sprite_index = spr_ceoSleep
	alarm[1] = 150
}
