if (has_collided == 0)
{
	if (fall == 0)
	{
		stop = 1;
		hspeed = 0;
		vspeed = 0;
		audio_play_sound(snd_bigdoor_open, 1, false, 0.4);
	}
}
has_collided = 1;
