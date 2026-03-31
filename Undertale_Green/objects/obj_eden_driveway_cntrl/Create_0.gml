bgid = layer_background_get_id("Background");
layer_background_speed(bgid, 0);
layer_background_index(bgid, 0);
global.school_time_sequence = 4;
audio_stop_sound(mus_eden_house);
if (!audio_is_playing(snd_forest))
{
	audio_play_sound(snd_forest, 2, true, 1);
	audio_sound_gain(snd_forest, 0, 0);
}
audio_sound_gain(snd_forest, 0.2, 500);
if (global.eden_drivewaycut == true)
{
	obj_player.curr_state = PlayerState.CUTSCENE;
	obj_player.facing = 1;
	alarm[0] = 35;
}
driveway1 = false;
driveway2 = false;
driveway3 = false;
driveway4 = false;
driveway5 = false;
