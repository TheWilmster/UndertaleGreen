if (fadeout == true)
	image_alpha -= 0.05;
if (image_alpha == 0)
	fadeout = false;
if (light == true && !instance_exists(obj_textboxNEW))
{
	light = false;
	audio_play_sound(snd_noise, 1, false);
	alarm[0] = 20;
}
if (fadein == true && !instance_exists(obj_textboxNEW))
{
	audio_play_sound(snd_extinguish, 1, false, 1);
	audio_sound_gain(snd_fire_ambience, 0, 500);
	godark = true;
	fadein = false;
	alarm[2] = 40;
}
if (godark == true)
	image_alpha += 0.2;
if (treefall == true && !instance_exists(obj_textboxNEW))
{
	audio_play_sound(snd_treefall, 1, false);
	audio_sound_gain(snd_rain, 0, 1500);
	audio_sound_gain(snd_rain_inside, 1, 1500);
	audio_sound_gain(snd_wind_ambience, 0, 1500);
	treefall = false;
	alarm[3] = 60;
}
if (trip == true && !instance_exists(obj_textboxNEW))
{
	alarm[11] = 30;
	trip = false;
	alarm[4] = 75;
}
if (flashlight == true && !instance_exists(obj_textboxNEW))
{
	flashlight = false;
	audio_play_sound(snd_flashlight_on, 1, false);
	alarm[5] = 5;
	alarm[6] = 125;
}
if (pullup == true && !instance_exists(obj_textboxNEW))
{
	pullup = false;
	audio_play_sound(snd_alaskarun, 1, false);
	runshake = true;
	obj_player.shake = 1;
	alarm[7] = 50;
	alarm[8] = 380;
}
if (skycleaver == true && !instance_exists(obj_textboxNEW))
{
	skycleaver = false;
	audio_play_sound(snd_risershort, 1, false);
	alarm[9] = 60;
	alarm[10] = 250;
}
if (present == true && !instance_exists(obj_textboxNEW))
{
	global.forest_cutscene = 2;
	room_goto(rm_spookyforest);
	instance_destroy(obj_textboxNEW);
	global.msg = [];
}
if (runshake == true)
{
	shakestep += 1;
	if ((shakestep / 8) == floor(shakestep / 8))
		obj_player.shake = 1;
}
