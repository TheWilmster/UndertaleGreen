if (shopkeepintro == true)
	playercut = true;
if (playercut == true)
	obj_player.curr_state = PlayerState.CUTSCENE;
if (shopkeepintro == true && !instance_exists(obj_textboxNEW))
{
	if (audio_is_playing(mus_pitorch_lp))
		audio_sound_gain(mus_pitorch_lp, 0, 250);
	if (audio_is_playing(mus_school_night))
		audio_sound_gain(mus_school_night, 0, 250);
	alarm[0] = 15;
	alarm[2] = 65;
	shopkeepintro = false;
}
if (dooropen == true && !instance_exists(obj_textboxNEW))
{
	alarm[4] = 10;
	alarm[1] = 100;
	dooropen = false;
}
if (shopenter == true && !instance_exists(obj_textboxNEW))
{
	alarm[3] = 10;
	shopenter = false;
}
