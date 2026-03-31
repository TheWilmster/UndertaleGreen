bgid = layer_background_get_id("Background");
layer_background_speed(bgid, 0);
layer_background_index(bgid, 0);
diastart = 0;
walkin_cut = false;
if (global.edenroom_entered == false)
	walkin_cut = true;
if (walkin_cut == true)
{
	obj_player.curr_state = PlayerState.INTERACT;
	alarm[0] = 20;
	walkin_cut = false;
}
if (global.eden_dance == true && !audio_is_playing(mus_itseden))
{
	audio_pause_sound(mus_eden_house);
	global.eden_sound = audio_play_sound(mus_itseden, 1, true);
	audio_sound_loop_end(mus_itseden, 44.35);
}
