view_width = camera_get_view_width(view_camera[0]) / 2;
view_height = camera_get_view_height(view_camera[0]) / 2;
camera_set_view_pos(view_camera[0], x - view_width, y - view_height);
center_x = (x - view_width) + (sprite_width / 2) + cam_offset_x;
center_y = (y - view_height) + (sprite_height / 2) + cam_offset_y;
cx = clamp(center_x, min_view_x, max_view_x);
cy = clamp(center_y, min_view_y, max_view_y);
camera_set_view_pos(view_camera[0], cx, cy);
if (global.merge == true)
	obj_player.curr_state = PlayerState.INTERACT;
if (global.cut1mvt1 == true)
{
	if (x < 307)
	{
		hspeed = 5;
	}
	else
	{
		hspeed = 0;
		if (y > 150)
		{
			vspeed = -5;
		}
		else
		{
			vspeed = 0;
			global.cut1dia1 = true;
			global.cut1mvt1 = false;
		}
	}
}
if (global.cut1mvt2 == true)
{
	if (y < obj_player_dummy.y)
	{
		vspeed = 5;
	}
	else
	{
		vspeed = 0;
		y = obj_player_dummy.y;
		if (x > obj_player_dummy.x)
		{
			hspeed = -5;
		}
		else
		{
			hspeed = 0;
			x = obj_player_dummy.x;
			global.cut1mvt2 = false;
			global.cutscene_gray_eden_triggered = false;
			obj_player.curr_state = PlayerState.NORMAL;
			obj_player.visible = true;
		}
	}
}
if (global.rat_start == true)
{
	if (x < (123 + offset))
	{
		facing = 1;
		image_speed = 0.6;
		hspeed = 0.5;
	}
	if (x > (123 + offset))
	{
		facing = 3;
		image_speed = 0.6;
		hspeed = -0.5;
	}
	if (x == (123 + offset))
	{
		image_speed = 0;
		facing = 2;
		hspeed = 0;
		vspeed = -3;
		jump_start = true;
		audio_play_sound(snd_jump, 80, false);
		global.rat_start = false;
	}
}
if (jump_start == true)
{
	vspeed += 0.25;
	if (vspeed > 0 && y >= 39)
	{
		jump_start = false;
		jumped_on = true;
		vspeed = 0;
	}
}
if (jumped_on == true)
{
	jumped_on = false;
	global.rat_ride = true;
	audio_play_sound(snd_buyitem, 80, false);
	audio_sound_gain(mus_pitorch_lp, 0, 0);
	obj_mouse.image_index = 4;
	obj_piece_go.image_index = 0;
	obj_piece_go_collision.image_index = 0;
	obj_piece_go2.image_index = 0;
	obj_piece_go2_collision.image_index = 0;
	obj_piece_o.image_index = 0;
	obj_piece_o_collision.image_index = 0;
	obj_piece_g.image_index = 0;
	obj_piece_g_collision.image_index = 0;
	obj_piece_po.image_index = 0;
	obj_piece_po_collision.image_index = 0;
	visible = false;
	x = 243 + offset;
	y = 180;
}
if (global.rat_ride_end == true)
{
	global.rat_ride_end = false;
	facing = 0;
	if (!audio_is_playing(snd_fall2))
		audio_play_sound(snd_fall2, 80, false);
	if (!audio_is_playing(snd_speararise_real))
		audio_play_sound(snd_speararise_real, 80, false);
	audio_stop_sound(mus_rat_ride);
	visible = true;
	vspeed = -3;
	jump_start2 = true;
}
if (jump_start2 == true)
{
	vspeed += 0.5;
	image_angle += 6.5;
	hspeed = -0.9;
	if (vspeed > 0 && y >= 178)
	{
		hspeed = 0;
		x -= 3;
		audio_play_sound(snd_bigdoor_open, 80, false);
		jump_start2 = false;
		jumped_on2 = true;
		image_angle = 90;
		vspeed = 0;
	}
}
if (jumped_on2 == true)
{
	if (keyboard_check_pressed(ord("Z")))
	{
		get_up = true;
		jumped_on2 = false;
	}
}
if (get_up == true)
{
	x = 243 + offset;
	y = 152;
	image_angle = 0;
	get_up = false;
	audio_sound_gain(mus_pitorch_lp, 1, 125);
	obj_player.curr_state = PlayerState.NORMAL;
	keyboard_key_press(vk_down);
	alarm_set(0, 1);
	audio_play_sound(snd_jump, 80, false);
}
if (global.olive_walk1 == true)
{
	if (x >= 290)
		sprite_index = spr_olive_c_side_l;
	if (x < 290)
		sprite_index = spr_olive_c_side_r;
	if (x >= 290 && x <= 307)
	{
		hspeed = 2;
		sprite_index = spr_olive_c_side_r;
		image_speed = 0.3;
	}
	if (x < 290 && x >= 272)
	{
		hspeed = -2;
		sprite_index = spr_olive_c_side_l;
		image_speed = 0.3;
	}
	if (x < 272 || x > 307)
	{
		walk_down = 1;
		hspeed = 0;
	}
	if (walk_down == 1)
	{
		if (y <= 108)
		{
			vspeed = 2;
			sprite_index = spr_olive_c_down;
			image_speed = 0.1;
		}
		else
		{
			walk_down = 0;
			vspeed = 0;
			image_speed = 0;
			if (x > 290)
				sprite_index = spr_olive_c_side_l;
			if (x < 290)
				sprite_index = spr_olive_c_side_r;
		}
	}
}
randomize();
cam_offset_x = irandom_range(shake * 5, -shake * 5);
cam_offset_y = irandom_range(shake * 5, -shake * 5);
