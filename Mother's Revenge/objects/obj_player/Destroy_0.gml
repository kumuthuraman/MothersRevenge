/// @description player dies

sprite_index = spr_playerDies
lives -= 1

if (lives == 0) {
	room_goto(rm_shop)
}
else {
	room_restart()
}