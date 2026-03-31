obj_player.curr_state = PlayerState.CUTSCENE;
instance_create_depth(0, 0, -9999, obj_transition, 
{
	target_rm: rm_office_parking,
	target_marker: "A"
});
