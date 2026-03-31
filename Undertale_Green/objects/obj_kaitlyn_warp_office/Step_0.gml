if (warptooffice == true && !instance_exists(obj_textboxNEW))
{
	if (audio_is_playing(mus_school_night))
		audio_stop_sound(mus_school_night);
	audio_play_sound(snd_car_start_fast, 1, false);
	obj_player.curr_state = PlayerState.CUTSCENE;
	instance_create_depth(0, 0, -9999, obj_transition, 
	{
		target_rm: rm_office_parking,
		target_marker: "C"
	});
	warptooffice = false;
}
if (warptoeden == true && !instance_exists(obj_textboxNEW))
{
	audio_sound_gain(mus_school_night, 0, 1000);
	audio_play_sound(snd_car_start_fast, 1, false);
	obj_player.curr_state = PlayerState.CUTSCENE;
	instance_create_depth(0, 0, -9999, obj_transition, 
	{
		target_rm: rm_eden_driveway,
		target_marker: "A"
	});
	warptoeden = false;
}
