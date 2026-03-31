var ply = instance_create_depth(0, 0, 0, obj_player);
var dum = instance_create_depth(0, 0, 0, obj_player_dummy);
if (file_exists("act0_file1") && global.act0_save == 1)
{
	with (ply)
		load();
}
else if (file_exists("act0_file2") && global.act0_save == 2)
{
	with (ply)
		load();
}
else if (file_exists("act0_file3") && global.act0_save == 3)
{
	with (ply)
		load();
}
else
{
	room = rm_road_rain;
	with (ply)
	{
		x = 402;
		y = 86;
	}
	with (dum)
	{
		x = 402;
		y = 86;
	}
}
