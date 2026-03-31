if (place_meeting(x, y, obj_player) && !instance_exists(obj_transition) && global.cutscene_gray_eden_triggered == false)
{
	obj_player.curr_state = PlayerState.CUTSCENE;
	obj_player.image_speed = 0;
	obj_player.image_index = 0;
	if (target_rm == rm_greenroom)
	{
		audio_sound_gain(mus_greenroom, 1, 125);
		audio_sound_gain(mus_art_center, 0, 125);
		audio_sound_gain(mus_greenroom_lp, 0, 125);
		audio_sound_gain(mus_pitorch_lp, 0, 125);
		audio_sound_gain(mus_pitorch, 0, 125);
	}
	if (target_rm == rm_dressing1)
	{
		audio_sound_gain(mus_greenroom, 1, 125);
		audio_sound_gain(mus_art_center, 0, 125);
		audio_sound_gain(mus_greenroom_lp, 0, 125);
		audio_sound_gain(mus_pitorch_lp, 0, 125);
		audio_sound_gain(mus_pitorch, 0, 125);
	}
	if (target_rm == rm_vent2)
	{
		audio_sound_gain(mus_greenroom, 0, 125);
		audio_sound_gain(mus_art_center, 0, 125);
		audio_sound_gain(mus_greenroom_lp, 1, 125);
		audio_sound_gain(mus_pitorch_lp, 0, 125);
		audio_sound_gain(mus_pitorch, 0, 125);
	}
	if (target_rm == rm_vent3)
	{
		audio_sound_gain(mus_greenroom, 0, 125);
		audio_sound_gain(mus_art_center, 0, 125);
		audio_sound_gain(mus_greenroom_lp, 1, 125);
		audio_sound_gain(mus_pitorch_lp, 0, 125);
		audio_sound_gain(mus_pitorch, 0, 125);
	}
	if (target_rm == rm_hallway1 && room != rm_school_lot)
	{
		audio_sound_gain(mus_greenroom, 0, 125);
		audio_sound_gain(mus_art_center, 1, 125);
		audio_sound_gain(mus_greenroom_lp, 0, 125);
		audio_sound_gain(mus_pitorch_lp, 0, 125);
		audio_sound_gain(mus_pitorch, 0, 125);
	}
	if (target_rm == rm_break_room)
	{
		audio_sound_gain(mus_greenroom, 0, 125);
		audio_sound_gain(mus_art_center, 1, 125);
		audio_sound_gain(mus_greenroom_lp, 0, 125);
		audio_sound_gain(mus_pitorch_lp, 0, 125);
		audio_sound_gain(mus_pitorch, 0, 125);
	}
	if (target_rm == rm_hallway2)
	{
		audio_sound_gain(mus_greenroom, 0, 125);
		audio_sound_gain(mus_art_center, 1, 125);
		audio_sound_gain(mus_greenroom_lp, 0, 125);
		audio_sound_gain(mus_pitorch_lp, 0, 125);
		audio_sound_gain(mus_pitorch, 0, 125);
	}
	if (target_rm == rm_basement)
	{
		audio_sound_gain(mus_greenroom, 0, 125);
		audio_sound_gain(mus_art_center, 0, 125);
		audio_sound_gain(mus_greenroom_lp, 0, 125);
		audio_sound_gain(mus_pitorch_lp, 1, 125);
		audio_sound_gain(mus_pitorch, 0, 125);
	}
	if (target_rm == rm_pitorch)
	{
		audio_sound_gain(mus_greenroom, 0, 125);
		audio_sound_gain(mus_art_center, 0, 125);
		audio_sound_gain(mus_greenroom_lp, 0, 125);
		audio_sound_gain(mus_pitorch_lp, 0, 125);
		audio_sound_gain(mus_pitorch, 0.86, 125);
	}
	if (target_rm == rm_school_lot)
	{
		audio_stop_all();
		audio_stop_sound(snd_rain_inside);
		audio_play_sound(snd_rain, 2, true);
	}
	if (target_rm == rm_hallway1 && room == rm_school_lot && obj_player.follow_chai == false)
	{
		start_play_music();
		audio_stop_sound(snd_rain);
		audio_play_sound(snd_rain_inside, 2, true);
	}
	if (obj_player.follow_chai == true)
	{
		obj_player.vspeed = 0;
		obj_player.image_speed = 0;
		obj_player.follow_chai = false;
		obj_player.chaialogue = true;
		audio_stop_sound(snd_rain);
		audio_play_sound(snd_rain_inside, 2, true);
	}
	instance_create_depth(0, 0, -9999, obj_transition, 
	{
		target_rm: target_rm,
		target_marker: target_marker
	});
}
