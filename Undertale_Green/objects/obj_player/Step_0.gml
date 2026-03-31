max_view_x = room_width - camera_get_view_width(view_camera[0]);
max_view_y = room_height - camera_get_view_height(view_camera[0]);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
switch (facing)
{
	case 0:
		if (room == rm_ebott_cave || room == rm_ebott_main || room == rm_ebott_overlook || room == rm_ebott_tree || room == rm_ebott_memorial)
			sprite_index = spr_chai_playable_d;
		else
			sprite_index = spr_olive_c_down;
		break;
	case 1:
		if (room == rm_ebott_cave || room == rm_ebott_main || room == rm_ebott_overlook || room == rm_ebott_tree || room == rm_ebott_memorial)
			sprite_index = spr_chai_playable_r;
		else
			sprite_index = spr_olive_c_side_r;
		break;
	case 2:
		if (room == rm_ebott_cave || room == rm_ebott_main || room == rm_ebott_overlook || room == rm_ebott_tree || room == rm_ebott_memorial)
			sprite_index = spr_chai_playable_u;
		else
			sprite_index = spr_olive_c_back;
		break;
	case 3:
		if (room == rm_ebott_cave || room == rm_ebott_main || room == rm_ebott_overlook || room == rm_ebott_tree || room == rm_ebott_memorial)
			sprite_index = spr_chai_playable_l;
		else
			sprite_index = spr_olive_c_side_l;
		break;
}
if (room == rm_shop)
	curr_state = PlayerState.MENU;
switch (curr_state)
{
	case PlayerState.NORMAL:
		state_normal();
		break;
	case PlayerState.MENU:
		state_menu();
		break;
	case PlayerState.INTERACT:
		state_interact();
		break;
	case PlayerState.CUTSCENE:
		state_cutscene();
		break;
}
if (!instance_exists(obj_battle_transition))
	depth = -bbox_bottom;
else
	depth = obj_battle_transition.depth - 1;
if (enter_plush == true)
{
	global.battle_plush = true;
	battle_setup("[delay,3500]* ...?");
	instance_create_depth(0, 0, depth, obj_battle_transition);
	enter_plush = false;
}
if (playtester_mode == true)
{
	if (keyboard_check_pressed(vk_lalt))
	{
		global.battle_gray = true;
		battle_setup("* Gray draws his blade!");
		instance_create_depth(0, 0, depth, obj_battle_transition);
	}
	if (keyboard_check_pressed(vk_space))
	{
		global.battle_eden = true;
		if (global.language == 0)
			battle_setup("* Eden takes one step closer!");
		else
			battle_setup("* ¡Eden avanza un casilla!");
		instance_create_depth(0, 0, depth, obj_battle_transition);
	}
	if (keyboard_check_pressed(vk_rshift))
	{
		global.battle_chai = true;
		battle_setup("* Queen Chai declares war!");
		instance_create_depth(0, 0, depth, obj_battle_transition);
	}
	if (keyboard_check_pressed(vk_backspace))
	{
		if (!instance_exists(obj_save))
			instance_create_depth(x, y, -1000, obj_save);
	}
}
if (global.has_battled == true && global.flag_flee == true)
{
	curr_state = PlayerState.INTERACT;
	if (room == rm_lobby)
	{
		x = 307;
		y = 105;
	}
	if (room == rm_forest_bench)
	{
		x = 160;
		y = 184;
	}
	facing = 2;
}
if (global.has_battled == true && global.flag_die == true)
{
	curr_state = PlayerState.INTERACT;
	if (global.battle_eden == true)
	{
		x = 307;
		y = 105;
	}
	if (global.battle_chai == true)
	{
		x = 160;
		y = 184;
	}
	facing = 2;
}
if (global.has_battled == true && global.flag_win == true)
{
	curr_state = PlayerState.INTERACT;
	if (global.battle_eden == true)
	{
		x = 307;
		y = 105;
		facing = 2;
	}
	if (global.battle_gray == true)
	{
		x = 200;
		y = 167;
		facing = 2;
	}
	if (global.battle_chai == true)
		sprite_index = spr_olive_c_sit;
}
if (global.intro_cut_parkinglot == true)
{
	curr_state = PlayerState.CUTSCENE;
	if (room == rm_school_lot && in_car == true)
	{
		x = obj_chai_car_cutscene.x + 30;
		y = obj_chai_car_cutscene.y + 30;
	}
}
if (walk_alarm == true)
{
	in_car = false;
	facing = 1;
	image_speed = 0.5;
	if (x >= 220)
	{
		facing = 3;
		obj_chai.hspeed = 0;
		hspeed = 0;
		image_speed = 0;
		walk_alarm = false;
		with (obj_chai_car_office)
			depth = -bbox_bottom;
	}
}
if (follow_chai == true)
{
	image_speed = 0.5;
	facing = 2;
	vspeed = -1;
	if (y <= 88)
	{
		vspeed = 0;
		facing = 1;
		hspeed = 1;
		if (x >= 420)
		{
			hspeed = 0;
			vspeed = -1;
			facing = 2;
		}
	}
}
if (chaialogue == true)
	curr_state = PlayerState.INTERACT;
