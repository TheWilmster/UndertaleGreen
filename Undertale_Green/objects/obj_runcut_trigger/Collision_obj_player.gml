if (!audio_is_playing(snd_howl) && playsound == 0)
{
	audio_play_sound(snd_howl, 1, false);
	alarm[0] = 5;
	alarm[1] = 70;
	alarm[2] = 150;
	alarm[3] = 240;
}
playsound = 1;
obj_player.curr_state = PlayerState.INTERACT;
