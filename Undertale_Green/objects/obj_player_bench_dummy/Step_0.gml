if (jumpdown == true)
{
	sprite_index = spr_olive_c_down;
	vspeed += 0.75;
	hspeed = 1.6;
	if (x >= 153)
		hspeed = 0;
	if (y >= 169)
	{
		vspeed = 0;
		jumpdown = false;
		audio_play_sound(snd_bigdoor_open, 1, false, 0.5);
	}
}
