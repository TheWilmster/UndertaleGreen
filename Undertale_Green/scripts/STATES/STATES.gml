function state_normal()
{
	if (!instance_exists(obj_menu) && !instance_exists(obj_textboxNEW))
		menu = keyboard_check_pressed(ord("C"));
	interact = keyboard_check_pressed(ord("Z")) && !keyboard_check_pressed(ord("C"));
	hsp = 0;
	vsp = 0;
	x_meet = 0;
	y_meet = 0;
	interact_d = 0;
	interact_r = 0;
	interact_u = 0;
	interact_l = 0;
	if (!up && !down)
		vsp = 0;
	if (!left && !right)
		hsp = 0;
	if (right)
	{
		hsp = hwalkspeed;
		pressdir = 1;
	}
	if (left)
	{
		hsp = -hwalkspeed;
		pressdir = 3;
	}
	if (down)
	{
		vsp = vwalkspeed;
		pressdir = 0;
	}
	if (up)
	{
		vsp = -vwalkspeed;
		pressdir = 2;
	}
	sprite_handler();
	collision_handler();
	if (menu)
	{
		if (room != rm_ebott_cave && room != rm_ebott_overlook && room != rm_ebott_main && room != rm_ebott_tree && room != rm_ebott_memorial && room != rm_road_rain_night && room != rm_road_rain)
		{
			instance_create_depth(x, y, -9999, obj_menu);
			curr_state = PlayerState.MENU;
		}
	}
	x += hsp;
	y += vsp;
}

function state_menu()
{
	image_speed = 0;
	image_index = 0;
}

function state_cutscene()
{
}

function state_interact()
{
	if (global.greenroomcut == false)
		image_speed = 0;
	image_index = 0;
}
