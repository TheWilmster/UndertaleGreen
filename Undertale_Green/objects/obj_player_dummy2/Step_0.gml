if (dw_walkright == true)
{
	hspeed = 1;
	image_speed = 0.75;
	sprite_index = spr_olive_c_side_r;
	if (x >= 244)
	{
		dw_walkright = false;
		hspeed = 0;
		image_index = 0;
		image_speed = 0;
		sprite_index = spr_olive_c_back;
	}
}
if (dw_walkup == true)
{
	vspeed = -1;
	image_speed = 0.5;
	sprite_index = spr_olive_c_back;
	if (y <= 195)
	{
		dw_walkup = false;
		vspeed = 0;
		image_index = 0;
		image_speed = 0;
		sprite_index = spr_olive_c_back;
		alarm[0] = 30;
	}
}
if (knockback == true)
{
	vspeed -= 0.5;
	if (vspeed <= 0)
	{
		vspeed = 0;
		knockback = false;
	}
}
if (global.eden_drivewaycut == false)
{
	if (keyboard_check(vk_down) == true || keyboard_check(vk_up) || keyboard_check(vk_left) || keyboard_check(vk_right) || keyboard_check(ord("W")) || keyboard_check(ord("S")) || keyboard_check(ord("A")) || keyboard_check(ord("D")))
	{
		obj_player.visible = true;
		obj_player.curr_state = PlayerState.NORMAL;
		instance_destroy(self);
	}
}
