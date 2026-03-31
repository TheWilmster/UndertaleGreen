if (walkoff == true)
{
	image_speed = 0.2;
	sprite_index = spr_kaitlyn_eb_r;
	hspeed = 2;
	if (x >= 151)
	{
		hspeed = 0;
		sprite_index = spr_kaitlyn_eb_u;
		vspeed = -2;
	}
}
if (y <= 130)
{
	instance_destroy(obj_alaska_fb);
	instance_destroy(obj_destiny_fb);
	instance_destroy();
}
