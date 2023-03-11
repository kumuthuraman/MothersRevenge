/// @description play politician sound if ceo is in view of player
if (obj_player.x > 1345 and obj_player.y < 500) {
	audio_play_sound(snd_ceoSound, 10, true)
}