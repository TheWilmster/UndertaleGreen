global.slowfade = false;
if (global.office_cutscene == false)
	instance_destroy();
if (global.forest_cutscene != 1)
	instance_destroy();
global.school_time_sequence = 4;
audio_sound_gain(snd_car_hum, 0, 2000);
obj_player.visible = true;
officecont1 = false;
officecont2 = false;
officecont3 = false;
alarm[0] = 40;
if (!audio_is_playing(snd_forest))
	audio_play_sound(snd_forest, 1, true, 0.4);
if (audio_is_playing(snd_forest_riser))
	audio_stop_sound(snd_forest_riser);
audio_sound_gain(snd_forest, 0.45, 3000);
