if (come_out == true)
{
	if (y <= 39)
	{
		vspeed = 1;
	}
	else
	{
		vspeed = 0;
		come_out = false;
	}
}
if (global.rat_ride == 1)
{
	alarm_set(9, 40);
	global.rat_ride = false;
}
if (start_rat == 1)
{
	depth = -bbox_bottom;
	if (next_step == 0)
	{
		go_down = 1;
		end_value = 46;
	}
	if (next_step == 1)
	{
		go_left = 1;
		end_value = 57 + offset;
	}
	if (next_step == 2)
	{
		go_down = 1;
		end_value = 65;
	}
	if (next_step == 3)
	{
		alarm_set(1, 20);
		alarm_set(2, 5);
		alarm_set(6, 15);
		next_step += 1;
	}
	if (next_step == 5)
	{
		go_up = 1;
		end_value = 48.5;
	}
	if (next_step == 6)
	{
		go_right = 1;
		end_value = 175 + offset;
	}
	if (next_step == 7)
	{
		go_up = 1;
		end_value = 48.5;
	}
	if (next_step == 8)
	{
		alarm_set(1, 20);
		alarm_set(3, 5);
		alarm_set(7, 15);
		next_step += 1;
	}
	if (next_step == 10)
	{
		go_right = 1;
		end_value = 233 + offset;
	}
	if (next_step == 11)
	{
		go_down = 1;
		end_value = 96;
	}
	if (next_step == 12)
	{
		go_left = 1;
		end_value = 118 + offset;
	}
	if (next_step == 13)
	{
		go_down = 1;
		end_value = 150;
	}
	if (next_step == 14)
	{
		go_left = 1;
		end_value = 109 + offset;
	}
	if (next_step == 15)
	{
		alarm_set(1, 10);
		alarm_set(4, 5);
		next_step += 1;
	}
	if (next_step == 17)
	{
		go_right = 1;
		end_value = 115 + offset;
	}
	if (next_step == 18)
	{
		go_up = 1;
		end_value = 103;
	}
	if (next_step == 19)
	{
		go_left = 1;
		end_value = 58 + offset;
	}
	if (next_step == 20)
	{
		go_up = 1;
		end_value = 86;
	}
	if (next_step == 21)
	{
		alarm_set(1, 10);
		alarm_set(2, 5);
		next_step += 1;
	}
	if (next_step == 23)
	{
		go_down = 1;
		end_value = 99;
	}
	if (next_step == 24)
	{
		go_right = 1;
		end_value = 115 + offset;
	}
	if (next_step == 25)
	{
		go_down = 1;
		end_value = 150;
	}
	if (next_step == 26)
	{
		go_left = 1;
		end_value = 109 + offset;
	}
	if (next_step == 27)
	{
		alarm_set(1, 30);
		alarm_set(4, 5);
		alarm_set(5, 15);
		alarm_set(8, 25);
		next_step += 1;
	}
	if (next_step == 29)
	{
		go_right = 1;
		end_value = 115 + offset;
	}
	if (next_step == 30)
	{
		go_up = 1;
		end_value = 103;
	}
	if (next_step == 31)
	{
		go_right = 1;
		end_value = 174 + offset;
	}
	if (next_step == 32)
	{
		go_down = 1;
		end_value = 148;
	}
	if (next_step == 33)
	{
		go_right = 1;
		end_value = 234 + offset;
	}
	if (next_step == 34)
	{
		go_down = 1;
		end_value = 181;
	}
	if (next_step == 35)
	{
		global.rat_ride_end = true;
		go_down = 2;
		end_value = 199;
	}
	if (next_step == 36)
	{
		start_rat = 0;
		visible = 0;
		next_step = 0;
	}
}
if (go_down == 1)
{
	vspeed = 6;
	image_index = 4;
	if (y >= end_value)
	{
		vspeed = 0;
		go_down = 0;
		next_step += 1;
	}
}
if (go_down == 2)
{
	vspeed = 6;
	image_index = 0;
	if (y >= end_value)
	{
		vspeed = 0;
		go_down = 0;
		next_step += 1;
	}
}
if (go_up == 1)
{
	vspeed = -6;
	image_index = 5;
	if (y <= end_value)
	{
		vspeed = 0;
		go_up = 0;
		next_step += 1;
	}
}
if (go_left == 1)
{
	hspeed = -6;
	image_index = 7;
	if (x <= end_value)
	{
		hspeed = 0;
		go_left = 0;
		next_step += 1;
	}
}
if (go_right == 1)
{
	hspeed = 6;
	image_index = 6;
	if (x >= end_value)
	{
		hspeed = 0;
		go_right = 0;
		next_step += 1;
	}
}