if (global.greenroomcut == true && room == rm_greenroom)
{
	facing = 0;
	curr_state = PlayerState.CUTSCENE;
	image_speed = 0.75;
	vspeed = 1;
	if (y >= 146)
	{
		vspeed = 0;
		image_speed = 0;
		facing = 1;
	}
}
if (cam_go_down == 1)
{
	global.greenroom_dummy = true;
	visible = false;
	obj_player_dummy.walk_down = true;
	curr_state = PlayerState.CUTSCENE;
	if (y >= 250)
	{
		vspeed = 0;
		cam_go_down = 0;
	}
}
if (cam_go_down2 == true)
{
	vspeed = 1;
	curr_state = PlayerState.CUTSCENE;
	if (y >= 250)
	{
		vspeed = 0;
		cam_go_down2 = false;
	}
}
if (cam_go_down3 == true)
{
	vspeed = 0.5;
	curr_state = PlayerState.CUTSCENE;
	if (y >= 280)
	{
		vspeed = 0;
		cam_go_down3 = false;
	}
}
if (cam_go_up == true)
{
	curr_state = PlayerState.CUTSCENE;
	vspeed = -2;
	if (y <= 166)
	{
		vspeed = 0;
		cam_go_up = false;
	}
}
if (return_to_player == true)
{
	vspeed = -1;
	facing = 0;
	if (y <= obj_player_dummy.y)
	{
		x = obj_player_dummy.x;
		vspeed = 0;
		facing = 2;
		sprite_index = spr_olive_c_back;
		obj_player_dummy.visible = false;
		visible = true;
		alarm_set(4, 70);
		alarm_set(2, 200);
		alarm_set(3, 240);
		return_to_player = false;
	}
}
if (room == rm_spookyforest && global.forest_cutscene == 3)
{
	if (x <= 1027)
		hwalkspeed = max(3, min((0.013 * x) + 0.4, 7));
	if (x >= 1027)
		hwalkspeed = max(3, min((-0.013 * x) + 27.102, 8));
}
else
{
	hwalkspeed = 3;
}
if (room == rm_hallway2 && global.school_time_sequence == 3)
{
	if (y <= 545.5)
		vwalkspeed = max(3, min(0.0188 * y, 8));
	if (y >= 545.5)
		vwalkspeed = max(3, min((-0.0188 * y) + 20.584, 8));
}
else
{
	vwalkspeed = 3;
}
if (shake > 0)
	shake--;
if (visible == false && room != rm_spookyforest)
	curr_state = PlayerState.CUTSCENE;
if (room == rm_pitorch || room == rm_scary || room == rm_spookyforest || room == rm_office_parking || room == rm_forest_bench || room == rm_school_hall || room == rm_school_spotlight || room == rm_eden_driveway || room == rm_scary2)
	image_blend = c_gray;
else
	image_blend = c_white;
if (global.school_time_sequence == 3 && room != rm_vent4)
	image_blend = c_gray;
if (global.intro_cut_parkinglot == true)
	check_drumroll = false;
