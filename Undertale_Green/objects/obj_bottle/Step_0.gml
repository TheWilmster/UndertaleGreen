if (tip_over == 1)
{
	tip_frame += 1.17;
	image_angle += (20 - tip_frame);
	if (image_angle >= 160)
	{
		alarm_set(1, 1);
		tip_over = 0;
	}
}
if (shake_bottle == 1 && shake_count < shake_number)
{
	if (y == 130)
	{
		vspeed = -2;
		shake_count += 1;
		instance_create_depth(x - 19, y + 65, depth + 1, obj_droplet);
	}
}
if (shake_bottle == 1 && y <= 110)
	vspeed = 4;
if (falling == 1)
{
	vspeed += 0.5;
	image_angle -= 1.8;
	if (y >= 350)
	{
		obj_heart.shake = 4;
		audio_play_sound(snd_glassbreak, 1, false);
		instance_create_depth(x - 30, y + 16, depth + 1, obj_bottlepiece1);
		instance_create_depth(x - 30, y - 16, depth + 1, obj_bottlepiece2);
		instance_create_depth(x + 15, y - 16, depth + 1, obj_bottlepiece3);
		instance_create_depth(x + 30, y + 16, depth + 1, obj_bottlepiece4);
		instance_destroy();
	}
}
if (shake_bottle == 1 && shake_count >= shake_number)
{
	if (y <= 110)
		vspeed = 4;
	if (y >= 130)
	{
		vspeed = 0;
		shake_bottle = 0;
		alarm_set(2, 20);
		instance_create_depth(x - 16, y + 65, depth + 1, obj_droplet);
	}
}
