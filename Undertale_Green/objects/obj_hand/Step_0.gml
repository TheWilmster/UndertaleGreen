if (follow_player == true)
	y = obj_heart.y + 80;
if (follow_player == false && windup == true)
{
	image_angle -= 1.5;
	if (image_angle <= -16)
	{
		windup = false;
		throwstart = true;
	}
}
if (throwstart == true)
{
	image_angle += 2;
	if (image_angle >= -8 && image_index == 0)
	{
		image_index = 1;
		instance_create_depth(x + 30, y - 40, depth - 1, obj_spear);
	}
	if (image_angle >= 0)
	{
		throwstart = false;
		alarm_set(1, 30);
	}
}
if (fadeout == true)
	image_alpha -= 0.1;
