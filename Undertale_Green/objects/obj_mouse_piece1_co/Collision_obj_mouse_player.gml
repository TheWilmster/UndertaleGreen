if (has_collided == 0)
{
	with (obj_mouse_player)
	{
		if (fall == 0)
		{
			stop = 1;
			hspeed = 0;
			vspeed = 0;
			audio_play_sound(snd_bigdoor_open, 1, false);
			audio_stop_sound(mus_rat_ride_reprise);
		}
	}
}
has_collided = 1;
