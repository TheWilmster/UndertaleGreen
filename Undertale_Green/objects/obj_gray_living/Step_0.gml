if (leaveroom == true)
{
	image_speed = 0.5;
	vspeed = 2;
	sprite_index = spr_gray_d_n;
	if (y >= 178)
		instance_destroy();
}
