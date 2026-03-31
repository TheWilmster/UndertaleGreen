if (x >= 263)
	instance_destroy();
if (stop == 1)
{
	fall = 1;
	vspeed = -2;
	stop = 0;
	audio_play_sound(snd_bigdoor_open, 0, false, 0.4);
	hspeed = 0;
	alarm[0] = 70;
}
if (fall == 1)
{
	vspeed += 0.5;
	image_angle += deathrot;
	hspeed = -deathrot / 2;
}
