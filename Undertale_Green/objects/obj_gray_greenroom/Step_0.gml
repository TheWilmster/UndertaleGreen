if (walktochai == true)
{
	hspeed = -1;
	sprite_index = spr_gray_l;
	image_speed = 0.1;
	if (x <= 138)
	{
		hspeed = 0;
		sprite_index = spr_gray_d;
		obj_player.cam_go_down2 = true;
		vspeed = 0.75;
		if (y >= 209)
		{
			vspeed = 0;
			image_index = 0;
			image_speed = 0;
			sprite_index = spr_gray_r;
			walktochai = false;
		}
	}
}
if (stormout == true)
{
	sprite_index = spr_gray_stomp;
	image_speed = 0.5;
	if (image_index == 4)
	{
		audio_stop_sound(mus_chai);
		obj_player.shake = 4;
		if (!audio_is_playing(snd_impact))
			audio_play_sound(snd_impact, 1, false);
	}
	if (image_index == 11)
	{
		stormout = false;
		runout = true;
	}
}
if (runout == true)
{
	hspeed = -2;
	sprite_index = spr_gray_l;
	image_speed = 0.2;
	if (x <= 107)
	{
		hspeed = 0;
		sprite_index = spr_gray_u;
		vspeed = -2;
		if (y <= 90)
		{
			vspeed = 0;
			runout = false;
			instance_destroy(self);
		}
	}
}
