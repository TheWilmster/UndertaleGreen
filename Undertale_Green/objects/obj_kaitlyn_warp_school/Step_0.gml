if (warptoschool == true && !instance_exists(obj_textboxNEW))
{
	global.school_time_sequence = 3;
	audio_play_sound(snd_car_start_fast, 1, false);
	if (audio_is_playing(snd_forest))
		audio_stop_sound(snd_forest);
	obj_player.curr_state = PlayerState.CUTSCENE;
	instance_create_depth(0, 0, -9999, obj_transition, 
	{
		target_rm: rm_backstage,
		target_marker: "B"
	});
	warptoschool = false;
}
if (warptoeden == true && !instance_exists(obj_textboxNEW))
{
	audio_play_sound(snd_car_start_fast, 1, false);
	obj_player.curr_state = PlayerState.CUTSCENE;
	instance_create_depth(0, 0, -9999, obj_transition, 
	{
		target_rm: rm_eden_driveway,
		target_marker: "A"
	});
	warptoeden = false;
}
