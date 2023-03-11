/// @description play background music

if (room == rm_menu) {
	audio_stop_all()
	audio_play_sound(snd_menu, 10, true)
}

if (room == rm_game) {
	audio_stop_all()
	audio_play_sound(snd_game, 10, true)
}

if (room == rm_shop) {
	audio_stop_all()
	audio_play_sound(snd_shop, 10, true)
}