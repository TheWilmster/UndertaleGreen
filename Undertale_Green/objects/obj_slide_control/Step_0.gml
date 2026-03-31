if (global.slide == true && !instance_exists(obj_textboxNEW))
{
	obj_player.curr_state = PlayerState.INTERACT;
	global.slide = false;
	audio_sound_gain(mus_pitorch_lp, 0, 125);
	alarm_set(0, 20);
	alarm_set(1, 105);
}
