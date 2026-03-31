credits = false;
bgid = layer_background_get_id("Background");
ebott1 = false;
ebott2 = false;
audio_stop_sound(snd_rain);
alarm[0] = 150;
if (!audio_is_playing(snd_wind_ambience))
{
	audio_play_sound(snd_wind_ambience, 1, true);
	audio_sound_gain(snd_wind_ambience, 0.9, 0);
}
obj_player.visible = false;
audio_stop_sound(snd_forest);
