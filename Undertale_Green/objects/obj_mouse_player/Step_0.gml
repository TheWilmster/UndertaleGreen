depth = -bbox_bottom;
if (stop == 1)
{
	fall = 1;
	vspeed = -2;
	obj_player_vent_dummy.vspeed = -2;
	stop = 0;
	obj_player.shake = 2;
	audio_play_sound(snd_fall2, 0, false);
	alarm[0] = 70;
}
if (fall == 1)
{
	vspeed += 0.5;
	image_angle += deathrot;
	hspeed = -deathrot / 2;
}
