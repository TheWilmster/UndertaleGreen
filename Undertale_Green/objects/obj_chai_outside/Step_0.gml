if (global.carnightcut == true && !instance_exists(obj_textboxNEW))
{
	obj_player.curr_state = PlayerState.CUTSCENE;
	instance_create_depth(0, 0, -9999, obj_transition, 
	{
		target_rm: rm_road_rain_night,
		target_marker: "A"
	});
}
