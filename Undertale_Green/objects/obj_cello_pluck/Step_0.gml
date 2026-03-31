if (obj_player.curr_state == PlayerState.NORMAL && place_meeting(x, y, obj_player) && keyboard_check_pressed(ord("Z")))
{
	if (!audio_is_playing(snd_cellopluck))
		audio_play_sound(snd_cellopluck, 0, false, 4);
}
