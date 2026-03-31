if (room == rm_school_lot)
{
	if (hspeed == 0 && walk_left == true)
	{
		vspeed = -1;
		sprite_index = spr_chai_walk_u;
		if (y <= 79)
		{
			vspeed = 0;
			alarm_set(1, 30);
			walk_right = true;
			walk_left = false;
		}
	}
	if (walk_right == true)
	{
		hspeed = 1;
		sprite_index = spr_chai_walk_r;
		if (x >= 418)
		{
			sprite_index = spr_chai_walk_u;
			hspeed = 0;
			vspeed = -1;
			if (y <= 56)
				instance_destroy(self);
		}
	}
	if (x > obj_player.x)
		obj_player.follow_chai = true;
}
if (room == rm_hallway1)
{
	if (global.chai_run == true && !instance_exists(obj_textboxNEW))
	{
		vspeed = -4;
		image_speed = 0.2;
		sprite_index = spr_chai_walk_u;
		alarm_set(2, 50);
		global.chai_run = false;
	}
}
