credits = false;
bgid = layer_background_get_id("Background");
image_speed = 4.5;
obj_player.y = 210;
layer_background_speed(bgid, image_speed);
alarm[0] = 150;
if (!audio_is_playing(snd_rain2))
{
	audio_play_sound(snd_rain2, 1, true);
	audio_sound_gain(snd_rain2, 1, 0);
	audio_sound_loop_start(snd_rain2, 0.5);
}
obj_player.visible = false;
audio_stop_sound(snd_forest);
