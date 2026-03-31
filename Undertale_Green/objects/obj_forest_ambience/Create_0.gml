heartbeat = false;
if (global.forest_cutscene == 1)
{
	heartbeat = true;
	heartrate = 0;
	pump = 30;
	gain = 0;
	riser = 0;
	audio_play_sound(snd_forest_riser, 0, true);
	audio_sound_gain(snd_forest_riser, 0, 0);
}
if (global.forest_cutscene == 2)
{
	obj_player.visible = false;
	obj_player.facing = 3;
	obj_player.x = obj_markerC.x - (obj_player.sprite_width / 2);
	obj_player.y = obj_markerC.y - 2;
	obj_player.curr_state = PlayerState.CUTSCENE;
	audio_stop_all();
}
if (!audio_is_playing(snd_forest) && global.forest_cutscene == 2)
	audio_play_sound(snd_forest, 1, true);
audio_sound_gain(snd_forest, 0.65, 3000);
