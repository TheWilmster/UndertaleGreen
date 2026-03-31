if (!instance_exists(obj_textboxNEW) && progress == 1)
{
	progress = 2;
	obj_player.curr_state = PlayerState.CUTSCENE;
	obj_player.image_speed = 0;
	obj_player.image_index = 0;
	target_rm = rm_vent2;
	target_marker = "A";
	instance_create_depth(0, 0, -9999, obj_transition, 
	{
		target_rm: target_rm,
		target_marker: target_marker
	});
	audio_sound_gain(mus_pitorch_lp, 1, 125);
	audio_sound_gain(mus_pitorch, 0, 125);
	audio_sound_gain(mus_greenroom, 0, 125);
}