if (room == rm_school_lot || room == rm_hallway1 || room == rm_basement || room == rm_spookyforest)
{
	if (check_drumroll == true)
	{
		alarm[5] = 60;
		check_drumroll = false;
	}
}
time_elapsed = audio_sound_get_track_position(global.pitorch_sound);
if ((time_elapsed / 0.6666666666666) <= (conductor_beat + 0.03) && (time_elapsed / 0.6666666666666) >= (conductor_beat - 0.03))
{
	conductor_count += 1;
	conductor_beat += 1;
	if (instance_exists(obj_conductor))
		obj_conductor.sprite_index = spr_conductor_smear;
}
else if (instance_exists(obj_conductor))
{
	obj_conductor.sprite_index = spr_conductor;
}
if ((time_elapsed / 0.6666666666666) <= (conductor_beat + 1.03) && (time_elapsed / 0.6666666666666) >= (conductor_beat + 0.97))
{
	conductor_count += 2;
	conductor_beat += 2;
	if (instance_exists(obj_conductor))
		obj_conductor.sprite_index = spr_conductor_smear;
}
if (conductor_count == 5)
	conductor_count = 1;
if (time_elapsed < 0.5)
{
	conductor_beat = 1;
	conductor_count = 1;
}
prev_room = room;
if (room == rm_road_rain_night)
{
	visible = false;
	if (instance_exists(obj_player_dummy))
		obj_player_dummy.visible = false;
}
if (global.school_time_sequence == 3 && global.forest_cutscene != 3)
{
	if (audio_is_playing(snd_rain_inside))
		audio_stop_sound(snd_rain_inside);
	if (audio_is_playing(snd_rain) && room != rm_forest_bench_ff)
		audio_stop_sound(snd_rain);
}
if (global.office_cutscene == true && walk_out_car == false && room == rm_office_parking)
{
	visible = false;
	if (office_camgodown == true)
	{
		vspeed = 1;
		if (y >= 230)
		{
			vspeed = 0;
			office_camgodown = false;
		}
	}
	if (office_camgoup == true)
	{
		vspeed = -1;
		if (y <= 204)
		{
			vspeed = 0;
			office_camgoup = false;
		}
	}
}
if (room == rm_road_rain_night)
	pressdir = 1;
if (walk_out_car == true)
{
	obj_player_dummy.visible = true;
	obj_player_dummy.sprite_index = spr_olive_c_side_r;
	obj_player_dummy.image_blend = c_gray;
	obj_player_dummy.image_index = image_index;
	facing = 1;
	curr_state = PlayerState.CUTSCENE;
	sprite_index = spr_olive_c_side_r;
	image_speed = 0.5;
	hspeed = 1;
	if (x >= 525)
	{
		image_speed = 0;
		hspeed = 0;
		curr_state = PlayerState.NORMAL;
		alarm[6] = 1;
		global.office_cutscene = false;
		walk_out_car = false;
	}
}
if (hop_on_bench == true)
{
	start_hop = true;
	vspeed = -5;
	audio_play_sound(snd_jump, 0.5, false);
	curr_state = PlayerState.CUTSCENE;
	if (x < 137)
		hspeed = abs(137 - x) / 10;
	if (x > 138)
		hspeed = -abs(137 - x) / 10;
	hop_on_bench = false;
}
if (start_hop == true)
{
	depth = -500;
	vspeed += 0.5;
	if (vspeed > 0)
	{
		top_of_hop = true;
		hspeed = 0;
	}
	if (x >= 136.5 && x <= 137.5)
		hspeed = 0;
	if (y >= 157 && top_of_hop == true)
	{
		vspeed = 0;
		start_hop = false;
		top_of_hop = false;
		audio_play_sound(snd_bigdoor_open, 0.5, false);
		sprite_index = spr_olive_c_sit;
		obj_chai_forest_bench.continue_talk = true;
		olive_sit = true;
		y += 2;
	}
}
if (olive_sit == true)
{
	sprite_index = spr_olive_c_sit;
	x = 137;
	y = 161;
	if (instance_exists(obj_chai_forest_bench))
	{
		if (obj_chai_forest_bench.posthug == true)
			x = 148;
		y = 161;
	}
}
if (room == rm_eden_driveway && global.eden_drivewaycut == true)
{
	visible = false;
	if (instance_exists(obj_player_dummy2))
	{
		x = obj_player_dummy2.x;
		y = obj_player_dummy2.y;
	}
}
if (vent_jump == true)
{
	vspeed = -4.5;
	audio_play_sound(snd_jump, 1, false);
	v_start = true;
	vent_jump = false;
}
if (v_start == true)
{
	vspeed += 0.5;
	if (y >= 68 && vspeed > 0)
	{
		vspeed = 0;
		audio_play_sound(snd_buyitem, 1, false);
		v_start = false;
		visible = false;
		instance_nearest(x, y, obj_mouse_v4).image_index = 6;
		alarm[8] = 18;
	}
}
