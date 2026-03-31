if (olivegetup == true && !instance_exists(obj_textboxNEW))
{
	olivegetup = false;
	alarm[6] = 20;
	alarm[7] = 93;
	alarm[5] = 105;
	alarm[1] = 130;
}
if (chaiwalktobench == true && !instance_exists(obj_textboxNEW))
{
	sprite_index = spr_chai_walk_l;
	image_speed = 0.2;
	hspeed = -2;
	if (x <= 82)
	{
		hspeed = 0;
		vspeed = 2;
		sprite_index = spr_chai_walk_d;
		if (y >= 240)
		{
			instance_destroy(self);
			global.forest_cutscene = 3;
			obj_player.curr_state = PlayerState.NORMAL;
		}
	}
}
