edenleave = false;
bgid = layer_background_get_id("Background");
bgid2 = layer_background_get_id("Backgrounds_1");
layer_background_speed(bgid, 0);
layer_background_speed(bgid2, 0);
if (global.school_time_sequence == 0)
	layer_background_index(bgid, 0);
if (global.school_time_sequence == 1)
	layer_background_index(bgid, 1);
if (global.school_time_sequence == 3)
	layer_background_index(bgid, 2);
if (global.school_time_sequence == 3)
	layer_background_index(bgid2, 1);
else
	layer_background_index(bgid2, 0);
if (global.school_time_sequence == 3)
	layer_set_visible("Assets_1", false);
global.cut1dia1 = false;
global.advance_cutscene = false;
global.advance_cutscene2 = false;
if (global.gray_leave_lobby == true && global.eden_first_time == true)
{
	audio_stop_sound(mus_art_center);
	audio_stop_sound(mus_greenroom);
	audio_stop_sound(mus_greenroom_lp);
	audio_stop_sound(mus_pitorch);
	audio_stop_sound(mus_pitorch_lp);
	if (!audio_is_playing(mus_eden))
		audio_play_sound(mus_eden, 1, true);
}
