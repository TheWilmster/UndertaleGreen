if (heartbeat == true)
{
	heartrate += 1;
	if (heartrate >= pump)
	{
		audio_play_sound(snd_heartbeat, 1, false, gain);
		heartrate = 0;
	}
	audio_sound_gain(snd_forest_riser, riser, 0);
	pump = (-0.0167897918065816 * (2000 - obj_player.x)) + 32.19946272666219;
	gain = (0.0005372733378106112 * (2000 - obj_player.x)) - 0.07038280725319006;
	riser = (0.00146163215590743 * (2000 - obj_player.x)) - 0.3702801461632156;
}
if (global.forest_cutscene == 2)
	obj_player.curr_state = PlayerState.CUTSCENE;
