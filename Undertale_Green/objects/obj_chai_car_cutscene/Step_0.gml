if (x < 144 && global.intro_cut_parkinglot == true)
{
	hspeed = 0;
	sprite_index = spr_chai_car_cutscene_bounce;
	if (y >= 100)
	{
		vspeed = -2;
	}
	else
	{
		vspeed = 0;
		sprite_index = spr_chai_car_cutscene_up;
		alarm_set(0, 20);
		global.intro_cut_parkinglot = false;
		obj_player.walk_alarm = true;
		image_speed = 0.75;
	}
}
