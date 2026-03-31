if (fadein == true)
	image_alpha += 0.1;
if (y > 320)
	shoot_bounce_y = true;
if (left == true && x > 320)
	shoot_bounce_x = true;
if (right == true && x < 320)
	shoot_bounce_x = true;
if (shoot_bounce_x == true)
{
	if (x <= ((320 - (obj_enemy_chai.lightning_boundaries / 2)) + 15) || x >= ((320 + (obj_enemy_chai.lightning_boundaries / 2)) - 15))
	{
		hspeed = -hspeed;
		audio_play_sound(snd_swallow, 1, false);
	}
}
if (shoot_bounce_y == true)
{
	if (y <= 267.5 || y >= 372.5)
	{
		vspeed = -vspeed;
		audio_play_sound(snd_swallow, 1, false);
	}
}
