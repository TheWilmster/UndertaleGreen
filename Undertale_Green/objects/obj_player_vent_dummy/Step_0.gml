depth = -bbox_bottom;
if (obj_mouse_player.fall == 0)
{
	if (obj_mouse_player.image_index == 2)
	{
		x = obj_mouse_player.x + 10;
		y = obj_mouse_player.y;
	}
	if (obj_mouse_player.image_index == 0)
	{
		x = obj_mouse_player.x + 7;
		y = obj_mouse_player.y;
	}
	if (obj_mouse_player.image_index == 1)
	{
		x = obj_mouse_player.x + 7;
		y = obj_mouse_player.y - 8;
	}
	if (obj_mouse_player.image_index == 3)
	{
		x = obj_mouse_player.x + 5;
		y = obj_mouse_player.y;
	}
}
else
{
	vspeed += 0.5;
	image_angle += deathrot;
	hspeed = -deathrot / 2;
}
up = keyboard_check(vk_up) || keyboard_check(ord("W"));
down = keyboard_check(vk_down) || keyboard_check(ord("S"));
left = keyboard_check(vk_left) || keyboard_check(ord("A"));
right = keyboard_check(vk_right) || keyboard_check(ord("D"));
if (up)
	sprite_index = spr_olive_c_back;
if (down)
	sprite_index = spr_olive_c_down;
if (left)
	sprite_index = spr_olive_c_side_l;
if (right)
	sprite_index = spr_olive_c_side_r;
