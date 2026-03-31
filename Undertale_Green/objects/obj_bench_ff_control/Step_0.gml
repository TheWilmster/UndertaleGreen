layer_background_speed(bgid, image_speed);
if (!audio_is_playing(snd_rain2) && !instance_exists(obj_end_credits))
{
	audio_play_sound(snd_rain2, 1, true);
	audio_sound_gain(snd_rain2, 1, 0);
	audio_sound_loop_start(snd_rain2, 0.5);
}
obj_player.curr_state = PlayerState.CUTSCENE;
if (credits == true && !instance_exists(obj_textboxNEW))
{
	alarm[1] = 170;
	credits = false;
}
