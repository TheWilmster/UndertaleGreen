if (global.greenroomcuttransition == true && !instance_exists(obj_textboxNEW))
{
	audio_sound_gain(mus_greenroom, 1, 125);
	audio_sound_gain(mus_art_center, 0, 125);
	obj_player.curr_state = PlayerState.CUTSCENE;
	instance_create_depth(0, 0, -9999, obj_transition, 
	{
		target_rm: rm_greenroom,
		target_marker: "F"
	});
	global.greenroomcuttransition = false;
}
if (startshake == true)
{
	shake = true;
	startshake = false;
	alarm[3] = 8;
	audio_play_sound(snd_noise, 0.5, false);
}
if (shake == true)
{
	if (x > 197)
		hspeed = -0.5;
	if (x < 197)
		hspeed = 0.5;
}
if (shake == false)
{
	hspeed = 0;
	x = 197;
}
