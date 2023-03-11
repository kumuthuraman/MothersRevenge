/// @description play background music

// if the player is in the menu room play this sound
if (room == rm_menu) {
	audio_stop_all()
	audio_play_sound(snd_menu, 10, true)
}

// if the player is in the game room play this sound
if (room == rm_game) {
	audio_stop_all()
	audio_play_sound(snd_game, 10, true)
}

// if the player is in the shop room play this sound
if (room == rm_shop) {
	audio_stop_all()
	audio_play_sound(snd_shop, 10, true)
}

// if the player is in the win/credits room
if (room == rm_win_credits) {
	audio_stop_all()
	audio_play_sound(snd_menu, 10, true)
}