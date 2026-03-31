if (global.battle_plush == false)
{
	if (claps == 3)
	{
		instance_destroy(obj_player);
		instance_destroy(obj_player_dummy);
		move_towards_point(camera_get_view_x(view_camera[0]) + 26, camera_get_view_y(view_camera[0]) + 218, spd);
	}
	if (x <= (camera_get_view_x(view_camera[0]) + 26) && y >= (camera_get_view_y(view_camera[0]) + 218))
	{
		x = camera_get_view_x(view_camera[0]) + 26;
		y = camera_get_view_y(view_camera[0]) + 218;
		room = rm_battle;
	}
}
else
{
	if (claps == 3)
	{
		instance_destroy(obj_player);
		instance_destroy(obj_player_dummy);
		move_towards_point(camera_get_view_x(view_camera[0]) + 254, camera_get_view_y(view_camera[0]) + 221, spd);
	}
	if (x >= (camera_get_view_x(view_camera[0]) + 254) && y >= (camera_get_view_y(view_camera[0]) + 218))
	{
		x = camera_get_view_x(view_camera[0]) + 254;
		y = camera_get_view_y(view_camera[0]) + 218;
		room = rm_battle;
	}
}
