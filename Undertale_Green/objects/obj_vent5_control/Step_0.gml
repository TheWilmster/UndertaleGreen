if (fadein == true)
{
	image_alpha += 0.1;
	if (image_alpha > 1)
		fadein = false;
}
if (fadeout == true)
	image_alpha -= 0.1;
obj_player.curr_state = PlayerState.CUTSCENE;
if (obj_mouse_player.fall == 0)
{
	obj_player.x = obj_player_vent_dummy.x;
	obj_player.y = obj_player_vent_dummy.y;
}
