if (obj_chest_front.gemrain == false)
{
	timetofall += 1;
	image_angle += rotation;
}
if (y <= -8 && obj_chest_front.gemrain == false)
{
	vspeed = 0;
	hspeed = 0;
}
if (obj_chest_front.gemrain == true && timetofalltoggle == false)
{
	alarm[0] = timetofall;
	timetofalltoggle = true;
}
if (fall == true)
{
	vspeed += 0.3;
	if (x >= 233 && x <= 407 && y >= 365 && bounces == 1)
	{
		hspeed = bounce_hspeed;
		vspeed = bounce_speed / bounces;
		bounces += 1;
		audio_play_sound(snd_bigdoor_open, 1, false);
		obj_heart.shake = 2;
	}
	if (bounces == 2)
		image_angle -= (2 * rotation);
}
