randomize();
if (obj_player.curr_state == PlayerState.NORMAL && place_meeting(x, y, obj_player) && keyboard_check_pressed(ord("Z")))
{
	choice = choose(1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
	if (!audio_is_playing(snd_flush) && !audio_is_playing(snd_flush_high) && !audio_is_playing(snd_flushtale_green) && !audio_is_playing(snd_flushtale))
	{
		times += 1;
		if (times < 3)
			audio_play_sound(snd_flush, 0, false);
		else if (choice == 2)
			audio_play_sound(snd_flushtale_green, 0, false);
		else if (choice == 3)
			audio_play_sound(snd_flushtale, 0, false);
		else
			audio_play_sound(snd_flush, 0, false);
	}
}
