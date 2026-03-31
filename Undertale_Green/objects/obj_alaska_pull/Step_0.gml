if (start == true)
{
	image_alpha += 0.2;
	if (image_alpha == 1)
	{
		start = false;
		benddown = true;
	}
}
if (benddown == true)
{
	image_speed = 0.5;
	if (image_index == 6)
	{
		image_speed = 0;
		image_index = 6;
		alarm[0] = 5;
		benddown = false;
	}
}
if (shake == false)
{
	x = 296;
	hspeed = 0;
}
if (shake == true)
{
	if (x > (spr_x + 0.5))
		hspeed = -0.4;
	if (x < (spr_x - 0.5))
		hspeed = 0.4;
}
if (pullsuccess == true && image_index == 9)
{
	audio_play_sound(snd_speararise_real, 1, false);
	image_speed = 0;
	pullsuccess = false;
	alarm[3] = 10;
}
if (fallover == true && image_index == 12)
{
	if (audio_is_playing(snd_speararise_real))
		audio_stop_sound(snd_speararise_real);
	audio_play_sound(snd_bigdoor_open, 80, false);
	image_speed = 0.1;
	fallover = false;
	image_index = 12;
	sprite_index = spr_alaska_pull_breathe;
	obj_destiny_cave.image_index = 7;
	alarm[5] = 15;
	movedestiny = false;
}
