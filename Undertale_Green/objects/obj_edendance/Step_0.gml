if (!instance_exists(obj_textboxNEW) && progress == 1)
{
	progress = 2;
	instance_create_depth(obj_player.x, obj_player.y, obj_player.depth, obj_olivedance);
	obj_player.visible = false;
}
if (x <= 152 && global.eden_dance == false)
{
	x = 152;
	sprite_index = spr_eden_dance2;
	image_speed = 0.93888;
	checkfordance = true;
	hspeed = 0;
}
if (checkfordance == true)
{
	if (floor(audio_sound_get_track_position(global.eden_sound) / 0.923) >= ((audio_sound_get_track_position(global.eden_sound) / 0.923) - 0.03) && floor(audio_sound_get_track_position(global.eden_sound) / 0.923) <= ((audio_sound_get_track_position(global.eden_sound) / 0.923) + 0.03))
	{
		sprite_index = spr_eden_dance;
		image_index = 4;
		obj_player.curr_state = PlayerState.NORMAL;
		checkfordance = false;
		global.eden_dance = true;
		instance_create_depth(127, 118, -3, obj_eden_danceint);
	}
}
