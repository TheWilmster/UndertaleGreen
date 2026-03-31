image_xscale = room_width;
image_yscale = room_height;
if (room != rm_battle && global.has_battled == false)
{
	if (image_alpha < 1 && faded_in == 0)
		image_alpha += fade_speed;
	if (image_alpha > 1 && faded_in == 0)
		room_goto(target_rm);
	if (image_alpha > 0 && faded_in == 1)
	{
		image_alpha -= fade_speed;
	}
	else if (image_alpha <= 0 && faded_in == 1)
	{
		instance_destroy();
		if (room == rm_eden_room && global.edenroom_entered == false)
			obj_player.curr_state = PlayerState.INTERACT;
		else
			obj_player.curr_state = PlayerState.NORMAL;
	}
	if (room == target_rm && faded_in == 0)
	{
		var x_center = obj_player.sprite_width / 2;
		switch (target_marker)
		{
			case "A":
				obj_player.x = obj_markerA.x - x_center;
				obj_player.y = obj_markerA.y - 2;
				break;
			case "B":
				obj_player.x = obj_markerB.x - x_center;
				obj_player.y = obj_markerB.y - 2;
				break;
			case "C":
				obj_player.x = obj_markerC.x - x_center;
				obj_player.y = obj_markerC.y - 2;
				break;
			case "D":
				obj_player.x = obj_markerD.x - x_center;
				obj_player.y = obj_markerD.y - 2;
				break;
			case "E":
				obj_player.x = obj_markerE.x - x_center;
				obj_player.y = obj_markerE.y - 2;
				break;
			case "F":
				obj_player.x = obj_markerF.x - x_center;
				obj_player.y = obj_markerF.y - 2;
				break;
		}
		faded_in = 1;
	}
}
else if (global.battle_plush == false)
{
	if (image_alpha < 1 && faded_in == 0)
		image_alpha += fade_speed;
	if (image_alpha > 1 && faded_in == 0)
	{
		if (global.flag_win != true || global.battle_chai != true)
			room_goto(global.stored_player_room);
		else
			room_goto(rm_forest_bench_post);
	}
	if (image_alpha > 0 && faded_in == 1)
		image_alpha -= fade_speed;
	else if (image_alpha <= 0 && faded_in == 1)
		instance_destroy();
	if (room == global.stored_player_room && faded_in == 0)
	{
		instance_create_depth(x, y, depth + 1, obj_player);
		obj_player.x = global.stored_player_pos[0];
		obj_player.y = global.stored_player_pos[1];
		global.stored_player_room = -1;
		faded_in = 1;
		if (global.cutscene == true)
			obj_player.curr_state = PlayerState.INTERACT;
		else
			obj_player.curr_state = PlayerState.NORMAL;
	}
	if (room == rm_forest_bench_post && faded_in == 0)
	{
		instance_create_depth(x, y, depth + 1, obj_player);
		obj_player.x = 150;
		obj_player.y = 90;
		global.stored_player_room = -1;
		faded_in = 1;
		obj_player.curr_state = PlayerState.INTERACT;
	}
}
else
{
	global.plush_battled = true;
	instance_create_depth(x, y, depth + 1, obj_player);
	room_goto(global.stored_player_room);
	obj_player.x = global.stored_player_pos[0];
	obj_player.y = global.stored_player_pos[1];
	global.stored_player_room = -1;
	obj_player.curr_state = PlayerState.INTERACT;
	audio_stop_sound(mus_plush);
	obj_player.visible = false;
	instance_destroy();
}
