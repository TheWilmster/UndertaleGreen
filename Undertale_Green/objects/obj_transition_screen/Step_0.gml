image_xscale = room_width;
image_yscale = room_height;
if (faded_in == 1 && fade_out == 0)
{
	fade_out = 1;
	alarm_set(0, 30);
	if (room == rm_ebott_overlook)
		alarm_set(0, 90);
}
if (room == rm_ebott_main && faded_in == 0)
{
	var x_center = obj_player.sprite_width / 2;
	obj_player.x = obj_markerA.x - x_center;
	obj_player.y = obj_markerA.y - 2;
}
if (image_alpha < 1 && faded_in == 0)
	image_alpha += fade_speed;
if (image_alpha > 1 && faded_in == 0)
{
	if (room == rm_greenroom)
	{
		instance_destroy(obj_snowflake);
		if (!audio_is_playing(snd_escaped))
			audio_play_sound(snd_escaped, 1, false);
	}
	if (room == rm_lobby)
	{
		instance_destroy(obj_eden);
		if (!audio_is_playing(snd_escaped))
			audio_play_sound(snd_escaped, 1, false);
		global.eden_gone = true;
	}
	if (room == rm_school_spotlight)
	{
		instance_destroy(obj_eden_cry);
		if (!audio_is_playing(snd_escaped))
			audio_play_sound(snd_escaped, 1, false);
		global.eden_spotlight_leave = true;
		instance_create_depth(153, 80, -bbox_bottom, obj_necklace);
	}
	if (room == rm_hallway1)
	{
		instance_destroy(obj_yeti_girl);
		if (!audio_is_playing(snd_escaped))
			audio_play_sound(snd_escaped, 1, false);
	}
	if (room == rm_hallway2)
	{
		instance_destroy(obj_yeti_girl_2);
		if (!audio_is_playing(snd_escaped))
			audio_play_sound(snd_escaped, 1, false);
	}
	if (room == rm_lobby)
	{
		instance_destroy(obj_yeti_girl_3);
		if (!audio_is_playing(snd_escaped))
			audio_play_sound(snd_escaped, 1, false);
	}
	if (room == rm_spookyforest)
	{
		room_goto(rm_ebott_overlook);
		global.trip = false;
		obj_player.x = 160;
		obj_player.y = 158;
		obj_player.facing = 0;
		obj_player.visible = false;
		fade_speed = 0.03;
	}
	faded_in = 1;
}
if (image_alpha > 0 && fade_out_full == 1)
{
	image_alpha -= fade_speed;
}
else if (image_alpha <= 0 && fade_out_full == 1)
{
	instance_destroy();
	obj_player.curr_state = PlayerState.NORMAL;
	faded_in = 1;
}
